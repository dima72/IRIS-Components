object FormsBindingFrm: TFormsBindingFrm
  Left = 0
  Top = 0
  Caption = 'Forms Binding'
  ClientHeight = 443
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  inline ClassExplorer: TClassExplorerFrame
    Left = 0
    Top = 0
    Width = 702
    Height = 443
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 702
    ExplicitHeight = 443
    inherited spltDBtree: TSplitter
      Height = 443
      ExplicitHeight = 443
    end
    inherited pnlLeft: TPanel
      Height = 443
      StyleElements = [seFont, seClient, seBorder]
      ExplicitHeight = 443
      inherited DBtree: TVirtualStringTree
        Height = 443
        ExplicitHeight = 443
        DefaultText = ''
      end
    end
    inherited pnlRight: TPanel
      Width = 447
      Height = 443
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 447
      ExplicitHeight = 443
    end
  end
end
