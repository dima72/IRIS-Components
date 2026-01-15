program IrisClient;

uses
  Winapi.Windows,
  Vcl.Forms,
  main in 'main.pas' {MainForm},
  SynIRISSyn in 'SynIRISSyn.pas',
  loginform in 'loginform.pas' {frmLogin},
  SysTools in 'SysTools.pas' {SysToolsFrm},
  dideactions in 'dideactions.pas' {dmIDEActions: TDataModule},
  fIDEEditor in 'fIDEEditor.pas' {IDEEditorForm},
  IDERegDBPalette in 'IDERegDBPalette.pas',
  ap_X2IrisQuery in 'ap_X2IrisQuery.pas';

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
  Application.Run;
  if Mutex <> 0 then
    CloseHandle(Mutex);
end.

