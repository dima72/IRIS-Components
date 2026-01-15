{***************************************************************************}
{ This source code was generated automatically by                           }
{ Pas file import tool for Scripter Studio (Pro)                            }
{                                                                           }
{ Scripter Studio and Pas file import tool for Scripter Studio              }
{ written by TMS Software                                                   }
{            copyright © 1997 - 2010                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{***************************************************************************}
unit ap_X2IrisQuery;

interface

uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  REST.Types,
  REST.Client,
  REST.Response.Adapter,
  System.JSON,
  FireDAC.Stan.Intf,
  FireDAC.Stan.StorageJSON,
  Vcl.Dialogs,
  X2IrisQuery,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatX2IrisQueryLibrary = class(TatScripterLibrary)
    procedure __TX2IrisQueryCreate(AMachine: TatVirtualMachine);
    procedure __TX2IrisQueryDestroy(AMachine: TatVirtualMachine);
    procedure __TX2IrisQueryGetNamespaces(AMachine: TatVirtualMachine);
    procedure __TX2IrisQueryOpen(AMachine: TatVirtualMachine);
    procedure __TX2IrisQueryPost(AMachine: TatVirtualMachine);
    procedure __TX2IrisQueryClose(AMachine: TatVirtualMachine);
    procedure __GetTX2IrisQueryRestResponse(AMachine: TatVirtualMachine);
    procedure __CheckError(AMachine: TatVirtualMachine);
    procedure __NormalizeScript(AMachine: TatVirtualMachine);
    procedure __Fetch(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TX2IrisQueryClass = class of TX2IrisQuery;



implementation



procedure TatX2IrisQueryLibrary.__TX2IrisQueryCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
    AResult := ObjectToVar(TX2IrisQueryClass(CurrentClass.ClassRef).Create(VarToObject(GetInputArg(0)) as TComponent));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatX2IrisQueryLibrary.__TX2IrisQueryDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TX2IrisQuery(CurrentObject).Destroy;
  end;
end;

procedure TatX2IrisQueryLibrary.__TX2IrisQueryGetNamespaces(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TX2IrisQuery(CurrentObject).GetNamespaces(VarToObject(GetInputArg(0)) as TStrings, VarToStr(GetInputArg(1)));
  end;
end;

procedure TatX2IrisQueryLibrary.__TX2IrisQueryOpen(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TX2IrisQuery(CurrentObject).Open;
  end;
end;

procedure TatX2IrisQueryLibrary.__TX2IrisQueryPost(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TX2IrisQuery(CurrentObject).Post;
  end;
end;

procedure TatX2IrisQueryLibrary.__TX2IrisQueryClose(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TX2IrisQuery(CurrentObject).Close;
  end;
end;

procedure TatX2IrisQueryLibrary.__GetTX2IrisQueryRestResponse(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TX2IrisQuery(CurrentObject).RestResponse));
  end;
end;

procedure TatX2IrisQueryLibrary.__CheckError(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    X2IrisQuery.CheckError(GetInputArg(0),VarToStr(GetInputArg(1)));
  end;
end;

procedure TatX2IrisQueryLibrary.__NormalizeScript(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(X2IrisQuery.NormalizeScript(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatX2IrisQueryLibrary.__Fetch(AMachine: TatVirtualMachine);
  var
  Param0: string;
  AResult: variant;
begin
  with AMachine do
  begin
    Param0 := VarToStr(GetInputArg(0));
    AResult := string(X2IrisQuery.Fetch(Param0,VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
    SetInputArg(0,string(Param0));
  end;
end;

procedure TatX2IrisQueryLibrary.Init;
begin
  With Scripter.DefineClass(TX2IrisQuery) do
  begin
    DefineMethod('Create',1,tkClass,TX2IrisQuery,__TX2IrisQueryCreate,true,0,'AOwner: TComponent');
    DefineMethod('Destroy',0,tkNone,nil,__TX2IrisQueryDestroy,false,0,'');
    DefineMethod('GetNamespaces',2,tkNone,nil,__TX2IrisQueryGetNamespaces,false,0,'AList: TStrings; ADefaultNamespace: string');
    DefineMethod('Open',0,tkNone,nil,__TX2IrisQueryOpen,false,0,'');
    DefineMethod('Post',0,tkNone,nil,__TX2IrisQueryPost,false,0,'');
    DefineMethod('Close',0,tkNone,nil,__TX2IrisQueryClose,false,0,'');
    DefineProp('RestResponse',tkVariant,__GetTX2IrisQueryRestResponse,nil,nil,false,0);
    // hidden property
   // DefineProp('RestClient', tkClass, nil, nil);
  end;
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('CheckError',2,tkNone,nil,__CheckError,false,0,'ATrue: Boolean; AMessage: string');
    DefineMethod('NormalizeScript',1,tkVariant,nil,__NormalizeScript,false,0,'AScript: string');
    DefineMethod('Fetch',2,tkVariant,nil,__Fetch,false,0,'AStr: string; ADelimiter: string').SetVarArgs([0]);
    AddConstant('NamespacesScript',NamespacesScript);
  end;
end;


class function TatX2IrisQueryLibrary.LibraryName: string;
begin
  result := 'X2IrisQuery';
end;

initialization
  RegisterScripterLibrary(TatX2IrisQueryLibrary, True);


{$WARNINGS ON}

end.

