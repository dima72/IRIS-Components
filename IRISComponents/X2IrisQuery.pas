unit X2IrisQuery;
{
  Copyrights@ 2025 RocketCitySoft LLC.
  https://www.rocketcitysoft.com
  Author: Dmitry Konnov konnov72@gmail.com
  History:
  Nov 2024.
}
interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Types, REST.Client,
  REST.Response.Adapter, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.StorageJSON,
  Vcl.Dialogs;

type
  TX2IrisQuery = class(TFDCustomMemTable)
  private
    FRestClient: TRESTClient;
    FRestRequest: TRESTRequest;
    FRestResponse: TRESTResponse;
    FSQL: TStrings;
    FDatasetOpened: Boolean;
    FNamespace: string;
    //flag for recursion prevention
    FInInternalUpdate: Boolean;
    //Entity Class for Insert/Edit/Delete
    FIrisClass: string;
    FNewID: string;
    FLastState: TDataSetState;
    FOriginalValues: TDictionary<string,string>;
    FOnHTTPProtocolError: TCustomRESTRequestNotifyEvent;
    procedure SetRestClient(ARestClient: TRESTClient);
    procedure SetSQL(ASQL: TStrings);
    procedure SQLChanged(Sender: TObject);
    procedure HTTPProtocolError(Sender: TCustomRESTRequest);
    //do not touch TDataSet SetActive.
    procedure SetActive2(AValue: Boolean);
    //procedure SetAdapter(AAdapter: TFDCustomTableAdapter);
    function RecordToJson(AChangedValues: Boolean): TJSONObject;
    function PostObjectAndGetID(AOperation: TDataSetState): string;
    function DeleteOnServer(AID: string): Boolean;
  protected
    procedure DoDefineDatSManager; override;
    procedure DoBeforePost; override;
    procedure DoAfterPost; override;
    procedure DoBeforeEdit; override;
    procedure DoBeforeDelete; override;
   // property Adapter: TFDCustomTableAdapter write SetAdapter stored False default nil;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function DoClassMethod(AClass: string;  AMethod: string; const AParams: array of string): string;
    procedure GetNamespaces(AList: TStrings; ADefaultNamespace: string);
    procedure Open; overload;
    procedure Close;
    property RestResponse: TRESTResponse read FRestResponse;
  published
    property RestClient: TRESTClient read FRestClient write SetRestClient;
    property Active: Boolean read FDatasetOpened write SetActive2;
    property SQL: TStrings read FSQL write SetSQL;
    property Namespace: string read FNamespace write FNamespace;
    property IrisClass: string read FIrisClass write FIrisClass;
    property OnHTTPProtocolError: TCustomRESTRequestNotifyEvent read FOnHTTPProtocolError write FOnHTTPProtocolError;
  end;
  procedure CheckError(ATrue: Boolean; AMessage: string);
  function NormalizeScript(AScript: string): string;
  function Fetch(var AStr: string; ADelimiter: string): string;

  procedure RegisterDefaultRestClientAndNamespace(ARestClient: TRestClient; ANamespace: string);
const
  NamespacesScript =
  'Set stmt = ##class(%SQL.Statement).%New() ' +
  'Do stmt.%PrepareClassQuery("%SYS.Namespace","List") ' +
  'Set rset = stmt.%Execute() ' +
  'Set out = "" ' +
  'While rset.%Next() { ' +
  '    Set out = out _ rset.%Get("Nsp") _ $C(13,10) ' +
  '} ' +
  'Quit out';

implementation

uses CustomDebugDialog;

var
  GRestClient: TRestClient;
  GNamespace: string;

procedure RegisterDefaultRestClientAndNamespace(ARestClient: TRestClient; ANamespace: string);
begin
  GRestClient := ARestClient;
  GNamespace := ANamespace;
end;

procedure CheckError(ATrue: Boolean; AMessage: string);
begin
  if not ATrue then
    raise Exception.Create(AMessage);
end;

function NormalizeScript(AScript: string): string;
begin
  Result := StringReplace(AScript, #13#10, ' ', [rfReplaceAll]);
  Result := StringReplace(Result, #13, ' ', [rfReplaceAll]);
  Result := StringReplace(Result, #10, ' ', [rfReplaceAll]);
  Result := Trim(StringReplace(Result, #9, ' ', [rfReplaceAll]));
end;

function Fetch(var AStr: string; ADelimiter: string): string;
var
  DelimPos: Integer;
begin
  // Find the position of the delimiter in the string
  DelimPos := Pos(ADelimiter, AStr);

  if DelimPos > 0 then begin
    // Extract the substring before the delimiter
    Result := Copy(AStr, 1, DelimPos - 1);

    // Remove the extracted part along with the delimiter from the original string
    Delete(AStr, 1, DelimPos + Length(ADelimiter) - 1);
  end
  else begin
    // If no delimiter is found, return the whole string
    Result := AStr;
    AStr := '';
  end;
end;

function ExtractResult(const JsonText: string): string;
var
  j: TJSONObject;
  Err: string;
begin
  j := TJSONObject.ParseJSONValue(JsonText) as TJSONObject;
  try
    j.TryGetValue<string>('error', Err);
    CheckError(Err = '', 'ExtractResult: ' + Err);
    Result := j.GetValue<string>('Result');
  finally
    j.Free;
  end;
end;


{ TX2IrisQuery }

procedure TX2IrisQuery.Close;
begin
  inherited Close;
  FDatasetOpened := False;
  FieldDefs.Clear;
end;

constructor TX2IrisQuery.Create(AOwner: TComponent);
begin
  inherited;
  // REST objects
  FRestRequest := TRESTRequest.Create(Self);
  FRestResponse := TRESTResponse.Create(Self);
  FRestRequest.Response := FRestResponse;
  FSQL := TStringList.Create;
  (FSQL as TStringList).OnChange := SQLChanged;
  if Assigned(GRestClient) then
    SetRestClient(GRestClient);
  if GNamespace <> '' then
    FNamespace := GNamespace;
  FOriginalValues := TDictionary<string,string>.Create;
end;

destructor TX2IrisQuery.Destroy;
begin
  FSQL.Free;
  FOriginalValues.Free;
  inherited;
end;

procedure TX2IrisQuery.SetRestClient(ARestClient: TRESTClient);
begin
  FRestClient := ARestClient;
  FRestRequest.Client := ARestClient;
end;

procedure TX2IrisQuery.SetSQL(ASQL: TStrings);
begin
  if Assigned(ASQL) then
    FSQL.Assign(ASQL);
end;

procedure TX2IrisQuery.SQLChanged(Sender: TObject);
begin
  // automatically refresh dataset when SQL changes
 if FDatasetOpened then
   Open;
end;

procedure TX2IrisQuery.SetActive2(AValue: Boolean);
begin
  //ShowMessage('SetActive ' + BoolToStr(AValue));
  if AValue = FDatasetOpened then
    Exit;
  if AValue then
    Open
  else
    Close;
end;

procedure TX2IrisQuery.DoDefineDatSManager;
begin
  if not FDatasetOpened then begin
    //ShowMessage('DoDefineDatSManager');
    Open;
    Close;
  end;
  inherited;
end;

procedure TX2IrisQuery.HTTPProtocolError(Sender: TCustomRESTRequest);
begin
  if Assigned(FOnHTTPProtocolError) then
    FOnHTTPProtocolError(Sender);
end;

procedure TX2IrisQuery.GetNamespaces(AList: TStrings; ADefaultNamespace: string);
begin
  CheckError(Assigned(AList), 'AList = nil');
  AList.Text := DoClassMethod('X2IrisClient.RESTServer', 'RunScript', [ADefaultNamespace,
    NormalizeScript(NamespacesScript)]);
  if AList.IsEmpty then
    AList.Add(ADefaultNamespace);
end;

procedure TX2IrisQuery.Open;
var
  JSONObject: TJSONObject;
  SS: TStringStream;
begin
  if csLoading in ComponentState then Exit;
  CheckError(Assigned(FRestClient), 'RestClient is not assigned');
  CheckError(not FSQL.IsEmpty, 'SQL property is Empty');
  CheckError(FNamespace <> '', 'Namespace property is Empty');

  FDatasetOpened := False;
  // Configure POST request
  FRestRequest.Method := rmPOST;
  FRestRequest.Resource := 'query';
  SS := nil;
  JSONObject := nil;
  try
    try
      JSONObject := TJSONObject.Create;
      JSONObject.AddPair('sql', Trim(FSQL.Text));
      JSONObject.AddPair('namespace', Trim(FNamespace));
      FRestRequest.ClearBody;
      FRestRequest.AddBody(JSONObject.ToJSON, ctAPPLICATION_JSON);
      FRestRequest.OnHTTPProtocolError := OnHTTPProtocolError;
      FRestRequest.Execute;
      CheckError(FRestResponse.StatusCode <= 400, 'REST Error');
      SS := TStringStream.Create(FRestResponse.Content, TEncoding.UTF8);
      //debug only
      SS.SaveToFile('responce.json');
      LoadFromStream(SS, sfJSON);
      FieldDefs.Update;
      FDatasetOpened := True;
    finally
      SS.Free;
      JSONObject.Free;
    end;
  except
    on E: Exception do begin
      ShowDebugMessage('TX2IrisQuery.Open: Exception: ' + E.Message + '. StatusCode: ' +
        IntToStr(FRestResponse.StatusCode) + ' Content: ' + FRestResponse.Content);
      Abort;
    end;
  end;
end;

function TX2IrisQuery.DoClassMethod(AClass: string;  AMethod: string; const AParams: array of string): string;
var
  JSONObject: TJSONObject;
  Req, Args: TJSONArray;
  i: Integer;
begin
  CheckError(Assigned(FRestClient), 'RestClient is not assigned');
  try
    // Configure POST request
    FRestRequest.Method := rmPOST;
    FRestRequest.Resource := 'procedure';

    JSONObject := TJSONObject.Create;
    try
      JSONObject.AddPair('class', AClass);
      JSONObject.AddPair('method', AMethod);

      Args := TJSONArray.Create;
      for i := 0 to High(AParams) do
        Args.Add(AParams[i]);

      JSONObject.AddPair('args', Args);

      FRestRequest.ClearBody;
      FRestRequest.AddBody(JSONObject.ToJSON, ctAPPLICATION_JSON);
      FRestRequest.OnHTTPProtocolError := OnHTTPProtocolError;
      // Execute
      FRestRequest.Execute;
      CheckError(FRestResponse.StatusCode <= 400, 'REST Error');
       // ShowMessage('Got Responce');
      Result:= FRestResponse.Content;
    finally
      JSONObject.Free;
    end;
  except
    on E: Exception do begin
      ShowDebugMessage('TX2IrisQuery.DoClassMethod. Exception: '+ E.Message + #13#10 +
       'StatusText: ' + FRestResponse.StatusText + #13#10 +
       'StatusCode: ' + IntToStr(FRestResponse.StatusCode) + #13#10 +
       FRestResponse.Content, 'Debug');
      Abort;
    end;
  end;
end;

function TX2IrisQuery.RecordToJson(AChangedValues: Boolean): TJSONObject;
var
  f: TField;
  bf: TBlobField;
  mf: TMemoField;
  wf: TWideMemoField;
begin
  Result := TJSONObject.Create;
  for f in Fields do begin
    if AChangedValues then begin
      if f is TMemoField then begin
         mf := f as TMemoField;
         if mf.Modified then
            Result.AddPair(mf.FieldName, mf.Text);
      end
      else if f is TWideMemoField then begin
         wf := f as TWideMemoField;
         if wf.Modified then
            Result.AddPair(wf.FieldName, wf.AsWideString);
      end
      else if f is TBlobField then begin
         CheckError(false, 'TBlobField not implemented');
      end
      else if SameText(f.FieldName, 'ID') or (Trim(FOriginalValues[f.FieldName]) <> Trim(f.AsString)) then begin
        if f is TBooleanField then
          Result.AddPair(f.FieldName, IntToStr(Ord((f as TBooleanField).Value)))
        else
          Result.AddPair(f.FieldName, f.AsString);
      end;
    end
    else begin
      if f is TMemoField then begin
        mf := f as TMemoField;
        Result.AddPair(mf.FieldName, mf.Text);
      end
      else if f is TWideMemoField then begin
        wf := f as TWideMemoField;
        Result.AddPair(wf.FieldName, wf.Text);
      end
      else if f is TBlobField then
        CheckError(false, 'TBlobField not implemented')
      else begin
        if f is TBooleanField then
          Result.AddPair(f.FieldName, IntToStr(Ord((f as TBooleanField).Value)))
        else
          Result.AddPair(f.FieldName, f.AsString);
      end;
    end;
  end;
end;

procedure TX2IrisQuery.DoBeforeDelete;
var
  ID: string;
begin
  inherited;
  // Read ID before the row disappears
  ID := FieldByName('ID').AsString;
  // Call REST server
  if not DeleteOnServer(ID) then
    Abort; // cancel the delete locally
end;

procedure TX2IrisQuery.DoBeforeEdit;
var
  f: TField;
begin
  inherited;
  FOriginalValues.Clear;
  for f in Fields do begin
    if (f is TMemoField) or (f is TWideMemoField) or (f is TBlobField) then Continue;
    FOriginalValues.Add(f.FieldName, f.AsString);
  end;
end;

procedure TX2IrisQuery.DoBeforePost;
begin
  inherited;
  if FInInternalUpdate then Exit; // prevent recursion
  FLastState := State;
  FNewID := PostObjectAndGetID(FLastState);
end;

procedure TX2IrisQuery.DoAfterPost;
begin
  inherited;
  if FLastState = dsEdit then Exit;
  if FInInternalUpdate then Exit; // prevent recursion
  // Update the ID field WITHOUT triggering another POST
  FInInternalUpdate := True;
  try
    if Assigned(FindField('ID')) then begin
      Edit;
      FieldByName('ID').AsString := FNewID;
      Post;
    end;
  finally
    FInInternalUpdate := False;
  end;
end;

function TX2IrisQuery.PostObjectAndGetID(AOperation: TDataSetState): string;
var
  JSONObject, DataObj: TJSONObject;
begin
  CheckError(Assigned(FRestClient), 'RestClient is not assigned');
  CheckError(FIrisClass <> '', 'IrisClass property is Empty');
  try
    FRestRequest.Method := rmPOST;
    FRestRequest.Resource := 'post';
    DataObj := nil;
    JSONObject := TJSONObject.Create;
    try
      JSONObject.AddPair('class', FIrisClass);
      case AOperation of
        dsInsert: begin
            JSONObject.AddPair('operation', 'insert');
            DataObj := RecordToJson(False);
          end;
        dsEdit: begin
          JSONObject.AddPair('operation', 'edit');
          DataObj := RecordToJson(True);
        end;
      end;
      CheckError(Assigned(DataObj), 'DataObj = nil');
      JSONObject.AddPair('data', DataObj);
      FRestRequest.ClearBody;
      var L := JSONObject.ToJSON;
      FRestRequest.AddBody(JSONObject.ToJSON, ctAPPLICATION_JSON);
      FRestRequest.OnHTTPProtocolError := OnHTTPProtocolError;
      // Execute
      FRestRequest.Execute;
      CheckError(FRestResponse.StatusCode <= 400, 'PostObjectAndGetID. REST Error');
      Result:= ExtractResult(FRestResponse.Content);
    finally
      JSONObject.Free;
    end;
  except on
    E: Exception do begin
      ShowDebugMessage('TX2IrisQuery.PostObjectAndGetID. Exception:' + E.Message + #13#10 +
       'StatusText: ' + FRestResponse.StatusText + #13#10 +
       'StatusCode: ' + IntToStr(FRestResponse.StatusCode) + #13#10 +
       FRestResponse.Content, 'Debug');
      Abort;
    end;
  end;
end;


function TX2IrisQuery.DeleteOnServer(AID: string): Boolean;
var
  JSONObject: TJSONObject;
begin
  CheckError(Assigned(FRestClient), 'RestClient is not assigned');
  CheckError(FIrisClass <> '', 'IrisClass property is Empty');
  try
    FRestRequest.Method := rmPOST;
    FRestRequest.Resource := 'delete';
    JSONObject := TJSONObject.Create;
    try
      JSONObject.AddPair('class', FIrisClass);
      JSONObject.AddPair('operation', 'delete');
      JSONObject.AddPair('ID', AID);
      FRestRequest.ClearBody;
      FRestRequest.AddBody(JSONObject.ToJSON, ctAPPLICATION_JSON);
      FRestRequest.OnHTTPProtocolError := OnHTTPProtocolError;
      // Execute
      FRestRequest.Execute;
      CheckError(FRestResponse.StatusCode <= 400, 'DeleteOnServer. REST Error');
      Result:= ExtractResult(FRestResponse.Content) = '1';
    finally
      JSONObject.Free;
    end;
  except on
    E: Exception do begin
      ShowDebugMessage('TX2IrisQuery.DeleteOnServer. Exception:' + E.Message + #13#10 +
       'StatusText: ' + FRestResponse.StatusText + #13#10 +
       'StatusCode: ' + IntToStr(FRestResponse.StatusCode) + #13#10 +
       FRestResponse.Content, 'Debug');
      Abort;
    end;
  end;
end;

initialization
  GRestClient := nil;
  GNamespace := '';
end.

