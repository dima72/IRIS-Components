unit loginform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.UITypes, IniFiles;

type
  TfrmLogin = class(TForm)
    btnOK: TButton;
    pnlBackground: TPanel;
    imgIcon: TImage;
    chkRememberParams: TCheckBox;
    Bevel1: TBevel;
    lbNamespace: TLabel;
    lcNamespaces: TComboBox;
    lblUsername: TLabel;
    edUsername: TEdit;
    lblPassword: TLabel;
    edPassword: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edPasswordChange(Sender: TObject);
  private
    FIniFile: TIniFIle;
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

uses main, X2IrisQuery;

{$R *.dfm}
//{$I const.inc}

procedure TfrmLogin.btnOKClick(Sender: TObject);
var
  Namespace: string;
begin
  with MainForm, BaseAuthenticator do begin
    Username := Trim(edUsername.Text);
    Password := Trim(edPassword.Text);
    Namespace := Trim(lcNamespaces.Items.Strings[lcNamespaces.ItemIndex]);
    RegisterDefaultRestClientAndNamespace(RESTClient, Namespace);
    ClassExplorer.InitDBTree;
    with FIniFile do begin
      if chkRememberParams.Checked then begin
        WriteString('Login', 'Namespace', Namespace);
        WriteString('Login', 'UserName', edUsername.Text);
        WriteString('Login', 'Password', edPassword.Text);
        WriteBool('Login', 'RememberParams', True);
        WriteString('Database', 'IrisURL', MainForm.RESTClient.BaseURL);
      end;
    end;
  end;
  ModalResult := mrOk;
end;

procedure TfrmLogin.edPasswordChange(Sender: TObject);
begin
  btnOK.Enabled := (edUsername.GetTextLen > 0) and (edPassword.GetTextLen > 0);
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  Caption := APPNAME + ' - Login';
  lcNamespaces.Items.Add(DEFAULTNAMESPACE);
  lcNamespaces.ItemIndex := 0;
  var IniFile := IncludeTrailingPathDelimiter(IniDirectory) + ININAME;
  FIniFile := TIniFile.Create(IniFile);
  with FIniFile do begin
    MainForm.RESTClient.BaseURL := ReadString('Database', 'IrisURL',
      DEFAULTURL);
    chkRememberParams.Checked := ReadBool('Login', 'RememberParams', True);
    edUsername.Text := ReadString('Login', 'UserName', DEFAULTUSER);
    edPassword.Text := ReadString('Login', 'Password', '');
  end;
end;

procedure TfrmLogin.FormDestroy(Sender: TObject);
begin
  FIniFile.Free;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  if edPassword.CanFocus and (edUsername.GetTextLen > 0) and (edPassword.GetTextLen = 0) then
    edPassword.SetFocus
  else if edUsername.CanFocus then
    edUsername.SetFocus;
end;

end.
