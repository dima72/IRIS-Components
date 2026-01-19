program IrisClient;

uses
  Winapi.Windows,
  Vcl.Forms,
  main in 'main.pas' {MainForm},
  loginform in 'loginform.pas' {frmLogin},
  SysTools in 'SysTools.pas' {SysToolsFrm},
  dideactions in 'dideactions.pas' {dmIDEActions: TDataModule},
  fIDEEditor in 'fIDEEditor.pas' {IDEEditorForm},
  IDERegDBPalette in 'IDERegDBPalette.pas',
  ap_X2IrisQuery in 'ap_X2IrisQuery.pas',
  ClassExplorerFrme in 'ClassExplorerFrme.pas' {ClassExplorerFrame: TFrame},
  FormsBindingForm in 'FormsBindingForm.pas' {FormsBindingFrm},
  ClassExplorerForm in 'ClassExplorerForm.pas' {ClassExplorerFrm},
  ClassEditorForm in 'ClassEditorForm.pas' {ClassEditorFrm};

{$R *.res}
var
  Mutex: THandle;
begin
  Mutex := CreateMutex(nil, True, 'IRISClient_SingleInstance_Mutex');

  if (Mutex <> 0) and (GetLastError = ERROR_ALREADY_EXISTS) then
  begin
    // Instance already running
    ExitProcess(0);
  end;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TdmIDEActions, dmIDEActions);
  Application.Run;
  if Mutex <> 0 then
    CloseHandle(Mutex);
end.

