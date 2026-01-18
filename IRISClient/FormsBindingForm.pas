unit FormsBindingForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ClassExplorerFrme, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, X2IrisQuery, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.ToolWin, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls;

type
  TFormsBindingFrm = class(TForm)
    DataSource1: TDataSource;
    X2IrisQuery1: TX2IrisQuery;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Splitter2: TSplitter;
    ToolBar1: TToolBar;
    DBNavigator1: TDBNavigator;
    X2IrisQuery1ID: TIntegerField;
    X2IrisQuery1FormName: TStringField;
    X2IrisQuery1RefClass: TStringField;
    X2IrisQuery1Resource: TWideMemoField;
    X2IrisQuery1Script: TWideMemoField;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormsBindingFrm: TFormsBindingFrm;

implementation

{$R *.dfm}

uses main;

procedure TFormsBindingFrm.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button in [nbRefresh] then begin
     X2IrisQuery1.Active := False;
     X2IrisQuery1.Active := True;
  end;

end;

procedure TFormsBindingFrm.FormCreate(Sender: TObject);
begin
  X2IrisQuery1.Active := True;
end;

end.
