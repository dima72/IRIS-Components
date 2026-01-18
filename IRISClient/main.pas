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
  Vcl.Graphics, SynEdit, System.JSON, REST.Authenticator.Basic,
  Vcl.DBCtrls, atPascal, FormScript, IDEMain, atScript, atScripter, PropertyList,
  Vcl.ScriptForm, ClassExplorerFrme, Vcl.Menus;


const
   WM_SHOWLOGIN = WM_USER + 1;
type
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
    StatusBar: TStatusBar;
    ActionList1: TActionList;
    acRefresh: TAction;
    acSysTools: TAction;
    acDesigner: TAction;
    ToolButton1: TToolButton;
    cmp_IDEScripter: TIDEScripter;
    cmp_atPascalFormScripter: TatPascalFormScripter;
    DBNavigator1: TDBNavigator;
    ClassExplorer: TClassExplorerFrame;
    MainMenu1: TMainMenu;
    MainMenuFile: TMenuItem;
    N5: TMenuItem;
    MainMenuEdit: TMenuItem;
    MainMenuTools: TMenuItem;
    MenuUserManager: TMenuItem;
    menuMaintenance: TMenuItem;
    MainMenuGoto: TMenuItem;
    MainMenuHelp: TMenuItem;
    acFormsBinding: TAction;
    RESTClient: TRESTClient;
    BaseAuthenticator: THTTPBasicAuthenticator;
    procedure acRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acSysToolsExecute(Sender: TObject);
    procedure acDesignerExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acFormsBindingExecute(Sender: TObject);
  private
    FCloseAction: TIDECloseAction;
    FDesignerTitle: string;
    FIDEEngine: TMyIDEEngine;
    FLoginShown: Boolean;
    procedure DesignerFormClose(Sender: TObject; var Action: TCloseAction);
    procedure IDEInspectorFilter(Sender: TObject; Prop: TProperty; var Result: Boolean);
    procedure WMShowLogin(var Msg: TMessage); message WM_SHOWLOGIN;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  IniDirectory: string;
  FormsDirectory: string;
const
  APPNAME = 'Iris Client';
  DEFAULTNAMESPACE = 'CLIENTAPP';
  DEFAULTURL = 'http://localhost:52773/csp/clientapp';
  DEFAULTUSER = 'restuser';
  ININAME = 'IrisCLient.ini';
  ScriptProjectFN = 'Project1.ssproj';

implementation

{$R *.dfm}

uses loginform, SysTools, fIDEEditor, IDERegDBPalette, FormsBindingForm;


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
  RegisterDefaultRestClientAndNamespace(RestClient, ClassExplorer.Namespace);
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

procedure TMainForm.acFormsBindingExecute(Sender: TObject);
begin
  with TFormsBindingFrm.Create(nil) do begin
    Classexplorer.qryX2IrisQuery.RestClient := RestClient;
    Classexplorer.Namespace := Self.Classexplorer.Namespace;
    Classexplorer.InitDBTree;
    ShowModal;
    Free;
  end;
end;

procedure TMainForm.acRefreshExecute(Sender: TObject);
begin
  ClassExplorer.InitDBTree;
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
    qryX2IrisQuery.RestClient := RestClient;
    qryX2IrisQuery.Namespace := ClassExplorer.Namespace;
    ShowModal;
    Free;
  end;
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
