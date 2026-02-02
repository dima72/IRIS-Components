unit uGridFilterHelper;

/// ---------------------------------------------------------------------------
///  Copyright © 2026 RocketCitySoft LLC
///  https://www.rocketcitysoft.com
///
///  Author: Dmitry Konnov  (konnov72@gmail.com)
///  License: MGPL – Modified GNU Public License
///  This module requires attribution to the original author in derivative works.
///
///  History:
///    Jan 2026 – Initial version
/// ---------------------------------------------------------------------------

interface

uses
  Winapi.Windows, System.Classes, System.Generics.Collections, UniDBGrid, UniEdit,
  uniGUIFrame, uniMainMenu, FireDAC.Comp.Client, SysUtils, Vcl.Controls;

type
  TGridFilterHelper = class
  private
    FGrid: TUniDBGrid;
    FQuery: TFDQuery;
    FFields: TDictionary<string,string>;
    FPopup: TUniPopupMenu;
    FEdit: TUniEdit;
    procedure DoCellContextClick(Column: TUniDBGridColumn; X, Y: Integer);
    procedure DoOperatorClick(Sender: TObject);
    procedure DoEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ApplyFilter(const FieldName, Op, Val: string);
  public
    constructor Create(AGrid: TUniDBGrid; AQuery: TFDQuery);
    destructor Destroy; override;
    function AddField(const FieldName: string): TGridFilterHelper;
  end;

implementation

constructor TGridFilterHelper.Create(AGrid: TUniDBGrid; AQuery: TFDQuery);
var
  MI: TUniMenuItem;
  I: Integer;
  OwnerFrame: TUniFrame;
const
  Ops: array[0..5] of string = ('=', '<>', '>', '<', 'contains', 'startswith');
begin
  FGrid := AGrid;
  FQuery := AQuery;
  FFields := TDictionary<string,string>.Create;

  // find the form or frame that owns the grid
  OwnerFrame := TUniFrame(AGrid.Owner);
  // popup MUST be owned by a form/frame, not the grid
  FPopup := TUniPopupMenu.Create(OwnerFrame);
  for I := 0 to High(Ops) do
  begin
    MI := TUniMenuItem.Create(FPopup);
    MI.Caption := Ops[I];
    MI.OnClick := DoOperatorClick;
    FPopup.Items.Add(MI);
  end;

  FEdit := TUniEdit.Create(OwnerFrame);
  FEdit.Parent := OwnerFrame;
  FEdit.Width := 160;
  FEdit.Height := 28;
  FEdit.Left := 10;
  FEdit.Top := 10;
  FEdit.Visible := True;
  FEdit.Visible := False;
  FEdit.OnKeyDown := DoEditKeyDown;
  FEdit.BringToFront;

  FGrid.OnCellContextClick := DoCellContextClick;
end;

destructor TGridFilterHelper.Destroy;
begin
  FFields.Free;
  inherited;
end;

function TGridFilterHelper.AddField(const FieldName: string): TGridFilterHelper;
begin
  FFields.Add(FieldName, FieldName);
  Result := Self;
end;

procedure TGridFilterHelper.DoCellContextClick(Column: TUniDBGridColumn; X, Y: Integer);
begin
  if FFields.ContainsKey(Column.FieldName) then
  begin
    FPopup.Tag := NativeInt(Column);
    FPopup.Popup(X, Y);
  end;
end;

procedure TGridFilterHelper.DoOperatorClick(Sender: TObject);
var
  Col: TUniDBGridColumn;
  P: TPoint;
begin
  Col := TUniDBGridColumn(FPopup.Tag);
  if Col = nil then Exit;

  // store operator + column
  FEdit.Tag := NativeInt(Col);
  FEdit.Hint := TUniMenuItem(Sender).Caption;

  // position edit near mouse cursor
  P := FGrid.ScreenToClient(Mouse.CursorPos);
  FEdit.Left := P.X + 10;
  FEdit.Top := P.Y + 10;

  FEdit.Width := 160;
  FEdit.Height := 28;

  FEdit.Text := '';
  FEdit.Visible := True;
  FEdit.BringToFront;
  FEdit.SetFocus;
end;

procedure TGridFilterHelper.DoEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Col: TUniDBGridColumn;
begin
  if Key = VK_RETURN then
  begin
    Col := TUniDBGridColumn(FEdit.Tag);
    ApplyFilter(Col.FieldName, FEdit.Hint, FEdit.Text);
    FEdit.Visible := False;
  end;
end;

procedure TGridFilterHelper.ApplyFilter(const FieldName, Op, Val: string);
var
  SQL: string;
begin
  FQuery.Close;

  if Op = 'contains' then
    SQL := Format('%s LIKE :p', [FieldName])
  else if Op = 'startswith' then
    SQL := Format('%s LIKE :p', [FieldName])
  else
    SQL := Format('%s %s :p', [FieldName, Op]);

  FQuery.SQL.Text := 'SELECT *, Spouse->Name as SpouseName FROM ' + FQuery.UpdateOptions.UpdateTableName +
                     ' WHERE ' + SQL;

  if Op = 'contains' then
    FQuery.ParamByName('p').AsString := '%' + Val + '%'
  else if Op = 'startswith' then
    FQuery.ParamByName('p').AsString := Val + '%'
  else
    FQuery.ParamByName('p').AsString := Val;

  FQuery.Open;
end;

end.

{
unit uGridFilterHelper;

interface

uses
  System.Classes, System.Generics.Collections, UniGUIClasses, UniGUIBaseClasses,
  UniDBGrid, UniGUIForm, UniGUIApplication, UniEdit, uniMainMenu, FireDAC.Comp.Client;

type
  TGridFilterHelper = class
  private
    FGrid: TUniDBGrid;
    FQuery: TFDQuery;
    FFields: TDictionary<string,string>;
    FPopup: TUniPopupMenu;
    FEdit: TUniEdit;
    procedure DoColumnMenu(Sender: TUniDBGrid; Column: TUniDBGridColumn);
    procedure DoOperatorClick(Sender: TObject);
    procedure DoEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ApplyFilter(const FieldName, Op, Val: string);
  public
    constructor Create(AGrid: TUniDBGrid; AQuery: TFDQuery);
    destructor Destroy; override;
    function AddField(const FieldName: string): TGridFilterHelper;
  end;

implementation

uses
  SysUtils, Vcl.Controls, UniGUIVars;

constructor TGridFilterHelper.Create(AGrid: TUniDBGrid; AQuery: TFDQuery);
var
  MI: TUniMenuItem;
  I: Integer;
const
  Ops: array[0..5] of string = ('=', '<>', '>', '<', 'contains', 'startswith');
begin
  FGrid := AGrid;
  FQuery := AQuery;
  FFields := TDictionary<string,string>.Create;

  FPopup := TUniPopupMenu.Create(AGrid);
  for I := 0 to High(Ops) do
  begin
    MI := TUniMenuItem.Create(FPopup);
    MI.Caption := Ops[I];
    MI.OnClick := DoOperatorClick;
    FPopup.Items.Add(MI);
  end;

  FEdit := TUniEdit.Create(AGrid);
  FEdit.Visible := False;
  FEdit.OnKeyDown := DoEditKeyDown;

  FGrid.OnColumnMenu := DoColumnMenu;
end;

destructor TGridFilterHelper.Destroy;
begin
  FFields.Free;
  inherited;
end;

function TGridFilterHelper.AddField(const FieldName: string): TGridFilterHelper;
begin
  FFields.Add(FieldName, FieldName);
  Result := Self;
end;

procedure TGridFilterHelper.DoColumnMenu(Sender: TUniDBGrid; Column: TUniDBGridColumn);
begin
  if FFields.ContainsKey(Column.FieldName) then
  begin
    FPopup.Tag := NativeInt(Column);
    FPopup.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  end;
end;

procedure TGridFilterHelper.DoOperatorClick(Sender: TObject);
var
  Col: TUniDBGridColumn;
begin
  Col := TUniDBGridColumn(FPopup.Tag);
  FEdit.Tag := NativeInt(Col);
  FEdit.Hint := TUniMenuItem(Sender).Caption;
  FEdit.Text := '';
  FEdit.Visible := True;
  FEdit.SetFocus;
end;

procedure TGridFilterHelper.DoEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Col: TUniDBGridColumn;
begin
  if Key = VK_RETURN then
  begin
    Col := TUniDBGridColumn(FEdit.Tag);
    ApplyFilter(Col.FieldName, FEdit.Hint, FEdit.Text);
    FEdit.Visible := False;
  end;
end;

procedure TGridFilterHelper.ApplyFilter(const FieldName, Op, Val: string);
var
  SQL: string;
begin
  FQuery.Close;

  if Op = 'contains' then
    SQL := Format('%s LIKE :p', [FieldName])
  else if Op = 'startswith' then
    SQL := Format('%s LIKE :p', [FieldName])
  else
    SQL := Format('%s %s :p', [FieldName, Op]);

  FQuery.SQL.Text := 'SELECT * FROM ' + FQuery.UpdateOptions.UpdateTableName +
                     ' WHERE ' + SQL;

  if Op = 'contains' then
    FQuery.ParamByName('p').AsString := '%' + Val + '%'
  else if Op = 'startswith' then
    FQuery.ParamByName('p').AsString := Val + '%'
  else
    FQuery.ParamByName('p').AsString := Val;

  FQuery.Open;
end;

end.

}
