object SysToolsFrm: TSysToolsFrm
  Left = 0
  Top = 0
  Caption = 'SysToolsFrm'
  ClientHeight = 552
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ctlSource: TMemo
    Left = 27
    Top = 104
    Width = 494
    Height = 201
    Lines.Strings = (
      'Set x = 10'#10'   '
      ' For i=1:1:5 {'#10'  '
      '    Write !, i, "" -> "", (x+i)'#10'    '
      '}')
    TabOrder = 0
  end
  object ctlResultMemo: TMemo
    Left = 27
    Top = 328
    Width = 494
    Height = 201
    Lines.Strings = (
      'ctlResultMemo')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 136
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object qryX2IrisQuery: TX2IrisQuery
    Active = False
    SQL.Strings = (
      'SELECT * FROM %Dictionary.ClassDefinition')
    Namespace = 'clientapp'
    Left = 62
    Top = 46
  end
end
