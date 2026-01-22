object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 634
  ClientWidth = 985
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object ControlBarMain: TControlBar
    Left = 0
    Top = 0
    Width = 985
    Height = 26
    Align = alTop
    AutoSize = True
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkNone
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object ToolBarMainButtons: TToolBar
      Left = 264
      Top = 2
      Width = 121
      Height = 22
      Align = alNone
      AutoSize = True
      Caption = 'ToolBarMainButtons'
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = dmIDEActions.VirtualImageList1
      TabOrder = 0
      Wrapable = False
      object ToolButton9: TToolButton
        Left = 0
        Top = 0
        Action = acRefresh
        AutoSize = True
        Style = tbsDropDown
      end
      object tlbSep1: TToolButton
        Left = 44
        Top = 0
        Width = 8
        Caption = 'tlbSep1'
        ImageIndex = 2
        ImageName = 'icons8-cut-100'
        Style = tbsSeparator
      end
      object btnExit: TToolButton
        Left = 52
        Top = 0
        Action = acSysTools
      end
      object ToolButton1: TToolButton
        Left = 75
        Top = 0
        Action = acDesigner
      end
      object ToolButton2: TToolButton
        Left = 98
        Top = 0
        Action = dmIDEActions.acClassExplorer
      end
    end
    object ToolBarDonate: TToolBar
      Left = 400
      Top = 2
      Width = 65
      Height = 22
      Align = alNone
      AutoSize = True
      ButtonWidth = 65
      Caption = 'Donate'
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = VirtualImageListMain
      List = True
      ShowCaptions = True
      TabOrder = 1
      Wrapable = False
      object btnDonate: TToolButton
        Left = 0
        Top = 0
        Hint = 
          'Send an arbitrary amount as donation to the author - per PayPal ' +
          '(also supports credit cards)'
        Caption = 'Donate'
        ImageIndex = 185
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 11
      Top = 2
      Width = 240
      Height = 22
      TabOrder = 2
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 615
    Width = 985
    Height = 19
    AutoHint = True
    Panels = <
      item
        Width = 150
      end
      item
        Width = 110
      end
      item
        Style = psOwnerDraw
        Width = 140
      end
      item
        Style = psOwnerDraw
        Width = 170
      end
      item
        Width = 170
      end
      item
        Style = psOwnerDraw
        Width = 170
      end
      item
        Style = psOwnerDraw
        Width = 250
      end>
    ParentFont = True
    UseSystemFont = False
  end
  inline ClassExplorer: TClassExplorerFrame
    Left = 0
    Top = 26
    Width = 985
    Height = 589
    Align = alClient
    TabOrder = 2
    ExplicitTop = 26
    ExplicitWidth = 985
    ExplicitHeight = 589
    inherited spltDBtree: TSplitter
      Height = 589
      ExplicitHeight = 589
    end
    inherited pnlLeft: TPanel
      Height = 589
      StyleElements = [seFont, seClient, seBorder]
      ExplicitHeight = 589
      inherited DBtree: TVirtualStringTree
        Height = 589
        ExplicitHeight = 589
        Columns = <
          item
            Position = 0
            Text = 'Name'
            Width = 245
          end
          item
            Alignment = taRightJustify
            MinWidth = 0
            Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coAllowFocus]
            Position = 1
            Text = 'Size'
            Width = 55
          end>
        DefaultText = ''
      end
    end
    inherited pnlRight: TPanel
      Width = 730
      Height = 589
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 730
      ExplicitHeight = 589
    end
  end
  object VirtualImageListMain: TVirtualImageList
    DisabledGrayscale = True
    Images = <>
    ImageNameAvailable = False
    Left = 121
    Top = 43
  end
  object ActionList1: TActionList
    Images = dmIDEActions.VirtualImageList1
    Left = 318
    Top = 166
    object acRefresh: TAction
      Caption = 'Refresh'
      Hint = 'Refresh'
      ImageIndex = 0
      ImageName = 'icons8-circular-arrow-100'
      OnExecute = acRefreshExecute
    end
    object acSysTools: TAction
      Caption = 'acSysTools'
      Hint = 'SysTools'
      ImageIndex = 39
      ImageName = 'icons8-support'
      OnExecute = acSysToolsExecute
    end
    object acDesigner: TAction
      Caption = 'Designer'
      Hint = 'Designer'
      ImageIndex = 115
      ImageName = 'icons8-color-palette'
      OnExecute = acDesignerExecute
    end
    object acFormsBinding: TAction
      Caption = 'Forms Binding'
      ImageIndex = 19
      ImageName = 'icons8-sheets-100'
      OnExecute = acFormsBindingExecute
    end
  end
  object cmp_IDEScripter: TIDEScripter
    DefaultLanguage = slPascal
    SourceCode.Strings = (
      'var A, B: string;'
      'begin'
      '  A := '#39'Hello, '#39';'
      '  B := '#39'World!'#39';'
      '  ShowMessage(A + B);'
      'end;')
    SaveCompiledCode = False
    ShortBooleanEval = True
    LibOptions.SearchPath.Strings = (
      '$(CURDIR)'
      '$(APPDIR)')
    LibOptions.UseScriptFiles = False
    CallExecHookEvent = False
    Left = 48
    Top = 352
  end
  object cmp_atPascalFormScripter: TatPascalFormScripter
    SourceCode.Strings = (
      'uses'
      '  Classes, Graphics, Controls, Forms, Dialogs, Unit2;'
      ''
      'var'
      '  MainForm: TForm2;'
      'begin'
      '  MainForm := TForm2.Create(Application);'
      '  MainForm.Parent := HostPanel;'
      '  MainForm.Align := alClient;'
      '  MainForm.Show;   '
      'end;                       '
      '')
    SaveCompiledCode = False
    ShortBooleanEval = False
    LibOptions.SearchPath.Strings = (
      '$(CURDIR)'
      '$(APPDIR)')
    LibOptions.SourceFileExt = '.psc'
    LibOptions.CompiledFileExt = '.pcu'
    LibOptions.UseScriptFiles = True
    CallExecHookEvent = False
    Left = 48
    Top = 424
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    Images = dmIDEActions.VirtualImageList1
    Left = 304
    Top = 80
    object MainMenuFile: TMenuItem
      Caption = 'File'
      Hint = 'File related commands'
      object N5: TMenuItem
        Caption = '-'
      end
    end
    object MainMenuEdit: TMenuItem
      Caption = 'Edit'
      Hint = 'Edit commands'
    end
    object MainMenuTools: TMenuItem
      Caption = 'Tools'
      object MenuUserManager: TMenuItem
        Action = acDesigner
      end
      object menuMaintenance: TMenuItem
        Action = acFormsBinding
      end
      object ClassExplorer1: TMenuItem
        Action = dmIDEActions.acClassExplorer
      end
    end
    object MainMenuHelp: TMenuItem
      Caption = 'Help'
      Hint = 'Help topics'
    end
  end
  object RESTClient: TRESTClient
    Authenticator = BaseAuthenticator
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://localhost:52773/csp/clientapp'
    ContentType = 'application/json'
    Params = <>
    SynchronizedEvents = False
    Left = 512
    Top = 130
  end
  object BaseAuthenticator: THTTPBasicAuthenticator
    Username = 'restuser'
    Password = 'AS2EvXx32i.x.99'
    Left = 504
    Top = 250
  end
end
