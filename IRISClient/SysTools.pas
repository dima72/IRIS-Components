unit SysTools;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, X2IrisQuery;

type
  TSysToolsFrm = class(TForm)
    ctlSource: TMemo;
    ctlResultMemo: TMemo;
    Button1: TButton;
    qryX2IrisQuery: TX2IrisQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SysToolsFrm: TSysToolsFrm;

implementation

{$R *.dfm}
uses main;

procedure TSysToolsFrm.Button1Click(Sender: TObject);
begin
  ctlResultMemo.Text :=
  qryX2IrisQuery.DoClassMethod('X2IrisClient.RESTServer', 'RunScript',
    [MainForm.ClassExplorer.Namespace, NormalizeScript(ctlSource.Text)]);
end;


end.
