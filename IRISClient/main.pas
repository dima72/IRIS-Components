unit main;

interface

uses System.SysUtils, Winapi.Windows, Winapi.Messages, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  REST.Types, Vcl.ComCtrls, System.Classes, System.Actions,Vcl.Forms, Vcl.ActnList,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Client,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, X2IrisQuery,
  Vcl.BaseImageCollection, Vcl.ImageCollection, System.ImageList, Vcl.ImgList,
  Vcl.VirtualImageList, Vcl.Tabs, Vcl.Controls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ToolWin,
  VirtualTrees.BaseAncestorVCL, VirtualTrees.BaseTree, VirtualTrees.AncestorVCL,
  VirtualTrees, VCL.Dialogs, System.Generics.Collections, Data.DB,
  Vcl.Graphics, SynEdit, System.JSON, REST.Authenticator.Basic, loginform,
  Vcl.DBCtrls, atPascal, FormScript, IDEMain, atScript, atScripter, PropertyList;


const
   WM_SHOWLOGIN = WM_USER + 1;
type
   PNodeData = ^TNodeData;
   TNodeData = record
     Key: string;
     Caption: string;
     ClassName: string;
     NodeType: string;
     isPersistent: Boolean;
   end;
   TListNodeType = (lntNone, lntDb, lntGroup, lntTable, lntView, lntFunction, lntProcedure, lntTrigger, lntEvent, lntColumn);
   TIDECloseAction = (icaCloseAll, icaNothing);

   TMyIDEEngine = class(TIDEEngine)
   private
     procedure DesignerDialogClose(Sender: TObject);
   public
     procedure PrepareSaveDialog(ADlg: TOpenDialog; AFile: TIDEProjectFile); override;
     procedure PrepareSaveProjectDialog(ADlg: TOpenDialog); override;
     procedure PrepareOpenDialog(ADlg: TOpenDialog); override;
     procedure PrepareOpenProjectDialog(ADlg: TOpenDialog); override;

   end;

  TMainForm = class(TForm)
    VirtualImageListMain: TVirtualImageList;
    ImageCollectionIcons8: TImageCollection;
    ControlBarMain: TControlBar;
    ToolBarMainButtons: TToolBar;
    ToolButton9: TToolButton;
    btnExit: TToolButton;
    tlbSep1: TToolButton;
    ToolBarDonate: TToolBar;
    btnDonate: TToolButton;
    pnlLeft: TPanel;
    ToolBarTree: TToolBar;
    StatusBar: TStatusBar;
    spltDBtree: TSplitter;
    pnlRight: TPanel;
    qryX2IrisQuery: TX2IrisQuery;
    RESTClient: TRESTClient;
    ActionList1: TActionList;
    acRefresh: TAction;
    DBtree: TVirtualStringTree;
    VirtualImageList1: TVirtualImageList;
    BaseAuthenticator: THTTPBasicAuthenticator;
    acSysTools: TAction;
    DBNavigator1: TDBNavigator;
    dsrMain: TDataSource;
    pnlMain: TPanel;
    acDesigner: TAction;
    ToolButton1: TToolButton;
    cmp_IDEScripter: TIDEScripter;
    cmp_atPascalFormScripter: TatPascalFormScripter;
    procedure acRefreshExecute(Sender: TObject);
    procedure DBtreeGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure DBtreeGetNodeDataSize(Sender: TBaseVirtualTree;
      var NodeDataSize: Integer);
    procedure DBtreeInitChildren(Sender: TBaseVirtualTree; Node: PVirtualNode;
      var ChildCount: Cardinal);
    procedure DBtreeFreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
    procedure ctlNamespacesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBtreeFocusChanged(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex);
    procedure DBtreeNodeClick(Sender: TBaseVirtualTree;
      const HitInfo: THitInfo);
    procedure DBtreeCompareNodes(Sender: TBaseVirtualTree; Node1,
      Node2: PVirtualNode; Column: TColumnIndex; var Result: Integer);
    procedure acSysToolsExecute(Sender: TObject);
    procedure acDesignerExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FClasses: TStringList;
    FCloseAction: TIDECloseAction;
    FDesignerTitle: string;
    FIDEEngine: TMyIDEEngine;
    FLoginShown: Boolean;
    procedure DesignerFormClose(Sender: TObject; var Action: TCloseAction);
    procedure IDEInspectorFilter(Sender: TObject; Prop: TProperty; var Result: Boolean);
    procedure WMShowLogin(var Msg: TMessage); message WM_SHOWLOGIN;
    function GetNamespace: string;
    procedure SetNamespace(const Value: string);
    { Private declarations }
  public
    procedure InitDBTree;
    property  Namespace: string read GetNamespace write SetNamespace;
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  IniDirectory: string;
  FormsDirectory: string;
const
  APPNAME = 'Iris Client';
  DEFAULTNAMESPACE = 'CLIENTAPP';
  DEFAULTUSER = 'restuser';
  ININAME = 'IrisCLient.ini';
  RSScriptGetClassesNodes =
  'Set list="" '+
  'Do ##class(%SYSTEM.OBJ).GetClassList(.list) '+
  'Set class="" '+
  'For { '+
  '  Set class=$Order(list(class)) '+
  '  Quit:class="" '+
  '  Set isPersistent = $classmethod(class, "%Extends", "%Persistent") '+
  '  if isPersistent {Write class,";","P",!} else {Write class,!} '+
  '}';
  ScriptProjectFN = 'Project1.ssproj';

implementation

{$R *.dfm}

uses SysTools, fIDEEditor, IDERegDBPalette;


procedure EnsureDir(const APath: string);
begin
  if not DirectoryExists(APath) then
    ForceDirectories(APath);
end;

procedure TMainForm.acDesignerExecute(Sender: TObject);
var
  IsModal: Boolean;
  F: TIDEProjectFile;
  Proxy: TRestClient;
begin
  IsModal := False;
  RegisterDefaultRestClientAndNamespace(RestClient, Namespace);
  IDEEditorForm := TIDEEditorForm.Create(Application, ShowInTaskBar);
  try
    IDEEditorForm.Width := Width;
    IDEEditorForm.Height := Height;
    IDEEditorForm.ForceOldPalette := true;
    IDEEditorForm.AttachEngine(FIDEEngine);

    {Proxy := TRestClient.Create(IDEEditorForm.IDEFormDesignControl1.EditForm);
    Proxy.Name := 'RestClient1';
    cmp_IDEScripter.AddComponent(Proxy);}

    FIDEEngine.OpenProject(IncludeTrailingPathDelimiter(FormsDirectory) + ScriptProjectFN);
    FIDEEngine.Inspector.OnFilter := IDEInspectorFilter;

//    if Assigned(FOnCreateIDEForm) then
//      FOnCreateIDEForm(IDEForm);
//    IDEForm.OnNotifyShow := FOnShowIDEForm;

    {$IFDEF LIBBROWSER}
    IDEForm.LibraryBrowser.OnAcceptClass := AcceptClass;
    IDEForm.LibraryBrowser.OnAcceptLibrary := AcceptLibrary;
    IDEForm.LibraryBrowser.OnAcceptProperty := AcceptProperty;
    IDEForm.LibraryBrowser.OnAcceptMethod := AcceptMethod;
    {$ENDIF}

    IDEEditorForm.Title := FDesignerTitle;
    case FCloseAction of
      icaCloseAll: IDEEditorForm.CloseAllOnExit := true;
      icaNothing: IDEEditorForm.CloseAllOnExit := false;
    end;


    {$IFDEF THEMED_IDE}
    IDEForm.AppStyler := FAppStyler;
    {$ENDIF}

    IDEEditorForm.DestroyOnClose := not IsModal;
    if IsModal then
      IDEEditorForm.ShowModal
    else begin
      IDEEditorForm.OnClose := DesignerFormClose;
      Hide;
      IDEEditorForm.Show;
    end;
  finally
    if IsModal then
    begin
      IDEEditorForm.DetachEngine;
      IDEEditorForm.Free;
    end;
  end;
end;

procedure TMainForm.acRefreshExecute(Sender: TObject);
begin
  InitDBTree;
end;

procedure TMainForm.InitDBTree;
var
  RootNode: PVirtualNode;
  NodeData: PNodeData;
begin
  DBtree.BeginUpdate;
  try
    DBtree.Clear;
    RootNode := DBtree.AddChild(nil);
    NodeData := DBtree.GetNodeData(RootNode);
    NodeData^.Caption := 'Classes';
    NodeData^.NodeType := 'Root';
    NodeData^.Key := '';
    DBtree.HasChildren[RootNode] := True;
    FClasses.Text := qryX2IrisQuery.DoClassMethod('X2IrisClient.RESTServer',
    'RunScript', [Namespace, RSScriptGetClassesNodes]);
  finally
    DBtree.EndUpdate;
  end;
end;

procedure TMainForm.SetNamespace(const Value: string);
begin
  qryX2IrisQuery.Namespace := Value;
end;

function TMainForm.GetNamespace: string;
begin
  Result := qryX2IrisQuery.Namespace;
end;


{
procedure TMainForm.LoadClassData;
var
  NodeData: PNodeData;
  Node: PVirtualNode;
begin
  Node := DBtree.GetFirstSelected;
  if Assigned(Node) then begin
    NodeData := DBtree.GetNodeData(Node);
    if NodeData.NodeType = 'Class' then begin
      qryX2IrisQuery.Active := False;
      qryX2IrisQuery.Namespace := CurrentNamespace;
      CheckError(NodeData.ClassName <> '', 'NodeData.ClassName is Empty');
      qryX2IrisQuery.SQL.Text := Format('SELECT * FROM %s', [NodeData.ClassName]);
      qryX2IrisQuery.Active := True;
    end;
  end;
end;
}

procedure TMainForm.acSysToolsExecute(Sender: TObject);
begin
  with TSysToolsFrm.Create(nil) do begin
    ShowModal;
    Free;
  end;
end;

procedure TMainForm.ctlNamespacesChange(Sender: TObject);
begin
  InitDBTree;
end;

procedure TMainForm.DBtreeCompareNodes(Sender: TBaseVirtualTree; Node1,
  Node2: PVirtualNode; Column: TColumnIndex; var Result: Integer);
var
  NodeData1, NodeData2: PNodeData;
begin
  if not Assigned(Node1) then Exit;
  if not Assigned(Node2) then Exit;
  NodeData1 := Sender.GetNodeData(Node1);
  NodeData2 := Sender.GetNodeData(Node2);
  if NodeData1.NodeType = NodeData2.NodeType then
    Result := CompareText(NodeData1^.Caption, NodeData2^.Caption)
  else if NodeData1.NodeType = 'Package' then
    Result := -1
  else
    Result := 1;
end;

procedure TMainForm.DBtreeFocusChanged(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex);
var
  NodeData: PNodeData;
begin
  if not Assigned(Node) then Exit;
  NodeData := Sender.GetNodeData(Node);
  if Assigned(NodeData) then begin
    if NodeData^.NodeType = 'Class' then begin
        //qryX2IrisQuery.DoClassMethod('X2IrisClient.RESTServer', 'GetClassText',
        //  [CurrentNamespace, NodeData^.Key]);
    end
    else if NodeData^.NodeType = 'Package' then begin
      Sender.Expanded[Node] := False;
    end;
  end;
end;


procedure TMainForm.DBtreeFreeNode(Sender: TBaseVirtualTree;
  Node: PVirtualNode);
var
  NodeData: PNodeData;
begin
  NodeData := Sender.GetNodeData(Node);
  Finalize(NodeData^);
end;

procedure TMainForm.DBtreeGetNodeDataSize(Sender: TBaseVirtualTree;
  var NodeDataSize: Integer);
begin
  NodeDataSize := SizeOf(TNodeData);
end;

procedure TMainForm.DBtreeGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
  Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
var
  NodeData: PNodeData;
begin
  NodeData := Sender.GetNodeData(Node);
  if Assigned(NodeData) then
    CellText := NodeData^.Caption;
end;

procedure TMainForm.DBtreeInitChildren(Sender: TBaseVirtualTree;
  Node: PVirtualNode; var ChildCount: Cardinal);
var
  Child: PVirtualNode;
  NodeData, ChildData: PNodeData;
  I: Integer;
  sRow, sPackage, sClass, sKey: string;
  Unique: TStringList;
begin
  Unique := nil;
  DBtree.BeginUpdate;
  try
    Unique := TStringList.Create;
    Unique.Sorted := True;
    Unique.Duplicates := dupIgnore;
    NodeData := DBtree.GetNodeData(Node);
    if NodeData^.NodeType = 'Root' then begin
      // Extract first segment before dot
      for I := 0 to FClasses.Count - 1 do
      begin
        sRow := FClasses[I];
        sPackage := Fetch(sRow, '.');  // returns text before first dot
        if Unique.IndexOf(sPackage) = -1 then begin
          Unique.Add(sPackage);
          Child := DBtree.AddChild(Node);
          ChildData := Sender.GetNodeData(Child);
          ChildData.Caption := sPackage;
          ChildData.Key := ChildData.Caption + '.';
          ChildData.NodeType := 'Package';
          DBtree.HasChildren[Child] := True;
          ChildCount := ChildCount+1;
        end
      end;
    end
    else if NodeData^.NodeType = 'Package' then begin
      for I := 0 to FClasses.Count - 1 do
      begin
        sRow := FClasses[I];
        if Pos(NodeData^.Key, sRow) = 1 then begin
          Fetch(sRow, NodeData^.Key);
          if Pos('.', sRow) = 0 then begin // this is Node Class
            Child := DBtree.AddChild(Node);
            ChildData := Sender.GetNodeData(Child);
            ChildData.NodeType := 'Class';
            sClass := Fetch(sRow, ';');
            ChildData.Caption := sClass;
            ChildData.isPersistent := Trim(sRow) = 'P';
            sKey := FClasses[I];
            sKey := Fetch(sKey, ';');
            ChildData.Key := sKey;
            ChildData.ClassName := sKey;
            DBtree.HasChildren[Child] := False;
            ChildCount := ChildCount+1;
          end
          else begin
            sPackage := Fetch(sRow, '.');
            if Unique.IndexOf(sPackage) = -1 then begin
              Unique.Add(sPackage);
              Child := DBtree.AddChild(Node);
              ChildData := Sender.GetNodeData(Child);
              ChildData.Caption := sPackage;
              ChildData.Key := NodeData^.Key + sPackage + '.';
              ChildData.NodeType := 'Package';
              DBtree.HasChildren[Child] := True;
              ChildCount := ChildCount+1;
            end
          end;
        end
      end;
    end;
    if ChildCount > 2 then
      DBtree.Sort(Node, 0, sdAscending, True);
  finally
    Unique.Free;
    DBtree.EndUpdate;
  end;
end;

procedure TMainForm.DBtreeNodeClick(Sender: TBaseVirtualTree;
  const HitInfo: THitInfo);
begin
  if Assigned(HitInfo.HitNode) and not (THitPosition.hiOnItemButton in HitInfo.HitPositions)
     and not (THitPosition.hiOnItemButtonExact in HitInfo.HitPositions) then
    Sender.ToggleNode(HitInfo.HitNode);
end;

procedure TMainForm.DesignerFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Width := IDEEditorForm.Width;
  Height := IDEEditorForm.Height;
  Left := IDEEditorForm.Left;
  Top := IDEEditorForm.Top;
  Show;
  BringToFront;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  FLoginShown := False;
  FClasses := TStringList.Create;
  FIDEEngine := TMyIDEEngine.Create(Self);
  FIDEEngine.Scripter := cmp_IDEScripter;
  IDERegisterDataAccessTab(FIDEEngine as TIDEEngine);
  IDERegisterDataControlsTab(FIDEEngine as TIDEEngine);
  FIDEEngine.BasePath := ExtractFilePath(Application.ExeName);
  FormsDirectory := ExtractFilePath(Application.ExeName) + 'Forms';
  IniDirectory := ExtractFilePath(Application.ExeName);
  EnsureDir(FormsDirectory);
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  PostMessage(Handle, WM_SHOWLOGIN, 0, 0);
end;

procedure TMainForm.WMShowLogin(var Msg: TMessage);
begin
  if not FLoginShown then begin
    with TfrmLogin.Create(nil) do begin
      FLoginShown := True;
      if ShowModal <> mrOK then
        Application.Terminate;
      Free
    end;
  end;
end;


procedure TMainForm.IDEInspectorFilter(Sender: TObject; Prop: TProperty;
  var Result: Boolean);
begin
  if Prop.Name = 'RestClient' then
    Result := False;
end;


procedure TMyIDEEngine.PrepareOpenDialog(ADlg: TOpenDialog);
begin
  inherited;
  ADlg.InitialDir := FormsDirectory;
  ADlg.OnClose := DesignerDialogClose;
end;

procedure TMyIDEEngine.PrepareOpenProjectDialog(ADlg: TOpenDialog);
begin
  inherited;
  ADlg.InitialDir := FormsDirectory;
  ADlg.OnClose := DesignerDialogClose;
end;

{ TMyIDEEngineAccess }

procedure TMyIDEEngine.PrepareSaveDialog(ADlg: TOpenDialog;
  AFile: TIDEProjectFile);
begin
  inherited;
  ADlg.InitialDir := FormsDirectory;
  ADlg.OnClose := DesignerDialogClose;
end;

procedure TMyIDEEngine.PrepareSaveProjectDialog(ADlg: TOpenDialog);
begin
  inherited;
  ADlg.InitialDir := FormsDirectory;
  ADlg.OnClose := DesignerDialogClose;
end;

procedure TMyIDEEngine.DesignerDialogClose(Sender: TObject);
begin
  if Assigned(IDEEditorForm) then
    IDEEditorForm.BringToFront;
end;




end.
