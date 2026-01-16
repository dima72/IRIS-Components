unit FormsBindingForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ClassExplorerFrme;

type
  TFormsBindingFrm = class(TForm)
    ClassExplorer: TClassExplorerFrame;
    procedure FormCreate(Sender: TObject);
  private
    procedure OnNodeSelect(Sender: TObject; NodeData: PNodeData);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormsBindingFrm: TFormsBindingFrm;

implementation

{$R *.dfm}

procedure TFormsBindingFrm.FormCreate(Sender: TObject);
begin
  ClassExplorer.OnNodeSelect := OnNodeSelect;
end;

procedure TFormsBindingFrm.OnNodeSelect(Sender: TObject; NodeData: PNodeData);
begin
  ShowMessage(NodeData.ClassName);
end;

end.
