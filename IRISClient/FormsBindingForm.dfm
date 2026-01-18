object FormsBindingFrm: TFormsBindingFrm
  Left = 0
  Top = 0
  Caption = 'Forms Binding'
  ClientHeight = 542
  ClientWidth = 946
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 521
    Top = 0
    Height = 542
    ExplicitLeft = 600
    ExplicitTop = 216
    ExplicitHeight = 100
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 542
    Align = alLeft
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 1
      Top = 317
      Width = 519
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 1
      ExplicitWidth = 319
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 30
      Width = 519
      Height = 287
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object DBMemo2: TDBMemo
      Left = 1
      Top = 320
      Width = 519
      Height = 221
      Align = alBottom
      DataField = 'Resource'
      DataSource = DataSource1
      TabOrder = 1
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 519
      Height = 29
      Caption = 'ToolBar1'
      TabOrder = 2
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 240
        Height = 22
        DataSource = DataSource1
        TabOrder = 0
        OnClick = DBNavigator1Click
      end
    end
  end
  object DBMemo1: TDBMemo
    Left = 524
    Top = 0
    Width = 422
    Height = 542
    Align = alClient
    DataField = 'Script'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = X2IrisQuery1
    Left = 248
    Top = 80
  end
  object X2IrisQuery1: TX2IrisQuery
    RestClient = MainForm.RESTClient
    Active = False
    SQL.Strings = (
      'SELECT * FROM X2IrisClient.Forms')
    Namespace = 'CLIENTAPP'
    IrisClass = 'X2IrisClient.Forms'
    Left = 144
    Top = 80
    object X2IrisQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object X2IrisQuery1FormName: TStringField
      FieldName = 'FormName'
      Origin = 'FormName'
      Size = 50
    end
    object X2IrisQuery1RefClass: TStringField
      FieldName = 'RefClass'
      Origin = 'RefClass'
      Size = 50
    end
    object X2IrisQuery1Resource: TWideMemoField
      FieldName = 'Resource'
      Origin = 'Resource'
      BlobType = ftWideMemo
    end
    object X2IrisQuery1Script: TWideMemoField
      FieldName = 'Script'
      Origin = 'Script'
      BlobType = ftWideMemo
    end
  end
end
