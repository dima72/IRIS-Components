object frmCustomDebug: TfrmCustomDebug
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 258
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object MemoMessage: TMemo
    Left = 0
    Top = 0
    Width = 523
    Height = 217
    Align = alClient
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
    ExplicitHeight = 169
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 217
    Width = 523
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      523
      41)
    object btOK: TButton
      Left = 440
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      TabOrder = 0
      OnClick = btOKClick
    end
  end
end
