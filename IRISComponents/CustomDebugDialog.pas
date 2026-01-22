unit CustomDebugDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmCustomDebug = class(TForm)
    MemoMessage: TMemo;
    pnlBottom: TPanel;
    btOK: TButton;
    procedure btOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SetMessageText(const Msg: string);
  end;

// Function to call the dialog
procedure ShowDebugMessage(const Msg: string; const Title: string = 'Debug Information');

var
  frmCustomDebug: TfrmCustomDebug;
implementation

{$R *.dfm}

procedure TfrmCustomDebug.btOKClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmCustomDebug.SetMessageText(const Msg: string);
begin
  MemoMessage.Lines.Text := Msg;
end;

procedure ShowDebugMessage(const Msg: string; const Title: string);
var
  DebugForm: TfrmCustomDebug;
begin
  DebugForm := TfrmCustomDebug.Create(Application);
  try
    DebugForm.Caption := Title;
    DebugForm.Position := poMainFormCenter;
    DebugForm.SetMessageText(Msg);
    DebugForm.ShowModal;
  finally
    DebugForm.Release; // Use Release instead of Free for forms shown with ShowModal
  end;
end;


end.

