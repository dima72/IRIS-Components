object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 654
  ClientWidth = 985
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object spltDBtree: TSplitter
    Left = 257
    Top = 26
    Width = 6
    Height = 609
    Cursor = crSizeWE
    ResizeStyle = rsUpdate
    ExplicitLeft = 218
  end
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
      Left = 11
      Top = 2
      Width = 98
      Height = 22
      Align = alNone
      AutoSize = True
      Caption = 'ToolBarMainButtons'
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = VirtualImageListMain
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
    end
    object ToolBarDonate: TToolBar
      Left = 125
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
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 26
    Width = 257
    Height = 609
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object ToolBarTree: TToolBar
      Left = 0
      Top = 0
      Width = 257
      Height = 22
      ButtonWidth = 137
      Caption = 'ToolBarTree'
      Images = VirtualImageListMain
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Wrapable = False
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 240
        Height = 22
        DataSource = dsrMain
        TabOrder = 0
      end
    end
    object DBtree: TVirtualStringTree
      Left = 0
      Top = 22
      Width = 257
      Height = 587
      Align = alClient
      Constraints.MinWidth = 40
      DefaultNodeHeight = 19
      DragMode = dmAutomatic
      DragType = dtVCL
      Header.AutoSizeIndex = 0
      Header.Options = [hoAutoResize, hoColumnResize, hoDrag]
      HintMode = hmTooltip
      HotCursor = crHandPoint
      Images = VirtualImageListMain
      IncrementalSearch = isInitializedOnly
      Indent = 12
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TreeOptions.PaintOptions = [toHotTrack, toShowButtons, toShowDropmark, toShowRoot, toShowTreeLines, toThemeAware, toUseBlendedImages, toGhostedIfUnfocused, toUseExplorerTheme]
      TreeOptions.SelectionOptions = [toFullRowSelect, toRightClickSelect]
      OnCompareNodes = DBtreeCompareNodes
      OnFocusChanged = DBtreeFocusChanged
      OnFreeNode = DBtreeFreeNode
      OnGetText = DBtreeGetText
      OnGetNodeDataSize = DBtreeGetNodeDataSize
      OnInitChildren = DBtreeInitChildren
      OnNodeClick = DBtreeNodeClick
      Touch.InteractiveGestures = [igPan, igPressAndTap]
      Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
      Columns = <
        item
          Position = 0
          Text = 'Name'
          Width = 253
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
  object StatusBar: TStatusBar
    Left = 0
    Top = 635
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
  object pnlRight: TPanel
    Left = 263
    Top = 26
    Width = 722
    Height = 609
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object pnlMain: TPanel
      Left = 0
      Top = 0
      Width = 722
      Height = 609
      Align = alClient
      TabOrder = 0
    end
  end
  object VirtualImageListMain: TVirtualImageList
    DisabledGrayscale = True
    Images = <
      item
        CollectionIndex = 0
        CollectionName = 'icons8-circular-arrow-100'
        Name = 'icons8-circular-arrow-100'
      end
      item
        CollectionIndex = 1
        CollectionName = 'icons8-server-100'
        Name = 'icons8-server-100'
      end
      item
        CollectionIndex = 2
        CollectionName = 'icons8-cut-100'
        Name = 'icons8-cut-100'
      end
      item
        CollectionIndex = 3
        CollectionName = 'icons8-copy-100'
        Name = 'icons8-copy-100'
      end
      item
        CollectionIndex = 4
        CollectionName = 'icons8-paste-100'
        Name = 'icons8-paste-100'
      end
      item
        CollectionIndex = 5
        CollectionName = 'icons8-database-100'
        Name = 'icons8-database-100'
      end
      item
        CollectionIndex = 6
        CollectionName = 'icons8-database-symbol-100'
        Name = 'icons8-database-symbol-100'
      end
      item
        CollectionIndex = 7
        CollectionName = 'icons8-delete-database-100'
        Name = 'icons8-delete-database-100'
      end
      item
        CollectionIndex = 8
        CollectionName = 'icons8-database-administrator-100'
        Name = 'icons8-database-administrator-100'
      end
      item
        CollectionIndex = 9
        CollectionName = 'icons8-outgoing-data-100'
        Name = 'icons8-outgoing-data-100'
      end
      item
        CollectionIndex = 10
        CollectionName = 'icons8-save-button-100'
        Name = 'icons8-save-button-100'
      end
      item
        CollectionIndex = 11
        CollectionName = 'icons8-user-account-100'
        Name = 'icons8-user-account-100'
      end
      item
        CollectionIndex = 12
        CollectionName = 'icons8-edit'
        Name = 'icons8-edit'
      end
      item
        CollectionIndex = 13
        CollectionName = 'icons8-lightning-bolt-100'
        Name = 'icons8-lightning-bolt-100'
      end
      item
        CollectionIndex = 14
        CollectionName = 'icons8-data-sheet-100'
        Name = 'icons8-data-sheet-100'
      end
      item
        CollectionIndex = 15
        CollectionName = 'icons8-data-sheet-100-add'
        Name = 'icons8-data-sheet-100-add'
      end
      item
        CollectionIndex = 16
        CollectionName = 'icons8-data-sheet-100-delete'
        Name = 'icons8-data-sheet-100-delete'
      end
      item
        CollectionIndex = 17
        CollectionName = 'icons8-data-sheet-100-edit'
        Name = 'icons8-data-sheet-100-edit'
      end
      item
        CollectionIndex = 18
        CollectionName = 'icons8-data-sheet-100-key'
        Name = 'icons8-data-sheet-100-key'
      end
      item
        CollectionIndex = 19
        CollectionName = 'icons8-sheets-100'
        Name = 'icons8-sheets-100'
      end
      item
        CollectionIndex = 20
        CollectionName = 'icons8-export-100'
        Name = 'icons8-export-100'
      end
      item
        CollectionIndex = 21
        CollectionName = 'icons8-add-user-male-100'
        Name = 'icons8-add-user-male-100'
      end
      item
        CollectionIndex = 22
        CollectionName = 'icons8-key-100-blue'
        Name = 'icons8-key-100-blue'
      end
      item
        CollectionIndex = 23
        CollectionName = 'icons8-key-100-green'
        Name = 'icons8-key-100-green'
      end
      item
        CollectionIndex = 24
        CollectionName = 'icons8-key-100-red'
        Name = 'icons8-key-100-red'
      end
      item
        CollectionIndex = 25
        CollectionName = 'icons8-key'
        Name = 'icons8-key'
      end
      item
        CollectionIndex = 26
        CollectionName = 'icons8-close-button'
        Name = 'icons8-close-button'
      end
      item
        CollectionIndex = 27
        CollectionName = 'icons8-data-backup'
        Name = 'icons8-data-backup'
      end
      item
        CollectionIndex = 28
        CollectionName = 'icons8-reset'
        Name = 'icons8-reset'
      end
      item
        CollectionIndex = 29
        CollectionName = 'icons8-disconnected'
        Name = 'icons8-disconnected'
      end
      item
        CollectionIndex = 30
        CollectionName = 'icons8-find'
        Name = 'icons8-find'
      end
      item
        CollectionIndex = 31
        CollectionName = 'icons8-help'
        Name = 'icons8-help'
      end
      item
        CollectionIndex = 32
        CollectionName = 'icons8-html'
        Name = 'icons8-html'
      end
      item
        CollectionIndex = 33
        CollectionName = 'icons8-compose'
        Name = 'icons8-compose'
      end
      item
        CollectionIndex = 34
        CollectionName = 'icons8-print'
        Name = 'icons8-print'
      end
      item
        CollectionIndex = 35
        CollectionName = 'icons8-go'
        Name = 'icons8-go'
      end
      item
        CollectionIndex = 36
        CollectionName = 'icons8-server'
        Name = 'icons8-server'
      end
      item
        CollectionIndex = 37
        CollectionName = 'icons8-connected'
        Name = 'icons8-connected'
      end
      item
        CollectionIndex = 38
        CollectionName = 'icons8-server-100-export'
        Name = 'icons8-server-100-export'
      end
      item
        CollectionIndex = 39
        CollectionName = 'icons8-support'
        Name = 'icons8-support'
      end
      item
        CollectionIndex = 40
        CollectionName = 'icons8-undo'
        Name = 'icons8-undo'
      end
      item
        CollectionIndex = 41
        CollectionName = 'icons8-data-grid'
        Name = 'icons8-data-grid'
      end
      item
        CollectionIndex = 42
        CollectionName = 'icons8-rhombus'
        Name = 'icons8-rhombus'
      end
      item
        CollectionIndex = 43
        CollectionName = 'icons8-user'
        Name = 'icons8-user'
      end
      item
        CollectionIndex = 44
        CollectionName = 'icons8-note'
        Name = 'icons8-note'
      end
      item
        CollectionIndex = 45
        CollectionName = 'icons8-add'
        Name = 'icons8-add'
      end
      item
        CollectionIndex = 46
        CollectionName = 'icons8-delete-button'
        Name = 'icons8-delete-button'
      end
      item
        CollectionIndex = 47
        CollectionName = 'icons8-image'
        Name = 'icons8-image'
      end
      item
        CollectionIndex = 48
        CollectionName = 'icons8-source-code'
        Name = 'icons8-source-code'
      end
      item
        CollectionIndex = 49
        CollectionName = 'icons8-microsoft-excel'
        Name = 'icons8-microsoft-excel'
      end
      item
        CollectionIndex = 50
        CollectionName = 'icons8-csv'
        Name = 'icons8-csv'
      end
      item
        CollectionIndex = 51
        CollectionName = 'icons8-folder'
        Name = 'icons8-folder'
      end
      item
        CollectionIndex = 52
        CollectionName = 'icons8-opened-folder'
        Name = 'icons8-opened-folder'
      end
      item
        CollectionIndex = 53
        CollectionName = 'icons8-filter'
        Name = 'icons8-filter'
      end
      item
        CollectionIndex = 54
        CollectionName = 'icons8-paper-100-save'
        Name = 'icons8-paper-100-save'
      end
      item
        CollectionIndex = 55
        CollectionName = 'icons8-checked'
        Name = 'icons8-checked'
      end
      item
        CollectionIndex = 56
        CollectionName = 'icons8-index'
        Name = 'icons8-index'
      end
      item
        CollectionIndex = 57
        CollectionName = 'icons8-play'
        Name = 'icons8-play'
      end
      item
        CollectionIndex = 58
        CollectionName = 'icons8-rename'
        Name = 'icons8-rename'
      end
      item
        CollectionIndex = 59
        CollectionName = 'icons8-find-and-replace'
        Name = 'icons8-find-and-replace'
      end
      item
        CollectionIndex = 60
        CollectionName = 'icons8-sort-left'
        Name = 'icons8-sort-left'
      end
      item
        CollectionIndex = 61
        CollectionName = 'icons8-sort-right'
        Name = 'icons8-sort-right'
      end
      item
        CollectionIndex = 62
        CollectionName = 'icons8-word-wrap'
        Name = 'icons8-word-wrap'
      end
      item
        CollectionIndex = 63
        CollectionName = 'icons8-error-100-stop'
        Name = 'icons8-error-100-stop'
      end
      item
        CollectionIndex = 64
        CollectionName = 'icons8-checked-checkbox'
        Name = 'icons8-checked-checkbox'
      end
      item
        CollectionIndex = 65
        CollectionName = 'icons8-unchecked-checkbox'
        Name = 'icons8-unchecked-checkbox'
      end
      item
        CollectionIndex = 66
        CollectionName = 'icons8-sheets-of-paper-with-a-question-mark'
        Name = 'icons8-sheets-of-paper-with-a-question-mark'
      end
      item
        CollectionIndex = 67
        CollectionName = 'icons8-page'
        Name = 'icons8-page'
      end
      item
        CollectionIndex = 68
        CollectionName = 'icons8-brief'
        Name = 'icons8-brief'
      end
      item
        CollectionIndex = 69
        CollectionName = 'icons8-internet'
        Name = 'icons8-internet'
      end
      item
        CollectionIndex = 70
        CollectionName = 'icons8-database-100-yellow'
        Name = 'icons8-database-100-yellow'
      end
      item
        CollectionIndex = 71
        CollectionName = 'icons8-grid-2'
        Name = 'icons8-grid-2'
      end
      item
        CollectionIndex = 72
        CollectionName = 'icons8-database-symbol'
        Name = 'icons8-database-symbol'
      end
      item
        CollectionIndex = 73
        CollectionName = 'icons8-chevron-down'
        Name = 'icons8-chevron-down'
      end
      item
        CollectionIndex = 74
        CollectionName = 'icons8-sort-up'
        Name = 'icons8-sort-up'
      end
      item
        CollectionIndex = 75
        CollectionName = 'icons8-caret-arrowhead-facing-down'
        Name = 'icons8-caret-arrowhead-facing-down'
      end
      item
        CollectionIndex = 76
        CollectionName = 'icons8-sort-left-other'
        Name = 'icons8-sort-left-other'
      end
      item
        CollectionIndex = 77
        CollectionName = 'icons8-sort-right-other'
        Name = 'icons8-sort-right-other'
      end
      item
        CollectionIndex = 78
        CollectionName = 'icons8-double-left'
        Name = 'icons8-double-left'
      end
      item
        CollectionIndex = 79
        CollectionName = 'icons8-double-right'
        Name = 'icons8-double-right'
      end
      item
        CollectionIndex = 80
        CollectionName = 'icons8-event'
        Name = 'icons8-event'
      end
      item
        CollectionIndex = 81
        CollectionName = 'icons8-eye'
        Name = 'icons8-eye'
      end
      item
        CollectionIndex = 82
        CollectionName = 'icons8-eye-other'
        Name = 'icons8-eye-other'
      end
      item
        CollectionIndex = 83
        CollectionName = 'icons8-denied'
        Name = 'icons8-denied'
      end
      item
        CollectionIndex = 84
        CollectionName = 'icons8-user-100-edit'
        Name = 'icons8-user-100-edit'
      end
      item
        CollectionIndex = 85
        CollectionName = 'icons8-add-user-male'
        Name = 'icons8-add-user-male'
      end
      item
        CollectionIndex = 86
        CollectionName = 'icons8-denied-other'
        Name = 'icons8-denied-other'
      end
      item
        CollectionIndex = 87
        CollectionName = 'icons8-add-other'
        Name = 'icons8-add-other'
      end
      item
        CollectionIndex = 88
        CollectionName = 'icons8-delete-button-other'
        Name = 'icons8-delete-button-other'
      end
      item
        CollectionIndex = 89
        CollectionName = 'icons8-skip-to-start'
        Name = 'icons8-skip-to-start'
      end
      item
        CollectionIndex = 90
        CollectionName = 'icons8-end'
        Name = 'icons8-end'
      end
      item
        CollectionIndex = 91
        CollectionName = 'icons8-rhombus-add'
        Name = 'icons8-rhombus-add'
      end
      item
        CollectionIndex = 92
        CollectionName = 'icons8-rhombus-delete'
        Name = 'icons8-rhombus-delete'
      end
      item
        CollectionIndex = 93
        CollectionName = 'icons8-rhombus-edit'
        Name = 'icons8-rhombus-edit'
      end
      item
        CollectionIndex = 94
        CollectionName = 'icons8-update'
        Name = 'icons8-update'
      end
      item
        CollectionIndex = 95
        CollectionName = 'icons8-collaboration'
        Name = 'icons8-collaboration'
      end
      item
        CollectionIndex = 96
        CollectionName = 'icons8-bug'
        Name = 'icons8-bug'
      end
      item
        CollectionIndex = 97
        CollectionName = 'icons8-collaboration-other'
        Name = 'icons8-collaboration-other'
      end
      item
        CollectionIndex = 98
        CollectionName = 'icons8-support-orange'
        Name = 'icons8-support-orange'
      end
      item
        CollectionIndex = 99
        CollectionName = 'icons8-more-info'
        Name = 'icons8-more-info'
      end
      item
        CollectionIndex = 100
        CollectionName = 'icons8-export'
        Name = 'icons8-export'
      end
      item
        CollectionIndex = 101
        CollectionName = 'icons8-import'
        Name = 'icons8-import'
      end
      item
        CollectionIndex = 102
        CollectionName = 'icons8-eye-otherB'
        Name = 'icons8-eye-otherB'
      end
      item
        CollectionIndex = 103
        CollectionName = 'icons8-eye-otherC'
        Name = 'icons8-eye-otherC'
      end
      item
        CollectionIndex = 104
        CollectionName = 'icons8-play-selected'
        Name = 'icons8-play-selected'
      end
      item
        CollectionIndex = 105
        CollectionName = 'icons8-play-cropped'
        Name = 'icons8-play-cropped'
      end
      item
        CollectionIndex = 106
        CollectionName = 'icons8-semicolon'
        Name = 'icons8-semicolon'
      end
      item
        CollectionIndex = 107
        CollectionName = 'icons8-caret-arrowhead-facing-down-other-gray'
        Name = 'icons8-caret-arrowhead-facing-down-other-gray'
      end
      item
        CollectionIndex = 108
        CollectionName = 'icons8-caret-arrowhead-facing-down-other'
        Name = 'icons8-caret-arrowhead-facing-down-other'
      end
      item
        CollectionIndex = 109
        CollectionName = 'icons8-alphabetical-sorting'
        Name = 'icons8-alphabetical-sorting'
      end
      item
        CollectionIndex = 110
        CollectionName = 'icons8-alphabetical-sorting-2'
        Name = 'icons8-alphabetical-sorting-2'
      end
      item
        CollectionIndex = 111
        CollectionName = 'icons8-red-triangle'
        Name = 'icons8-red-triangle'
      end
      item
        CollectionIndex = 112
        CollectionName = 'icons8-star-filled'
        Name = 'icons8-star-filled'
      end
      item
        CollectionIndex = 113
        CollectionName = 'icons8-star-filled-gray'
        Name = 'icons8-star-filled-gray'
      end
      item
        CollectionIndex = 114
        CollectionName = 'icons8-code-file'
        Name = 'icons8-code-file'
      end
      item
        CollectionIndex = 115
        CollectionName = 'icons8-color-palette'
        Name = 'icons8-color-palette'
      end
      item
        CollectionIndex = 116
        CollectionName = 'icons8-querytab-right'
        Name = 'icons8-querytab-right'
      end
      item
        CollectionIndex = 117
        CollectionName = 'icons8-querytab-left'
        Name = 'icons8-querytab-left'
      end
      item
        CollectionIndex = 118
        CollectionName = 'icons8-select-all'
        Name = 'icons8-select-all'
      end
      item
        CollectionIndex = 119
        CollectionName = 'icons8-source-code-other'
        Name = 'icons8-source-code-other'
      end
      item
        CollectionIndex = 120
        CollectionName = 'icons8-refresh-right'
        Name = 'icons8-refresh-right'
      end
      item
        CollectionIndex = 121
        CollectionName = 'icons8-refresh-left'
        Name = 'icons8-refresh-left'
      end
      item
        CollectionIndex = 122
        CollectionName = 'icons8-refresh'
        Name = 'icons8-refresh'
      end
      item
        CollectionIndex = 123
        CollectionName = 'icons8-windows-xp'
        Name = 'icons8-windows-xp'
      end
      item
        CollectionIndex = 124
        CollectionName = 'icons8-apple-logo'
        Name = 'icons8-apple-logo'
      end
      item
        CollectionIndex = 125
        CollectionName = 'icons8-linux'
        Name = 'icons8-linux'
      end
      item
        CollectionIndex = 126
        CollectionName = 'icons8-key-100-lightblue'
        Name = 'icons8-key-100-lightblue'
      end
      item
        CollectionIndex = 127
        CollectionName = 'icons8-unchecked-checkbox-other'
        Name = 'icons8-unchecked-checkbox-other'
      end
      item
        CollectionIndex = 128
        CollectionName = 'icons8-checked-checkbox-other'
        Name = 'icons8-checked-checkbox-other'
      end
      item
        CollectionIndex = 129
        CollectionName = 'icons8-edit-property'
        Name = 'icons8-edit-property'
      end
      item
        CollectionIndex = 130
        CollectionName = 'icons8-add-property'
        Name = 'icons8-add-property'
      end
      item
        CollectionIndex = 131
        CollectionName = 'icons8-delete-document'
        Name = 'icons8-delete-document'
      end
      item
        CollectionIndex = 132
        CollectionName = 'icons8-querytab-add'
        Name = 'icons8-querytab-add'
      end
      item
        CollectionIndex = 133
        CollectionName = 'icons8-querytab-close'
        Name = 'icons8-querytab-close'
      end
      item
        CollectionIndex = 134
        CollectionName = 'icons8-close-button-small-centered'
        Name = 'icons8-close-button-small-centered'
      end
      item
        CollectionIndex = 135
        CollectionName = 'icons8-server-edit'
        Name = 'icons8-server-edit'
      end
      item
        CollectionIndex = 136
        CollectionName = 'icons8-data-grid-relation'
        Name = 'icons8-data-grid-relation'
      end
      item
        CollectionIndex = 137
        CollectionName = 'icons8-settings'
        Name = 'icons8-settings'
      end
      item
        CollectionIndex = 138
        CollectionName = 'icons8-invert-selection'
        Name = 'icons8-invert-selection'
      end
      item
        CollectionIndex = 139
        CollectionName = 'icons8-alphabetical-sorting-delete'
        Name = 'icons8-alphabetical-sorting-delete'
      end
      item
        CollectionIndex = 140
        CollectionName = 'icons8-broom'
        Name = 'icons8-broom'
      end
      item
        CollectionIndex = 141
        CollectionName = 'icons8-data'
        Name = 'icons8-data'
      end
      item
        CollectionIndex = 142
        CollectionName = 'icons8-search-more'
        Name = 'icons8-search-more'
      end
      item
        CollectionIndex = 143
        CollectionName = 'icons8-sort'
        Name = 'icons8-sort'
      end
      item
        CollectionIndex = 144
        CollectionName = 'icons8-secure'
        Name = 'icons8-secure'
      end
      item
        CollectionIndex = 145
        CollectionName = 'icons8-bar-chart'
        Name = 'icons8-bar-chart'
      end
      item
        CollectionIndex = 146
        CollectionName = 'icons8-find-other'
        Name = 'icons8-find-other'
      end
      item
        CollectionIndex = 147
        CollectionName = 'icons8-lock'
        Name = 'icons8-lock'
      end
      item
        CollectionIndex = 148
        CollectionName = 'icons8-paper-money'
        Name = 'icons8-paper-money'
      end
      item
        CollectionIndex = 149
        CollectionName = 'icons8-clock-outline'
        Name = 'icons8-clock-outline'
      end
      item
        CollectionIndex = 150
        CollectionName = 'icons8-hourglass'
        Name = 'icons8-hourglass'
      end
      item
        CollectionIndex = 151
        CollectionName = 'icons8-active-state'
        Name = 'icons8-active-state'
      end
      item
        CollectionIndex = 152
        CollectionName = 'icons8-image-other'
        Name = 'icons8-image-other'
      end
      item
        CollectionIndex = 153
        CollectionName = 'icons8-latex'
        Name = 'icons8-latex'
      end
      item
        CollectionIndex = 154
        CollectionName = 'icons8-textile'
        Name = 'icons8-textile'
      end
      item
        CollectionIndex = 155
        CollectionName = 'icons8-copy-rows'
        Name = 'icons8-copy-rows'
      end
      item
        CollectionIndex = 156
        CollectionName = 'icons8-paste-rows'
        Name = 'icons8-paste-rows'
      end
      item
        CollectionIndex = 157
        CollectionName = 'icons8-checked-small'
        Name = 'icons8-checked-small'
      end
      item
        CollectionIndex = 158
        CollectionName = 'icons8-close-button-small'
        Name = 'icons8-close-button-small'
      end
      item
        CollectionIndex = 159
        CollectionName = 'icons8-close-window'
        Name = 'icons8-close-window'
      end
      item
        CollectionIndex = 160
        CollectionName = 'icons8-close-window-dark'
        Name = 'icons8-close-window-dark'
      end
      item
        CollectionIndex = 161
        CollectionName = 'icons8-error-small'
        Name = 'icons8-error-small'
      end
      item
        CollectionIndex = 162
        CollectionName = 'icons8-edit-small'
        Name = 'icons8-edit-small'
      end
      item
        CollectionIndex = 163
        CollectionName = 'icons8-add-small'
        Name = 'icons8-add-small'
      end
      item
        CollectionIndex = 164
        CollectionName = 'icons8-mysql-logo'
        Name = 'icons8-mysql-logo'
      end
      item
        CollectionIndex = 165
        CollectionName = 'icons8-comments'
        Name = 'icons8-comments'
      end
      item
        CollectionIndex = 166
        CollectionName = 'icons8-mariadb-logo'
        Name = 'icons8-mariadb-logo'
      end
      item
        CollectionIndex = 167
        CollectionName = 'icons8-inactive-state'
        Name = 'icons8-inactive-state'
      end
      item
        CollectionIndex = 168
        CollectionName = 'icons8-star-filled-small'
        Name = 'icons8-star-filled-small'
      end
      item
        CollectionIndex = 169
        CollectionName = 'icons8-percona-logo'
        Name = 'icons8-percona-logo'
      end
      item
        CollectionIndex = 170
        CollectionName = 'icons8-terminal'
        Name = 'icons8-terminal'
      end
      item
        CollectionIndex = 171
        CollectionName = 'icons8-tokudb-logo'
        Name = 'icons8-tokudb-logo'
      end
      item
        CollectionIndex = 172
        CollectionName = 'icons8-infinidb-logo'
        Name = 'icons8-infinidb-logo'
      end
      item
        CollectionIndex = 173
        CollectionName = 'icons8-infobright-logo'
        Name = 'icons8-infobright-logo'
      end
      item
        CollectionIndex = 174
        CollectionName = 'icons8-folder-other'
        Name = 'icons8-folder-other'
      end
      item
        CollectionIndex = 175
        CollectionName = 'icons8-unchecked-checkbox-grey'
        Name = 'icons8-unchecked-checkbox-grey'
      end
      item
        CollectionIndex = 176
        CollectionName = 'icons8-checked-checkbox-grey'
        Name = 'icons8-checked-checkbox-grey'
      end
      item
        CollectionIndex = 177
        CollectionName = 'icons8-internet-small'
        Name = 'icons8-internet-small'
      end
      item
        CollectionIndex = 178
        CollectionName = 'icons8-light-small'
        Name = 'icons8-light-small'
      end
      item
        CollectionIndex = 179
        CollectionName = 'icons8-mariadb-logo-small'
        Name = 'icons8-mariadb-logo-small'
      end
      item
        CollectionIndex = 180
        CollectionName = 'icons8-csv-small'
        Name = 'icons8-csv-small'
      end
      item
        CollectionIndex = 181
        CollectionName = 'icons8-final-state-small'
        Name = 'icons8-final-state-small'
      end
      item
        CollectionIndex = 182
        CollectionName = 'icons8-query-inner-join-small'
        Name = 'icons8-query-inner-join-small'
      end
      item
        CollectionIndex = 183
        CollectionName = 'icons8-star-filled-gray-small'
        Name = 'icons8-star-filled-gray-small'
      end
      item
        CollectionIndex = 184
        CollectionName = 'icons8-circular-arrow-violet'
        Name = 'icons8-circular-arrow-violet'
      end
      item
        CollectionIndex = 185
        CollectionName = 'icons8-paypal'
        Name = 'icons8-paypal'
      end
      item
        CollectionIndex = 186
        CollectionName = 'icons8-pie-chart'
        Name = 'icons8-pie-chart'
      end
      item
        CollectionIndex = 187
        CollectionName = 'icons8-postgresql'
        Name = 'icons8-postgresql'
      end
      item
        CollectionIndex = 188
        CollectionName = 'icons8-azure'
        Name = 'icons8-azure'
      end
      item
        CollectionIndex = 189
        CollectionName = 'icons8-run-file'
        Name = 'icons8-run-file'
      end
      item
        CollectionIndex = 190
        CollectionName = 'icons8-clock-outline-other'
        Name = 'icons8-clock-outline-other'
      end
      item
        CollectionIndex = 191
        CollectionName = 'icons8-filter-database'
        Name = 'icons8-filter-database'
      end
      item
        CollectionIndex = 192
        CollectionName = 'icons8-filter-table'
        Name = 'icons8-filter-table'
      end
      item
        CollectionIndex = 193
        CollectionName = 'icons8-clear-symbol'
        Name = 'icons8-clear-symbol'
      end
      item
        CollectionIndex = 194
        CollectionName = 'server-memsql'
        Name = 'server-memsql'
      end
      item
        CollectionIndex = 195
        CollectionName = 'icons8-redshift'
        Name = 'icons8-redshift'
      end
      item
        CollectionIndex = 196
        CollectionName = 'icons8-sqlite'
        Name = 'icons8-sqlite'
      end
      item
        CollectionIndex = 197
        CollectionName = 'server-proxysqladmin'
        Name = 'server-proxysqladmin'
      end
      item
        CollectionIndex = 198
        CollectionName = 'code-folding'
        Name = 'code-folding'
      end
      item
        CollectionIndex = 199
        CollectionName = 'icons8-markdown'
        Name = 'icons8-markdown'
      end
      item
        CollectionIndex = 200
        CollectionName = 'icons8-js'
        Name = 'icons8-js'
      end
      item
        CollectionIndex = 201
        CollectionName = 'icons8-sql'
        Name = 'icons8-sql'
      end
      item
        CollectionIndex = 202
        CollectionName = 'icons8-php'
        Name = 'icons8-php'
      end
      item
        CollectionIndex = 203
        CollectionName = 'server-interbase'
        Name = 'server-interbase'
      end
      item
        CollectionIndex = 204
        CollectionName = 'server-firebird'
        Name = 'server-firebird'
      end
      item
        CollectionIndex = 205
        CollectionName = 'server-rds-mysql'
        Name = 'server-rds-mysql'
      end
      item
        CollectionIndex = 206
        CollectionName = 'logo-sequal'
        Name = 'logo-sequal'
      end>
    ImageCollection = ImageCollectionIcons8
    ImageNameAvailable = False
    Left = 201
    Top = 75
  end
  object VirtualImageList1: TVirtualImageList
    Images = <>
    Left = 96
    Top = 72
  end
  object ImageCollectionIcons8: TImageCollection
    Images = <
      item
        Name = 'icons8-circular-arrow-100'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A08030000000F76B1
              3000000300504C5445FFFFFF00000078B43C7DB4407BB3437BB2427CB3417BB3
              417CB2427CB2417CB3417FAF3F00FF007CB5437AB2407CB3427CB3417BB34179
              B33F7BB4417CB3417BB3417CB2427BAF467BB3427BB2417FB63F7CB3447BB341
              7BB3417BB6417BB1457CB3427CB3417BB3427BB4417FAA557CB2427CB3427BB3
              417BB2417DB4427BB3427CB34255AA557BB3417AB3427BB3427BB2417FB43F7D
              B2437CB2427CB2427DB4417BB2417BB3427CB3427DB2407BB2437BB3437CB241
              7BB1417CB2417AB3427FB0447CB3427CB3427CB2427DB3426DB6487CB34166CC
              337BB3427CB3427FB2447CB3427BB2427FB4437CB3417BB3417DB1407BB2427B
              B2427CB1417BB2427CB2417FB6487AB13F7CB4427CB3417CB2427CB2417CB342
              7BB2417BB2427CB3427BB2417BB2427BB44179B0427BB4417CB3417CB2427CB2
              417BB3417FB13F7BB2417CB2427BB2417AB73D79B1427CB3417CB3427BB2417A
              B43F7CB3427BB2427CB3417F7F7F7BB2447BB3427BB3427CB2417FBF3F7BB242
              7DB3427BB34177BB448EBE5C88BB54C7E0AA99C46B8FBE5DC8E1ACC9E2AD7EB4
              4387BA5188BA52D1E6B8D1E6B9C6DFA99CC76F91BF5EADD187CBE3B1BFDBA0AA
              CF81D3E8BCC0DCA1A7CD7EACD08689BB558DBD5ACCE4B3D9EBC58BBB56C1DDA3
              C4DFA6C2DEA594C164C8E1AB80B54796C265C3DEA5D0E6B882B74BC4DFA7DBEC
              C790BF5E8EBE5BB4D591B1D38CD2E7B985B84E84B84DD3E7BB8CBC578CBD5991
              C060B5D592D5E8BDB6D693C5DEA7BDDB9DBDDA9CC5DFA8D0E5B7A3CB78A2CA77
              D6EAC0D4E8BDA5CB7BD3E8BBCCE3B2BFDC9FB0D28A81B6499EC872DAECC5AED1
              899FC8739EC8719BC66EC8E2ACC5DFA783B74B9BC56D93C161A3CC7A7DB4447D
              B443C6E0AAA4CB7B83B84CB1D38DA6CD7ED8EAC282B64AB3D58F9CC66FBCDA9C
              DAEBC5B5D59186B951B5D490D8EBC385B94FABCF84B2D48EAED1887FB446CDE4
              B3ACD085CDE5B480B5488EBE5AD9ECC4A6CC7CDBECC690BF5F9FC871DBEDC7DA
              ECC79FC874A9CE80A8CE7F9AC56CCBE3B0C5DFA9DCEDC8B4D58F7DB343C0DCA2
              D5E9BFADD1867CB3427A9558DB0000008074524E53000010365E83959FABBB5E
              10002C6EB1E9AF2C3E9DE99B1CDFDD1C24F99B2220A7FDA51E067AF7F57840D9
              D702FD1AC1BF1834EBE73246F3F342565A5A42F1361ABD837E3C06D5047A761E
              A3FB2299813A99E72A6AAF0E385C8193A1ADABB99F5CAD6C2A3ADFDDF9972474
              D37C18162E54F130B97E7C023CD5767404A16CE50E227C2FCB00000009704859
              7300000EC400000EC401952B0E1B00000569494441545885B5997D5C144518C7
              DDE840F444EA1013B1F39452F222A1337C8512B33242412CC17C4B037B7F8FDE
              7D2BED552D2B84B2A222ECBDB4B0E85593B2177A39B3C49710B2B0C28CD388E3
              82716F6F666F77E7999DDD3B7DFEBBF93DBFEF673F3BCF3C373BD3ADDB310CC1
              401C1771BC2532AA7B7474F7A8484B8F889E463C7CB4B5574CEF58A489D81362
              4EB48687B6DAE2FA68B124FAC4DB74E9BAE8BE969358DC40F4B3248484EE1F97
              A80FF647E280934DA3ED031D7CB03F1C83069B42279D72AA31B03F860C4D328E
              4E3ECD38D81FC36C06D14ECBE9E6C8E25BB1388DA053CE300BF6C7F0543E3AED
              CC50C808B946F0D067A587464668E4287DF46803B5CC8AC4D17AE831A6275019
              8EB16CF4B8309E597AEE712C74C490F0C8086564C2E8B3994DCE78C4A6426867
              48F5AC8D739C007AFCD120239445A3930D763A5E382668D1E79AEC48EC98789E
              067DBE52EDEAD4C6FF26D817A8D17655DDF93ABC9A6837814E9FA4420F54AB14
              DB0C1A5DA844F7D7CEA1966D0A9D7D91021D47C91AB62934CA09A2FB02BD43CD
              36874E4C91D1E06AF1FD6700DDF62F383C99A0ADE04EE6B081A73EE469FD071A
              EF67C5681BA41EFC9B8F3ED0EAF5B6FC052953307A00A0FDF9077F1AF74B52F3
              EF80941B405BA13FDADFB8C5E7DB87B55F017B9E5542F702A4A6462E7A2FD11A
              1B00C054091D0328BF10DF9EDD2CF4AE5692B31300E44BE8DEB450BF83D87E0E
              D437F4AE7F22393BB6D3E234090DFC6FFD485CDBDC81B503A17F900BFF7B5A74
              F9D13D01D73662FA0E05D6255821DFEAD5CFC522FA127AB8CE833DDF483F4536
              88F67D8DD35A81379229A27BD0C35F91C7F912333AE025B395E4B5D1DA74116D
              A187BFC08ECFEBC9F3D582E82D7B70E267B45620A223E9E1CD3AEF5015ED3871
              332D158AE819F470337674F0D0A4F16EA2A528117D293DFC29767CC2431FC089
              1FD3D24C113D8B1E26ABFC100F4DE6B1919666C168527BF0E429A216277A6034
              F0423EC28E0F79E80F7062272DCD84A7B1063BBA7868D27A6B6869365C7CEF63
              C77B3CF4469C584D4B85F09279974CBC4F9FEC7E07276EA035FF9299430FCB8D
              EFA03E7A3DC9035ADF18B83DBD4D2C7BF5D11B48DE5BB496093755DF9BA45EDF
              D023BF4EEAFF3540F43755813AFE41E855F238D07F931CAF902CA03BB9587F60
              2F1393671D9BBCBE8A64015B91B912FA32C0F61271D554B2C8752F929C170035
              9FB959789ED8BCD51530B9E23939E559409E17D8E240DF8BCFC8C6B55B207265
              B59CF03420E7E18D593CA03D552E5BCBD6D0F29A32596E2905EC39183D017A2C
              C546B571BFE6A5543CD912549F80DCF3C926F87240F43D1E747B571F6E0A2A4D
              8FAD56488F42CDA0886C8205A08D886F739502E0F5B4AFDCB5A2B474C5232B1F
              F628C757D543DE2CF9AB20013CAC6878C8CB8D071B206771F08303DC6123F440
              198FBCE97ED0B840F10576453698B2BD5A9FBCB60EB465DB959FA483C01CB4BC
              AB8A0DAEEA5A0EBBA2545FBB83590738EB96B1C8F7DDCBB0A427A83FFF8732F2
              907B6B33046EAE75B31C576A4E169286B132917BE9C67235B77CF75226185DA5
              3DB4106C7A472DF56D3B977406B09D4BF6B581B58CC331853E209AAC932F45E5
              E2458B16337B2C89AB81B327E7709ECB484443C75AC235C03F99D9705D2B4068
              2122235C72C675028C3E86079F823036AC133987EA28F8681E32175F2FE8A185
              51234325DF902CE8A38511AED0C8AE1B051E5A480DA9BE6F32700D21AE9D9B4D
              4FA6E3965B290C7CE55332D11CF9B61200C2BAA8BADDC44547FA1D77420CE6F5
              DAA4BBE0FF342AB267302E06752E05EDB9066ABC78819DE5D7BDCA4C2828D207
              1765A5B0DDBC0BD8925C663BCCCB991FFA056C20A6DE3D8D5A45F7CCCD9FC7F3
              19BCEC5E9836A7A070B6FFB23BBEB0607ADA42231E13F7EDA6E308AC57B2E70B
              9A7DF20000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-server-100'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C5000000E1504C5445FFFFFF2195F22196F32095F32D9CF44EABF54BA9F52397
              F36FBBF7B3DAFA60B3F66CB9F755AEF6A1D2FA42A5F5289AF4B9DDFB2497F322
              97F3A6D4FA8FCAF94AA9F5B8DDFBBBDEFB3BA2F442A6F591CAF9B5DBFBB1D9FA
              88C6F837A0F42780C6287CBC2782C9436B41384C4D42674271F1096DE50E3B54
              495CB42252952F56A3294C85353A504B60BD1E6DE60E5AAD2538484E2F628733
              57702F658E37494E559E2B63C71A4F8D3252962E47783B5DB82153982D47763C
              75FC0476FF0373F5074060444165424E8A333D5A4733546C37474F3259752977
              B42C71A72979B82196F31889B4AA0000000474524E5300A1ABF1EC60F6650000
              00097048597300000EC400000EC401952B0E1B0000010C494441545885EDD9D7
              6EC2301480613665869611CAEE60EF5236B82D6D187EFF07C221B9A4C216C760
              D0F96F2D7D17964F74A4381C17CBE9128B937553B1EE96DD6DB9DA08B26B83AB
              3F60F677F52381FDFE22CB053C3B2784CCE0D929632712EE763C1A7E4A60ED44
              D9C107577D35A60C597AB56F821CB6D7EDB45BF06C930D6F039EAD33B606CF56
              2BA4FC0ECF1A6FAFE6D5AAF2125E4A5C15D598B2DB6271FD38CDE2FA6186EB87
              72C37B5B2CAE1FA7595C3FCC70FD506E789145165964EF892DE473D9CC33349B
              CEE9AC5412984DE887E24FA0EC63CC62F53428ABD9AA1E85BD8488A566355836
              6CB1A12347E7B03418600FE1C10FCD52CDE7F51C3D388FFD376491156225FD34
              04680F5FFC1B1FD4B642F20000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-cut-100'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000300504C5445FFFFFF000000009AA30097A50098A60095A70096A60097
              A70091A90096A70097A60097A60097A7009BA600AAAA0096A70097A60097A600
              7F7F00AAAA0097A70096A70099B20097A60096A70097A70097A60096A80096A6
              0097A70097A60097A60096A60096A70096A60096A70098A6008F9F0096A70097
              A70096A600FFFF0096A60097A70096A50097A60098A500BFCF00BBD400B7D600
              BBCC0097A80097A70097A600BAD200BCD300BBD300BBD300BCD300BCD400BCD3
              00B8D20097A60097A7007FBF0094AA0097A70096A700BCD400BCD400BBD400BC
              D300B9D00096A60097A700BCD400BCD40097A60097A700AAD400BBD300BCD300
              BCD300BDD40096A70097A700BCD400BCD300BBD400BAD30097A60098A30097A7
              0097A600BCD300BCD400BFDF0097A70096A6008DA900BCCF00BBD400BCD400BC
              D30099990096A60096A600BCD300BCD300BAD70095A70098A70096A500BBD400
              BBD400BBD4007FFF0096A60097A70098A40099A50096A600BBD300BBD300BCD4
              00BED50096A60096A70097A70096A600B6DA00BBD400BBD300B6DA0096A70098
              A600B9D600BBD300BBD40097A70097A700BBD400BCD400BAD500B8D300BBD400
              96A70096A70099AA00BBD300BBD400BBD300BAD30097A60096A600BCD300BCD2
              0091B60096A70097A60096A60097A600BCD300BCD300BCD40096A60096A60097
              A70094A900BBD300BCD300BED20096A60097A70097A600BAD100BBD300BFD400
              9F9F0096A60097A70096A700BDD4009CAE00BAD100BCD30096A700BAD200BBD4
              00BFBF0093A100BBD40097A600BBD300BFD800BCD400BBD300BCD20097A600BC
              D300B2CC0095A70096A600BAD3009AAD00B6CE00B9D100BBD3007E89005F6300
              606400AEC500666B005F63005F63007F7F00BCD40095A5006164005F63005D66
              00B9D000727C00606400626500BFD100BBD400A8BD00A8BC006E7500666B0094
              A400737B00606500B1C7006F7600AEC300A0B200A0B100636800606400869200
              AEC400B9D000B5CB0099AA00ACC00098A900B8CF00A0B300AFC5009AAA00A4B7
              00BBD300BCD40097A7DEF21A82000000E474524E5300001C4A6C764E20147CD9
              DB7E160274F3760206ADB70AB9BB819F2CFDCF8B70AD48A1E7481089FDD500F9
              ED22544C101E180E5A83A7569BCDF7F1C5872885E9040CEFEB36A9F7B7209DB5
              C1F5A57A0689FDF94297CD2ACFD128FB18A3F96E9108408B081ABBEB4C04F170
              EDBD1A464210A3FB7802F3A12C148540E1DD3662C7D5D10689A70E93342CF35E
              956E70CB241C8B95AB1E56EFE746F77CA516065CC7DF5040E17230F5B9248DD9
              3272E5832C9F0C086EDD4C58BBC7C7E3FD850412E5A3B1146CD52EC3990A1CED
              5254FBC3FDBFE342E5D1FD8304F1C7EFC31EF5C1ED4E1CDDD924982D75000000
              097048597300000EC400000EC401952B0E1B000005A1494441545885EDD8795C
              14551C00709F8998077285206016112C82282686A671BA209A1C724948680126
              90B1181D244920BA05088558A19981051D0A941D4A4410827480095D0676DADD
              5676B733CECE9B999D9DF7666697F11F3F1F7F7F2D6F7FF3E5ED7B6FDEFBCD8C
              1B77292EBA006C8CBF6C8295D58489D6407970ECA4CB27934C4C993AED02B136
              D36D495ED8DAD95F08D6C19114C4154ECA599B194295249D15B934EB82AA2439
              5329EBEAC648EEB3AE9C3A9B1BE4AB14B25743C6E31ABAC5F35A2FF8B7B74A11
              EBE9432B737CD9363FA6F7732DA3FCE7CD0FE0B17321B2C098701D6C5968B618
              10B8E8FA20828AC54B6E58CAB0CB68E3C66063564828DD1466E6E20D8F584EF0
              421D49B351B4B1829FB81076D7AC9B2D3C9A10C4CA4003BB8A261CF9A93741D6
              551E5D1D132B5409222E9E62D7D044028695EF6D62128A1244720AC5DAD1C4DA
              545EF6CD74539ADCD8AAD60561507DFA2D8641C8805D5B6F4CDF1046B7CC9051
              6FBD0DD7D5CC2C404F59F6461A71CBE0F261FFC9DBA5D5C04D383527174016AC
              87CAC63C26FF8E34F8F7662934E04E1C9AAF29002C9BBA05BA5E7715522D77DF
              03EF3AD2454ABDF73E9C5A743FF335BD836DE5B62D8FE207D6321FB76D10474B
              1EC42C2B82282D037C166C47F745B772717547320EDDA935664056F510EA863E
              1C8C475515B86545545601210BC0822D28EC9D815377E5E0507DF56A8061416A
              8D0F0A3FF228A2D6EEC6A9757B4CB3787582F5AC30C47DEC71D389F37F028712
              EA7A20CA02B077DF9308BCFF295EF681A771685C03728E98B05434461D14C2CF
              3CCB7C57D2845D56CDCF212385B0006C7EFE05819BF6223D1287B0CB8A38DC82
              AA181680D636E120BFF432286888C3A18B8F60503C4B9DBE355E02F89557B15D
              7D2D12AB8AB00064BC6EA2FE7F1487C61E6BC7ABA22C78C3D988FEF72FB6AB1D
              F122A8040B1CDE64D57FFEC6AA9D6F89AA122C50C143EEAF3FB168509754D123
              C1029BD994FAC739C89CFBDD44ED7E5B02956681430F49FE06995F75BFFCCC53
              8FF74AAAD22CE83BF113647ED4E9743F70E8EE7E69548E05EFBC0BA1EFBFD3E9
              BE65D5F7E6C9A9726C0C4B9DFDE6EBAFE0A7F707064F2A64FBF5C80AF8E0944E
              3734FCA11276E94788FAF1273A437C7A7AECECAE2221FAD9888E89D13363653F
              FF42A87E39C8AABA53FBB7EF1D139B22ECEBD181214E1DA1AA09775F912BA5D8
              FE9D98B962476080BEAD6DF759CA96A50BD740C2A871004EB09BD0CC104B5855
              7F8700ED081C6647606884B7C57B379ACFEEA914A0F9D5D4797512CED7E080C9
              FEEED3661EDBAB45EAF6E844FA9BD3C32603C086A3A73C1B598D142D7547B88D
              F5CCE8C859A14A5512982290CF1664A9914220AE897F5EF7F5A02AF5D881BE7D
              30B2ED0D984A589D629A6E6FE586839D2789B02AAD70F2A928CA427F5EE3649C
              EB918765733B5174B9067B5CB746E15CAF65C1289BDB8CAA9DA29BB5DF1C1C5C
              EC2B64FDBB51351633006C8C77C6B9A17E02F6306B7537ADD3A8F3E1E79555E2
              AEBD1DA6C626C99A563E7B80419B61957288E97B84382B3673DB0A79AC1A324B
              D8C79FF9704BD44B96024ED8993BB8956373A1DAE1CF5D120F5B62A458002662
              676E9513C3D642A49677052C9093A559D087797D469253CA217B8C3636F11769
              3AFC4F2532AEFDF4348C9BD6A632B0701DE4F0F33590952F33CAB133E7388D62
              E13351293F1BFE00225196054E6B309B444F08C51E87EB809FCCBCD50910C3F8
              91E78E74D6C93008F01707F18AE02AB83F769BA352BB945F021FF530BC50A3D8
              70D8B5742ECF265AD82217AE2EC5F0B60B5DE1970D20DB9E09573FFBDCDE1B01
              55BD19436B8CECC28CBC726B763F37DC65CC04E94B77500D2D5AB698515BA20A
              C2C0D673E7575D65733EFB39CEA2CE6258A045F74582D02850996D3C1D551729
              787BCBBD54A916AAC70B94A8DC11599BC94733B5329799CB82968A24B69A4BAA
              2893BEC802968AFAF82E8DA62B2B57A909D94B7191C579A34ED78CC8E779A600
              00000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-copy-100'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000058000000580803000000464BC0
              06000000ED504C5445FFFFFF42A5F641A4F541A7F600000041A5F441A4F543A5
              F647A7F654ADF796C3FF88CCFF8ECAF790CBF790CAF98FCAF990CAF88EC9F990
              CAF990C9F97EBDF38AC6F73186DA80BEF48DC8F868AEEC5FA8E9509DE484C2F6
              358ADC549FE54192DF82C0F58EC9F878BAF18CC7F76CB6F23998EA89C5F61976
              D27BBBF261A6E61E72CB40A2F296CDF9C3E5FCC6E6FC9CD0FA6AB2EF3390E341
              A4F466ADEB2A83D841A3F35EA1E11565C03FA1F264A9E8247AD240A3F3DEF3FE
              A3D4FAA4D5FAA0D2FA8FC9F890CAF970BBF757AFF7C6E6FDDCF2FE62B4F848A7
              F645A7F5E1F5FEC9E9FD5EB3F753AEF651ACF642A5F51E492CE2000000147452
              4E530058BB3A0078F138F144100E6A6C58879764AB5A4C483218000000097048
              597300000EC400000EC401952B0E1B00000163494441545885EDD8D752C33010
              8561D37BEFBD87DE42EFBD84F6FE8F038C21AC23CB3ABB594362F45F7A34DFD5
              198DC641906E35B5EEEAEAB12270C39BBB465066C3A8CC835F5F6099073F3FC1
              32132E8472933E0CCB6C1895F930280B604C96C0902C8211590603B21076CB52
              D8298B61978CC08F0FDFDDDF916E6F3EBE34B7B47ED62682AFAF9C5DB6A7049B
              B2166CC82AF0C5B929ABC067A7A6AC03174C590936652DD890D5E052590F2E91
              2DF0C931E90883A3B2053E3C20ED8370445685A9AC0B13D902EFED927670F847
              565C05953BF4E12FB9531F0EE52E0B9CDF266DB9E0CD8D48EB6B7698B78A98B2
              03AFAE90961561DE2A3C2C812DAB585A4C2EE7611CCE2F90E68BC7E766939BF9
              BB55541F6C79B04C4FC53689C3BC554C6419B63C58C6C7621BC5E1EA9BDB6FC3
              B991E486A570F9B75B66E0A1C1E4062A6E15FF0736FE188575178F4B6F370FE3
              B0E5C1D25F368CE7610F7BB862E19E5E7E7D41BABD030F4545E4B69AD3C80000
              000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-paste-100'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000060000000600803000000D54687
              0A000001F5504C5445FFFFFF0000008FA1AE90A3AD90A4AE90A4AE90A4AD90A3
              AD90A5AE7FAAAA8DA9A98FA4AD90A4AE8FA3AE91A4AE8EA5AC8FA3AE90A3AD89
              9CB090A3AD8FA2AD8FA4AE90A3AE90A4AD90A3AE90A2AE90A4AE90A3AE93A1AE
              8BA2B990A4AD8FA3AE8BA2AD90A4AE90A3AE91A7AE8FA4AE90A3AD8FA4AE8FA4
              AD91A2AF435A61445A62445A62445964758A94859AA48FA3AC8FA7B4778D9663
              7981445963435A6548486D455864445A648FA4AD8EA4AE445964445964445566
              455A648CA3AF90A4AF455A63425B6190A4AD92A2A88FA4AE445963485B648FA3
              AD8EA3AD90A3AD455A63455963445964415765445964435964455A6345596445
              59644459638FC9F890C9F88FCAF9465B62465C61455A63445864445A634C6666
              445A64455965455A633F5F5F465A64455A63455964455A6478A6C990CAF88FCA
              F98FCAF88FCAF8719CBB90B7D58F9CA28593994C606ADBDFE1495D676A7B8378
              B9F13B8EDD358ADC59A3E74998E280BEF48AC6F771B3EF89C4F67BBBF21976D2
              74B6EF7CBCF3217BD575B8F090CAF9BEE0FB729DBDAACFEDBCDFFBD8ECFDD8DF
              E3A6B6BE93A6B099ABB5BAC7CDC9D2D79DAEB7F4F6F7F0F3F492A5AFB9C6CCD3
              D8DBD1D9DD99ABB4718188C6D0D5708088F5F6F6C4CFD4FFFFFFC4CBCE51656E
              74838B84969E77868D677880465B658FA4AD6C818B455A648FA3AD90A4AEB3B1
              2ABF0000006A74524E530000287CB5CBC39F540612A3FDE14E22DB7A0CD35E85
              ED8B5C6CBDF1120AF5D11668F9229FCF7CB93A225C7476B7DFB728BB996C4406
              42C9ED68F3870E8742DDDD2AF72EA7E91C97ADEFC1C74622A15EDB74F7789950
              87622ED958A70AAF6AEB084C89A3ABDD978DEF7ECFAF866E0000000970485973
              00000EC400000EC401952B0E1B0000021C494441546881EDD5F93B155118C071
              632F21451469430B0A65ADB4A854A894BD247BCA5E68B727152512A3248EF93B
              9DE5E25E66EE3963CEF17439DF9FCE33F73DE7F33C77E6997173DBBC1427B97B
              787A79FBF8EE7036639F4960A7DF2E0DE71F200408DCAD2DB7182400D8B357B3
              2B983F1082CEDD171AB6FF005A8447F0060E46C2630F1D46CB238B70E9C11B08
              80871E3D46D651701DCD1B8881871EB7AD4F20CC2270F2546C1C2C7EA5D3F0D0
              33B67D09E82E24AEFC948426CF9E4B3601A4A40292E6509A6D5FBAE3E505329B
              71FE022B7011005D40CB24FB2EE902005CBEC206AC9EBF16B89A85B65DD30C00
              70FD060B90020C016DDE2BFBE6ADB5175701709B05C87102E86607805C3A9047
              26FFCDFD853101B370F0CF6FB2ED0E1DB84BCE9F51514CC0349A9CFA85F7DDA3
              03F978704E650726F1E80CDE779F0E3CC0833F0930C1028CE3D11FE43F32098C
              319CFFFD9B056074840E7C552D00EAE897CF4E4F1FFE34A45A02D893800424E0
              02C0C7414A03FDB802BB0ACD007DBDE62B928004242001096C59A0A79BDE072B
              C0FB77F4DE6E6FE0CD6B7AAFFEEBA7C8F581AE4E833A3801864FD14B096CD63D
              30D3360584BF8B5CFF752D1C10FE4D16FE144960E337F90527C0F5BF07C201C3
              975D3B27C04CFA401C06DAC401C518686D11069460003437353AF49C1BA09402
              BD9EF103CA4403CA43D1C0A372C180A23CAE100C284F2AABAA6B1CAAE50BACAF
              4E025B1FA87F6ABE065D404C4B57EDE585152A46FB0000000049454E44AE4260
              82}
          end>
      end
      item
        Name = 'icons8-database-100'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004A0000004A08030000002B0E32
              430000003F504C5445FFFFFF000000D1C6E8D2C5E9D2C3E8CCCCE5D0C3E8D1C3
              E9D0C3E9D1C3E9CDC5E6D4C3E5D1C4E8D1C3E8D1C4E8D1C4E8D1C3E9D0C5E7D1
              C4E9D0C3E8D1C4E9787C1B3C0000001374524E5300002C60660AABA9A5A31E1E
              4E5AA1A9A72C60E6BDEBCE000000097048597300000EC400000EC401952B0E1B
              0000008E494441545885EDD5CB1240300C85E10675ABA2E4FD9F95856255334D
              CC1873CE037CBBE437467544549455F6CA620722656B16ADB127D5CA24E62E52
              FD2AA55677508354621E0ECACB290F0A14A87C4AF19C9DDE9391BFBEF17AC893
              4C9AAF874C1496FC4C2CE19609857D9D4252D343524181FA1F85A43E0D49CDA4
              90D4F4905450A0FE4721A94F7B25A94ADB00B8D840B6F69EA900000000004945
              4E44AE426082}
          end>
      end
      item
        Name = 'icons8-database-symbol-100'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000058000000580803000000464BC0
              06000001BF504C5445FFFFFF000000D1C6E8D2C5E9D2C3E8CCCCE5D0C3E8D1C3
              E9D0C3E9D1C3E9CDC5E6D4C3E5D1C4E8D1C3E8D1C4E8D1C4E8D1C3E9D0C5E7D1
              C4E98AB198439E483FBF3F429F4642A046429F4648914889B29651A359439F46
              43A14738A95441A04842A04743A046429E45439F46439F47429F473F9F3F00FF
              00439F4742A046489D48CFC3E660A66643A04645A24542A046449944439F4642
              9F473F9F4A439F46429F46469E46439F46429F477F7F7F429E4741A046439F46
              42A04743A047439F46439F4742A047429F46429F4742A047439F4659A560429F
              4745A24542A048439F4655AA5542A04744A14843A045429F464C994C429F4744
              A148439F4742A047439F4742A04642A047429E4641A04548A34843A047439F46
              43A04643A04743A04647A34742A04743A04644A14442A04741A045429F4643A0
              4643A046429F47439F4643A0466FB672C0DFC2439F474AA250D0C4E76CB46FAE
              D6B0B4BCC89BB6AC75AD8076AD817DAF8A8CB29BBDDDBEBFC0D4B5BDC963A86D
              A8BABA6CAA7685C288FFFFFF4AA14FBCBFD259AB5D82C0849EB7AF86B09343A0
              4755A55B80B08DB4BDC885B1947CAE8873AC7E77AD827DAF898DB39CA2B8B3BE
              BFD3D0C3E8D1C4E9740572FE0000006C74524E5300002C60660AABA9A5A31E1E
              4E5AA1A9A72C60C53404F1AD500693DDE5720822B7DF4C5AF39908008BCB1466
              C5D916D30EAF68189BF91C85E1023274A7CFE9F7FBEDD9B38748CFF50A50A306
              E53E70C30ADF3C9FDDC9F5DB44460EAFDD68EF9F189BC31EA53E72A7CDE9EFB5
              74F04C84000000097048597300000EC400000EC401952B0E1B0000022F494441
              545885EDD6575BD4401406E03D54A583828A8A5411A4292E65151605A44A2F4A
              53ACA0808260175084A12A253F587CCCB2C326D93DE78C7B21E4BBCBCCE4BD4A
              CE7C0E47F0020021A161EC848680317FE1F0084D2991E116F0093557D34E9AC3
              517BAAF05EB4291CA3EA6A5A8C291CAB0EC7DAB00DDBF0D187833684A2833536
              D5077D9CAFEBB99AE2D5DC04ABAB092031897F9926251A582FFCCFF3FFC27661
              B10B8B0DDBB00D1F65F8381596DD9DED5F3FB736374E9D4E36857985657D6D55
              1C24E5CCD9734698535852CF0B9F5CB8986684A9B994EECBFE4946A62A9C956D
              E6EE27E7B20A9C7BC582DD4F5EFE61985258AE1658BB4214164930ADB0ACF873
              85282EF1C2A4EF7859567EE85992D6AEE502A7B07CFF26C38B7A16E4C5EBC099
              15F322209C52CA986E5F456058DC60C05F30B0B38C0C7F1618589493E1351C5C
              5149855771B07011E14F0209DF24C23BFA7B0B8B16F9A81FB845843F60E12A22
              FC1E0B5713E17758D84D84E7B0700D11DEC4C2B7894368050BDF211696592C5C
              4B1CF46FF5F7963C03DE03CEE8CFD3FA813A626179F31AF9E7D5530BCB5D1CDC
              D048BDFE9B707033B957B4B4A2E07BF4C2D28681DB194DA8A333303CD5C5A958
              9981E16E6075B71CD998D43321ADF594F0E0B45EE1377D2EE0C190DFEFCF75DE
              072E0CA555D66EF603E0C3303068E50EB9400506181E3163A71E0E780E706178
              34EA34B88FBBBCFB6C18E0497985AC363C7D26EF2AC00095AEE72FC6C6DD352F
              0B5FD5D5771CDE73042FBF017B4B9ABC8762273D0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-delete-database-100'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000058000000580803000000464BC0
              06000001F2504C5445FFFFFF000000D1C6E8D2C5E9D2C3E8CCCCE5D0C3E8D1C3
              E9D0C3E9D1C3E9CDC5E6D4C3E5D1C4E8D1C3E8D1C4E8D1C4E8D1C3E9D0C5E7D1
              C4E9E28490F54334FF3F3FF44235F44236F54236FE4824E3828DEF4F4AF34335
              F34335FE3838F04132F34236F34335F54234F34335F44335F34235FF3F3FFF00
              00F34335F34236F24830D2C1E6EC5C59F44336F34539F44235EE4433F34336F5
              4235F43F35F34336F34236F64634F34335F34236FF7F00F44238F44136F44335
              F34236F44335F34335F34335F44235F44236F34236F34236F44335EE5652F342
              36FE452EF54235F44336FF552AF34235F24434F34336F44235FF4C33F34235F2
              4437F34335F34236F34335F44235F34237F44136EC4836F34335F44336F24335
              F44336F34336F44732F34236F44335F64433F44236F24135F34235F34335F442
              35F44335F34335F34336FAA49EFAA7A1F7786FF24A40D2C3E7FEE8E7D9A9C4DE
              93A5FEE9E7E87075FFFAFAE67880E28593FFFAF9FBB6B1D6B4D2F77970FFFBFA
              FDDFDDF55347F54C3FFEF0EFFBB9B4FEF5F4FDD7D4D8ABC6EC6060F76E65FEF5
              F5FAAFAAFDE0DEFFFFFFFDD6D4DB9FB5F76F65FAA9A3F44437F55448FBBAB5F5
              4E42EA686AF3493ED5B1D0DE95A8E47F8AF44336EF544CE57B84D8AAC5E37F8B
              E6767DE86F73E77277E5787FE28694DC99AED6B3D1D0C3E8D1C4E93D7C2C4D00
              00006A74524E5300002C60660AABA9A5A31E1E4E5AA1A9A72C60C53404F1AD50
              0693DDE5720822B7DF4C5AF39908008BCB1466C5D916D30EAF68189BF91C85E1
              023274A7CFE9F7FBEDD9B38748CFF50A50A306E53E70C30ADF3C9FDDC9DB4446
              0EAFDD68EF9F189BC31EA53E72CDE9EFB5A338EF49000000097048597300000E
              C400000EC401952B0E1B0000029F494441545885EDD6D95713311406F05E1037
              40051577540451144511810A820AE22EE28AFBBEE0BEA0B8B4801B10C5BA7345
              1145FA7F5A6C934C3A493949EC8338DFD3F4A4F93DCCE4DC7C3E5FF2020029A9
              E38C939A02EE44E1B4F161AB4C4853C013EDDC7078921C9E3C6C0B0FA74BE10C
              5B371CCE90C299F670A6077BB0078F7D386943283D5963D37ED04F8977E9D534
              D5CE9DA6BA9A00B2B2CD2FD3EC2C17CBE1BF9E7F17F60A8B57583CD8833D782C
              C3FF5361F935F4F3C7E0F7816FD367CC94C26685E56BFF1764C999357B8E1B36
              292C73E7615CE62FC875C3BA59B8289E1DC9E23C5B7849BECC8DA460A90D5CB8
              4CC146B2BC4884750ACB8A956A17B1789503D62B2C7D895CC4D5251CD63AC79F
              13BB886B0AC1A4B07CFA381A8C6BC164567C60FBDFBF7BCBB1D09B5EF69C536A
              30DD5E73F715E96172A89B74BD644BEB0CE0170E973039E212875CB65E1B7ECE
              DC678430F98F4BC85326976BC3FD746B27214C8EB98474B4C7562B2A756136CF
              82012A0799FBE4317BCB7E4DF8113F065C7E187B68E32E6ED0848750224B5CAC
              D2841FA052165CACD684EFA34A165DDCA8090FA2426E155DACD184EF89DB43F4
              BB91BB4171A556131E10DD6EFE2A7A447993E610EA53B9F1F266CDC27247E912
              1270CA5B3407FD6D89DB7A4B22D76916969B375C6EDB7576361C72BD6E61D94A
              775E63AEE3D405E8106AD8A67BFD6FA7706F1773B97C95AEEED0EE153B770972
              D4A5327371B77E61D9830E99BA5199BB7B0D9A50E33E2E77307744E66E4B9349
              C5CAE3583BA2F4C77E30EA6E05384A0E9498C1B90713BB0D7E3083A1E85022B7
              EC3098C2505AAD76F38F80390CCD4755EE313FD8C000C74FC8D89693CDF40FA6
              309C3A5DE672CF34F1756318E06C79857018CE9D77AE5AC00095FE0B55172FD5
              D45E2EBE5257DF28AEF99297DF25EFC96B25DEA4F00000000049454E44AE4260
              82}
          end>
      end
      item
        Name = 'icons8-database-administrator-100'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000058000000580803000000464BC0
              06000002F4504C5445FFFFFF000000D1C6E8D2C5E9D2C3E8CCCCE5D0C3E8D1C3
              E9D0C3E9D1C3E9CDC5E6D4C3E5D1C4E8D1C3E8D1C4E8D1C4E8D1C3E9D0C5E7D1
              C4E9C1B8D88F97AF5F7D8C5F7E8BBAB4D75F7D8A5C7B8B5F7D8A5F7C8A607C8D
              647F88607D8B617B8A5B7F91607C8B5F7C8B617E8B607C8A5F7D8B5F7B8B557F
              7F5F7D8A607C8B607D8A637F8D627F89607C8B607C8A5F7C8B5D7F885F7D8B60
              7D8B607C89607D8A5F7C8A617C8B607C8A5F7D8A607C8BCCBEE26681905E7D89
              5F7C8A7F7F7F5F7D8B607C8A6179855F7D8A5F7C8B5F7F8A5E7C8B5F7C8A7F7F
              7F5F7D8A607D8A607C8A6666994B5E69607D8C546773607C8A5767754D606B61
              7C89607C8C607C8A6A7F945F7D8B607D8B5F7E8B929CB3607C8B607C89627F8B
              5F7C8B607C8B607D8A5F7F8F5F7D8B607C8C607C8A5F7D8A5F7D8A0000FF5F7D
              8B5F7C8A607D8B667F7F5C7F8B5F7C8B5F7D8A5E7B8B607D8A5E7A88607D8A5F
              7C8A607E895555AA607D895F7F7F607D8B5F7C8A5E7A8D5F7C8A5E7B8A637F8D
              5F7D8B607C8B58727E4E65715B76834B636E587481597481465B64475D674C63
              6F5A6A786E7A8C6C78896C8596B1ACCA6572835C788673899ABEB8D94C646F8B
              8FA77981958B98AFCDC1E55E7B89717B8EA8ABC858727FBAB2D4A5A3BF698393
              C1BADB546E7ACCC0E5485D67597380688292516A76586876556F7C556673556F
              7B6C8595587380B1ABCB5D7987B2B0CF5F7C8A657382CFC2E7617E8C959EB8D0
              C3E74E6670798196CEC1E6C8BEE06874857A8DA1C3BCDE5A7683455A655F6E7D
              A4A2BECCC1E5C9BDE19B9BB6566673465B66698392ADAECC4F6772495D675668
              74546673526C78CBBFE3495F6A4B626E758A9D5B7784465C66495F695E7A8861
              7E8BB6B3D24B626D5D7A888896AC5E7B88506974465A65475C66536B77607C8A
              65808FC5BCDF5C7885506975495E69455A6449606A526B775D7A879CA3BC5C77
              8559748056707C56707D5A74815D7887607D8A627F8DD0C3E96E8596798D9F85
              94AA668190607D8B919CB49BA2BD778B9E778C9EB5B2D2D0C3E8D1C4E9ED758F
              FB0000007F74524E5300002C60660AABA9A5A31E1E4E5AA1A9A72C605640425C
              747820BD9F2C1CD5440E76C360B5B5400687F7BF241A89F1F51E4AC962CFF370
              9DF9AB6AE940D3046EEF149BFD3056950252C79104ED46D35ACFE74C6EA30CD9
              6C6299BF242CFB87E510EB64E98FE900CBDD6A0A16B1E13EFD36E7CB56023C08
              A1ED1A7C461297AF6020AD55000000097048597300000EC400000EC401952B0E
              1B00000389494441545885EDD679584C511400F06EC956A1AC09912C5922A1EC
              5BA4EC923559933DD9F75DF6C852D6484448B66C458964275B8BADA6A144B69E
              ADF9C7CCBDF366CEBC99BEAFFBDECC1F7C73FEBA73EE777E73BF376FCE3D0606
              BA0B8490A15109DE616488D483C0C6252582A2947111706961AE445246335CB6
              50285C68A2113615EA4A24A61A6133E1B0991ED6C37AF8FF8775D6844C74D536
              8537FA725C97BD9ACA0B732B14753521646EC1FF32B530576395B0D6E3DF85F5
              038B7E60D1C37A580FEB1CFEF3FB171B3FB50AFF601451A0D581E5BB12662A6A
              84790E2CDF005C4923CCB3D17F057065CD30AF81E5CB670057D10CF31A58AA02
              97A956145CDCB0AC6E5583AC6A5A41B89635C9D6AE635397176CCB30F9F5EA23
              D4A0A11DA31A8D1A23D4A4A93DC3346BCE037620480BC7968C5AB46AEDE48C17
              6D205CBC81A56D3B0EF6E963DE87DC1CEE57B447B403CB7B95FA77E26C118EAC
              CCB72A1B1D3A52BEC76F5E83EA572F33448A484F4B857227CA81E505A87DFE4C
              A412D9F08174EE42D52B9E3E5196A63C1671E2D1432077A5EA6E0FC073B8CF75
              45A27B29CAFD6E2E14F05D70E03BAC96713BF916BB4E0247EE4E73E29B3714EF
              4322A1AE27C44B24D7AEC6914FB157146E0F57AA467FF992BC4E4CA48B17483E
              E63CF97C8EFDED7AD2DE2067CF9CC695E4FD4D8E67F3D1A7C87389C2BB6E9688
              FE6A3A5920AD3C410E98A04C1F27994899EBDE0BF18025C7A4A5B9E47CF120DD
              1BA78ECAE03E88172C2BCDC34A044CF7C529B16CB71F7FF808560EC3747F9C0A
              17001F92968661E5E001901E8053A13278202F78FF3E69690EF9A9F62AD37B48
              66B70CF6E003EF22FD2D0B3371318A7C08E971C178779027A21C5876EE90FF03
              32C901B747CB37B691CF41F2EDC12E7403CBD62DEC3F36309D489B37E1E71022
              6F1661ECBEDD10AA46BF51D963D2D8C613B161FD3A76BD1634A1A134030B987C
              82D5DAB1481400EF276B9A816518280CCCE0BA6B56836D5BBAEB7F3828CDE19C
              396015D8741E41077B8D04C5A949B1C05DA9724F7BD30E2CEEB09A59B13C91A8
              E941912A1BA33C69E1D1635400262A32541C1EBA2C55358BBB05E5883596548E
              1BEFC3A845BE931B59D84CA0875D7DA58513274D4653A672DD69D27973BA6D3E
              C3F8B9207A18CDF09F396B365ECDB181AC8FC75C9CF59A37DF1BF181412C80F0
              42EEAE00B8A31F801DB508237F002FD226EC0B602F6DC2F0C558AC4D7889D2B5
              53DB14023BD82BE0A59A61DDC45FEDA2A4850789E34C0000000049454E44AE42
              6082}
          end>
      end
      item
        Name = 'icons8-outgoing-data-100'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000153504C5445FFFFFF0000003C52B43854A93E52B53F50B43F4FB73E51
              B53F52B43E50B53E4FB50000FF3E51B43F55BF3F51B43C50B53E50B43E4FB63E
              50B4007F7F3F50B43F4FAF3E51B43E4FB53E50B43F51B33F50B43F3FBF3F50B4
              3C54B63F50B43F50B53F53B53E50B43E50B63E51B42A55AA3F51B54254B33E50
              B53F50B63F50B43F50B53F50B43F5FBF3E51B33F51B54848B63F51B43E51B63D
              4FB43F51B53F52B63E51B43F51B400B1BC00ABBF00AAC300A9C600ABC100ACC0
              00ABC100ABC200AABF00ACC000ABC000ABC200ADC100ACC100B0C400ABC000AA
              BF00ACC000ABC100FFFF00ACC0B0BEC4B1C1C1AFBEC3A8C0C503ACC103ACC000
              ABC100ACC100ACC100ABC100ADC500ABC200ACC100ADC100ABC100ABC000ADC0
              00AAC300ACC100ABC000ACC100ACC000AFC100ACC000AAC000ACBF009FBF90BB
              C58FBAC47EB9C47CB9C480BAC494BBC4B0BEC500ACC13F51B43F51B5E5D74F83
              0000006774524E53000022085ACF20ED44FD7600AD0CD526F14C8302B510DB2C
              F3588D04BD14A5E134F7629706C51AE73CFB6CA10850C706E3346299BDF55416
              34320874D5D37030DFDD2E32F30CE30C7E7C00E1A5203234F1EF9391F1EF164C
              FD4A4EF34E1E9DF5F59B1C405E5C08D84DDF69000000097048597300000EC400
              000EC401952B0E1B000001C4494441545885EDD9C753C240140670D6DE7BEF8A
              A2147B41B160416C2076B117EC607CFFFF491818D8DD2487ECEEBB30F9AEDFE3
              77C8644B0687C38E9D6C88704A4ACD1A29B6ACBC028585CA2A1416AA6B6A3158
              80BA7A14161A1A5158686A4661E1AFA5158305686B4761A1A3138585AE6E1416
              A0A7178585BE7E9A1D0055191C42616178048505708EA2B030E64261617C0285
              05B7078505F0FA5058F724069B7EBA08EC940BE3D93AA711DE84DC3A53CCCECC
              622CDEFC1E9666E7E645B3C0A9851D57E17EBB489D0FEA58E63453C6B267AF22
              96BF29A86175F71A25ACFE16A68235B833CAB386375C69D6F83E2ECB9A7C3D48
              B25E9F7123C52E79CC1A29D6F06B449E358FCDDAACCDDA6C31B1FEE515BFE1A8
              95826303AB6B5A3AEB1B016ECE62C1B2C14D2D97AD6DE6C7560B86DD0969F984
              8244A2A0D9DDB04625BC2751D0ECBEC6E440A2A0D8C3303B74245E64D8C86F36
              298D4B4AB888506C921F4A0A1734FBC30F7D0B1734FBC50F7D0A1719367A9C4D
              EC849D398D091751FA053B6387CE250A9AF55FD03397571205B378AFE38599F8
              0D9128D8ADE636BFC4EFEE099128B88DF1E1F12933F2FCF24AD8582C74DB7820
              F1F69EF820FA582A84FF5BB1536CF907DA09B5699CC6E5440000000049454E44
              AE426082}
          end>
      end
      item
        Name = 'icons8-save-button-100'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C5000001A4504C5445FFFFFF000000007FB20176BD3686B76B97B10277BC0077
              BB0276BC0072B20069A70277BD0176BC369AD83296DC2D92CE2C8AC72384C134
              97DB1175BA0063A9006DB40078BE0073B93298DC3298D93497DB3399DD3699DB
              78BAE79ECEEEA0CFEE93C8EC4FA6E0A3D1EFF4F9FDEAF4FB81BFE9E5EAECD2DB
              DEF7F9FAF2F5F6FEFEFEE3E8EACFD8DCFCFDFDEEF1F3E2E8EAFDFEFEF3F9FD88
              C2EAF1F8FC87C2EAC6E2F5FFFFFF62AFE34CA4DFBCDDF3D6EAF8D2E8F788C3EA
              469ED878ADCF8DB3CB8FB4CA8EB1C78DAFC482ABC45899C32D87C22C87C22C87
              C32E8BC93395D759A3D5ACBCC683AAC12B80B92A81BB3293D33D9BD9A8BCC662
              9ABE2A83BD3397DA61A6D394B2C23191D173ABD06F828BA4B4BBA5B9C5035EA2
              025CA1016CB1026FB63496DB0B6AAF455A649DACB401579C016DB25885A23597
              DB75ADCFB0BEC5A8BBC42980B9308ECD3498DB68889C32424C32434C445B6866
              889D65879D3372A00B62A3055FA3698CA4768F9C26323843535B78909C326E9B
              01579B7393A7385364466477688CA4337CAB016CB237474F5768706778827687
              910277BC90A4AE3C8AB70277BD4337D3100000001C74524E5300000AABC1E364
              0E6C141C62A52032445C6CA5725C4032202C6EAB1E1D71A5A400000009704859
              7300000EC400000EC401952B0E1B000001ED494441545885EDD8E953D34018C0
              E1CA25827216451190FB964328556E39E4BE94C382CA21149150A082500816A1
              50F09F36C9A66D781792ED6633D376F2FBB493D93C1F76DFC987582C06F5E056
              71F1A08444EDD0CEA49082B10FFF816EAEB5433BFDC986B00A97291B72A9D8AB
              4BD41564832E15EBBB40F93036E0B2666597398B5C8C7D740EFA7B86E5FD83F2
              0AEB53C84A2EC6A6F0A093632CCF11CA23AC0F7F43567475B3920BCECD9FAA9F
              155D781F8F05F6499A587A062AF340685FD12F77B03DB9DD1D2197CBB5EBDE46
              EE5D6C1627B6F553D1E60FCD36A4B79CEB92BBC69895DDEF6B8C59E4F2C0D5CF
              4A2E0F5C627675456E15B2A2CB0397052BB83C7099B09C7319B86C586E09B88C
              D880FB8D312BBB5F59B3DCD21743586ED1644D96945DC058C7673987FC609E8C
              9D53B2B3188B3543C67EFAA860A735D5A94932969B180FB163A31AEAC83054EF
              63B9A1C10F0381FAFB7ADF837ABA8375757660EABDACCE4CD6644D568B6D6F7B
              47D55BBB1ADB6AA3AD458D6DA666DFA8B14DD46C63ECB10DF5A4BD0E87ADAB25
              AD26765983CED6A049882EB6BA8AB4CA70D8E81A30A3D80AD2CA2360124CD666
              D89545DADC665BADD69CA7A867ECD85CE50F50769F1A75967A1262812DA3664B
              D5587B092D5BACC67245AF0A692AC87FA9CAEA2DBAD9E72F9894075843FA0F90
              C5418215D921640000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-user-account-100'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005C0000005C0806000000E3EFD2
              580000000467414D410000B18F0BFC6105000000097048597300000EC200000E
              C20115284A800000001874455874536F667477617265007061696E742E6E6574
              20342E312E356447585200000ED749444154785EED9D095C54D51AC0355FE64F
              53CADCF0A96021A6A5959A69822C3330C3AE09AE8956E4962D2E29E202162A29
              E40683B883B208B9E4829A260A66BE5EA559D6AB5E9AA999CB43641BD7FBBDEF
              5C1DBCF7CE37CB1DE6AA43F4F3EF0CE7DE7BCEF7FDEFB9E79C7B99B13A717171
              B5DC43C8C25A94832CAC4539C8C25A94832CAC4539C8C25A94832CAC4539C8C2
              5A94A3EA0D00FC2D888D8D7DC8D7D7B7331281BC8B4C95E2E3E333963AB63AFC
              ED847B7B7BF74199E9C805042C81D2FB52F5D8CADF46388A7B19057E21156A09
              3CAE80AACF566ABC70AD56FB084A5B88F238A94C6B51A954C154DDB650A3857B
              797935436107A5026D014FDA5964A95AADEE44B5652D3556B88787477314748C
              92571DB0CE5BF89A86574E13AA5D4BD448E1111111F5504C8154969DF90F5E41
              AE54FBE6A891C251761C2148097E6557121583296A9C701C633D50F84D428E52
              6CA0E230458D138EB28B08294A1342C54251A384E34D8D8A90516DD42ABA5CC0
              97543C14354A38F6EECF08193631AC9F2FA44D54C3F1A56A38B3C20F224254E4
              7E02BA523149A931C271EC76C2A4AF4B24C862C42B2A5839590DBFEAFC0072C5
              9C58E6076101A6A5E3C98EA7E292A2A8F0B7F12E2F7A80D67F5AB836695A84B6
              203A5CFB577484A602DF8311E1DA59541DD68249B38750A40C73BC11AE828CA9
              6A14AA36922CE547ECED01FE743D28BC908A4B8A22C2A387063D3E2D5C138F22
              CF1B8935019E88CBB161618F51F55903269D2695608A3183549019AD823F965B
              962CE59B8FD5E0AF26EBD577EFDEFD612A362176158EFFD5457163983C4AAA25
              F00A88A5EAB5064C78974440152A9CF4C60F51414E8C0AFE5C498B9443D1476A
              7222B5E646C86EC2DF0F0D6D1C1DAED94A89B4163CFE0ABECE9D36D0DF873DAF
              A6DA3105267C54983C2E57E0DD612AD838530D1756CBEFC996D8F5A19A3F91A2
              36552A6F2A362176118EE36F73ECD5DF49055607ECED27A6866BA2AC158F63E8
              7961F25F25D95FB294F143C4C2318621546C42AA2D7CD2AB7E8D50F8514A9A5D
              08D714C5F4D738536D0BC1644B84C97FBF8496644FDE192A168E3D7C04159B90
              6A0BC79E9D4E8AB223D8C6EF53FA6BDB50ED1B781084630C167F25572DE131E1
              0191942025C0F1FDC8A851A65701355E786CB87FD33B931C294809705C9F4EC5
              C2C064B70993A7841F99D713F2DEEE0447137A1A6DA3B8B2D607B64D7C16B64F
              EAC2BF976E9708D7E390D29B8A4D88CDC2A323B41F5252940485EB4D8DE7BFC4
              7BF59A30D0ABEA29A154F8F105BD201A0F35C07E166EA7583CB47DD5FEECBD74
              BB41B8D6CF1736BDE7B58F8A4B8A4DC2F91B9B086D8954487598FF5A006C8F0B
              848491F4F6BB6862A8982E2779E45F58E001532269E1BBA6741109673F0BB74B
              B991AD16ED3F4DEBCC9709F761C299ECA2586FC0F6A16441EF17A9D884D8249C
              2DD76819F2487C2300767D1008A7D70503EC0CE1B9901D0CF1C3E9FD196CB948
              C5549CD8E737967465861AA68E3016FEFBD23E10A36DCDCB8B09680DA7923D44
              DB2956BFD1A14AF89A2877A3ED9387B3E5A71F54A47AF1C28B93FA4452B109B1
              49388EDD9B2919D6B0304A0B7BE604C1B9CCBB92A59CC113307B5800793C63FA
              20ED53D29830D9CD2CE99B996AB896ED0797D3C5721867533DA068D60BF8EA69
              B48D82F5E87FC7F780AFE35F34EADD0CC35D6B79AA3714277A70C5F33D2C3E31
              942D9C7F2015AE2DA3449862C9E800D8372F08CEE7D082294EAC09865943E8FA
              A2C3FD5F93C67525D1C3BD38C9E3FC8D0C959118A5294FC11E9ED867B134260A
              D9C2A70CD03C4349101233500B29630360FFFC20B8B4C1744FB6C44F69413063
              10D146B8964CAE6C41EF163733555F53529444BFDC6B0C150F856CE1D103356A
              2301480C923A3E108A1604C1E53C5AA02D1C4D0E82E9780225ED6DA1626370B9
              7E7328294A81ED5DE732FC1A51B150C8162EBDD999131900879202E1CA46DB7B
              B2258AE6070A65B389F31B2A360697E3D79712A314287C0F158729640BC7CB79
              AC30F9B4F101A4247B72726DB04838C6F02B151B4F6E443D6E83FA02254709B0
              ADF1641C267054E1A7A8D80CA084244A8EBDE172D5E55C966F4B2A065338A670
              BCE9A26233C06D523D81424AA482ECCE06BF38AA7D73C8168EB7F4A384C99B12
              5EB9259087DA46712B3F184A7235FCAB749B710FD75CA4621382BD6F1229C94E
              701BFCCE40AED7A354DBE6902D3C76845783F861FE87CD092FC41B057657C738
              38B7A7D17629A51BB59034E4F6730BF65A863F0BB70B854F1FA8B9193BD41FCF
              0A1DDF5DEAD445299F52B2AA0B0E59155C9EDF4B74BBE6912D1C32DD9B5D5FEF
              7E69CD3B2A52F8CDEDB88CC35B67C32DF18CA0D67C99701F297BE3BA57EDCFF8
              1C7F166E37089F39580B3F2F7A0EB86CF799646C52B6063744E9DF51D26C05EB
              E3B85CFF61647B56205B3897E93600B2DDE1465E0F583321D048381B12E242DB
              54C99B8DEFA9614248D19C9E22E1D2AB8209E765A7F9036B9BCBEE708C8A8D24
              57ED844BB71D943CB97039EA322E4F1546B66325F28567BB87B1A461630FB8B1
              3D04F62518F7DEE3C99E306F403B9E1F53FA1A6D97726D6B10AC1BD7096685B4
              E15FAF4BAE08F66CE5E71558B6FD8EF02C7793EB70125C2A5E5DEBF3356CB0FD
              F79C78070BDC3A752FB27E19C817BECEAD094A3F0D9F741349B927DC153E818A
              CD1C9793FAE8AE2CF6846B6B7D51A0F5E26F65A9A162197B1AE809C5096A27AA
              6E39C816CEE0D677ECC2E53D778C94A220DC56F50D941D0BB175647D8482C184
              B3A789FC73EB459E28D11BAEA7FBC22DC953409C10F9DE7C75950F942DEDCB8B
              361C77DF8433B8BD212D29294AC2ED0C5E45C5620D42E114250B3DA1E4637A9B
              81FB2A1CFFD4E5F283CF526294028547D1B158C692706BB8CFC2B197EF0C49A1
              C42801CABEC5EDEEDF828AC31C2D267FD3BBD9E8031B474D4CBC4449948373D4
              67DF3E115510DFF4EDC3367DA18A512DE1B033544DC95102147E808C81C02B16
              FEE13CF1C894A6C3765C6CACCD80C69A747861640629D15A4E260542E3C04CBE
              AE26C159DCE3C3777DD566D2D167A9F6CD513DE16C58D9197C9812646F70F8C2
              250A15831897D4D2FEED53CA7E6B1DFD032FC740B3B02CF89F600294CBD20FA6
              8BEA63B45B74F1866B4AD9AA27D32ADB51B1505453381B56823C2941F60487AE
              DD54DB425C75573AB6D795EE6CAF2B0346BBF9E78C04AD993E8694690D2F8DCD
              11D5F5D82B9FF0EDDCA1DC4557F65E9D58B0B87AAAB670060A594E89B20BF9C1
              25DCCED08E54BB065C75A5A3DAA794EA0502781E0FDF2292E436681D1427CAEF
              E5FBE70E832601EB4475B51C7F58D4D66D4AF7B92D2E35FB3542BB08C73BB9FA
              5C7E480129AC1AE0707513AF200DD926C27A94ABAE2CC538F1DB384FFD5E2489
              F1E6B87852AA29FE4AF4867683C5BDBB09CE0B2E89E7C936F1E49F76492935F9
              F570FB0847B87C6D7314F42525CE16B0AE6B78124D7E1AB54E2ED4734D295D4F
              256DC035B9041E0BDF2492D5589B0EE3DE8AB5AAA7FF37C11F3ABD7A7BD215D2
              7CEC41B23D01979ED25574A7E2B69B709E02AF06DC8E802C4AA01CB81DDA4A1C
              4A3CC836EE804925489224691B7F0A251B4B7B66F06AD8342B9214CD7A75F4A4
              3868DE2FCBE838A7FE79E0BAA4846C4B444AE919B7C515469FF8B5AF70465A1D
              27C87006D8EA4BCA340B7BAA98DB156065A3B564DD7770D5950F279334013FB4
              60CF96CA6334EF9709DD5E5F0FBE63D780E7E874783A320B9C82D693FB3A85E4
              40DB8FCE906DD0941EE99C0BF585B12B237C19BE4DAB0BB01E574B9B7BA14CF3
              CFC3619B1A60032E69573602762C975A4747D68DB45D5AD11A977DC57482A671
              9E7C941F7B2991D6E014BA01DACE3D45D66D9694B20F85F12B275CC8F2870132
              5A0164B901E4E07C928B72739EBE7D4256E34D9B647F73C2B1D7E490895941DB
              39A7F82181126A8EA691BBC165D125B24E4BE0247AC325AD1493BD1DFFBD112E
              1353C29FD4953D8BC26F5189598B6BF215709E728C5F475372EF92014FBC9A0F
              6D3E3841D623079CDC330D39D85DF8A8E4640F4AA21C7E48EDB4DF6DF12F8F48
              EBB6B42A914BBB8FFE8456EF7F072DDE3A04CDA20AA0F99BFBA1E53BFF82D6D3
              8EDBDCA349524A6FB6D3953CC972B08BF0CE4987DCDAC67DBEB9F198DC8A8706
              AF84ABA9384F1022ADE595D989503F722DD772F28E5FDCE61EE23FB7D772C1B9
              46187CB951320E020E2D33581ED5121E7248EFA6DD7D39BDDED0555077D08A2A
              0AD867AF0991D6F2DCD435A2FADCE6169DEBBBAD3CB97D2A9D8C2380C2F9DFC3
              DA24DC6F37D728AC481F1F565479155FE1D1D139224123E7CC26455A43456A43
              A83F5C2CBCDBCA1F81B5A3D95B095D32CAC9841C0197E4F256B285871DD06BC2
              0AF5A79800032E71FB44829CA2D241AFC3950921D412EFCF7B4F54171BA2FCF3
              2F55B5C5F0FCB4029E5A4627F520E3A22B0FB05A38FE5517939D1D5A58794B98
              3CA36FDE6991244664DC2C52A8394E2E6D050D47AC15D5D36A4ABEA82D039A3D
              95D07195A3F5F6D218AB8447E4423D14BD924ADC40B3099F8A44D51DBC0216CD
              19408AA5F85F722368FFD672711DC8CBD927C9F61841057AE8BCDAA1A4A75A25
              3CACB0721595B0109F2DE7403A7932E9AFCF9804951686977D0BBA42F3A895E2
              639176B3F6926D0909DEAF87A71DA5A7A794665B141E5A54194D254AF1CC926F
              8DA4319ABCB61A46C4CD846D0BBDE18F64679C181BC0B1A51D20216124749BA4
              E34F8CF418361107ECB942B623250027D30ECB89041F384A779A15DEEF60656F
              147E934AD214EE0B0E19C9934BC3D733C16FC745B27E9314EA3709637F503129
              5C9BCF3D8243C94F647216E8AA3B8AC3CB6A52A625D85C205D95580BCE338385
              C93D8898148E3D661C9594B5F86CC1DBE6A9F9A4548A0623D7F14352E8810AB2
              3E6BC0ABF164C40FE2C7A10F1AA47016746891FE3495945CBC369E850E095F80
              D3B84FF835B55072FDC874F867CC6E783EED7B08DE57461E2F9B037A9B3F2C74
              2F20858716568493C95413BCE441B3BB981F9F830BEC245802B671549AE48304
              291C03CF9326E248841EBC6AF6B7FCF71323E17726CB0A2A1187A1B092FC1727
              1E048C84871EACE84126E150549AFCA6F2FDC648389B74E8241C8842BDD9EF71
              DE4F8C8517562E22937030220A40F657FAEE058470FD5A2A0187A3402FFB7F17
              702F30168EE31F9980A371B0FC792AE1FB8DB1701CC3F1A627C1D171981E5ECB
              BD812CAC4539C8C25A94832CAC4539C8C25A94832CAC4539C8C25A94832CAC45
              29E2EAFC1FF4EC882BB57AB8930000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-edit'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000052000000520803000000F0F273
              A9000000D5504C5445FFFFFF000000E37575E47373E47373E47575E57474E472
              72E57373E47373E67373E57272E47373E37676B0BFC5B1BCC3DE7B7CB0BDC4B1
              BCC3B1BBC2B9B9ADFE9800F99A0DB4BBB9FE9700F99A0CE87070DE7C7DB4BBBA
              DF777AB0BEC4AFBEC4B4BBBABBBBABFE9600FE9C00FEBF06FE9F01FEC800FEC1
              07FEC006FEC006FEC107FEC007FEC106DEAD125A5D41947B298A7630746C39FE
              C107FE9900575A43FEC107FEC007FEC006FEC4009A8326DDAD14FEC20689772F
              8B792E39474E37474F3A494E39484EBC991FFFC107FF9800B0BEC5E57373E9F7
              C0BD0000003E74524E530000247C7E2650F5F75652F9FD5254DBE7FBDFDF5052
              EBD5F9F122E7D550F952D34E524EB9DD0EFDEB4889C94A97F51E83CDFB4EF7CB
              8B4A0C20974C877291C893CF000000097048597300000EC400000EC401952B0E
              1B000001E3494441545885B5D15957C2301086611011040537107745045716C5
              05452AA6EDFFFF4976496992A66D3213DFBB39E73BCFCD140AFF5011DF5A69BD
              BC3A8C901B15D7AD6E9A246B75D76B2B320D90A1189B78729B8A2B134D369A3B
              2E6F62C9C6AEB3279848D2131DD1C49181E838FB9C8922A9C899D532863C8844
              CE2C21C856FBD0919808B2D5B18F2466E5184C7AA2CD9B27BE58AF81DF138849
              D313A124153DF394357D1148AE44DE6C9E15A12423B2E6F945114A72626C5211
              420A62644622804C889E79C988FAA444F4CD58D426A5A26DB7AFE28926992276
              BACC468F5411F54825518B541375484551835415D549655199541755490D5191
              D411D5482D5189D41355484D5181D415F3496D3197D417F34880984342C46C12
              24669230318B048A1924544C27C1622A0917D3488498426244398912A5244E94
              9148514262C524D9C58A09122F8AA40151204D883C6944E44833224B1A1219D2
              941893C6C415694E8CC86B736244F66E8C8994EC0F6E25264CA4E41D21491328
              52F29E244DA848C9079230C16248F6074434E162483E1222980831249F886062
              C4901CFEF2264A0CC8D1F287337162408E2D8B359162404E2CC67CEEBDE0C480
              9C5AD41CBCBEBD7F20C1809C2D7C7239FCFCEAA3394ACEADC574321E19E128F9
              3D9F19E32869BC3F9C16A8422249096D0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-lightning-bolt-100'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000141504C5445FFFFFF000000D400F7D500F9D400F8D500F8FF00FFD500
              F8D500F8D400FAD500F9D500F9D500F8D700FED400F8D400F8D700F5D300F7D4
              00F9D400F9FF00FFD400F8D400F8D700F7D500F9D500F9D400F8CC00FFD500F8
              D300FAD400F9D400F8D900F5D400F9D500F9D500F8DA00FED500F9D700FAD400
              F8D400F8D500F8D000F3D400F9D500F8D500F9CC00FFD500F9D700F9D400F7D4
              00F8D400FED400F8D400F9D500F7D400F8D500F9D500F8D400FFD400F8D500F9
              D600F8DA00FED200FFD600FED400F9D300F6D400F7D400F9D500F9D400F9D300
              F8D600F7D500FAD500F9D500F8D500F9E200FED300F7D500F8D400F8D500F8D5
              00F8D400F7D400F9D500F9D400F8D200F3D500F8D400F8D500F8D300F7D500F8
              D500F7D500F9D200FAD500F9D500FAD500F8D400FAD500F9BF00FFD400F4D500
              FAD600F4D400F8D500F9AEE43A220000006974524E53000048AB4E2402EFC33C
              6287F50CCDA11A4060DF007EFD20BD5CF10A9B3AD9781AB756ED069532D372FB
              16B14EE9048D2C6AF912A983449DDDCF06F72A700E1012301C6C5AADE5284468
              93A5D708227CC7A1F32464B3EB1650704846F9428334BF3C7A66B9041836182B
              71D16A000000097048597300000EC400000EC401952B0E1B0000025649444154
              5885BDD7E95613411005604A048418141362041404640DA02202A26CC6080888
              B8B028B88266DEFF01840C09D33D77D4EE5B72FFE69CEFCC99DC5455EAEA2E32
              12C9A57A98CBE1A7DE6C7D80526EE0D8C626C85E118E6D866AD042B229A85E4D
              936C2B64AF09C75E2F43B68D646F40359325595CAF76E1585CAFDC4D92C5F5CA
              0BC9E27ADD625958AF8E4E92C5F5EA1292C5F5BACDB2B05E77846471BDBA5916
              D62BD7C3B2B05E77856561BD7A5916D6ABAF9F6561BDEE09CBC27A0DB02CACD7
              A0B02CACD710CDA27A0D8FD02CAAD7A8B02CAC57816651BDC6C66916D56BC256
              9D5958AFFB348BEAD51A539D5954AF073C0BEAF570926651BD1EC5555716D56B
              EA712C038E2CBEBD6229B8B109A7BD9D69C7979070DA5B99493BB2F8F6B2926B
              76FDCAF0696F25E5DA8484D3DECCEC135716DF5E66E69E3AF7F65FEAF5CCFDE7
              30BF6065B1C356F359BF796B64C9569B96FD468D99E7365BF49C60665E586A6D
              EA506C76CC544B932AEC4B532DAFF80E4633AB26BB263AEC2B435DDF50624B51
              75387A3432ECA6F1B0AF45893546C456A316FB26A26EBF152D361361DF8916BB
              1C51DF8B1A5B3C573FECE8B15DE7ECAEE8B1EB3575DA560976A7A6CEA415D9DE
              AA7ABAC0F5D8B52A9B8AAB043B78A65616B81ABB980BD57081ABB185B387DD43
              AA3F3B11AAF9AC2E1B9E63D505AEC5CE87AFB688556F76BFA2A2BF0D145BB974
              4BE03F0EC76E9DA8E58F49AA2FDBF9293016B8127B10980B5C893D3C59E09F93
              555FF68BB5C075D8FE396B81EBB05FED05AEC37E0BBEFF51F5647FD80B5C853D
              CA1CFF0FF6676C81ABB0BFFEA6BAB16C7E0305E84BE3D9826481000000004945
              4E44AE426082}
          end>
      end
      item
        Name = 'icons8-data-sheet-100'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004A0000004A08030000002B0E32
              4300000093504C5445FFFFFF0097A90096A70096A729A4BE35A9C60097A60B99
              AE36A9C74CB0D260B8DF00000088CCFF8FC9FA8FC9F80D9BAF96C3FF94CDF690
              C9F88FCAF834A9C591CAFA90CAF88FCAF890C9F949B0D190C9F990C9F98FC9F9
              90C9F827A3BC36AAC660BAE091C8F855B5D700B9D1009FB190CAF956B5D8009D
              AD00BAD200ADC200BCD4009FB200A0B2009CAE00A1B3009AAA0097A7212B92A5
              0000002274524E53002A666893A7A56EA5DB83000E68C372101E72C7A5666EA5
              DBD7BBBFD7EF8FA37E2A7897B99F000000097048597300000EC400000EC40195
              2B0E1B000000FC494441545885ED98C90E8240104455545404414571C1155404
              97FFFF3A7B120D958007629B4C42BF5B5598770066C9341A8C345B2C3449653C
              5930B4563DEEC0838A1BE44C3D9941712B1BF151A55720A522817C51AA0B1449
              D90851894A543FA818A733038CAA369FAAF3569D13E04C45173600F3449850F4
              28F7718BE85331F8F6050D2B67181343286CCA0E64CBA1C21695A86AA78A8E40
              44C5C8CDF194CA83624C7902D99D80AAC021AE4A6D548CAF5DCFFF4A54A2D25C
              55387E4CFD9C9952CDA098530E20FBC17F56063D558543EA6299B3524FAEA058
              530E212FC358F79F4154A2AA8F8A713AEBB95E31A94A2E3337DB9D5F95FD0FF7
              A9055E0E5B7B384AF4647B0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-data-sheet-100-add'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C50000013B504C5445FFFFFF0097A90096A70000000096A729A4BE35A9C60097
              A60B99AE36A9C74CB0D260B8DF88CCFF8FC9FA8FC9F80D9BAF96C3FF94CDF690
              C9F88FCAF84CAF504CAF504CAF504CAF504CAF504FB0587BC1C94CAF504CAF50
              4CAF504CAF5034A9C591CAFA90CAF88FCAF88DC8F25CB5784CAF504CAF504CAF
              504CAF5049B0D190C9F990C9F98FC9F94CAF5071BDAD4CAF5051B15D4CAF5054
              B2664CAF5027A3BC36AAC660BAE052B15F4CAF504CAF504CAF504CAF504CAF50
              4CAF504CAF504CAF504CAF5086C6E172BEAE99D19BA2D5A4C8E6C99CD39ED1EA
              D2FEFEFE76C179AEDAB06DBE70FFFFFF9BD29D56B35ACFE9D197D09A69BA9A8D
              C9F356B36A5AB47589C7E973BEB162B78757B36D4CAF5055B5D700B9D1009FB1
              90CAF956B5D8009DAD00BAD200ADC200BCD4009FB200A0B2009CAE00A1B3009A
              AA0097A7B4A834830000004174524E53002A66006893A7A56EA5DB830E68C372
              101E72C7246CABD3EFFB7E0454C740A5666EA5DDBD8F0818D7D7BBBFD7938F48
              E55CF3708FA37EE1CB6064DB509BA30CDF270EFB3E000000097048597300000E
              C400000EC401952B0E1B0000022C494441545885EDD9F753E24014077075EDED
              2C81A001BB01DB59B020A09CD7ED7A675BCB29F6FFFF2F70370A79A6B0E625CC
              89B3DF9F786F279FD95976966552555559A9AE0924D50484B1B58F81A4B6E2D9
              877B9007D6B803F52D7FEA1634EE9C9E70626FAE416E58230FEA2BCE5E8146DE
              E909C94A56B21F882DD3511340CAC4D69587AD77602FF32097ACD1007EFC1AFF
              B134824613AB9BE1CF63336BB4BC6527C0956ABD6069058D3656B743A59D35DA
              242B59C9FE07F6FC0CE49C353E7598E9E46C276874B1BA1BD41DDD2EAC2DA717
              5E235917B64C5F5965ED5BC94AD61FAB84C26A84D29E93E3A3DEA0582D1AA320
              B1A81604DBA7524BD43E0B6BBBDAF50F9819E4EC20680CB17A78C48AF28CEAAF
              58CF27D8E18193CA5622EE873DFCEBAC529A88E3D93F2E7335E6AB9BACED0FC6
              D8B899092E4D80C6E4BEBB4AE91476277C2EA5523A8D63B51988ECEDF2ECC0E5
              D5506CF4D5DCB6B778204B67516C4CC4C630AC42452C55106C48CC86106C58CC
              86116CF184D934B261B0EBCFC5CB888A602305F6F79635BF5E462208968A59FA
              7E580F8BE0E5A89913B32AE2603C2EB03F8DFC30C0EFC6E76F960DE685FD2ADE
              B74904BB266615E71704F30B8B03EE5912B1297ED410AF5916B16914AB654AB3
              191DC592E9D26C96E058B2424B649560D99CED9E64269143B3249E7153BF14AE
              1F1896C4132E732D5E96502CC9AD3AAE6B8EF86309C9DA1622932D8CF960899E
              4E413495D68B437E581625695CF2236A38A9C0BED7378C6FCD13A44D3747BE41
              F9EA0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-data-sheet-100-delete'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000198504C5445FFFFFF0097A90096A70000000096A729A4BE35A9C60097
              A60B99AE36A9C74CB0D260B8DF88CCFF8FC9FA8FC9F80D9BAF96C3FF94CDF690
              C9F88FCAF8F44336F44336F44336F44336F44336EA504899BAE5F44336F44336
              F44336F14539F44336F44336F44336B990A5F44336F4433634A9C591CAFA90CA
              F88FCAF8F44336F4433649B0D190C9F990C9F99EB5DCEE4940F44336F44336F4
              4336E15B59F44336F44336F44336F4433627A3BC36AAC660BAE0E25A57F44336
              F44336F44336F44336F44336F44336F44336FBC1BCF99F99F7837AFAB0AAF047
              3C94C3EFFCD0CDB29BB5FEF5F4FAB3AEC97C88FAB7B2FDE8E6FAB8B4F44B3FFE
              FAFAFDE9E8FCD9D6FBC4BFFDE7E5FAB0ABF44B3EFDE5E4FCD8D6FAB2ADF4493D
              FDE3E1FBC4C0FAB1ACFAB4AFF4473AFDE2E0F8948DFABAB5FAB6B0F44539FDE0
              DEFBBDB8FAB8B3F44437FDDEDCFBC0BCFAB9B4FDDDDAFFFFFFF9A49EF9A29CB4
              99B2CC7782C6808EADA1BEC87E8BDA6466F4433655B5D700B9D1009FB190CAF9
              56B5D8009DAD00BAD200ADC200BCD4009FB200A0B2009CAE00A1B3009AAA0097
              A79BE835450000004374524E53002A66006893A7A56EA5DB830E68C372101E72
              C70C4C8FBFDFF7702C9BF3F91C9FFBD9EF5CA5666EA58BA3D7BBBFC3FD20A730
              EFC39358F78FA37ECB34AF28649704AB6E14B20C000000097048597300000EC4
              00000EC401952B0E1B000002AC494441545885EDD9F953D34014077070511101
              417A44DB482B085E28C51E1E3D2CE2516FB4E281B7E2ADF1F62915CA21FEDB6E
              924DF3D22433EC361DA79AEF2FCD7B99FD4C66BBBB6DA76D6DAD95F60D9EA49D
              A050B6E3B727E9687976ED17CA1A6DACA27A451DB5821AAB4E239CD8E5259465
              DAA8A27A51651751A3EA34C2677DD667FF21B649478D076912BBB139EC260776
              A18AB2401B9BD1875FE74F9A4ED4D842EB2EFCF1D8451B5BD7B312F04C755768
              BA51A387D6BD58E9A58D1E9FF5599FFD0BECFC0F9479DAD8D667A65F65FB5163
              3BAD0750DD37E0C2DAF2BDC21B9F75619BF496B5D6BAF5D9FF850D0443610900
              767CFBFA65A7576C242A83995DD18817EC602C0ED6C463830DB3BB87C09EA161
              2B6BFB6AB767C4CCA8CA8EA2C6DE4AE5B303AA669F85E53DC13EB9A800FB1B60
              DD9E554D4898FDC8840F16EF3D7B1D3659DB0F8C0307CD8CA9D498591F3ACC54
              E51D52DF2A6FF40B795C6C25C40C55515EBF32D497B47AA15F2684D848BCA62A
              CAF3673A35A7554FF56242848D6A439F287A1E3F52AB87AC7AA0DD8B0AB001B6
              63EF33E9DE5D8059767D87CD6E809F0D1AB369B8B76FDDB4AA00417E3604F5EE
              4CBD0A217E360C36B75E85303F2BA1B57A03A965D497F8590047B76CE937C8C2
              75A65E9BF692BD5A7BDA2BD38DB1786E2FA3B99D41AEC47FD41C3147CF595602
              7293FC07E3A5DAE08BCCBB607353FCEC7963ACB163CB50AA77D3FCECB9B3FAD0
              336865D5B99980F31F04478F1D1F71CD096DE869CB7A355CFD244FA82718E1CC
              84FEB453965D50422A64455892305D736F954C354784D871D970F18E2D29A7F4
              0B392FC6920293A6006796BD1688204B4E827B6244982D4EBAAA934571961463
              6ECFAAA9A22C9D5FD901950BECAE304BF2399B9ACB1B37C55942B2890C323389
              AC79AB11967E6748A7921225A5642A1DC03778FF615C6FFE000C6B2FF5897E75
              EF0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-data-sheet-100-edit'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000510000005108030000009D51BA
              04000001BF504C5445FFFFFF0097A90096A70000000096A729A4BE35A9C60097
              A60B99AE36A9C74CB0D260B8DF88CCFF8FC9FA8FC9F80D9BAF96C3FF94CDF690
              C9F88FCAF8E67474E57373E67474FF7F7FE37373E57272E47272E572729FC2DD
              B8B2B9DF7A7BE37474AFBDC5B8B2B9E27777E37474B7B3B9E47373BAB7A4E277
              78E47272E67070B6B69FF69B11BDB7A4B8B2B8E3737334A9C591CAFA90CAF88F
              CAF890C9F9C6B07DFA9A09BDB6A3AFBEC4B0BEC2F89B0FBDB7A1B1C1C5FD9600
              FA9B0EFE960049B0D190C9F990C9F98FC9F990C9F8B5B6A0FA9805FA9706FE94
              00FE9600FD9700C1B187FB9600F8980AB1B9AAB4B7A2C5AF7EB7B59CB3B8A827
              A3BC36AAC660BAE099BCC7F2BA0EFAB50BFD9801C3B18591C8F8585841FEB605
              FE98004E5545F6BB09FDC006FEC106FEB6065B5C4057594269653DC49C13FF00
              0069663D37474FF4BB0B62613FFB9A05F6B716FFC107EAC23190CAF8FB9804F6
              B614C8C47AA3C6CDB0B9ADAFBBB1ACBCB8A7BEC3F6990EB0BAAEF99806FF9800
              F79A0DF99807AEBBB1B9B7AAAEBCB4B0BEC598C6E9E47373E5737355B5D700B9
              D1009FB190CAF956B5D8009DAD00BAD200ADC200BCD4009FB200A0B2009CAE00
              A1B3009AAA0097A79279C1CC0000006874524E53002A66006893A7A56EA5DB83
              0E68C372101E72C748C7660248F7FB6C97E7F770FBF1F764EFC3F5F7F134D5FB
              EFE142A5666EA5DB93FBEDF136F9E342F13642D7BBBFD7EFCFFDF7364CF79148
              FBD3D595D1CD8FA37E76F9F5FD8F2A4EEDEB93E7BB7C2AA38F3A0C0036272282
              000000097048597300000EC400000EC401952B0E1B00000223494441545885ED
              99E95712611487A1A14252DCA52C17D234CD0A5B6C43145130B3D535CDB4C576
              A76C5361C09C1C0505F73FB83B39CC5C18B033723D278EF37CE2FEE6BCCFB987
              77E6BE73C060389C188F9060647601A369870453F619B7B710DB106CA27A435C
              B08182CD542B928CEB6B88750862A88E8AC6280A62A956E846DDA81BFF3323FD
              A42080DE7894DC782CD1B81A43AC42701C9D49E615C08C821CA82DF8D4B24070
              E21F7B1DFF56447223402E0AF2A0B6A29AB14290A71B75A36ECCC4185E468421
              C82F5028148D85282882BA18D505C56AA38AA5885674E381EC4C36DC8F87C658
              525A6623359E3C25949FA6349EA9A81484C52A1B99F177356F3F2B08E53554C6
              855F3CCFD74297E7888CF3A1601D28EDF5E71B688C8D218EBBD004CA8B97D2BE
              495D7628348BC666145C81FA2AAAAF0538E07A0B7FE326CDECF187B8BFDCBA7D
              872131CE4B42CED9CA9018FDB2D0C520A3EA3DBDAD5DC12D2E74A3A0036A8FF4
              B9B34B127A7D0C36EE7BAFBBEF4AC2B91E86C4784F16CED2CC1EA5C3199A6926
              77D83B4B331FE50E9DF7232446B943A78F66862B1DBA684E85074A8734E78CBF
              4BE990C4F833843AA430FE487A9633363E4CEC30A551D3A4781488DFD88FA5C4
              A3366A9966DF83F2B38CE30C8CDFBE4EC79F651AE397CFECD427558709C614BF
              5E3FE9EB77A463609065878639EFD3A47C443132DA18FDF881659F8DF9D25DD7
              6E7CFEFEDDF8C48B9769AF6B37BE7A3DF9E6ED1ED7F7FBD74196F3079343C680
              804E107E0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-data-sheet-100-key'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000540000005408030000002BB5E0
              F30000022E504C5445FFFFFF0097A90096A70000000096A729A4BE35A9C60097
              A60B99AE36A9C74CB0D260B8DF88CCFF8FC9FA8FC9F80D9BAF96C3FF94CDF690
              C9F88FCAF8C8B683EAA530F4A51AF7A00EF9A00AFB9F06FBA005FB9F03FDA002
              ECA524DEAA46FFA200FE9F00FFAA00B9B897FFA000FD9F00FE9F00FF7F00FD9F
              00FE9B00FEA100FFAA00FEA100FE9F00FE9F00FE9F00FCA000FFA000FEA000FE
              9F00FEA200BFB78CECA627FE9F0091C7F5FEA000FD9F00FFFF00B0BDAFFEA000
              FEA500C9B171FE9F00FB9F00D8AB50FD9F00FEA600FFA000FE9F00E2AA3EFDA0
              00FEA000FE9E00CAB273FD9F00FEA000E6A835FE9F0034A9C591CAFA90CAF8DD
              AB49FEA100FEA000FE9F0049B0D190C9F990C9F9A7C0C2FE9E0095C7ECFE9F00
              FF9F00FD9F00FE9F00FEA000FF9F00FDA000CBB271FE9F00FEA000FEA000FEA0
              00FEA000FEA000FD9F00FEA000FE9F00FEA100FFA100FBA100F5A110FEA200A7
              BFC28FC9F990C9F8B0BDAFD1AF63FEA30027A3BC36AAC660BAE0C0B88DFD9F02
              FEA300FE9F00FF9F00FE9E00FEA000FE9E00FEA200FFA000FC9F00FC9F00D987
              00FDA000FDA001AAC0BEC1B685EDA524D68600FEA000DA890096C7E9F1A31AA3
              C2CCF1A41D95C7ECBFB78CE1AB41FAA107B7BAA0C4B57FCEB26CF6A110CDB16D
              C3B584BCB995DBAC4FB5BBA2E4A93A91C9F6E1A93F98C6E6FFA000FE9F0090C9
              F7D3AF5FDEAB46E5A93655B5D700B9D1009FB190CAF956B5D8009DAD00BAD200
              ADC200BCD4009FB200A0B2009CAE00A1B3009AAA0097A7ECB0C9C60000008874
              524E53002A66006893A7A56EA5DB830E68C372101E72C71E446A8BA5BDCBD5DD
              F5B560380ED7ABDF5202BD12C10256E7B18F76665E5858D9D1AF6AC3EF007EB5
              249BB952AFF116F172BDDF8176DFE18DC399A5666EDD9B917CD7BBBFDF346CF9
              08C376E710EDDFC7F9DF931A64A96C42123C44E91678D7EFCBA3328FA37E8BF7
              26F5406AED3220327674F781E71435000000097048597300000EC400000EC401
              952B0E1B0000028A494441545885EDD9E75313411806707051112182D8458C12
              232A162C888AA262AF60C582BDF7DE1B2A6003EC3DF60B36102220FE77EE261B
              EEBDE46E25EFED7EC8CC3D9FB24F667F93B9BDD9BD2409094A92D84D4A124967
              289AF4574A92E218EDF803D2418B76306E6373DA40D16E36231A6DFD0DD24A8B
              0018B730B4051401B3190EEAA00E1A87A8920D454294A0DD55A03DA2D0E60048
              332D7A82232DF9174D32287AD1710A3CF45268D1FBFFAB0FAE10496DA2490545
              1A1DBBC098B86891E6A00EEAA04AD1C69F208DB4E893AE2783A119A0E84BC799
              609C9E698A46E54753AC7150190BD5AFFF808183060F199A9535ECFBB7AFD9C3
              DD236CDE520D23733C7E2D227E4FCE282F1EFDF239120C67742E16FDF4D1CAD4
              B4316391E8076B53D3C621D1F77C7EDEF8091327E54F9E32F59DEFEDB43C5E16
              E0D0E96F42D30BBDBC70B15BCA5B186A67CC44A1B3F8672A22102545BC9E8D42
              E7F0D9C546B498D77351E83C3E7B7E09444B16F07A210A5D145EE8C54B9606B3
              CCE7F3652F0FB72B50E84AD11DA569ABAC1ED05697EA2963681928D688D1B5A8
              5DEAB5185D87425F89D1F528F4A518CDB7FA22B161A39E72069583629318DD8C
              5AFD2D2F44E6D60ADC86F25C846E43EE52CF44E87624FAF489B5B96327F63879
              FCC8CADCE5C61F7C0F77EFD96B42EEDB7F80D87A40AB701F3C04C182C3478E86
              DEB7F7D4778C61FEFAFAE0617DBCF37D09685D6D6D5D5CA1274ECA471F9C2291
              686C1BCA693A3EC35E9CD5D1FBD21E25EFE9E8DD730A50EDCE7905A871F54D7E
              92BF70F15269577219A057AE4294E00356FFDA75C3359583DE00B534B4F2A602
              54ABBCA50035AEBE0DF43644DD925052A5A3557A6B13656A0805A66D94AA4114
              9AF65152EDA9A9F1541BAA58FF66EB5AFE017B9ED71F462E503A000000004945
              4E44AE426082}
          end>
      end
      item
        Name = 'icons8-sheets-100'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005E0000005E08030000009D0C53
              5C00000300504C5445FFFFFF00000042A3F243A7F841A5F441A5F541A7F742A5
              F442A5F53FA7F742A4F441A5F541A4F642A4F341A4F43FA3F542A3F541A4F43D
              A3F441A6F541A4F441A5F442A6F340A5F542A4F43FA5F242A5F542A4F541A4F4
              43A1F142A4F441A4F542A4F43CA5F042A4F441A4F542A5F444AAEE41A4F441A5
              F541A4F43A9CEB41A4F342A5F445A2FE42A5F642A5F442A4F438A9FE42A3F542
              A5F441A5F43FA5F241A5F441A5F541A5F23FA2F341A6F341A4F441A4F542A5F4
              41A5F446A9F041A5F542A4F56FAFFF58B0F84AA9F642A5F449A8F677BBFF8DC6
              FE8FCAF98FCAF990C9F990CAF88FC9F890CAF88EC9F98FC9F88CC9F887C5F88B
              C8F885C4F890C7F83399FF42A5F54BAAF46EB9F78DC7F93FAAFF41A5F44DABF4
              6FBBF88CC9F941A5F542A5F54EAAF570BBF88DC9F842A4F441A5F54FABF572BC
              F78FC8F840A5F542A5F54FACF574BDF78DC8F842A6F341A4F442A4F551ACF776
              BDF78FCAF88FC8F990C9F97DC0F761B3F548A7F447A7F55EB2F67AC0F861B4F5
              7BC0F790CAF98FC8F88FCAF890CAF990CAF88FC9F891CAF890C9F87FBFFF8FCA
              F8AAAAFF44A7F24CA8F45FB2F780C2F880C3F84BA9F441A2F442A4F444A5F55B
              B0F580C2F681C2F85CB1F644A6F541A7F641A5F444A5F45CB3F781C3F782C3F8
              5EB2F643A6F541A4F445A6F55FB3F782C3F944A6F575BDF88CC8F876BDF84FAB
              F645A6F55BB1F675BEF88DC8F977BDF869B7F745A7F55DB1F676BEF877BEF867
              B7F746A7F55DB2F678BFF88DC9F95DB2F781C2F846A7F65EB2F75FB2F780C2F8
              4BAAF547A8F65FB3F779BFF88EC9F948A7F664B6F64BA9F547A7F660B4F77AC0
              F87CC0F864B4F648A8F661B4F77BC0F87CC1F849A8F64AA8F563B5F67EC1F890
              C9F963B4F749A8F548A8F562B4F77DC0F864B5F67EC2F88ECAF84AA9F565B6F7
              7FC2F88FCAF94CA9F566B6F780C3F881C3F84DAAF567B6F783C3F84EAAF683C4
              F850ACF669B8F784C4F851ACF66BB8F785C4F951ADF652ADF66CB9F786C5F943
              A5F553ADF66DB9F887C6F954AEF66EBAF888C6F942A6F555AEF66FBBF789C7F9
              90CAF942A4F442A5F5599B376A000000A374524E5300002A267CD3227AD12076
              CD1E72C91C70C7186CC3FD166AC11466BDFD1262BBFB1060B7FB0E5CB3F90C5A
              B10A58ADF70854ABF528D3F9D32C2AA7A5918F12D5D510C7F1FDF10E12D5938F
              C7A7A52AF526D3FBD524049DC7C7F50C74C7C7F789F3C5C9F9C9F1C5CBF952F1
              C3CBFB5CE3EFC3CDFB5EEFFDF9FBFBF3F5F9FD5C504EB5C1C17472049D0228AD
              CBDDDDAF2EF3DFC1DFDDBFDD3AA9DDC1E1E1BFDBAFD9C1E34F03ABB600000009
              7048597300000EC400000EC401952B0E1B000004F3494441546881ED99797413
              5518C51128FB56688142A194B5B4408122A222282A89B6A615A38002B2533659
              1294452B695A51EBAEB82F6969A58B50054450C056100454562990D2962E40D9
              296B924EE29B25CDCCF7DE243359CEF17872FF9C77BFDF9D246F923B937AF5FC
              F2CB2FBFFE47BA4B8EEAD7976597856FD030C0660B68D8C017F8468D9BD83835
              69DCC8BBF8A6CD9ADB046ADEACA9B7F02D5AB6B211D4AA650BCFF1ADDB045A49
              705AD6C036AD3DC1B76D17142CC666151CD4AEAD7BF8F61D3ABA6073091D3BB4
              978B0FE9D439540A9B5568E74E21D2F15DBA867593CE66D52DAC6B1729F8F0EE
              3D7ACA65B3EAD9A37BB8737CAFDE7D22DC63B38AE8D3BB9718BE6F6494476C2E
              212AB22F8EEFD77F40B4E76C56D103FAF7E3E3070E1A1CE32D36AB98C1830672
              F821770FF52E9BD5D07B86D0F8615E3E718762EE45F8FB7C45B7D9EE47F840DF
              E103117EB8EFF00F20FC8891BEA23F3882DE390F8D7AF811EFB3AD8F8E1A4DEF
              1C8592A26A2D669337D926B3A596A2940A847F8C6274E7F62D2F25986EDDBEC3
              321F47F858CAAE9B37AED778CAAEB97EE3661D3016E1E3289EAE5DBDE209FCCA
              D56B7CDA1308AF8AA72861C265F7D897856C8A8A57D13B27E1C931C2C3D4A58B
              17E4B22F5CBC0420639E52D33BE7E96782A3C78E1B0F16CF579F93CE3E577D1E
              8C8F1F3736DA1AF52CC23FC73862264C9C042C67ABCF48619FA93E0B06274D9C
              C07E4D3E8FF04176DFE42953A70163556585737645651518993675CA64FBEA74
              840FE3B967CC9C9508ECE5E2091595E5C09C386BE60C9E210CE1670B4BDE9CB9
              F3E683A1D365A538BBB4EC34B0CD9F37778EC0629D4DEF9C171680C9858B166B
              849325A78A8D7C87B1F85489D0A159BC6821C02C88647E0CB54B5E7C6929585A
              B67CC5499070E23897603C7E02B04FAE58BE0C0096BEFCCA92241AFF2A335C74
              EC1F60387AA4E8B09072F8D0C103070E1E82478B8E1C05A37F1FFB8B39819508
              AFB39FDE9FFBF7019B712FC6C212F71AC1D0BEFD7FD85F9C0EE193796FC09EDD
              BF03F3AE9DF05DE67F223B7701FB6FBBF7143A0C7A844F118C1416FCBA038C6C
              2FDE46826F2BDE0E8C3B7E292814585211FEB55560AEB0E0E7AD60B0B46C8BD0
              B305DBAB5B7F026C8A5AF53ABD73DE7833ED2DB0B0F9C74D1BC178C586BA6BA8
              7C03BCD2366EFA613340BC9DF6CE307AE7BCFB1E5A7FFF830F61C2F7F9EB61C2
              3AF40D50B50EB2D7E77F07D91FADFE182D447C82F09F72AECF3EFF0298F27273
              B2016AED5A70203BE7DB3C30F6E5575F738BDF203CEFAED2909E01AC59995802
              4F6B7232B330B6C1B13E1DAB51C4843524B6096767F0D948C3113E7C24989392
              4038EF8C7403B8030E08A177CEE87458A3AC86342CC162AE6B1135668B6B76A8
              61B5931AE5282B75AA65126A9886245CC02A92941A6522802C844366508EA4D7
              28C2A9BA60CBAD5184379A5316C676AF4611B60969BB8AD52825F81227D42861
              02818DD7288D52CDDD782AB43AF0E34AA851D93999CCE59F875FC8788D8A8F5B
              A9E0DF362BB47A9880D7A8ECFCDCDC7CC8C66B547C5C9202BFE957689361821B
              352A51A755883DB250E309F26A942E49C1E7E10F5CD4A97AF8494BAC511AFE79
              8BE18909126A941E638BE199845830EFAC466992496C27786282488DD2A7AAC5
              18CE1F34121264B05DE2D9044A4C25B14ED952F0E2092ED912F174428A523E5B
              3A1E29C191A04C91C496854752D109CA9404E91372FFDC50A964D93DFBDBC52F
              BFFCF2EBBFA57F01F31D48C524602F360000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-export-100'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C50000011A504C5445FFFFFF000000FFCCCCFFCABBFECBBCFFCCBCFFCCBBFECC
              BBFECCBCFECBBCFECBBBFECBBCFECCBCFFAAAAFECCBCFECBBCFECCBBFECCBBFE
              CCBAFECDBAFECCBBFFCCBBFECBBBFECBBCFECDBAFECBBCFECDBCFFCABBFECBBC
              FECCBAFECBBAFFCCBBFE815AFE5723FE5822FE5721FF3F3FFE5622FF5A1EFE56
              22FE5724FE5722FE5420FE5721FE5721FFFF7FFECBBBFECBBCFECBBCFECAB8FE
              CBBBFECBBCFECBBCFECCBCFECBBCFECBBDFECDBDFFBFBFFECCBCFECBBBFECBBB
              FECDBAFF6C3DFF5D2AFFAD93FFB29AFFB9A2FF6636FFC2AFFF7346FFC8B8FF82
              5AFF9473FF5823FFA689FF5C29FFB49DFF6332FFBFACFF6F41FFC7B5FF7C53FF
              CBBBFF8F6BFFA184FF5B26FF5722FFB098FF602EFFA386FFBDA8FFB39AFECBBB
              FFCCBCAF0CE21B0000003E74524E530000044487A1AB9D7E365EE1CF029DFD74
              936442F71EC3971AE94C226438683C74FD6E9704BB10D722ED3EF96202C19540
              1C91629BFD72583E04839B7C34C6217E46000000097048597300000EC400000E
              C401952B0E1B0000015D494441545885EDD9D74EC3401005D02CA18309900009
              35F4DE7B0D107A27814BDDFFFF0D82E0014563617BB84291F6BEFB3CACBD33E3
              DD588C19F399AA78754D6DE8D4D5377C3DFE9D72B6B1C9464C73DC97F55AA2A2
              A5245AFDD836855A4ABBCC2675AA4D75886CA792B55D129B7ED7B2194F60BBB5
              AAB53D02DBAB67FB04B65FCF0E38D6B18E756CE5B06FAF14F6E5F989C2E2F181
              C202C50285C5FD1D85C5ED0D85C5F51585C5E50585C5F95981C102A7271416C7
              471416F9C300ECC17E80147FB2C8657F67F7103E83431416181EA1B0181DA3B0
              189FA0B0989CA2B0989EA92096B3089C57C6F9C028DB21C0E625959A40095F18
              43B39C324E693A9C16C969E89CF183332C71463BCA20CA199B39433EE997A42C
              8E75AC631DFB4F2CE9109B74E49E4E68D5CCACC09A392D3B6F247641A9A61645
              D62CE9D86523B3DE8A025D5D333EAC31EBD1AFE1368C3F6B36935B112E0DB777
              767D2F0DFF3A1FB510A239F5AC59DD0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-add-user-male-100'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005E0000005E08030000009D0C53
              5C00000300504C5445FFFFFF0000005555554242424141414242424242424242
              424242424343434242424141414141414141417F7F7F33333341414141414142
              42424040404242424141414242424141413F3F3F424242414141414141444444
              4242424141414141414646464242424242423F3F3F4242424242424343434141
              414242424242424242424242424242424141413F3F3F40404042424242424241
              41413F3F3F414141414141434343414141414141424242414141424242424242
              414141414141484540FEA626FEA726FEA825FEA524FEA626FEA725FEA726FEA6
              25FEA726FEA625FEA526FFAA00FFA625FEA725FFFF00FFA827FEA626FEB242FE
              B241FEA726FEA627FEB74DFEB74DFEB64EFEB74DFEBA4EFFB44AFEB74DFFB64D
              FEB64CFEB64CFEBB50FEB64CFEB74DFFB44BFFB74CFEB648FEB74DFEB74DFFBF
              55FEB84DFEB84DFEB64DFEB74DFFAA55FEB74CFEB74DFEB64BFFA31EFE980000
              FF0045A245439E4643A047429F4742A04741A04743A14743A046429F4743A047
              439F47419E4555AA5543A145429F4742A04840A245429F4643A04742A046439F
              47429F46439F47449F46F19804439F4642A0474891482487C6748C7A4B9C4F42
              A0464C994C2E93CA1A78B80A63A70960A3439F464CCCFF4FC3F74EC3F743A047
              45B9FE4EC3F64FC2F742A04642A04650C2F64EC3F742A0474BC6F55E9F3DFA98
              0250818E1E7EBCFFFFFF64B16744A047CE9A12F3970B1267A3045B9F4ABCF24F
              C3F782C0844EA6529C9C25848C6936A1DA7C9E32FD9801FC990301579BF89803
              FFA41EFFA41FFFA21AFF9F11FF9B0643A047FFA92CFFAA2DFF9F12FF9800FFA3
              1CFF9801FFB13DFFB13EFEB64DFFB241DC9A3FC48636FDB54CC58737AD732DE9
              A545BF82357B4A1BE9A544F6B14CA16928CE8E3AE1A54CF5B14CFFB344ECA844
              665844F1AC48804E1DCB8C397847197F4D1CF0AA47645744EAA644DE952A584F
              42DB993FDC9A40C38536EEA846554D42D9932BFFA726CC8B2D4D48404A4641C5
              882FBC8D49BA8C49B589496C5C45FFB74D5A5144E7A84BEAAA4CAB83486C5C44
              4C48434343424242429B069727000000A674524E53000002325C8399A5AB484C
              ABEDD3020466E35436D778FB8D04A3E99324A1FD9B1287E73850F744F52A9BD3
              6E9FE1104E66ADB708F92E38626C93A3B1B9C3CFDB85835852C1BDE3CBC96C6A
              02ABA90054A7E5E5A754858158561A18CFCD747012F3F110890EE5E30C4C4883
              A5029D76FD8968002C5A8199A52A449FE9E99F42025ED75C36CFCD367CFDFB78
              6EAFAD064CA7E9BD0A52CDFBFDB10A62CD850A78EFFD4058E7D71AEB51914C00
              0000097048597300000EC400000EC401952B0E1B000004B7494441546881EDD8
              777C13651807F05E1541A561B9405444716F710BA80C0758276E714F4046DA34
              18B506A9984AA3562D9416B460A5A5689A6B6DD5AAC029056D1511141007E706
              CC39B0D67DBC97E472EF8DF77D9FDC9B0F7FF9FB239F1BEF7DEFCD73EFCDACAC
              9D128192EC5D76EDB25BD76EF1EC4E6B8805CA67EFB16777D5488E27937C8F9E
              BD54737A6790EFB3976A0DB0FB107EEF7D6CBAAAEEDB67BF8CF0D97D1D702DFD
              F6EFCFCF7B0E20E828071E3480973F98ACA30C3C848F3F94AAABEAA0C378F801
              FD18BC7AF8111CFC912C5D558FEAE19AEFEF3424AD39DA357F0CD1FCEFDFD4E4
              B194338CCA1F378860FFF3F75F7FFE919A3DDE257F02C9EE4431FC135DF22711
              6D93DF9D5C1D1A7FF260B26DF24F71C59F4AB371FF3457FCE9541BF3BBB8E2CF
              A0DB867FA62BFE2CCDFE9D6CA7FCB35DF143D0961D345BCB6FA8D11057FC50B4
              E57616BF1D351AEA8ACF81F239FFF399E68741F9616EF8737EFD05C6FFFCD3B9
              E9F3E7294AEC479DDFB6758B59FD61EB369DFFFE3B45199E363F4251946FBF49
              F05F7F25CB9B717DB32C7FF94582FFFC33D47064DAFC28B4D5A64F37C68D0DB2
              2CAFC7F9F568C186F8D4C64F36A186A3D2E6CFD7F8A4F6F13A595E8BF36B6579
              DD47C9698DBF206DFE428CEFDCB2E6C3D538BFFA8335EF7762FC4569F3A3C728
              4A3B6BDC686957948B47A7CD0BB9975C7A1984BFFC8A2B73093AE339672C84BF
              8A6433F9AB21FC35AEF96B017ADB75AE79E17A367F034567F137B2F9711CFC4D
              37B3F45B6EE5E085DB58FC589ACEE46FBF83AEDF7917172FDCDD46D3DBEEA1EA
              80F75AEAA9752F5D07F0B9E3C9FA78E2D500CC0B132692F48913183AE89B42EE
              7D939CF049E3587D877E7099FC9E5D7F77321387F25356ADB45CFADB57AE9AA2
              AF9DEACDCBF71514F8F2F3FC53DDF1ADADAD2BDE49EDA1FDED15684182F74CBB
              3F20A5F2C0830F995EB4E03CCAF2654BDF7A73E9B2E589398D2F7C382859129C
              EE71C99B83F8476658712D458F6684F7CC7CCC4997A450B1879F7F7C9633AEA5
              249C06FFC4930EFA1B4F9175492A7D1AC83FF36C59CBECD76DFA6BAFD274499A
              5308E0CBE75634B7A034D9F85730AAB12199466C6125939F37FF39518CD6233E
              F2B2457F690926D52D4EA60E5BF87C15835FB050D452AB75BFC6AC2F7A5162F1
              D20B611A5F5D2126126DB197072F0D89978A297CB2EBA9EED7E3FEA225103E10
              26F2F34523D148BCFF35315D8FD548105ECA23F0E5B88EFCD971BF3ED2D4118B
              753445EA4330BE94C09B75E497B59822C1F890D7919F2B5A13ADC5F5089097A6
              39F10B6C3A4A73C4E0F5D2372C26A421D960A6033F6FA113AFFD83DA788DCA6A
              C17C81036F2DBC791F51F4D308E54BED7C354D4F04CC17D9F98A0CF2336C3CA0
              F33CC5A1563E993A285F62E309C3C614F0C8A9B4F290DA88CDFAE9A4DF46526C
              32FADF9B6EE521B511A3D0B3D66FE501E346348E2D830FDA2E6990D21BC567F0
              C556BE1CA45BAB43E0437E2B0F3AB2A23134A9BCCF763384F251008F3A6FE51D
              AFC54EA961F3C5F60791EA0A68F0C153671DEF5A4A0B410F8184F8031235013F
              F3298DC34FE81CBCE0A5F801AFC0CB0BFE22925EE417F879215C1972C2439561
              BD05178F0A34C7AECFF21BEB397954219FE910047C5E7C2D378F5E3EABF24B82
              815028102CC9AFF29AD765ED94EC003B7F6805B52B91520000000049454E44AE
              426082}
          end>
      end
      item
        Name = 'icons8-key-100-blue'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A08030000000F76B1
              30000001C2504C5445FFFFFF000000005AFF005CFE005FFE0060FE005FFE0060
              FF005FFE005EFE005FFF005EFE005FFE005EFE0066FF005FFF005EFE005FFE00
              5EFE005EFE005FFE005EFE0000FF005DFE005FFE005FFE005FFE0055FF005FFE
              005EFE005EFE005EFE005DFE005FFE005EFE0061FE0060FE005FFE005FFE005E
              FE005DFE005CFE005EFE005FFE0060FF0080FF005EFE005EFE005FFE005EFE00
              5FFE005EFE005FFF005EFE005FFE005EFE005FFE005EFE005EFE005FFE005EFE
              005DFE0063FE0061FE005EFE005EFE005EFE005FFE006DFE005EFE005EFE0066
              FF005FFE005EFE005EFE005FFE005FFE005EFE005FFE005FFE005CFE005FFE00
              5EFE0063FE0060FF005FFF005FFE005EFF0060FE005EFE0060FE005EFF0060FF
              005DFE0060FF005BFE0060FE0060FF005EFE005FFE005EFE005EFE005FFE005F
              FE005DFE005EFE005FFE005FFE005EFE005FFE005EFE0060FE005EFE005DFE00
              5EFE005EFE0055FF005FFE005FFE005EFE0066FF005EFE0060FF005FFE005DFE
              0060FE005FFE005EFE005EFE005EFE005EFE005BFE0055FF005FFE0061FE005F
              FE005EFE0060FE005FFE005FFE0060FE005FFE005EFC0054DE0050D6005EFD00
              53DE005FFD005FFE005FFF54BE23B40000009074524E530000102C48627E8997
              9BABAFBB600A325C85ADD5F785003870A3FD066CE1DF6C30D5D32E4AF5F3F534
              0ADD7A7802E5E33AF9E3CDCDBDB7B7F97EEBB14628122A7CC3A3C10668F70464
              6495B9DBC5D75C16FB831620F1EF1E2C2A343C3026281C1C08E7EDC7A5AB8346
              50DF9BA758FB32FD3E899D02C993B50E3EC1E96A24E5DB5887B30E0C95146A97
              42877C5268BFEDCDEA6AC7000000097048597300000EC400000EC401952B0E1B
              000002D7494441545885EDD8E95712511806702F122210A090A094489B1652A6
              A02546A6B99459B618952D2ED1A2D1BED966B66F5AE6DCFF37300119DE79EFCC
              9D3B9DD3F27C9B739EFB3B6766CEBDF39E292BFB4D21504CE5E675960A6BA5CD
              EE70D86D95D60ACB7A73B909ACAAA69D2E7755B5C74BC1783DD51BDC2EA776BA
              C6E7AFF5D4C1E8DAD4796AFDBE1A0D7460E326B65A487D30A0966E086981B3D9
              BC451DBD759B5699D2ED6635B4AF51BB4C6963139BDE51CF2353BAD3C9A4C37C
              32A5CD2C3AB28B97DE1D61D02DE0B23DAD6DD198A3DD66EB70C4A26DAD7BC152
              0B83DE27EB77C6C35DFB13F20D9D38D0D51DEF94552D0CFA6071BD2720570B09
              F414777B71FA90EC5EFB946542FA8ABBFD0328DD44F969DA80D2837AE8C3286D
              D5431F41E921593B8CD1DDB2723B4A1F95B57B317A58563E86D19192CDE05696
              8FCBBB5E8C1E91B7E9899323307CAAAAF4239440E8D325ED4C46CF0019859A49
              843E0B2D509F7308EDD3479F47E8317DF418425FD047BB10FAA23EFA12425FD6
              478F23F4843EDA89D064528F3C859E2157F4D051944EE9A1AFA234F71492CD35
              94BEAE87BE81D2A5479F8624F161619A5F9E64CC2133FCF44D069DE6A70719B4
              E916AF2C8DB386603B2F1D232CFAF61D4EFA2E9326F7F8E4FB844D3F88F3C80F
              9D2A6832F048D22C3F7E42D4D084CC3ED5063F7B1E212A69425EF86D2FD5B1D2
              5CEAD5446E991A3A9B647AFEF534F66CA68667FCB36FD62E514BAFE4ED3B2538
              F5BEB4AD8926CD796BF94726CBF9CB79A0CC4B2F7DCF64E93FFD57D152DA285A
              FA007485D0B02C82569045D01F615904DD6F368C56B245D00AB6109AF67F328C
              FE3337BA91F467C3E810F43343080DCA426858164187804141103D3461184D3B
              605BC86B846D21346C8BA1E917E3E8F97F94FE2AC1B480118704258896825057
              239DB78B461C50D64CE7ECB5230E2C6BA757ED02AD2473D0BFEC3CAD28F3D02B
              768E5696B9E8ACBD4A23321F4D161C8BDF3259742C202584169A9FD99F566F63
              CADB410000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-key-100-green'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A08030000000F76B1
              3000000174504C5445FFFFFF00000046BD0047BC0049BC004ABC0049BC004ABD
              0049BC0049BC0049BD0049BC0049BC0049BC004EBD0049BD0049BC0049BC0049
              BC0049BC0049BC0003BD0048BC0049BC0049BC0049BC0042BD0049BC0049BC00
              49BC0048BC0049BC004BBC004ABC0049BC0049BC0048BC0047BC0049BC0049BC
              004ABD0062BD0049BC0049BC0049BC0049BC0049BC0049BD0049BC0049BC0049
              BC0049BC0049BC0048BC004CBC004BBC0049BC0049BC0049BC0054BC0049BC00
              4EBD0049BC0049BC0049BC0049BC0049BC0049BC0047BC0049BC0049BC004CBC
              004ABD0049BD0049BC0049BD004ABC0049BC004ABC0049BD004ABD0048BC004A
              BD0046BC004ABC004ABD0049BC0049BC0049BC0049BC0049BC0048BC0049BC00
              49BC0049BC004ABC0048BC0049BC0049BC0042BD0049BC0049BC0049BC004EBD
              0049BC004ABD0049BC0048BC004ABC0049BC0049BC0046BC0042BD004BBC0049
              BC004ABC004ABC0049BA0041A4003E9E0040A40049BB0049BC0049BD00EA97B8
              2D0000007774524E530000102C48627E89979BABAFBB600A325C85ADD5F70038
              70A3FD066CE1DF30D32E4AF5F3340ADD7A7802E5E33AF9CDCDBDB7EBB1462812
              2A7CC3C10668046495B9DBC5D716FB831620F1EF1E2C2A343C3026281C1C08E7
              EDC7A5AB4650A758323E899D02C993B50E3EC1E96A2487B30E0C146A4252BFED
              4C95CF5B000000097048597300000EC400000EC401952B0E1B000002C9494441
              545885EDD9E95712511806702F12B24C2CCE0808616516122A204664884B6A19
              952DA2D1427BD962BB9573FFF9C0641BDE79EFCC9D4BE7D0E9F936E73CF777CE
              CC9C3BF30E0C0CFCA51028B641FB31C790D3E5F64892C7ED720E398EDB076D60
              D530EDF5F903C3B242C128F270C0EFF39AA74782A1B03C0AA3ED1995C3A1E088
              093A123DC1565B89452346E931D90C5CCFC953C6E8D3E366654ACFD88DD0410E
              99D2F109367D36C623537ACECBA4E37C32A5932C3A719E974E2618F414B86C3A
              39934A4B19B73B23A55333C969B034C5A01D9AFE6C363E7721A7DDD0B98B73F9
              ECACA6EA60D0973AEBE188566D2512EEECCEE3F465CDB916F465420A9D5D6501
              A527283F4DC750BA68852EA2B4D30ABD88D24B9A761CA3F39A7206A59735ED79
              8C5ED194AF6074A26B33F8F565BFB6AB60F4AAB64DD7D65761F86AA0FB259443
              E86B5DED5A36AE03D9809A2584BE012D309E9B081DB446DF42E84D6BF42642DF
              B646FB10FA8E35FA2E42DFB3466F2174D91AED4568B26D45DE419F21F7ADD029
              94AE58A11FA034F71452CF3A4A3FB4423F42E9EE479F8994F0618173E2AB679B
              3187B8F8E9C70CBACA4F1719B46D8D5756B75843B087974E1316FDC4C0771798
              A74C9A3CE3939F1336FD22CB23BFF41AA0C9C22BD5B4FCFA0D314213B2FBD61C
              FCEE7D8218A409F910721BFCA851972BD572639911BA9E5275EF630CBB363B2B
              AED0EEA7F62546E9C37C5ED4832B5FBADBA66832D9B40E7ED572D03CDC03CADC
              F4CF5AFED3FF16AD567B45AB5F81AE101A9645D03AB208DA09CB2268C5DE335A
              CF1641EBD84268AA7CEB19DD9F1BBD3F6919FA3143080DCA4268581641CBC0A0
              20885E2A034D41172403DB426E236C0BA1615B0C4DF3BDA3FB72A30BA0BFAB30
              2D60C4215115A2D528D4354937ED8E1107944DD30DBB7DC48165F3F491DDA2F5
              640EFA8FDDA475651EFAD06ED0FA32175DB78F6844E6A34941DAFF51CBBE84FD
              9F82D042F31BF1DD0F954CCB04A00000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-key-100-red'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A08030000000F76B1
              3000000171504C5445FFFFFF2B2B2BC82B39C72B3AC72B3CC72B3DC72B3CC82B
              3CC72B3CC72B3CC82B3BC72B3CC72B3CC72B3CC82B3FC82B3BC72B3CC72B3CC7
              2B3CC72B3CC72B3CC8562BC72B3BC72B3CC72B3CC72B3CC82B35C72B3CC72B3C
              C72B3CC72B3BC72B3CC72B3EC72B3DC72B3CC72B3CC72B3BC72B3AC72B3CC72B
              3CC82B3CC82B50C72B3CC72B3CC72B3CC72B3CC72B3CC82B3BC72B3CC72B3CC7
              2B3CC72B3CC72B3CC72B3BC72B3EC72B3EC72B3CC72B3CC72B3CC72B45C72B3C
              C82B3FC72B3CC72B3CC72B3CC72B3CC72B3CC72B3CC72B3AC72B3CC72B3CC72B
              3EC82B3CC82B3BC72B3CC82B3BC72B3DC72B3CC72B3DC82B3BC82B3CC72B3BC8
              2B3CC72B39C72B3DC82B3CC72B3CC72B3CC72B3CC72B3CC72B3CC72B3BC72B3C
              C72B3CC72B3CC72B3DC72B3BC72B3CC72B3CC82B35C72B3CC72B3CC72B3CC82B
              3FC72B3CC82B3CC72B3CC72B3BC72B3DC72B3CC72B3CC72B39C82B35C72B3EC7
              2B3CC72B3DC72B3DC62B3CB32B3BAE2B39B32B3AC72B3CC82B3B9343973A0000
              007774524E530000102C48627E89979BABAFBB600A325C85ADD5F7003870A3FD
              066CE1DF30D32E4AF5F3340ADD7A7802E5E33AF9CDCDBDB7EBB14628122A7CC3
              C10668046495B9DBC5D716FB831620F1EF1E2C2A343C3026281C1C08E7EDC7A5
              AB4650A758323E899D02C993B50E3EC1E96A2487B30E0C146A4252BFED4C95CF
              5B000000097048597300000EC400000EC401952B0E1B000002C5494441545885
              EDD9EB5712411806700709B9C5C55D0121ACCC424205C4880CF1925A466517D1
              E842F7B28BDDAD76FEFAC0446079F79DD9D9A173E8F47C7EE677CE2C6776DF5D
              0606FE520814DBA0FD9863C8E9727BBC5E8FDBE51C721CB70FDAC02A37EDF307
              82C38A4AC1A8CA7030E0F799A74742E188320AA3ED195522E1D088093A1A3BC1
              565B89C7A2BCF49862066EE4E4293EFAF4B85999D233761E3A2420533A3EC1A6
              CFC645644ACFF99874424CA674924527CF8BD2A924839E02974DA766D2196FD6
              EDCE7A33E999D434589A62D00E5D7F369798BB90D71FE8FCC5B9426E56577530
              E84B9DF54854AFB6128D7476E771FAB26EAF456399906267575D40E9092A4ED3
              31942E59A14B28EDB4422FA2F492AE9DC0E882AE9C45E9655D7B1EA35774E52B
              189DEC3A0C016339A0EFAA18BDAA6FD3B5F55518BE1AEC7E08E511FA5A57BB9E
              8DEB4036A06619A16F400BF87313A143D6E85B08BD698DDE44E8DBD6683F42DF
              B146DF45E87BD6E82D84AE58A37D084DB6ADC83BE83DE4BE153A8DD2552BF403
              94169E421A5947E98756E84728DD7DEB3391323E2C084E7C8D6C33E6109738FD
              9841D7C4E91283B6AD89CADA166B08F688D219C2A29F70BC778179CAA4C93331
              F93961D32F7222F24B1F074D165E69A6E5D76F080F4DC8EE5B73F0BBF749C249
              13F221ECE67CA9D196ABB54A73190FDD48B9B6F7318E5D9B9D155778F753FB12
              5EFA209F178DE0EA97EEB6299A4CB6B6FEAB9ED62EF680B230FDB39EFFF4BF45
              6BB55ED1DA57A02B85866519B4812C8376C2B20C5AB5F78C36B265D006B6149A
              AADF7A46F7E741EF4F5A813E6648A141590A0DCB326805181424D14B15A029E9
              8264615BCACF08DB5268D89643D342EFE8BE3CE812E8EF1A4C4B1871484C8368
              2D06754DD24776C78803CAA6E9A6DD3EE2C0B279FAD06ED146B200FDC73EA20D
              6511FAC06ED2C6B210DDB00F694416A349D1BBFFA39E7D2FF67F0A424BCD6F80
              DA04824DB3D6070000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-key'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A08030000000F76B1
              30000001C2504C5445FFFFFF000000FFA500FEA200FE9F00FE9E00FE9F00FF9F
              00FE9F00FEA000FFA000FEA000FE9F00FEA000FF9900FFA000FEA000FE9F00FE
              A000FEA000FE9F00FEA000FFFF00FEA100FE9F00FE9F00FE9F00FFAA00FE9F00
              FEA000FEA000FEA000FEA100FE9F00FEA000FE9D00FE9E00FE9F00FE9F00FEA0
              00FEA100FEA200FEA000FE9F00FF9F00FF7F00FEA000FEA000FE9F00FEA000FE
              9F00FEA000FFA000FEA000FE9F00FEA000FE9F00FEA000FEA000FE9F00FEA000
              FEA100FE9B00FE9D00FEA000FEA000FEA000FE9F00FE9100FEA000FEA000FF99
              00FE9F00FEA000FEA000FE9F00FE9F00FEA000FE9F00FE9F00FEA200FE9F00FE
              A000FE9B00FF9F00FFA000FE9F00FFA100FE9E00FEA000FE9E00FFA100FF9F00
              FEA100FF9F00FEA300FE9E00FF9F00FEA000FE9F00FEA000FEA000FE9F00FE9F
              00FEA100FEA000FE9F00FE9F00FEA000FE9F00FEA000FE9E00FEA000FEA100FE
              A000FEA000FFAA00FE9F00FE9F00FEA000FF9900FEA000FF9F00FE9F00FEA100
              FE9E00FE9F00FEA000FEA000FEA000FEA000FEA300FFAA00FE9F00FE9D00FE9F
              00FEA000FE9E00FE9F00FE9F00FE9E00FE9F00FC9E00DE8A00D68600FD9F00DE
              8B00FD9E00FE9F00FFA000C1A111BB0000009074524E530000102C48627E8997
              9BABAFBB600A325C85ADD5F785003870A3FD066CE1DF6C30D5D32E4AF5F3F534
              0ADD7A7802E5E33AF9E3CDCDBDB7B7F97EEBB14628122A7CC3A3C10668F70464
              6495B9DBC5D75C16FB831620F1EF1E2C2A343C3026281C1C08E7EDC7A5AB8346
              50DF9BA758FB32FD3E899D02C993B50E3EC1E96A24E5DB5887B30E0C95146A97
              42877C5268BFEDCDEA6AC7000000097048597300000EC400000EC401952B0E1B
              000002D7494441545885EDD8E95712511806702F122210A090A094489B1652A6
              A02546A6B99459B618952D2ED1A2D1BED966B66F5AE6DCFF37300119DE79EFCC
              9D3B9DD3F27C9B739EFB3B6766CEBDF39E292BFB4D21504CE5E675960A6BA5CD
              EE70D86D95D60ACB7A73B909ACAAA69D2E7755B5C74BC1783DD51BDC2EA776BA
              C6E7AFF5D4C1E8DAD4796AFDBE1A0D7460E326B65A487D30A0966E086981B3D9
              BC451DBD759B5699D2ED6635B4AF51BB4C6963139BDE51CF2353BAD3C9A4C37C
              32A5CD2C3AB28B97DE1D61D02DE0B23DAD6DD198A3DD66EB70C4A26DAD7BC152
              0B83DE27EB77C6C35DFB13F20D9D38D0D51DEF94552D0CFA6071BD2720570B09
              F414777B71FA90EC5EFB946542FA8ABBFD0328DD44F969DA80D2837AE8C3286D
              D5431F41E921593B8CD1DDB2723B4A1F95B57B317A58563E86D19192CDE05696
              8FCBBB5E8C1E91B7E9899323307CAAAAF4239440E8D325ED4C46CF0019859A49
              843E0B2D509F7308EDD3479F47E8317DF418425FD047BB10FAA23EFA12425FD6
              478F23F4843EDA89D064528F3C859E2157F4D051944EE9A1AFA234F71492CD35
              94BEAE87BE81D2A5479F8624F161619A5F9E64CC2133FCF44D069DE6A70719B4
              E916AF2C8DB386603B2F1D232CFAF61D4EFA2E9326F7F8E4FB844D3F88F3C80F
              9D2A6832F048D22C3F7E42D4D084CC3ED5063F7B1E212A69425EF86D2FD5B1D2
              5CEAD5446E991A3A9B647AFEF534F66CA68667FCB36FD62E514BAFE4ED3B2538
              F5BEB4AD8926CD796BF94726CBF9CB79A0CC4B2F7DCF64E93FFD57D152DA285A
              FA007485D0B02C82569045D01F615904DD6F368C56B245D00AB6109AF67F328C
              FE3337BA91F467C3E810F43343080DCA426858164187804141103D3461184D3B
              605BC86B846D21346C8BA1E917E3E8F97F94FE2AC1B480118704258896825057
              239DB78B461C50D64CE7ECB5230E2C6BA757ED02AD2473D0BFEC3CAD28F3D02B
              768E5696B9E8ACBD4A23321F4D161C8BDF3259742C202584169A9FD99F566F63
              CADB410000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-close-button'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000440000004408030000000FCD63
              8000000036504C5445FFFFFF000000F5443AF04638F03C3CF44732F44236F343
              35F44336EF3F2FF34236F34336F34236F34334F34235EE4433F54238F4433684
              7803470000001174524E5300001A121018D9CDD910CBCFCFD1D10E1AD05032DD
              000000097048597300000EC400000EC401952B0E1B000001B0494441545885AD
              D8DD7284200C05E0D555D4B5ED2EEFFFB20501F93B09C9B4B972BCF846423833
              F278FC4B4DA1E6E7A4AC658D0F37329B4DA92CDBBED6C86CACD529CB66ED3E97
              8837748A379212906068946044E5429221579211148F6443AA64C35A337BA434
              9CB2E80CAF38E478599D521BEEE3FD72944A6784C6AA94DE885BAC508091864D
              AC20E31EFB631329D0C80750A46023231285300A64AC5046898C14D2A8105EA1
              8D1AE114C668105AE18C16A114D6E810ACF0468F20656000A4574606425AE5FC
              1A18106915D8EA21C228F06062A46D256F5008A11031432150A1A28A44804286
              268D4CCB591BDF64F072483D1FF63CF408580EA5E81A4B28CA2DC68A76D8A082
              11CA201488D0065610D2183FE74801489B415D28754A8F7446F7EAD52A1D028C
              A1D222D018290D421803A5464883572A843158A5445883530A6460304A468606
              ADDC88C0209584880C4A8988D0E8957746C406562E446140C5232A03290E511A
              D3F46C1587ACBBCE6815F3F1CB291589512BE6131A9B1599512ACE885B9C14A9
              91156FA4610B8ADC488A297EF383A2318262AA0B07AFE80CAF44A38882556938
              251AD39FEF81AEFA0534FD70EA78ECA4AF0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-data-backup'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000058000000580803000000464BC0
              0600000213504C5445FFFFFF000000D1C6E8D2C5E9D2C3E8CCCCE5D0C3E8D1C3
              E9D0C3E9D1C3E9CDC5E6D4C3E5D1C4E8D1C3E8D1C4E8D1C4E8D1C3E9D0C5E7D1
              C4E97AADEC1E93F400AAFF2196F32196F22096F13399FFA5B8EB309AF12095F2
              2095F31F9FFF1F97F32096F32096F32095F42498F02195F22095F22491FE2096
              F31E96F02095F22491F22196F31999FF2096F2359AF02195F22196F32096F321
              95F31F99F22096F31C9BF02096F22096F21C97F51F97EF2195F32195F300FFFF
              2095F32097F42197F32195F32196F22195F32095F22096F22196F22096F42096
              F22296F22195F32095F32096F33E9DF15AA5F02297F12095F22095F31C8DFE21
              95F12AAAFF2195F22196F22096F22195F32297F22197F32096F22196F22095F3
              1F95F22394F02196F32196F22094F13F7FFF2196F22195F32096F42095F22095
              F22096F32195F32A94E92195F32095F32296F32299EE2296F31A93F12096F21F
              95F32095F22394F32196F12699F22095F32197F02096F32195F21F94F4369CF1
              2C99F3CFC4E97BAEEEAEBBEBB3BCEB8EB2EC73ABEF459FF156A4F05FA6EF57A4
              F062A7EF49A0F16CA9EFBFBFEA49A1F1CDC3EA69A9EF9EB7EC8DB2ED2697F224
              97F3C7C1E960A7EFACBAEB349CF24EA2F0C2C0EA4DA1F182B0EECFC3E9C4C1EA
              B1BBEA309AF24CA1F12195F274ACEF68A8EF53A3F02397F384B0EE2F9AF2A5B9
              EC2196F3449FF1BCBFEBB2BBEB61A6EFCBC3EACEC3E9D0C3E8D1C4E98753EA64
              0000007C74524E5300002C60660AABA9A5A31E1E4E5AA1A9A72C60C53202EFA9
              4E0478E1E16C0840EBDB4622F79306C310D314C90AA78B6272F1ED289512D3F9
              1A2083DF00C32E4472CD81E966F75EFB78D9B387CBAB24FBF3084C06BFA1E399
              3A6CD1BFDB5024C1FD360493EF5C7695D9D70CC7F12C0E4212CB40A52A621497
              36F3A130CDF885F2000000097048597300000EC400000EC401952B0E1B000002
              E5494441545885EDD8E75713411000F00C880D50C1461423890D91A82191D034
              5463C08E1A1415D45888BD77B1F7DE4545C4B62891FC89C664F74AEE2EEFCDDE
              DD077D37DFB2B3F34BDEBECBECBCB3D9CC0B00C8CA1EC51DD959A08C149C333A
              AE2BC6E468C063F5B9F1F8387578FC885E78245715CED3EBC6E379AA70BE7E38
              DF822DD882FF7FD8B426946B56DBD4DFE827A4BBEC6A9AA8CF9DA47535011414
              F25FA685050A56840D8F7F17B606166B60B1600BA6F1DB1C3836FCCB14F8E710
              3105FEF19D98027FFB4ACC8063C3846484399B50E27805D8C881E5EFF132D8C8
              812579BCC9F832F879F294A9AA307E60A1C72BC6B4E94576258C1E5866CC24CA
              289EE550C2B8985DA2E226C2E9D207CF99ABEE1232306FBE29BF38110B4AE530
              7260513DE3542C2C93C0F88145F15488B1A85C84F53DC79F86FA65B25B80F906
              16E93FEFE3E26289BC040CEC158EA51E01AE2833B4BB799D82EC33B61F2FAB64
              B0BF0A0D7F782FFF2CBB41AA85C7BB060DF7BD7B2B5F90DD79450CAEADC3C26F
              C8EB57F295D84BC90DB29CC92B90F08BE7843C7B9AB628992B020CAE47C24F92
              558F1F291214B657B03F0912EE4B953D7CA001839BC20D48F83EADBBA70537D2
              0D4D48F82EADBBA30537D30D2D48F836ADBBA505AFA41B82487890D6DDD48257
              B176816C4237685D7F7A820D2C3EBA21841C58AEB3E7F49A7C5D18584234DF8A
              6CF45719DC2B5F676F58BC2CDF861C58AE5CA6859762D265E10D0B3B0912C00E
              2CAB59E51A714D7CC3B2761DCDAEDF80BDFE3732D8E35526DB37B1EC66F45C61
              DFC26A9DA58A6498E548077E60D92A146FAB4EFB4ED1EDE498841CDB85F2921D
              D2C4CE2E21D1BD8B67C4720D0800E972EDA6AB5E5F505C0E03D7ECB6874822E2
              6E6CDEBB6FFF01E95A4F940F6E3F4832C6A1C3C007C391CA4CAEFF28F0C270EC
              B8B6EB3901FC30444F6AB93DA7400F0C703AA2C67687A36C032F0C67CEFA156E
              E73931CF0D0354D5D44AD5F3173AA4591D3040DDC57A7743534B30126A6D0B94
              CB7336F3E20F2ACD36464F0CDEFE0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-reset'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000058000000580803000000464BC0
              060000028E504C5445FFFFFF00000055AA557FB13F7AB4407AB3427CB3417BB2
              417BB2427CB3417BB3427BB2417BB2417BB2417DB2407AB73D78AE437CB4417B
              B3427CB3417BB3417CB2427BB3417CB3417DB4417F7F7F7FAD457CB2417BB242
              7BB3417CB2427CB3427BB14100FF007AB1407CB2427CB2427BB2427CB3427BB2
              417BB2427CB3417BB6417CB2417CB2427FB23F7FAF3F7CB3417BB3427BB3417C
              B3427CB3427CB34178B5437BB3427BB2427CB2417CB3427CB3427CB3427BB342
              7BB3437AB13F7BB3417CB2427CB2427DB3407BB1457FAA557CB3417CB3417BB3
              427CB3417FB24C7CB4447CB3417BB24178B43C7CB3417BB3427DB4427FB63F73
              B9457CB1417BB3427CB1427CB2427FB8467BB3437BB3427BB2417AB3427CB341
              7CB3417BB4417FBF3F7CB2417FAA3F7DB2437BB3417BB3417FAF3F7BB2427BB2
              427BB4417FB0447CB3417BB2417BB3437CB2427BB2417CB2417DB4417CB3417B
              B4437AB2407BB2416DB6487DB3427CB14179B63C7CB2427BB2417BB3427CB242
              7BB34177BB447DB1427FB2447BB2417BB3417CB2427BB2417DB2417CB5437CB2
              417BB24175B03A7CB3427BB2417FB43F71A9387BB3427CB3427FBF3F7CB2417B
              B2427BB1417BB2417BB2427DB2427BB2427AB2427CB3417DB1407CB2417BB342
              7CB2417BB2417BB3417BB4437CB2417CB2417BAF467BB3417CB24266CC337BB2
              437BB2427CB0417DB2407BB2427CB2427DB24079B23F7BB3427CB2417BB3417C
              B3427CB3417CB3427CB2417CB3417BB3427FB6487AB2427BB3417BB3417BB241
              7CB3427FB4437AB53F7BB4417BB2417BB3417CB2427CB3417AB2427AB3427CB0
              437BB4427BB4417CB2427CB3447BB3427CB3417CB3417BB2427BB2427CB3427C
              B14379B0427AB2407CB3427AB3427CB3427CB2427CB3429893CF32000000D874
              524E53000002244A70818D99A9A5917C5C3E18125295D1F9E7B37832021670CD
              FDEB9F42004EB5FBE358D3F79D22D9931420B3EF6872F7C326D5C9BBADB1C7F3
              5A38E1C17E4620062E62DF990A287CBF10FD7A401C0A2ADB609B1240D9DB1A4E
              DF3A08850C34F5AF10E7B16C1ACD895EE146AF66B74452D7066C5614CBB9C1AB
              810E441EEDC7D378D32CC9A30CF3F11808EB91045A8758ABFB68D1485E3AF98B
              74DDCB48F5891C8550045666266A7E974228BDBF6487D5BDF1E9A90E4C97E5A7
              A722343E749FEFED323630541ECF24C54A95AD836E4C2A6E54508B92CCD9C900
              0000097048597300000EC400000EC401952B0E1B000004E1494441545885D5D9
              FD5F1445180070E70C22222511E48023F6E0024D447CE3247CCB933215B12015
              A43C13AEF44050CAAC4030438C2C4BAF2C54040DCD345FD2DE2CCCB232EDC532
              F5F6BF71EE6EE76DDFE76EF981E717E59999EF676F6766EFF69951A3465E00C3
              B08DBE2F2EFEFE840712131E4C7A68CC58E301300CE1E487C7A58C1799484D9B
              906E8F0DCEC8CC7288AA91FD488EBEAD030BCEDC3C753512AEF88C6860FBA3F9
              7A6A380A264EE2869D8F19B2A1183FB9900B9E52648A0DC5D462C1342C4C9B6E
              DA853163A6493839576574C1AC12F7EC52F7E3A941655BD91C53F0DC79F2FB38
              7FC1130BF1DAF22C2A4F78524E3FE531869D05CC90BC52E762E5E53CBD4436B7
              4B9719C1E51574FFECE59A4BB5B288D93AB356E8C399F42DCCCE7C468B0DC5B3
              69B45C259359B89A721DCFADD46343B16A3525D7D46AC36BA8FB50F7BC110BE3
              85B5D4887C2FD562A7E1752F925EEBEB4DB8302A1BC8189F0D653D2F4DA0E07A
              B28A82498239178097371079632465F3378A4D14BC0977A86836CBC2F0B69069
              D90CFF16B6B4C23DF30A815F25EE560E177E6EB23A1A5E034DDB42FF994D26AF
              B60C371773B95076E3A1AFBF11F9D74FE03771631BA70B40BBFCD1EDC8C0F076
              9C4C13B861D0D1C9C23BF03A16DE42395732BF0B9F30EC436F27869D78A1AD8A
              C605856F3370178677A1547734ECEEB67718B7112078334AF5BCCBCFEE99F69E
              6CEEDEC7305E12CBB9D9BDCD2E511E4D08AE470FF7A9269F1038EC1F542958B8
              ED10DC8C521FF25EAF67DF0C25BC1F2078BE9471D41A412AD135AE4706FB11BC
              3B2065DC51B830BC1F7D4CBB8E0C041F40A94FA283617CDADD8BE11D00C107A5
              4C05EFD4D15178E8B0C4ECC4709F94E98BC185613F5214FEA2EA42B0D02FC103
              B1C1308E1E6B086FBB087C14DD9CCF628601183C7E02C3783F7F6E018C03C227
              2537306831FC8504D758E98660B4DA625C144AF894042FB51A4E9460DF888187
              ED560CDBE4A1E55665353C6C1BE434DAD25F5A0C5BFA10A26101FDCE3C68310C
              4A2438CB6A78C08AAF2635187F99FA2D86BDA89072C662189C956087FCBD952B
              D631E585307C0EDD8BF331B8C257C10B5BC91E0BC3EDE847E1C518A62F3C535F
              AF9D42C3E01B74C949D15F7096743B5B3A2818EFEA1E73654095D88788540F05
              E33D222646E97EEB927D6809FE0EA58339D1C1DFE3CF9CCCC0420A6AB8A45548
              D38D23F8756C09606090831AC41681DF5D815F6F52515106BFF2FE8065FEC5BC
              184F91588D7256BCA4DB7C78A85B50C0A018B77296156C3FE291FD43384B1542
              F61399E79A3DA46E2096933405B7D7911E6D820AA11A85D4FB18FDBE4C179BD2
              A96253AEC922C0E5C3644C3E5DA663CB6301D26BDE4F2658FB15AA7CEF621EBA
              6C416F0E557608FE6CB855D2B791EEE22F5D4C9BAC0419471734AE5EF1EAB193
              BAE9EA66E7AF6CABBC685A4DDD0D482769164D7F4B644E06AEFE2E6B579479D7
              B0D5EEBCDC6B2A97FDC7A1EB4C2FB1E686BC8BB2307DB98E1D2306FE8CFF6B08
              57170717F9FF5E2DEB219E55D657554AE9F5EBE5E360F4B6F6B9FFF1B9775D52
              397071DCDCABFC50AAC5FF7FCB94A3B5A3B152C96A1D5774949A660303EAD56B
              AD0396FF5ACDB9BE5BAAC3F58E84AE191F09055BE66AB0068758A5BA87583DA7
              F47EA91B1CBBFD5F52A1AEF66FBABD4767A08983C2657726A7F4B268A7FBE618
              E5890A2F1C0ADBD081B8057723479BFED31DC60322F0488B7B585F20D48D0C8E
              8E0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-disconnected'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000105504C5445FFFFFF0000008FA4AC8FA4AE90A3AD8FA2B090A5AE8FA4
              AEAAAAAA90A3AD90A4AD90A4AE90A3AE91A5AE8FA5AC8FA3AD91A4AC8FA4AD90
              A5AE54717191A3AD8FA4AD516D76536E7A546E7A91A5AF90A3AE546D7990A6AB
              8FA4AD5C76828FA3AE536D7A6E8692536D7A536D7990A4AC546E78838559FEC2
              08FEC0076E8691FEC107576E76FFAA008FA4AE8FA5AE557F7F8FA2AF8FA3AD90
              A5ACFEC10690A4ADFFBF0CFEC007536E7AFEC20C90A4AD8EA3ADFEC1075B7480
              5B7781536D7992A2AD546E7A536D7954717AFEC107FEC007546E7A91A2AF5F5F
              7F8EA2AC5B757F8EA3AD8FA3AF91A3AE90A3AD566F79546E79FFC107556F79BE
              A232556E79546E7A90A4AE8FA3ADEB593F6D0000004E74524E5300003E649B36
              545202FBA74CF93E466640F53C0838F11CD96A32F1DB2EED78EBDBC162FD5A60
              873AF1C1A76202FB380650F94AC3F514D1FD14EF32857A7A6A2E6CD91AA583D7
              3A08667A644046506F608BB9000000097048597300000EC400000EC401952B0E
              1B000002CB494441545885ADD8E952DB301000608B9C40C8D9C40192A6244042
              086D03140A6D39DAD2FB48C1CAFB3F4A7D5B92A5D50ABC3F3C9391F38D6CADD6
              9AB5AC8C8364112B019311975BE6ADECB8DC9252DFCB84F3B4C033E70AC5384A
              6546F33D63AEB44A93582B339AE79972EB154A792FD1E872C390ABF29AEBD518
              2D67F8B0F5061583D3CCB8665AA39C86E45AFEF5595BA7E1B88EDD75AF9B5B5A
              0DC575B61DA74B7A7DBD86E13CCD719E0F20AD46B05CE785E3C70EC005F98CE1
              220DE7E9B896ED38069E7676C311D22BE2DE1DD6DBC571640FE76139A487E670
              1E9E23FB0F7A0FCF8D27F7FFB41E9A1B4F160BBD87E53C8DF70E9EC0059AEBFD
              853D1C17698BE9E108F4505CA2CDB87C4979472F15DC2B854620AFF29AC8B98E
              3D546880373F2672CEAD6FA3A142537A8D2A91737EB51CED053F4E444DE19DD6
              899C0BBE0B91F7E64CD45CEF3CE5B59B44CE855AECBD3D133589775120728EA9
              E4892768841C3E705EFF9219E367D77552DE3B519B4DEFFF30DEA0C70E0AEF2E
              ED89319BBAFB8DF1DE73A3E2CA7ED0789EC67B5700773DD801BD40E3BD1B2577
              E99E43202FD21693FD647D6F5B0AAE70E12DBCDA4BB471922FF647C5EC9AED20
              2D551EABC5F9C7692C573F8D368DDC9B7D62B5D0DBE63486AB32275599276ABE
              276809B73E670B8EC4FB2C6AAE7727683157124EF8692FAC078CC6575A96FBB2
              4AA9D23B673C4E4B47C8EDA6BE24724FA3011C3D487B271A0DE2249E3620EE11
              1EC8997B3067EC6938534FC7197A5ACECCD373465EC81501CEC40BB9F21AD2BB
              FB8AE1B09E58DF541CCED3694C35FEB604B8C1774FB3755AC2FD80B47E8F5C61
              B49803B5AD4DF78E9B5BBD1671B0169CB85A20C472A0D6686A159E63B4B4DBF8
              89D77C8ED56A62BECC7F19681EB7C175A584FCAB1C9B681E67E5194DC8E7A3DF
              469AFFB09117767ECAA5A41D59D0FC5DC6855ED4477A4A0489E2795968511A5B
              F94CB47893592B5968E4515D7A20FE03FF2BEB6C7F6AD98C0000000049454E44
              AE426082}
          end>
      end
      item
        Name = 'icons8-find'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000300504C5445FFFFFF0000006666665F5F5F6161616060606060606161
              616161616060606060606161616060605F5F5F6464647F7F7F65656561616161
              6161616161606060606060616161616161545454626262616161616161606060
              6060605E5E5E6666666161616060606060606161616363635555556060606060
              606161615D5D5D6060606161616161615F5F5F60606060606063636360606061
              6161616161606060626262616161616161606060616161626262616161606060
              5D5D5D5F5F5F6060606060606262626161615B5B5B6D6D6D6262625F5F5F6060
              606060606161616161616060606161616363635F5F5F61616161616155555560
              6060616161626262616161616161616161616161616161616161616161626262
              6060606262626060606161616060606060606161616464646161616060605C5C
              5C628AAB6289A864ABE3638FB364ADE86391B764A8DE61696F6286A36292B862
              78896398C2627D92649DCB628099639ECE62849E6397C0627B8F638FB2617382
              62758564B3F2638AA9616E79616B74ADD8FBA1D2F978BEF7AFD8FBB6DCFB8AC7
              F863A5D987C6F878BFF76FBAF77FC3F864B0ED61666963A6DD69B7F7AFD9FBB6
              DBFA68B6F696CCF997CDF9628CAE627C916EBAF6B1DAFAA9D5FA6AB8F78BC7F8
              B3DAFA65B6F661676B639DCC6EBAF7ACD7FAB2D9FA99CEF984C4F870BBF66CB9
              F77ABFF789C7F8A0D1F9B8DCFB98CDF9616D7664B1EF69B7F69ACEF9B7DDFB86
              C5F863A1D2627F977EC1F8ADD7FBA0D0F970BAF66392B983C4F8A7D4FAB9DDFB
              9CD0F976BDF7639CC972BBF689C6F89FD1F9AED8FBBADEFBBBDEFBB7DCFBA9D6
              FA99CEFA82C3F862839D61646764A0D067B7F669B8F765B5F66287A461636563
              99C564B4F462829B638EB064B4F5627A8C62798B64A1D2626B736393BA64AFEB
              63839C61616261707C6399C464B5F564B0EE628CAD61676C626E796390B464AD
              E763A4D86285A161666A616263627788638DAE63A2D464B2F064B5F663ADE963
              9BC86386A2616F7A616262616B73617687627D9362819A62829C627F96627C90
              62748262676B6161612B4F12C50000006874524E530000143A62858F9BAB9F95
              896E482002185EA1E1F3B5722E085AB5FDD7761A0E7AEBFBA32806F1FDA71E44
              D9760897CB2424CFF15438EF4CF5934E36872664CFF930DB0E063410527ACD58
              ADB7121866B10234146883D5E3A5F5E7C374460C74C581D5CB1C6AA30A34DFE7
              E3000000097048597300000EC400000EC401952B0E1B00000525494441545885
              B5D9795C14751400703765370C240CD250023675C412B28C2E51424B8D0CA5C3
              D00A3BACA4D4CA8AC4D0EC503A3C3AA92C534B3BB5B22CE9D03216AB2D50530E
              41C8CC4C285D50B4B41C77DF9B999DE3FD667686E9FDC7BCF7BE9FDFCECC6F66
              7E3F3A74F89FC2C18E133A760A73BA4E0CEF7C52446497289D4275B0D993A3BB
              9EC2CB2326F6D46EED64BB9F16D78327A267FCE9D6D984C424CA84709FD1CB1A
              DB3BB10F130D04D737D902DBEF4C5D14CEF259BD4DB2FD5394C2B1FFFE3D7AE4
              9FBF0F1F6A531C4E3DDB143BE01C59EFC103AD2D3E31F6EFFBEBCFE660EEDC81
              26D8F3D2A4BEA6BD7FF8D4B1E7F7DD41383164F6FC0BC49EDF76FDAA4103B1F3
              9746C9BD50677EC8D98BDC4243C38E7A1205B8AE49745342622F16C7BABD9689
              06A2A546740785C0A68BE7B59A3D548CAA6DE2B51B6CC8F61F22946EFDD940F5
              C796CD589B7189112BDEAF9BAAD44665C54F1AF7472F56670ED567FB09EA0F0A
              B5E2FBEF36967B3C9EB26F377CF3B5C25DDFAC7BD90476983063ABE56760DD57
              5F7A64F1C5E795B26429367097EAB189C23D20BB5A6B3F2BF3A8E2D33532F713
              611A93772FB297E15DD0F071B06BF5476A34101F7E2015AC5A89EE70363B022B
              8E042FD3FBC8BCF7EE3B6FAF7D6BC5BAE56FBE8107962D956A9660D34826DB1D
              9FDAAF4BA760F106305E7B7591842C5EF30A1C7BF925E95009BA912CF672CCBF
              2835BC1000CA9E7F4E71F12B973F1B38FCCC42F1C0820668CB62B157407AFE3C
              B17E45A0BDFC699F3A9E5A1648AC560D376314CD5E896FC3BD52F952FF3D50FE
              A446F5F9166EF4B34F487FD6E2AFCCA6D968CC1607DBE7CE79FC3142F5F9163D
              5AF64885F457D56C681C4DB35D21F930E968072C9F13B3A0336D0CC9E257C681
              D058450867218762AFC25CAB0576263E71AEA6D88EC8B6182BDA28825627C576
              82D4312BAA6F07F4C651EC35907AC8123B037AAFA55827A40A2DB1D3A1772CC5
              BA2075D412DB0ABD7D28F63A483D68892DC0CB4DB1381B1EB0C4DE0FBDB914DB
              1952F75962A741EF388A1D04A97B2DB1F7406F26C546406ABB25F66EE81D4FB1
              91906ADB6F85AD865E17C576C1ABB9CF0A3B155AAFA7D8A818D52B27F4988223
              BA81621D71903B6C819D0C9DEE1B49360F92CD779967F1013641A302DB0D7FCA
              9DA6D57C5CA7DC44B38E9B21BB7BA75976128E8758FF011B8FE92D26D579F3A1
              ED16AD8AECADB868683439DC3B70341359ACE3362C2835A5E6E38B2CE97626DB
              8BC3178FA9F759218E259E50C5EFDBBE5852A3F9C267471DB6A425E8B0C938D3
              F86D21ABC5C2EA815EEC886B07E166680EF56B61CF219E3515E46CC2482CDB5C
              10925ADF88E5B98C6D166901952CEC4D78D787A0E61FC462EA6351C93A060A95
              CD75866AB17006783EC29015573BFE77FB2A7DB5CECBF306AE7C852E6D7CACD4
              3BC1F985BC3C6857CE46B9A4E292050CB47E9797E78D5DE5EE479854DC50524B
              4C8DFC494DBC262857B557939D1B2C9F3DAB76A6DC9C32B9A84D8BF2E4F455EF
              2CE564CA1BBC455B674C6F2D5832AD7453CD547922373B5ADAD5E3B87043D631
              34852387A48854FF2C105D8E235C62D72E27D5004D1A0CCB6774398E72A93DC6
              A8E143F4D011E2D644C0E538D265EC88466665307EFE44D9533BBA07C7D12E73
              FF7654F6E83415E99E1036405994C7315CBDDDE63139D9CED89E63D3F8987199
              E35D7991C3B425590C577F13DB38186E7B5986DB6E9676DBCF92AE0DACC24DB1
              8F255C5B58AD6B0FAB716D621DB14AD72E56E5DAC62A5CA77DACCC75A7DBC84A
              AE3BDDC69320B97ED55E16DC806A33EB7741B59B758483EA30F97FCB90E338BC
              F8D12A837043150000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-help'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C50000028E504C5445FFFFFF00000000FFFF2299F62196F32196F32095F22196
              F32195F32095F22195F22A94E91F94F42195F32096F22196F32095F3178BE722
              99EE2196F22196F22095F22196F12296F32195F22196F22195F21F95F32196F1
              2195F32195F12195F22195F21F97F31E98F42096F22096F22096F22096F32196
              F32094F22491EC2196F3279CEB1E93F42095F32097F42096F42095F32294F321
              96F32095F22095F32196F22196F22197F32195F22095F42195F22095F32096F3
              2195F32196F22097F22195F2219BF32195F22095F22096F22297F42095F32195
              F22195F21999FF1F96F42096F32395F62491F52197F32096F22095F31C97F520
              95F32096F22295F12094F22096F32096F32196F22195F21F94F42195F32491F2
              2096F42196F31F94F42394F32196F32096F22194F22195F32196F22095F42095
              F22095F31F94F12196F31F95F255AEF5D5ECFC8BC8F944A7F546A8F588C7F889
              C7F8A5D4FAA1D2FA7DC2F8349FF464B6F64EACF6B3DBFA339FF448A8F56FBBF7
              B4DBFADCEEFD76BEF7319EF42598F3A7D5FA74BDF72A9AF4C7E5FB2799F32C9B
              F4DFF0FD4CAAF66AB9F7A8D6FA71BDF796CDF96BB9F767B7F665B6F6309DF4D4
              EBFC61B5F686C6F82397F34FACF65DB3F6A2D3FA6DBAF78DC9F9C1E1FB94CCF9
              90CBF9C6E4FBCAE6FB8AC8F882C4F8DAEEFC2497F32D9CF44EABF671BCF75AB1
              F650ADF639A1F4D3EAFC35A0F438A0F42296F3B7DDFAA0D2FAE1F1FDBEE0FBAA
              D7FAAFD9FBD1E9FC72BDF741A6F5E0F1FDC8E5FBE2F2FD5BB1F62999F3B9DEFA
              77BFF72F9CF4BADFFA7AC0F82498F385C5F8E0F0FDC9E6FB4DAAF68ECAF9D8ED
              FCE3F2FDBCE0FB2699F3289AF352ADF57CC1F8A5D5FAB6DDFAC3E2FBCEE8FCCB
              E7FBBDE0FBB1DAFB97CEF96AB8F63EA4F52195F22196F3DE557DAB0000006C74
              524E530000001E446A7E8999A56A0C488BCBF5C90A0E64BFFB6242A9F7A7404C
              C74AD1CF4018A7A366F1EF640EAB0C32DB2E46F3425AF95668FD5AFD46F5F1DB
              D9A9666216A33ECD4AC5F7BF0A48F31C1C447C971A87BD603EC5C33CA118EF14
              5ED7302A54F954D7A15ECBC360C968841FCC21000000097048597300000EC400
              000EC401952B0E1B0000047A494441545885B5D9F95F134714007027226B4804
              21C118050B5885887218914BAB026D5544B0D6DBB6B445AD470FC51BADDA56EC
              495BAF225E78D6AAF1A2052FDA22B64DA9775133FF8D9BECEE24D9EC9B99DDE8
              FB2DB3EF7D3FFBD9CCCECED1A7CF0B0AC40C53DF987EB1427FB3B9BF101B17D3
              975D8098ACC53A203E018745C240C19A180D9B64B32763CD48B60F4A32C83A06
              3BB54D299C4386EA674D29A934538AD461267DACE32536EA8FB4741D6CC6703E
              540CDFCB19BCEC8891DCAA1899595CAC6B941ED41FE66C363B7A8C5E15E33139
              2C363781AD44465E3E9D1DEB36A262EC1E47630B7CC6548CC767C16CA16115E3
              A242882D36F804A4703BB4D9D125D1A81897E668B1AE09D1A9184FB468B0AF44
              AB8AEF45243B297A15E3C96A36833A0E3C7DF2B8F7FF470F1FDCBF77F7CE7F94
              BCCC292A963266F53CF9D71B12FFFCFD14CE2D0B671D70E65FB7BDAAE8BED505
              25FBCA4359133C6AFFD9AD56C5F8E37728BDC214C2A6806AA7062AC6CD1B50C1
              AB212CF8DDBA7E4D9BF53E862A5E0BB2E093EDB90AA8DE8E76A8A69CB0E09BF0
              5B08F46BDB95CB97823F2F4235C31536E97528E502511E5EF788BFCFDF0BF633
              A83794B864D606A9E7C8DD9DFD456AF1F412F70C54354866A742093F13E3B4D2
              742AB2491D7689B500F3AC9047DB7152693A715C693B0655B9A705D8E9D075DC
              AA1047836D4794B6C360596E801D005E3FA41007836DE4556E01CB84001B0F5E
              3FD02C472B69EA22EF72275896EA674DBA66063F91BF6C3F9853E96767E851F7
              919E7CF6049C5525B233F5B0C7C8CDEEA5643944B69F0E750F197976FF48498B
              13D9587EF5870E72B3DFD3F2AA4516EE5FEA680AAADF51130591ADE155BF0D8E
              BDDF50FE2F316A44D6CCA97E4D506F2FF86D90C2CCCF7EF525512FEC62E49AB9
              1F42E34EA2B67DC14AAEE1FECB3E27EA673DCC6481BB839181AB77073BD9DFC1
              E278D476F21A6CE7C82E10D9181EB64961B7F1643B78879A1659FDF4243B17E3
              59BC0363B3D2B778D4C0C0880672646EE57A69E5080CE348E0C8BC2FB3ADEC54
              8CDF08B0568ECC3D5BA468E0618B036C22F8413716F2071DD99F2F3B5B9ED54C
              7EBEEC9B32EB72F264DFD8DCC8A596642B13D121ECE4FD9B3ABCDD6D1B395832
              11454399B91BA45947F706363B2738C99FCB483DA74CE88EAF67A9F342D60EC3
              18B9EBC8687B97C55A43175069F4DC66C2AE65A8F161CBBD74FA06453D61EBE9
              AA6F7EF8E294FEA15C43D8D57476816ACDBBB09496FD893245B8F631555DB458
              BDF007D72581F84866D7D06FF6ADC86D0AEA63F0747EE8FF906DF350D5328DDD
              8FEC89D492AE86550DE0C25C8AB7133558F48EAE1DCBC828AD455A2C72BC900D
              2B840AC71B578BDE45108BB20CBB453604B3689CC1E7F0DEFB88C6A2FC3C23EA
              48D5A67EE4B6704E9D7EB5AE16B15864E19D9E935862511B9A5BEEB64C3D68E6
              D24841FB80604A19F746AE6FC1620D003ACE28AFE05397CDD72C87CF74A6B3BE
              6F627C60058A694745E96627CD749AE780A58C83ADE576E0F570DB97BB2885CC
              63B8C45C6145653899972A144FA357711D1AA2AAFC826AE9D0B07AA5A38AA340
              E7B925773C032D9D7829A3D4652D0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-html'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000660000006608030000000E0114
              500000014D504C5445FFFFFF0000004CB2A54CB6AC4DB5AC4CB6AB4CB6AC4DB6
              AB4CB5AB4CB5AC4CB6AB4DB6AC4CB5AB4CB6AA4DB6AC4DB5AC4CB6AB4CB5AB4D
              B5AC4DB5AC50BBAE4CB5AB4BB5AB4CB7AA92D2CC52B8AEA1D8D3AFDEDAE3F4F2
              55B9B0FDFEFE88CEC89AD5D086CDC6BDE4E0CBEAE777C7C07DCAC299D5CF6EC3
              BB75C7BF73C6BEF9FCFC53B8AF66C0B8A6DBD6D0ECE9BFE5E163BFB6D9EFEDA0
              D8D391D2CCE9F6F556BAB071C5BD69C1B9F2FAF94EB7ADE5F4F39DD7D1F6FBFB
              C4E7E3C5E7E4B6E1DDEEF8F7D8EFED59BBB2F7FCFBF4FAFA87CEC7FCFEFDF0F9
              F868C1B8FEFEFEEBF7F6DBF0EE8CD0C9BBE3DFADDDD9E4F4F29BD6D065C0B754
              B9AF8DD0CA7ECAC3FEFFFF5EBDB453B9AFFAFDFD57BAB1E0F2F0E0F2F1D2ECEA
              F5FBFA81CBC496D4CED5EEEBFFFFFF6CC3BB51B8AE88CEC77AC9C175C6BF90D1
              CB62BFB66AC2BA83CCC594D3CD5ABBB24DB5AB4DB6AC3BC740B4000000187452
              4E5300001478C7E9C5766AF1EF688F6A66F1C5E9C37612686466542B9A2B0000
              00097048597300000EC400000EC401952B0E1B000001E2494441546881EDD8F5
              4FC35010C0715664306CB8BBC370D7E16E4586CB6DF8E0FEFF1FB9F73A461324
              90F61A48EE9B90774B5FF649A021ED4B499124499224499224FE7C94919A968E
              0CA567F80DF5FD169399C5615805B2DF981C3E44956331B9BC0A629E628C7C6E
              26CB20C6CFAD20FA89C9E06782C414F03305C4BCF0332FC4F02B88C2FC3BE639
              4E59E3134D8FF810B78578AF96BBC4E65BF5E106636A89FD8A8902658DD7345D
              E125D842BC50CB7962F399FA708A276A39719F393ED21B2287BC0C1CE80DFBE0
              1EB3679AE62E4D3BB49A6FCCB6DEB0E522A3DAD4DFA6B3980D3DAF73336BCF34
              AE022BB3B20CB044E315C0E28213665E37F705337B0E10A67106607ACD09F3DE
              67CCD424C004E2F8185D76F44BFB9E8151FA79C011FA133D7232C34300833800
              D0DFE78819D00D7DC544C200BDD803D01DE5BCA143F49F61B6AB13A0A39D9369
              3B22A295EEECF1164EA6199BC80068C4065EA65EDF1F75890B6C8CA976D5CEDB
              99365357E32683D5B45CA39D49B4E92A53454B253FA36EB1A803E6C323872AA4
              9F2C74EA91238258118F97272FC46C0F25A19F316E27CC9F663C7A8DF2E8A5D0
              8357DC426F5ED88BD4F103E3818D55A0581DA6947033A55E1E0DF97C65013E24
              509A3C4FF319FE20CFB15D30796C2749922449922449DCBD0223E2FEC49FA069
              040000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-compose'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A08030000000F76B1
              300000012C504C5445FFFFFF91C8FA8FC9F891DAFE00000090C9F888CCFF309E
              F52196F31F94F42196F390CAF89FBFFF96C3FF379DF42294F292CBF6E0A543FF
              FF00FE9700FE99012699F22196F3C1B59BAFBEC4B9B9A9B0BDC5C5A0A6FF0000
              C0A6ACE473738FC9F890CBF6E0A644B9B9AAC0B69BBEA6AAE57272E47373AFBE
              C5E47373E57272E57272C1A6AAE574747F7FFFC4A1A5E47272E47272E57373E4
              7474E57373B5BBB2FF9802B0BEC5FE9702FE9701D4AB61D3AB62D4AC6091C9F7
              B4C5A8D3C567EFA725EFC3299CC9DFD4C465D3AC63A08D38FF980091B9CCD3AC
              64EFA625F7C119917E2E89988290CAF8B4C5AAD3C568EEC22BFFC107927F2E72
              76569BC9E1B8C7A2D3C466A08E394E564A88978373785750584937474F91B9CA
              90B9CE91BED92196F376BDF773BCF889C6F890CAF9ED879BAC0000003374524E
              530038760600780E4E44185A970810483C97D7009B9B1454C39DE79D8500BF9B
              9999D7E7C1BF83EB9BD7F946BF4E02834E9B81440FCC0CD00000000970485973
              00000EC400000EC401952B0E1B000001F5494441545885EDD7D7568340100660
              D4B5776C31626FB1171463AFA8D1A851638D3DEFFF0E1223D2D99DDDC9D173E4
              BFE2EABB8065E71F492A61CACA0553417C63D09579C15445F49FA13FDEB9535D
              53486D20FDF62A98BA88FE17B4E819AF8FE8888EE8888EE85FA15F9E4B463FE5
              1E1FEE013CE485DCE58CDCDE64AFF1E92B43BECC18B9383F4BE3D2A7B9DC49E6
              2BA9E323BA0DA10F2D59D7E936E8F01D58B2AEEFD36C10BD6793E93688CEDA65
              AA0DA2771D32CD86FDE83B99D4B6AE33DA307ACB2987DB307AD32587DA307A63
              DD4D87D8C04B156243EF6B800D1E05EC367CCA30DB1C038CD5E6998D8C36D7D8
              65B3F9263A93CD5916586CDE1EC26073571CBACDDF9ED25E7BCD610B14339A2D
              D2F928B6509D0CB7C59A6AA82D5882C36CD17E1D620B57F7605B7C2B08B41116
              8E201B639709B09D744363214D403AC076D2C58766289D4FAFFAD838B4AFDD82
              43FBD9AD320EED67B7C938B49FDD2EB9E98ECEAF0069AF9DEC8A492EFA3B50DA
              6DAF7469DAB72D4C3BEDE56ECD485CC2A1EDF6F292A6FDD808B4659BB2A6F528
              38B4695B72AFDAA778E87EAE0C0C16BEE09025AB86EDA63923B7E9C961531E51
              0B1945A289DCEE92D5312C9A48E34E594DA0D1448A3BE489493CBA684F99F2B4
              E78408D931BB8C4A9399599B8C4B13A5AF28CF11749A28F33F32364D9485B1C4
              2231E992E513F9C942CEA5D3D9FC0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-print'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C50000015C504C5445FFFFFF0000008DC6FE8FC9F888CCFF4444445D5D5D6060
              606161616161616060605E5E5E57575757595A687A886161615A5A5A61616160
              60606161615F5F5F616161616161606060666666606060616161606060616161
              6161616060605D5D5D6161616060606060606161614B4B4B4A4A4A4545454242
              4241414141414142424241414142424244444442424241414141414141414142
              4242434343424242414141414141424242414141424242383838404040424242
              4242424848483C3C3C62839C7FBEF468AEEC76B7F05FA8E869AEEC3186DA529E
              E5358ADC1976D24393E07EBDF378BAF180BFF4468FC931353A39393934343440
              404042A5F5262C3032608525282A4141412424242525253636363B3B3B303030
              3333333C3C3C44444448846726B26E369B6A5F636151766402E376339F6B3E92
              691DBE6F576F6306DE7500E6763C9469547263369C6A478466616161464A4D42
              424290CAF9B7F6A2C40000004174524E53000008990E3C1E6EA3B9BBBFCDCFDB
              6E109BFB991022D9D90ED7918F14F9F912605EA5A5DBDFB1A5999776742A28BD
              BB2EF52E56FB5642E3E140086EC1F70E101E4C96D8A900000009704859730000
              0EC400000EC401952B0E1B000001A3494441545885EDD9574FC25014C0715440
              960B45509C4CB7A2B8188A7B0B228220E09E7594FAFD134F4B0CA25C88B7474C
              F4FE9FCECBFD3569EECB69150A165453546D1D55B5C5CA1756F94A9592B18C65
              2C637F9755098290A363737054C5D83FC0AAEB355A9DDE6030343452D50047F5
              3AADA649FD816D6E31F248195BDBDE59533B162A6636E5598B1953E5F90E8BC4
              76E2AA3C6F15D9AE6E6CB6A717D83E34EEE5F9293FF4036BC5521F39EEE15E9A
              ACC0DAB0D83B8EE36EA5C906AC1D8BBDE1B8EB2B69B263B29717E7673C3E5B88
              B18C656C11EB3845CF01AC5340CF09AC0B9F7501EBC667DD8CAD1A9BCDA429CB
              9C90D954F298BA648AC426408D1F511507374160B3F0D0D8215531389A25B051
              796C94F46E3372D803F24D88A4C3FB5485D39132174CD64A521576009F1D0476
              88C4EEED566CA7343B0CEC0889DDDEAAD8666976545C49C6B0D97169D399F0E0
              B29EC9FCBA37E5C564BDD3EFCBE9CC2CDE4D989B2FACD23E7F2088C106037EDF
              A7C57F61512C44C786A4C30B25BF2788FDFC07AB8D75626B32D8323761F5DFB0
              2BCBC49664B0DF89B1BFC7A2FDD86229DE003CD9154EFF6B1AC7000000004945
              4E44AE426082}
          end>
      end
      item
        Name = 'icons8-go'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000300504C5445FFFFFF000000FFFF0088C34C8AC34B8AC3498BC24A8BC3
              4A8AC2498BC24A8BC24A94BF3F8AC24A8AC3498AC24A8AC34A8BC3498BB94588
              BB448CC1498BC2498AC24A89C3488BC1498AC2498AC2498AC34989C44A89C249
              8AC24A8BC2498BC14A8AC2498AC34A8BC34B8EC1478BC3498CC34B8AC24A8AC3
              498AC24991C8488BC3498AC24A89C44E89C14C8BC3498DC34B8CC14B8BC2498C
              C2488AC3498BC24989C4498AC2488BC2498CC4488AC3498AC4488BC2498BC34A
              8AC24A8BC24A8BC24A8AC34A8BC34A90C74D8AC34989C2488AC34989C4488BC3
              4A8BC34A8AC2497FCC4C8BC3498AC3498AC34A8CC14688BF488CC3498BC34A8B
              C34A8DC64B8BC2498AC34A8BC2498BC14A8AC3498AC24A89C44B8AC2498ABF4A
              8BC24985C2488BC34B8BC3498AC44A88C3478AC34B8AC34A8BC2488AC2498BC2
              4A8AC3498BC24A8BC2498AC14A8AC349CDE5B0A7D276BEDD99C8E3A999CA5FB6
              D98DA4D070D7EBC1E6F2D7D8EBC2DEEECCDAECC5C6E2A6BDDD999BCB63FAFDF8
              9ACB61F4F9EDE8F3DCEFF7E599CA60CEE6B2F7FBF28CC34BB2D787CBE4AEDDED
              CA98CA5EC9E3AB8EC44EAAD37BABD47CD3E8BBF5FAEFA8D277A6D174BDDD97BC
              DC96BFDE9CDCEDC8BEDE9AA1CF6DE4F1D5B0D683B8DA9096C95BA5D173F3F9EC
              C2DF9FBFDE9BBBDC95F0F7E7F7FBF3EFF7E69FCE6AF1F8E9E8F3DBFEFFFEE9F4
              DDA4D072EBF4DF95C85AE2F0D2ADD57FE4F1D4CEE6B3A6D175BDDD98D5E9BDC3
              E0A2E3F0D3C0DE9CA0CE6BEBF5E0E9F3DCA1CE6CD3E8BAA9D379B4D88BB1D785
              EDF6E3E5F2D7F6FAF18DC44EC2E0A1FBFDF98DC44DB5D98BFAFCF6C4E0A398CA
              5FD1E7B793C7568FC550C0DF9DCFE6B492C755F5FAF0ECF5E2F8FBF4F6FBF294
              C757DCEDC9FCFEFBEAF4DEF9FCF6FCFDFA9DCC66B8DB91B9DB92A3CF6FFEFEFD
              C8E3AAD2E7B8C2DFA0E1EFD090C551D4E9BC8CC44CC5E1A5FFFFFEE0EFCF90C6
              53AED580EEF6E4EEF6E5AFD683A9D37AE3F1D4FFFFFFF1F8EAB7DA8FA2CF6DD6
              EABECDE5B1A2CF6E9ACB62B7DA8ECAE4ADD2E8B9D6EABFCCE5B0C1DF9EA3CF70
              8BC34B8AC24A8BC34ACDA199080000006D74524E530000001E446A7E8999A56A
              0C488BCBF5C90A0E64BFFB6242A9F7A7404CC7C74AD1CF4018A366F1EF640EAB
              A50C32DB2E46F3425AF95668FD5AFD46F5F1DBD9A9666216A33ECD4AC5F7BF0A
              4889F31C1C447C971A87BD603EC5C33CA118EF145ED7302A54F954D7A15ECBC3
              60C9C2254E80000000097048597300000EC400000EC401952B0E1B0000054549
              4441545885B599794014551CC79D155816100456375132A10402E508912B4DC1
              0EC5083A2C2D2B2B3BECBEEF2CADD4323B2CADB443CB2C2B3BCDD2B220B3C064
              31E9B04BD9B0CB5609323684D7CCEFCDEECECCEFCDB9EBEFAFDFF5FDC0BC9D79
              F3E6BD3E7D0E9171BA66EB1B1119658F7638A2ED5131117DF5059C2E3636AE5F
              7C029159427F7B5C6228D8A464E700C2B401CE814916B1AEC306B199D406A50C
              368FB50D49D562523B7CA8CD1CD675843E54B0616926B0E929C6A0BCF51E996E
              147BD470C354DE32320D61B38E3603152C3B471F3B62A4592A212373F5B07909
              FA146CF905DAD8630AAD5009291CA5852DEAB546256474A63AB6D83295909262
              356CA9C511A056E862634794854225A43C9785CD3A36342A21636219D8B1A152
              097160EC71A1530919A7C4A69B9A07D42C63BC026B7CCED2B40A39D6151E2AE9
              AD94626D06676D7D9B60936087848B4AC8F112AC81F796513B2188658F6CCFC1
              EEFF7C5DFF1EF807553ABB3BFEEEE86E67732B03D8B12CE8FE7D5ED1FEDA2BAB
              FCF98798FFFD371636C58F4D3A11177FDDE30D5ADB2F3D8182A75552E8F26065
              5996884DC6B5DDBBBC32FB3970115DB2FC4F3D583B50C49E844B3FCAA9DE1FBE
              170B3B1585EFB0D649B1B1789DF5ED3754F4754BCB0EEA7D450BDB9B69E86E72
              5367DB97485C3811B093F01FDC4AFFC5C60642BEF89C0EEF16287C06C1E64F3D
              A47E7F1DF89F60751E60FBA1FCC79B2403DAF391E46A3F047F23F81BC06FC2D8
              2AC0C6A3FC0720686EA0D10188DE17DCF5E0BE27B6AD83E85D244F15B036BC32
              7807FA7D62D40ED1DB824B7FB06EB1F096CA8F3659C09E8CAFE24DE87F438C1A
              F608D62AB874CCD7CA2EEA75ACAFE6B1A7E0F46BD0FF2A2EAC81C22B62B405A2
              5DB8CDC5632371FA65E85F8D0B2F09F955FEC8036D2FE2B6181E1B85D32F40FF
              4A5C5801F76C20845B6C056EABE1B1F8FE22CFAB61B7C9B1F04834E3363B8FAD
              C569B71AD6CDC0BA715B2D8F756861373CE7B7161358871EF659FF9442D526B0
              9A83F08C256C2DFB270B62975BC2DAD937D83235EC3206761FD60B37580C4ED3
              C7E169DE7BAAB3B3F3C9201626971D813E28ACC3FA221E1B81D3F4195D2A466B
              83D825E0FA67EEED102DC17A177BAAF141BF7FA2926069E109B17010221FD69F
              CA9E181F87FEC562B43E887D0CDC47C5C223103522394C8C5C7F947F18FAEBC4
              996A6510BB08DC35621B1DABBD480ED3386747F9FA8740B01061C5C283907F00
              FC4D0B90FC34C0C6A13C994F6FAAD679C218DC1FC492FBA87FAF87CC5D3A07FC
              7BB0BA14B089F8857EF766CA5D35FBAE3BA5F72DB9E3761ACD69A16F516FDD6D
              482CBED03927FE83B77A9526DE9EDD8AF42D587BBAB8AA19874B737D0A79D33C
              5AF0DC2C4BDF8447969C2162B3185B3D9EAD6D12755B6B60F1B2E046497EF16E
              AC2CCBF12F4499DF238B6EF08BDDD75F272D6C9C2DE6F75DCBD20516A2DC6056
              99906B765EBDB075FE5557D62B0BED8D57F83A96AF66AC16799B125CE49FC9E6
              5AB1B324DF0E43C3878D937E400D0B17355EF6B99716C20685D47AA7CA3F4EB3
              C3839DA6F8E63DBB3C1CD473A62B3FFC19DF25E6ED5CBC4DC1582F98B50AC6EE
              47CE9850A9E72532B0DCF921EE5494CFE05858CE754836AC38AE78B4756AC905
              9C1A96CBB4CC2D49E6D4B1DC288BE370E1459C16962BC8B7421DAED8D4C7DBC2
              B933CD5367CEE0F4B05CACE9E9E1E2582583B9E59E9C61069A710926B00F08C6
              57189E277BA74D6700D48E332A2718A35E3A9529573FD39964E0FD76599C8A58
              EBA828CDA17D54943D4555AA73B035CBA9F278143A67656908758FE112F3AA2E
              9F2C47E6A756954ED456193A34E4AA0B8A6AAAA2B3B3A3AB6A225DD5060426CF
              2D0DDBFFA4475974245EBD370000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-server'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C5000000E1504C5445FFFFFF2195F22196F32095F32D9CF44EABF54BA9F52397
              F36FBBF7B3DAFA60B3F66CB9F755AEF6A1D2FA42A5F5289AF4B9DDFB2497F322
              97F3A6D4FA8FCAF94AA9F5B8DDFBBBDEFB3BA2F442A6F591CAF9B5DBFBB1D9FA
              88C6F837A0F42780C6287CBC2782C9436B41384C4D42674271F1096DE50E3B54
              495CB42252952F56A3294C85353A504B60BD1E6DE60E5AAD2538484E2F628733
              57702F658E37494E559E2B63C71A4F8D3252962E47783B5DB82153982D47763C
              75FC0476FF0373F5074060444165424E8A333D5A4733546C37474F3259752977
              B42C71A72979B82196F31889B4AA0000000474524E5300A1ABF1EC60F6650000
              00097048597300000EC400000EC401952B0E1B0000010C494441545885EDD9D7
              6EC2301480613665869611CAEE60EF5236B82D6D187EFF07C221B9A4C216C760
              D0F96F2D7D17964F74A4381C17CBE9128B937553B1EE96DD6DB9DA08B26B83AB
              3F60F677F52381FDFE22CB053C3B2784CCE0D929632712EE763C1A7E4A60ED44
              D9C107577D35A60C597AB56F821CB6D7EDB45BF06C930D6F039EAD33B606CF56
              2BA4FC0ECF1A6FAFE6D5AAF2125E4A5C15D598B2DB6271FD38CDE2FA6186EB87
              72C37B5B2CAE1FA7595C3FCC70FD506E789145165964EF892DE473D9CC33349B
              CEE9AC5412984DE887E24FA0EC63CC62F53428ABD9AA1E85BD8488A566355836
              6CB1A12347E7B03418600FE1C10FCD52CDE7F51C3D388FFD376491156225FD34
              04680F5FFC1B1FD4B642F20000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-connected'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000114504C5445FFFFFF0000008FA4AC8FA4AE90A3AD91A5AE8DA2B191A5
              AF8CA1AE90A2AF8FA3AE8FA3AE8EA5AF90A3AE91A2AD90A3AF8FA4AD8FA3AF90
              A4AE8EA3AF90A4AE90A3AD8FA5AE90A4AD516D76546E79546D798EA1AB90A3AE
              536D7A546E798FA4AF90A3AE758C968FA3AE58737D8DA2AB546D79556A74557F
              7F536D7992A2B18DA4AF547178546E7A526E7C536D79536D795F5F7F536E7A84
              98A369808C90A3AD8FA3AD69818C546E7A8FA4AE90A4AE8FA5AC91A4AC90A3AE
              576B788FA3AD58727E8EA3AD738B98536E7A53707C54717A546D79536E7A536E
              7A51687F8FA3AE8FA7AF8FA4AF90A4AF8796A58FA3AD90A3AD546D79586B758E
              A3AD90A4AF8EA5AC91A5AF8FA4AE8FA2AF90A5AE546E7A90A4AE8FA3ADA749E5
              DC0000005974524E5300003E649B3E24322652FD584CF94842F5FDEB3CFDED38
              F31CC52A34F1DBE930ED4EEBEBDDDB1806AF202C24E32499E508B732CBFBF9CB
              AD524C4640F7264EED544CEB2A1AADD9E516E120ED6232EF34971A64ED446648
              5054A4BAD8F2000000097048597300000EC400000EC401952B0E1B0000025F49
              4441545885ADD86B5BD3301407F0860D2683E160B8159C6C4C262AA05C44BC20
              A0E20DF082F7A6DFFF7BD836BDA4497A728ECB79D1A72F9ADFF324F9E7F2D4F3
              1C177351538271C4D5C2BAE78EAB859C279E132ED684E782135AE239E0322DF6
              26E70A8D87D31373B256237676A691D70D9346E3669B795BDE9C3368246EBEC5
              79D953350AB750D2624FD308DCCD36576A7149D5F05C47D3385FBEA56868AEDB
              D3B5DCCB353BE7AFAC46CFDB7D93967A8566E5FC3BC1DA2A1B0CCD5AE2499A8D
              8BB420585B1F556991B72469162ED182E0EE463597E619C3F9E320A07910772F
              D3F01EC46DDE0F90DE035467D1DE432BE76F113C2BE78FB777F09E8D8BE794E0
              59389110BC0773697AF11EC8651ADE03B94745F3C7380FE476F7A81E3C7664CF
              32B3FB0724EF09BCC806A3C3A7AA7754EDB59E31886B447B2FC13B7CCE20AE9B
              9C0B68AFFD82415C273DB3905EFB2583B8E2744679BD0E83B88563695064EF95
              D1EB7719C49D94EE21A0771A79C30683B833E55663F1460306724DCE29DE6B55
              53387DF980DE9BB7548EE85939D85B217390373EA773D59EA6A13883F72E7E7D
              AF6938CEEC19342457F23E08CFA4613983F7D1A0A139DD335699FB84F57650DC
              05D2D31362E4909E71164C1CBBB884BC038BA6715721C08D3EEFC19ACA81DA97
              417C3F80348503B5FED7E88BDD6FD78056E640ADD7AD568CDC77486B4F213499
              93B4F087AA1DFFC46812276BBFD4FCB57EA3B4822B696A9E5B7F705ACE295AD9
              6BFE456A19A769FF598273A509CE999670EEB4989BD6FED54CC47975675AD2D9
              CC9B5C1353213C075A1A94D873A16531F6EA4EB47C9179A8FD07C339AD7F61DA
              0D32AB6A68650000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-server-100-export'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C5000000F3504C5445FFFFFF2195F22196F30000002095F3FF6044FF6044FF60
              442D9CF44EABF54BA9F5289AF4B78D9DDB9E9FD99C9EAF899C9D809BDD9E9FDC
              9E9F917B9B907A9B2297F3A6D4FA8FCAF94AA9F5B8DDFBBBDEFB3BA2F442A6F5
              91CAF9B5DBFBB1D9FA88C6F837A0F4C76D6FFF60445888C72780C6287CBC2782
              C9436B41384C4D42674271F1096DE50E3B54495CB42252952F56A3294C85353A
              504B60BD1E6DE60E5AAD2538484E2F62873357702F658E37494E559E2B63C71A
              4F8D3252962E47783B5DB82153982D47763C75FC0476FF0373F5074060444165
              424E8A333D5A4733546C37474F3259752977B42C71A72979B82196F3625F1C2C
              0000000874524E5300A1AB00F1BF4081BFFE5F0A000000097048597300000EC4
              00000EC401952B0E1B00000144494441545885EDD9894E02410C8061F0BE4057
              565144508BB780782B88D7A8201EBCFFD338ABC6803830D5360CA4FF037C6127
              DBD9268442FC8507700D36676287EAB8FA967D7BB5EA05C93ED7AC7A2266AB95
              4706F6E15EDDDDD2B3374AA96B7AF64AB36586B3BD2C152F18D8AFB0ECF99955
              A76E4C99B0F5AEDD093CECC9F1D1E1013D5BD0C3BB4FCFE6359BA367B37B6A77
              879EAD6D6F0547EBCA9BB0B961D5BA1B53D65BACAC1F9D59593F8264FD706E78
              7B8B95F5A3332BEB4790AC1FCE0DAFB0C20A8B65333C2CAC655858D0300B0B30
              3CC2C2FE8071ECEA4A3AB59CFC9D6D8251EC523AA15B5C30B00D308A8D273E9A
              9F33B1DF3082F563B3DE67337E6300AD308205DB34CCC1028C76FFD7EA639C8E
              7A5E642AE6539E6DD0E4C4F858DBA7C0BF09A65A515AF6AF53D696FDC79D6066
              596E3096FB96E7EB80F99631FD6948D73B2F1271832CBAAD330000000049454E
              44AE426082}
          end>
      end
      item
        Name = 'icons8-support'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005B0000005B08030000002BE809
              AB00000234504C5445FFFFFF0000005C738B637F8D607B8C5F7C8C607E8A607D
              8B617B8A5F7F875F7C8A5F7C8A607C8A607C8A607C8B5F7E8B54718D607C8B60
              7D8A5F7C8B5F7D8A6677885D7F88607D8B5F7D8B607C8A607C8B6D6D915F7C8A
              5F7D8A607D8B5F7C8B6666995F7D8B5B7F91607D8B557F7F5F7D8A5F7D8A5F7E
              8B5C7F8B607D8B607C8A637990607D8A5F7C8A0000FF6179855F7D8A5D7D8A60
              7D8C5F7C8A607C8B617C8B607C8A607D8B5F7C8B607C8B5D78865F7D8B607C8A
              5F7D8B5F7C8A607C8A607C8A5F7C8A5F7D8A5F7D8B637F8D5F7D8A5F7D8B607D
              8B607D8A5F7C8B607C8B5F7D8B5C7B8B607D8B5F7B8A607D8A7F7F7F607C8A5F
              7D8B5E7A8D5F7C8A607D8B5F7C8A5F7E8C5F7C8A5F7C8B617C8A5F7D8A607D8A
              607C8A667F7F5555AA5F7D8B607C895F7D8C5F7C8A607C8B607C8A5E7D8B5F7C
              8B617D8B5F7D8B5F7D8A5F7F8F607D8A5F7D8A7F7F7F5F7C8B5F7E8A5F7D8A60
              7C8C607C8B5F7D8B5E7B8A607D8A607D8C607C8A607C8B5F7F7F607D8B607D8B
              5F7C8A6A7F945F7C8A5F7C8B5F7D8B5F7D8B607D8A5F7C8A617B8A607D8A5F7F
              8A5F7C8B607D8B607C8B5F7D8A607D8B5F7D8A5F7D8A617F8E5F7C8A607C8A5E
              7C8A607D8B607D8A5F7D8A667F8C5F7D8A5E7C885E7B8A5F7D8B607D8B607C8A
              647F88627589607C8D607B8B617C8B617F8B5F7C8A627F895F7C8A607D8C5E7F
              8A5F7D8B5F7D8A5F7B8B607C8B607C89607C8B5F7D8A5F7D8C5F7C8A5E7C8C5F
              7C8B5F7B8A607D8A607D8A607D8A5F7C8A607B8A5F7F8C607D8A607D8BF9D878
              8C000000BA74524E5300000A243A50544C44207AB3E9F1C7620852A9F5C50E1E
              95F39DF90683FBD7FD049D0EB906BD9B5C16ED9716F7C90014763844DD7870D9
              7C8D89127EB799CB99A385D3971289DB838B8BE16820D548C10291BB1A93A1ED
              5A95C15C8FFD5A0A02EB2442A1F7BD48E336A5F910B1E3047264706EBF6E2274
              7AA5870893DDA70CB9FB4ACBF5DB687230CDEFC58734E97822F37E5E858DAB14
              C32A46F16AD71C0C2C42542AEB1A60462EB55240D162E7D1667C4E746ABFE5E7
              BB662812ED6754000000097048597300000EC400000EC401952B0E1B000003DC
              494441546881B5D9E743D350100070435902828AB21150C40505440504110537
              202A6EA48832645944458B2262C58D7B2B6E71EFD9F7CF8969923679A37729DC
              A7F6DEF54768DFCACB8409E31A92F908B00406058784064E64359AB70342C3C2
              23881A9322A3C6CA9E3C656A34D1C5B4E96363C7C4C611E29336635BE2138C32
              93C6DB8949C994CCA6D176E00C5AE6D0583B2C854147B2699C9D9AC690B934CA
              9E390B4563ECF4D9381A63672069843D074BC3EDB9F3B034DC9E8FA6C1F6824C
              340DB6C3F034D8CEC2D356A09D4D8D759F744E2ED05E68A4F37CD18B4814D05E
              6CB497F8F8403E210540BBD068BB960AEB8B464B8A81F632EAA70C129527FDAF
              2801DACB29BB5450BD42AE5809B4CB283BB39C5BBCCA5DB11A68AFA16CB29657
              BB4E29580FB437D0766605BBB4402DA804DA55B44D3656330AAD9BB4F6CD407B
              0BC326F90CBAC6D3BC153A9F6C63D8AEED14BDC3ABB9106AEF645D78428881D6
              75D55D507B37CB26B51B74B47E45B540ED3D4C9B901D755A894DBF7BA907CFDF
              7B393659DDA0D2FBF40DE160DBBA9F8793C6A6FF9DD1566A4847C1D7E23CAE4D
              48F3D6A89603865C6B1BDC8E14D8AC6887AF97D51D483BD8AF755E18799D60FB
              20922676096A53CBA5AFE84887DA5D589AC8379B10FB900B4B775B81F661349D
              794482D95D689A1C9560760F5A26C7AC30FB389ECE724810DBDA8BA74F644B10
              DB168FA723E74A103BF5249E2E754810BBEF149FE88F66A6D79FF606F8F68201
              AEEC0A4B97CA1B8A1ACFE8D3CEB37512C8B638F9573DA8D4749EB3679CBF20A7
              E65DBC946BDC0BF1ECCB57F8F490E1BBDB72356626CBE0D855D7F8F475E6FF09
              B66F30CE76D4B809A5D9F690600AB905A659B6AD972F935838CDB01DB705B43A
              0D99B3EFDC15D0EDA9089AB2EF89F638DD753C0662DF7F20A0077CDD0B0BED87
              FD02FA51369FF169DB6A0432697E8CA4BDEDE16211FDE00996F6B22B2A4574C2
              5334EDB15B2244347DDB84B09F31CEA3BC62C89723B09B6A857499195AB19F8B
              BAF5E870B4F961AB27AD2F0627A6BE7C655C71B270C3516FBF5610A7BB0BF775
              EB682776CCE8EC70379232A224DBEABDE87A8B495AB6FB5ADDCA1B2D9BE4A1A3
              5BCCD2B27D5F6172B4ACE748C3F5D6342DDB76C5B16BD9779ADD639E96ED22C5
              59A365D5BF865B6758B67A13F65E83D43E9995E8072DDB1FD4AB541FB7052BEF
              3BCCF63E8F3DA2DA0976F9CAB72B734B1C7E5AA56CEB47EDA7FB94F4F94B89F2
              BAF6AB7FB47BEC50A7AD727CF39376DBD9ACDD5F9ABFB432577DA7E91FE96364
              4BD483B24AFFBA88B7DDD9ABA7DB87FDA73DEBE5AE9F1EF9979D751C6ADE961C
              DF77CACF6A937FFF09180BD9B0AFEA1B79D7F0D721A8C6DBE316FF00B43B48AA
              A4FA54CE0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-undo'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F000001A1504C5445FFFFFF00000000BCD200BBD400BCD200BCD300BCD400BD
              D400BBD300BCD300BCD300B6DA00BCD300B9D000BCD300B9D600BCD400BAD200
              BCD400BCD400AAD400BBD400BFD800BCD400BCD400BBD400BBD400BCD400BCD3
              00CCCC00BBD300B8D400BBD300B8D200BCD300BBD400BBD400BCD400BCD300BC
              D400BCD300BDD500BFD100BDD300BBD400BCD300BBD300BBD200BBD300BBD400
              BCD400C6C600BFBF00BCD400BBD400BCD400C3D200BBD400BCD300BED500BAD5
              00BBD400BCD400FFFF00BAD500BCD300BBD400B9D000BCD400BBD300BBD600BC
              D400BBCC00BFDF00BCD200BCD300BCCF00BBD400BBD400BCD400BCD400BCD600
              BBD400BCD400BAD600B2CC00BBD300BCD500AAAA00BBD400BCD400BAD300BBD3
              007FFF00BFD700BCD300BCD200BBD400BCD400BBD300BDD400BAD300BCD200BC
              D400BAD400BBD400BBD300BBD300BED200BDD500B6DA00BCD300BBD400BBD300
              BCD400BCD400B9D000BBD300BBD400BCD400BCD500BBD400BCD400BBD400C4D7
              00BCD300BBD300B6CE00BCD300BCD500BCD300BAD300BBD300BBD300BBD400BC
              D300BBD500BBD300BCD4D23C869D0000008974524E530000165E2EE1974EF376
              FD06A116C32CDF4A72FD069D14C12ADD48F16E049912BD28DBEBCDC7BBA17A54
              1C46EFD995386AFB6A080495E96C10BBCF3624D9760042EDB30A66C912D30E08
              5CF11AA73CB9D7325AB5380AAB480289CB68F70220A5446C5452604668605A85
              4CCD322A0EB1E556A9F52034B9C55070EB780C58B514F93C6452AFDFE39944DA
              48D5C4000000097048597300000EC400000EC401952B0E1B0000021849444154
              5885EDD8EB571261100760B644C832AB050B3545BA495A862215988A12D03D51
              F21254A022DDA948CB02C95B317F75D0C962E785E5F0CE7CE99C7E5F99F39C3D
              ECEEBC336B30FC8F7C149D1C38A8F7AB187DAEC9D8CCC899CCC0C81D6A013EEE
              F011003EAEF52830726DC780913B6E0646EE840A7C9CC50AC0C7B59F0446EE94
              0D18B98E4E60E4BA54E0E34E7703F0713D76AC51B85E87A0C199B362CE9DBFD0
              E7BC588FEB1F10359D5CBA3CA8C75D7135A495E3181AAEC1B9471AC6CAF15C75
              57E3AE5D97D24AF1FA446EF486AC06E01A1B47DC845F5E2B65724AC3051ABF09
              DADC0C56701D44AC945098F3EA00ECB7F8FEBB72AC5C77F6776EF33C77FBB973
              97E1ADA8C83DF23BABCD7D524711F24091EA770FCD62D9AF4C4B76E39EC84CB1
              0AD72C7F56CC7A45CE6F913FC9A28F446F8E70CECE8B8FEA02650A087B30B748
              9A511E632E16A74C50964EEC3D21CD774F31F78C347D26309724CDC64B985B26
              4DEE2B984B91F68A55CCA5495BCF73CCBD20ED642F31F78AB231BE16DACA1BCA
              3EFB166B993AFBAC6EDE610DDE13B8C10F029792E72231412B6665B98F6B0206
              B05EEF5B00CA276739E9CF23B62A1840A0414E68489A6C4459B92F0A2797F9CA
              CAE5144E2EAF7072994D4EAEF04D61E4D4A4C2C8A95BFB151C5C6CFB4F050367
              9CFD5B41E776821515546ED7A4A9A0717B09B41F1338359FB3E00A49AE10FA9E
              6BAF5221D13E933F7CD9788D0AC207E27F303F01D94B5A67916D64A500000000
              49454E44AE426082}
          end>
      end
      item
        Name = 'icons8-data-grid'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000144504C5445FFFFFF00000062B6F463B4F663B5F664B3F66ABFFF63B5
              F663B5F564B5F564B5F662B6F763B4F663B3F763B5F763B4F563B3F664B5F764
              B5F562B4F75CB9FE64B5F663B5F666B2FF63B4F600FFFF63B4F561B3F464B6F6
              62B4F663B4F664B5F563B5F664B4F463B6F363B5F563B5F664B5F663B4F662B4
              F664B3F671A9FE63B5F5B9DEFB6AB7F6DFF0FD9DD0F99FD2F987C5F7B8DDFBD6
              EBFC72BCF7A7D5FA9BCFF9CBE6FB8BC7F868B7F687C6F868B8F68AC7F88FCAF8
              A1D2F978BFF7A8D5FA9CD0F971BCF7C1E2FBB7DDFAC9E6FBE0F0FD79BFF76BB8
              F7D7ECFC6CB9F789C7F875BDF79ED1F98AC8F8C1E1FB84C4F87AC0F8A0D2F991
              CAF8C7E4FC8CC9F998CEF983C4F8B6DDFAA6D4FAE2F2FDCAE6FB6BB8F6BADEFB
              65B6F672BBF6DEF0FCE3F2FDC5E4FC6FBAF776BEF765B5F67DC1F873BCF766B5
              F686C5F891CAF979BFF864B5F6478440770000002B74524E530000305C72760C
              7CE1E17A42E74060FB5E42F9400AE9E50A7A00DF2E5A7478875A302EDF78E5E3
              3E3C088909937EB1000000097048597300000EC400000EC401952B0E1B000002
              32494441545885ED9859531341144621134103080621C8E20222B8B0B8041311
              4C3462C2A22C261292400C3120F7FFBF7BA7673ADCBEF68BE9D692AAFE9E32A7
              3AA7A6A667EE4C7D5D5D96D31D26E245AF7594A817910EA9EBE9BD0E06B911EB
              A1BABE7E13999FFE814BDDCD41531BC0E090D4DDB26003880F07BADB23366C00
              A309A1EBB5630318F375778CF69466DCD745DA87173F49CECF02D8FA41D20A58
              F394C2465B30813A4F1E7CAF2B39394656ABAAB0DA4458395258F9501A265117
              95E75667F986B0C461096191B1B23CBF29D4DD0D7F7FE5FF3C40B8CFE13EC23D
              0E7743C53DA7733AA7FB77BA2F7CD167843B1CEE20DCE6704BA33B3B618B3611
              16F22ACB7F42B8F15185B9A64607C71F0E48DE6F0A98CDBC23C964055C5FA3B0
              58019DCE3C5748572BBD25592D08F8264D613A2560E13585A59A56C7DE3279FF
              B2A75654B8E2FBB26CBBAB3A5D8BDF4D1984690ED308931CB634BA5DBEE81598
              3C154EE7744EF797750623E0A546C707D40B31A0D4CFE0FA916E403D079D4E3B
              3E53CB142E87E37355199F4DADCE3C574857292E912CAE0B984D52980C5EDB17
              8B14EA5FDB35B6890B1B60F251B1C5EFA63530F9E4F9BF1F32A7733AA7933A59
              7C34CA6C51113A293EDAB5CCA1EACB3D83DF6B99A7A296C9A9B6762D731F750F
              E401346815741A0EB13F298DA6FD86CC5AA535230AB7315BBA87411D386BC7F6
              28119695711BB6F89CAC52876C54A9DE65D13B605CF48ECED31A3A111B3791CD
              C41E2BAD3666C29B7AD251A293D3A424B79A5F27543E1D0D6AEDC80000000049
              454E44AE426082}
          end>
      end
      item
        Name = 'icons8-rhombus'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005E0000005E040300000058FCBE
              5D00000015504C5445FFFFFF00000000ADC500ACC000ABC1009FBF00ACC122A0
              AABA0000000674524E53000016D5B70835C94844000000097048597300000EC4
              00000EC401952B0E1B0000018B49444154588595985D4E84401006D113EC6CE2
              BBBA37D0C413A8EF267A020DF73F82C0C04C77CF3740F1682A55BB2B3FDD0C03
              3CEE923C9EF59F2F1DFEFAFA84F8DBF842F8EBDBF82B031DFE368E3AA0F9493F
              EA80E667BD0E487ED1EB80E4B35E0614BFEA6540F19B5E05045FF42A20F8AC7F
              D78196CFFABF9F4F1968F9ACFF48DF32D0F0ABFE2B3DC840C36FFAA403912FFA
              A40391AF7A1D08BCD1EB40E0AD5E063CEFF432E079AF5701C707BD0A383EEA45
              C0F28D5E042CDFEADB80E185BE0D185EE99B40E5A5BE09545EEB63A0F01D7D0C
              14BEA70F818DEFEA4360E3FB7A1F58F91DBD0FACFC9EDE0532BFAB7781CCEFEB
              6D60E10FF436B0F0477A1398F943BD09CCFCB1BE0626FE84BE0626FE8CBE042E
              C3FD197D093C629E7E1EFC7DE9EF89FF5FF47CC0E71B3D9FF1F542AF477CBDD3
              FB09BE5FD1FB21BEDFD2FB397E5ED0E7117EDED1E7297E5ED37900CF1B749EC1
              F3129DC7F0BC47E7493CAFD27918CFDB749EC7FB02DD47F0BE43F729BCAFD17D
              10EF9B749FC5FB32DDC7F1BE4FDF27E0F715FDF721F0F807B76B509911661559
              0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-user'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000300504C5445FFFFFF0000005555554242424141414242424242424242
              424242424343434242424141414141414141417F7F7F33333341414141414142
              42424040404242424141414242424141413F3F3F424242414141414141444444
              4242424141414141414646464242424242423F3F3F4242424242424343434141
              414242424242424242424242424242424141413F3F3F40404042424242424241
              41413F3F3F414141414141434343414141414141424242414141424242424242
              414141414141484540FEA626FEA726FEA825FEA524FEA626FEA725FEA726FEA6
              25FEA726FEA625FEA526FFAA00FFA625FEA725FFFF00FFA827FEA626FEB242FE
              B241FEA726FEA627FEB74DFEB74DFEB64EFEB74DFEBA4EFFB44AFEB74DFFB64D
              FEB64CFEB64CFEBB50FEB64CFEB74DFFB44BFFB74CFEB648FEB74DFEB74DFFBF
              55FEB84DFEB84DFEB64DFEB74DFFAA55FEB74CFEB74DFEB64BFFA31EFE980024
              87C687875E2288C72E93CA1A78B80A63A70F5F9B0B64A71B79B92991CB4CCCFF
              4FC3F74EC3F74FC3F74FC2F648B6FE45B9FE4EC3F64FC2F74EC3F74FC3F53FBF
              FF50C2F64EC3F74FC2F74DC1F84BC6F54EC3F64EC3F754C2F250C3F84FC2F74F
              C4F64FC3F64FC3F650C3F700FFFF4EC3F7E29112CD8B1E9F803A556C68085997
              0961A445B5EB5A6E65E491105B6E64106BAC4CBEF34FC2F62386C49B7E3D9D7F
              3C0759972385C3A4813702589A02599D43B2E87A76517C76501E7EBC4ABDF128
              6183F896042A6182045B9F4ABCF24FC3F737A2DAA78235AB833336A1DAFD9801
              01579BFFA41EFFA41FFFA21AFF9F11FF9B06FFA92CFFAA2DFF9F12FF9800FFA3
              1CFF9801FFB13DFFB13EFEB64DFFB241DC9A3FC48636FDB54CC58737AD732DE9
              A545BF82357B4A1BE9A544F6B14CA16928CE8E3AE1A54CF5B14CFFB344ECA844
              665844F1AC48804E1DCB8C397847197F4D1CF0AA47645744EAA644DE952A584F
              42DB993FDC9A40C38536EEA846554D42D9932BFFA726CC8B2D4D48404A4641C5
              882FBC8D49BA8C49B589496C5C45FFB74D5A5144E7A84BEAAA4CAB83486C5C44
              4C4843434342424242858579D40000009874524E53000002325C8399A5AB484C
              ABEDD3020466E35436D778FB8D04A3E99324A1FD9B1287E73850F744F52A9BD3
              6E9FE1104E66ADB708F92E38626C93A3B1B9C3CFDB85835852C1BDE3CBC96C6A
              02ABA90054A7E5E5A754858158561A18CFCD747012F3F110890EE5E30C4C4883
              A5029D76FD89684CA74852CDFBFDFBCB4E0A62CDC95C060A78EFEB700858E7E1
              4E1AB9AF1448E53C72FB660089FBB43C88000000097048597300000EC400000E
              C401952B0E1B000003E5494441545885EDD765541451180660163BC0EE0EECEE
              C26E74ED56EC4EC440C5021357C415050C54041B05140615140B5150ECAEB173
              0C54ECF1DE5D586666EFCCDC3BB3FED2F7D7ECDDF77BCE77E6DCE51CACACFE72
              3412B14E973E43C64C990DC922D12361ADB366CBCEA6C5C6D6126C8E9CB9587E
              725B80CD93971546625D5C365F7E3395650BE429A88AB52E8440610A1729AA9C
              B52D26A282142F5152295B4A5C05295D46195B56526559BB724AD892856558B6
              7C05056C453995652BE520668BA2AE96309589D92AA2D6EF5FA6C7AAB6846C35
              3B11F3E78FEFDFBE9A3E5627646B8899C920696E4D42B696A8C973B3DB12B1B5
              EB889B3CB72E115B4FCAE4BAF589D8069226C7CD40C4369436D3DC46446C6368
              7E11374D6E1322D61E4C7C9632613E81923D11DB144C24C9B149A0D49488B5C1
              656DFEB3A46C335CB61909DBFCE3073CF6FDBB16F86C4B8679FB26957DFDEA25
              5F7BF1EA752AFBFC19C3B4C2665B330CF3F489917DFC88A61F72D58734FDE0BE
              91BD771714DB60B36D41FBCEED5B86D99B344DDFE0B237C0C14DC3D3ADEB7740
              B12D36DB0EB229CAB5AB347D85CB5EA1E9AB97539E21DB1E9BEDC061935F5EBA
              98C865132F5C3A9FCC613B62B30E9D182641EE1EC024304C67076C56A3EDD2B5
              1B0EDBBD474F2DFE0583E985C3F6160CC9B37D70D8BEC46C3F0C35BE3F31AB19
              20CF0E14CE60B083E4594705ECE02172EAD0610A58CD7039B697D9080E3B62A4
              B43A6AB4225633265E4A8D1F6B3E81C54AFF24C62106F058ED787175BC163180
              C76A264C1453274E40F531598D76D264143AD911B52BC93FFE53CE99AB67A788
              94F159A7B833823FBD0967E29CD4B3B1B1B1A74F99E48493A7C18165589013C7
              638E1D8D397EC2F8C9622C3FFF183BD519C53A4F53C34E9F3133DA25CA5C8D72
              899E357B8E32D675EEBC23D12087CDD943F03C72FE8285C4AC9BFB228A8A0807
              E3070F08D50361E0383C94A2162F594AC62E5B4EC184C0B5F60BD97DF034C450
              F05841C0EA5652C604EF05C09EDD7C75F71E70B83738A5E2B90A97F55A4CA566
              175C6CE70EAEBA7D273C0B325556EBF1D83581A6116A5B0034A2B76E4945B76C
              361C046C4BEB78AFC560D7F950DCF86F32301B37ACF7F3F5F5DBB161A3E1E326
              7F5EC95D9EE5ABC035EECB4B80BFA0E42EC7AEA584890811AA2111C24EE00269
              56EF6DC65254246FE1804844C55B2FC5BA792046408283C25C20E91216148C6E
              CC5B2AC1FAA0678C090D95FAD6479CD5A15E0166BC75A2ACA77215FCDCC4585D
              A0FCB0F4BA48D6478D6AB8BC4856E41AE0C603CDEAD5A914A547B2EE6AD93548
              56D53D80F144B22A5F2D7CB908D655AD4A05BA21589D6A96D22158D517015C05
              04EBA59EF5426DEBA93AA86D2D9A3FEA5F2904A15A14D60000000049454E44AE
              426082}
          end>
      end
      item
        Name = 'icons8-note'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000060504C5445FFFFFFFEBF09FEC006FEC208FFC106FEC007FEC106FEC1
              06FFBF00000000FFBF07FFC107FEC006FFC518FFDF7DFFF8E1FFD554FFC517FF
              D450FFC720F9B607FEBF07EA9B07F3AD07FDBD07F5B007FDBE07E28E07FAB807
              E89907FBBA07FFC10712AFA2FD0000000D74524E530038763E78877CB7080040
              897EBC54DF2D000000097048597300000EC400000EC401952B0E1B000000D049
              4441545885EDD8690E82400C8661DCC57D4311C7E1FEB7548C0B74AAC4F63381
              D8F7004F2669D31F1345E03A5D58BD2BD7CF610D8C33CE38E3DAC0F9B338CF70
              EE24CEB58ECB8EE2B2DF4FD63839971EC4A50CD7EC3506737E2F8EBB28E0C91A
              D718AE7EEFDC47EB9FB9645757F20D07C838E38CC371DB0D6DADE1564BD242F5
              3ACA155A3E4471376D340671772DC6700F0DC33D3508F7D2105C490370654DCF
              55343557D5B41CD1941CD5745CA0A9B850D3708CA6E0384DCECD394DCEB19A8A
              0BB5829B4C65CD422D16FED3BFED0286647441C76262320000000049454E44AE
              426082}
          end>
      end
      item
        Name = 'icons8-add'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000153504C5445FFFFFF00000000FF004CB24C4BB04E4CAD514CAE504CAE
              504CAE4F4BAE504CAF4F55AA554CAE504BAE504BAF4F4CAE504BAF4F4AAD5144
              AA554BAF504BAF4F4CAE504CAE504BAE504CAF4F4CAF4F4CAF4F4BAF4F4BB04E
              4CAE504BAF4F4DAE504BAE504CAF4F4DAD5147AD514BAE504BAE504BAE504CAF
              4F48B6484BAF504CAF4F4CAF4F4AAF4F4BAF4F4CAE504BAD514CAF4F4BAF4F4C
              AF4F4AAF4F4BAF4F4BAE504EB04E4CAF4F4EB04E4BAF4F4CAF4F4BB34B4CAE50
              4AAA554CAF4F4CAF4F4BAF4F4BAE504CAF4F4AAD514CAF4F4CAE504AB04E4BAF
              4F4FAF4F4DAF4F45B9454BAF4F4FAF4F48AD514DAD514CAE504CAF4F4CB24C4B
              AF4F4BAE504BAF4F4CAF504AB04E4BAE504BAE5051AD514CAF4F4BAF4F4DB14D
              4BAF4F4CAE504CAF4F4BAD514CB04E4CAE504DB14D4CAE504DAF4F4BAE50DFF1
              E09BD29D7CC47F73C176FFFFFF76C279DBEFDC6EBE714CAE504CAF50E3A648BF
              0000006774524E530000001E446A7E8999A56A0C488BCBF58B480E66C1FBBF64
              42ABF7F74EC9C74CD1D14218A968F3F10E32DDDB30F3465AFBF95A6C4AF530D9
              0CA7641AF118A7A540CF4C4AC9C540A910620A461C1C447C970ABD62C5CD3EA3
              EF16A3D72AFD68562C60A116CB609942B8E86B000000097048597300000EC400
              000EC401952B0E1B000002E6494441545885B5D9DB5FD33014077052C6BA9BDB
              1CB08B93211BDD86B04B111044B70132159C03A73841BC2B08C8F2FF3FD95D90
              5ED2A4694F7FAF4DBE0FFD3469CEC9D8984B41CC08E39E09AFE8F3FB7DA237E0
              19674F404C3618BA138E604D22E1E8DDA013363639358D89998E276236D964EA
              1ED91C269D4AF2B3C2FD199A394C6656E0633D0FD8683F73590E36376F0DEDC7
              9FB3CA4A79EB2AC6858425B698E241FB992FB2D98587BC2AC68B4B2C3614612B
              C694CA74B652B5A3622C2FD3D8473D7B2AC63DC99CADD85615B762C6AEC8F655
              E53D64C9ECC2AA1355D9D9D6486CCCC697A5CDE37502CBBD0A8CD930B2927315
              E3277A76F329045B78A6636B102AC6752DEBA10EBEFEABCA356D64AFA16605FA
              AE7D75A9CA1575E896A062B7A9437958BCA3629FC3B1BBB72CFDCDF2B1B8F99F
              7D01C9D66ED897D4F3002F9B2E8ED849C6403E16BF1AB153B06C7CC8AE576159
              796FC08658E33859BC3F60A3D0AC3860C3D06CA6CF0AEC9301275BEAB3AF494F
              2EFEA873AE66CF358F2E48B35B0AFB86F4E0ECD262CE48B3B30A3B01CF0614D6
              0BCFB615360ACF8A0A7B00CF1E28AC1F9EF5BBC7BAF412A2F0ACE8DE07168067
              258525FE769D2F5E17B69A4DF7364697B6712442B3A29BBFC8601596950F87C7
              8F382CFB7674AA49C0B29D111B033DDAADDE1CED10AB8762EF208A92906CE3F6
              909F8163DFA96A87593876455D40CD41B1EF35E55E933A96A3DC3BD216A7C41F
              257F3EE86ADE1C4829DDFDA82FFC994BCD4A3AC63605408D7E4CE87E14179DAA
              2741028BD61CB6800A9F10894559571A56CEDA6BA7EA76A0AE19F8D9B67BAAE9
              E2EA5B97CB36DF83FC05D158542ED951F3BAA6BEB12DBC64E33B3BF98A582C2A
              726F0F75C39D09B1E59EE8F2A0DD6F46C1E482E0D8F217D1FBFE8300985D6734
              B6ACA93F8F88D3CD2F5F7618FFB77E7643E4C9D4ABA2662D4D33D31B4DD3A98C
              8BAD4EDC6479C8F15F762FB606D9DB1767742B249F11CB87F459962E0D512B29
              B5455FBDFE5B6C4BD99685099CF79696F30FB7A62F98C95A693C000000004945
              4E44AE426082}
          end>
      end
      item
        Name = 'icons8-delete-button'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000144504C5445FFFFFF000000FF0000F64433F34334F34236F44236F343
              35F34235F44236F24334E93F3FF44234F34335F34236F34236F34235F44335EE
              4433F54337F44236F34335F44335F44435F34435F44336F34335F54137F34335
              F34235F44335F44335F34335F34136F44732F44236F24335F44335F44236EC48
              36F54137F34236F44235F44535F44136F34335F34336F34236F34335F44137F4
              4334F44236EB3A3AF44335F44235F54238F44235F43F35F34337F34236F54234
              F44336F34336F44336F34236EF3F2FF44236FE452EF44435F34336F64634F53F
              36F34237F44335F44236FF4C33F44235F44335F44336F44236F34335F24135F3
              4335F44336F34539F44336F44236F34135F34235F54235F34236F34334F34534
              F44137F34235F34237F34236F44235F34335F8857DFFFFFFF88D86FFFEFEFDE4
              E2F8857CF5574BF34336F44336EFB6BAD60000006374524E530000001E446A7E
              8999A56A0C488BCBF58B480E66C1FBBF6442ABF74EC9C74CD1D14218A968F3F1
              0E32DDDB30465AFBF96C4A30D90CA7641AF11840CF4C4AC9C54010620A46891C
              1C447C970ABFBD62C5CD3EA3EF16A3D72AFD68FD562C60A116C76099A75241CC
              000000097048597300000EC400000EC401952B0E1B0000032C494441545885B5
              D9F95F124114007007515C213054AEC404414C25D2240B332925528B32D2EE53
              50E1FDFFBFB7CBA17BCC9B8BDDF7E3EECCF7C32EB3336FDE8C8D7914841BBE71
              FFC464604AD3A60293D3FE717E07C26583A13BE1085822129EB91B1C858DCECE
              CD0335E663F1A8229B48A6E8663F52C9843CEBBBB7C032FB915EF4C9B1FEFB7C
              D488A58C049B5D16438DD0B2A26C2E2FAE02ACC485D84252063562B9C067571F
              C8AA006BEB3C3614E12BCEC86FB0D9E2431515A05464B18FBA6A2A403787B345
              6555778B18BB595257F5F790A1B3AB4AFFD66D44B6686C54616459E3F1368595
              FE0A9C5176B2B9D15580277676E7A91BECCA331B5B7643D5E7332BEB7747856E
              C5CCFA04676D7EECFA4CEC73B754803D13FB026BD4B9A65FBFEE603DF66F59F4
              CD76AE2EDBB4EBEDCB2BD4ADDEB0D8D2D5B96AB5686EFBB2D542DDF2907D89E4
              03864A730D15775385013BCB529D6E5FC5DD5703768EA9DADDA18ABAB13EBB4D
              5F682E6EBA5BDCB6E9F205B563E9A0C786E8CF6201DACC8BB638ECB133C85D1A
              21A242ADC786B1DB4E444885B4C1FA186B8D8D1153216FB0AFF1FB36485005A8
              EBEC1B5603B3DB125521A3B313CC1616575085699D9D6437A1B83C158E74161D
              5F98CB5521A0B3C7BC463697AFC2B1CE6ADC56D09653411364CD3F5790F5E825
              78F4977934C0A66555BE9BD3597642639E0784DD8C3753CD8E7713A347D33809
              08AB528B8E474B64D0ED05FDA49F7EBCA5DE554E3FDE0DB29A38FD595493A5C6
              808DBA9ADA450ADE26A22481B4504A9B2BB7497E1A75A593FCF7A6BDC322D648
              3E36CD1BA825B7D40F96ED5ED525B57B6ADD9C0A2C9422F1D1B6E7CDBAB2956E
              7EB26FFC914F4D2E1ACE32850B7BF4334AF5A3B036AA7A1EA4B0646BC412D0CA
              67426349C69382D568E5B52F68798D90AFCAEE374B15D751BA547C0FA5EF84C5
              920DA94AF330F2B6A2BEB32CBCAE30CECE7F101E4B0AD2D383E63833A196DCE3
              4D19B4F9D32920070467C223A2FBEB3705C08E332ABB626AF894DA1D3F7CD9FB
              C347F743F4CECCA3A26A997D5454AEA25D39075B8D18F27994627F550FB67A71
              70585BB07D21F9746DE384DD4BE8D090D413B9A3DA94A6FDAB1DE53275810E92
              E796C2F11F23B1C7C3214439A50000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-image'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C50000020D504C5445FFFFFF000000F57F00F57A00F47B00F57D00F37B00F47C
              00F47B00F37B00FF7F00F47C00F47B00FF5500F57B00F57C00F47C00F37B00FF
              6600F47C00F47C00F37D00F37D00F57C00F57C00F57B00F57C00F57B00F57B00
              F37B00F47B00F37C00F67B00F57B00F47C00F57B00F47C00F57C00F67D00F47A
              00F47C00F37900F27900D45107D14D08C94709BB3B0ABB3D09B54506B74806BE
              360C9C2C09A32F0AAC310BB3330B942B09BA340B972B09C1390CA83608E26404
              DF6A02C1390BC63F0AE36504C2390CEB6F02D95906E26304AA3C07CA5804CF4A
              09D85507E77101992E09AC3E07F27801C7400ABF360CCD4909CE5B04982E09E9
              7101EC7002C8420AF17601AF4106D05C03F37A00EB73019B3008B14206D35F03
              9C3108EC7401B64606D66203EE76019E3308B74906DA65039F3308EF7701BB4B
              05DB6602F8A744FABD65FAC06AF9AD4CF68813F07800A23508BE4D05F9AF50FE
              F1B8FFF6BFFABE68F57E03DE6902952B09A23708F17900FABE67F57E02C15005
              962B09E06B02F89C33F9B458F27A00A53807C35205FCDA93FEEEB2F57D02E46E
              02972C09942A09A73A07F37B00F58108FFF7C2F79527C85604972D09E56E02F6
              8D1CF8A23BF47B00D86403F89B31FEE8A9FFF5BFF6840CFAB559FBCB7CF58006
              FDDE9AFEECAEF68814F6860FFDDA94FFF9C4FDE6A6F78F1EF57D01F8A641FCD2
              87FEE8A8FEEAACFCD88FF9B051F57F05F57C00F47C00AD2FC8B40000002A7452
              4E5300001A4C626642C3FD40049391029D9B5E5A04E3E1444285839F9FA58544
              DF5C569B998DC1BF3E184C1630E0CCB1000000097048597300000EC400000EC4
              01952B0E1B0000029D494441545885EDD9E75313611006700208018905B1A262
              177BEFBDF7B3622F28166C88150B56B0AC15140B7663C176FC8DDEE5BDF2967D
              2F1C6EBEDDF3F136F3CB4C9ECC4E66939515254A46134B253B27B7CB7F273727
              9B690E9B97DF6E92249E5FE0B1855D694C96A284C376A3544DB33B637BD0AAA6
              D9D3668B7B51B325C516DB9B5A35CD3E16DB979EED67B1FDE9D901165B4ACF96
              462C01FBF7CFEF5F3FDB7E7CA765BF7D4DA6F2E53325FBE963D2C987F784ECBB
              A497B7746CEB1B9F7D4DC7BE4A72E13FDD0EB12F5B3483173CFB3C24DBDCF44C
              3379CAA94F1E87631F3D8407F7F1D1BDBB3EDBC80F3AC03600C09DDBF8EC96CF
              DE0CC7DEB86EB1508F0FAFB5B9EA55E1795AF6CA655B85BA4BF8F8E285F3367A
              EEACF8382D5B0B2C676A342F387DEAE489E3ADD2C3746C35B83916F4E672D2B0
              478F782C1CA663AB7C150E1DA4622B81CF012276FF3E8185BD34EC1E5185DDBB
              84F1CECEB13B40CE767E5CB16D6B67D82D9B151636F9E3F68DC686F5E1D99675
              AA0A6BD778F3D58661ACD2FDD6D6B32B11156085BB7A971B769685659B9B5016
              9CD5BB74498A35168763AD258B87ADDE8A454C3516E2B5E9D8068DCA56AF5597
              1BBC360DCB962C9E7A56971BB4369C75962C9EBA05F30D3E586D385B1BA002CC
              9B2BB0586D285B1DA8CE992DAA586D18CB2F5935B3661A72D4DA30B62A488519
              8A8AD486B09581EA7444556B535979C98A99361565E5DA54565EB24294BA34B5
              29ACBA64B92075E1B5C92CB664FD6075A1B5492CBA64BDE07561B5492CBE649D
              E8EA426A13D99A2993033269A29809E3C58C1B1BF04D2049C4466CC40A6C860E
              5603E959FBBC36889ECDB34F9725D4EAE042FBD05A46CD0E6167E1A1B4EA30E7
              DA9C28A2548727BC937BC188388D191F398ABBE4C762A3CB29FE20281FE3FD41
              10254A06F30F4F56FFC1AEB4CBE60000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-source-code'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000058000000580803000000464BC0
              0600000198504C5445FFFFFF0000001D93F5178BE72195F22096F22196F22498
              F02294F32095F22196F32395F62196F32095F32299EE2096F22195F22096F422
              96F22195F21E96F01A93F12095F22095F32094F22195F32096F22196F21F94F4
              2195F22096F33D51B53E51B50000FF2196F32197F33F50B63E51B33E4FB53E50
              B43F50B43F5FBF3F3FBF3F50B53F51B53E50B23F51B63E50B43E51B53D51B724
              91F52095F23C4BB43E50B53C54B63E51B43E53B63C50B53F51B4334CB23E51B4
              404FB52699F23F52B43F51B53F51B44455BB5555AA3F50B53648B63E51B53F51
              B53F51B53E50B51F94F13F50B53E51B53F51B52196F23F51B43E51B43E51B320
              96F12196F33E50B43F4FB52095F23F50B43F51B42196F32A94E92193F32196F3
              3F50B44848B62095F32196F23F50B53F50B52096F32095F31F9FFF3E51B42298
              F52095F23E51B43F4FB72196F22196F13F4DB83F50B43F50B400FFFF2196F221
              96F32AAAFF404EB42395F12095F33F51B42196F22095F43D51B63E51B33F50B5
              007FFF2195F22096F33F7FFF3F51B41F97F32196F33F51B43F51B52195F22196
              F37A9FE9D50000008474524E5300001A0AF5D37A2258CB721CAFC50EF9D15E78
              B72212FBC96472BDFD18FDC3427A006A6C684E2CF1A5080495F5381CE3C9181C
              BD10BB14D93026D90AF5521444EFD30E02B10EEDC59DFD60F98760CF54977626
              B17E507E859DD70C2CABBD068552BFCDDBF308DB34A5DF208B4C24EBED00E1EF
              06363A9D4891465A50FD02E7EB047040979007191E000000097048597300000E
              C400000EC401952B0E1B0000035E494441545885EDD8675BD44010006022071C
              BD1CBD7A7080E50404C58282140B453C0191A6A080A0A0D205942210EE6F7B90
              994D2E992DC713BF653E6E66DFDB679349762E29C90B2FBCF04225B404E39A52
              56E270B22F2535ED7FC0FE682CD233325D87B3A297719E9DEC2E9C936BC0D13C
              715EC2703EB8D10297E100C285EEC245C5E096481213854B71C1652EC3E5E056
              B8FCB85556015C2DCB24E19AEB414E7A2DEE449D753454AF063734EA376ED270
              35B85595E6D8ADDB7AF88E0ADCD4ACEB7ACB5DCA6DAD00B8CD1CBB773F96DED8
              2087DB1FE817D1FC9080CB70274AD9D0A3C7467A930CEE68D18D78F2D4099780
              5BDC89235DCF20BDBB470CF7F6E91861FB22B4C273800338F2FC054B7FD92182
              83AF5862BFF35617E04E0CB0A19A4136A1AF57000FB1B4B3D7CE9D18063737C7
              1C7BD3CFA644F8708825E96F9DEE082E7854A3E78CF1E077E6AF0F395D6D1C61
              7FDCF07B530ED1B065BF2682043C09AE6F2A7E3C42DD170B1C2B38FA3E404CE3
              82676C17AC4F122B4113BE2C38233E7C245C6D16E139FB958E4F6C2A2B410643
              C15DC4E71EFBCCCB98077761D171A9A79B4DC6124498159CAE7F6927DD255CF0
              3271B1E92B9B0E2508B0659B9ABF91AEB682F02A75F5FB0F06182568C0C10936
              FCD3F19E32626D1DDC8D4DF2FA5638FED61BB05970E12DDAD5B671C13B9C842E
              F3618D206C16CFE02FCE346D17E13D5EC6FE1963C60CF8372BB83FFBBC590787
              E01E1DF352B4BF0C8E95600CB6145C883BE904177CCA4DB1EE687FBD2A7C8AF0
              893AACB215C747E01E1EF05DFB56A8DCBC3D5CF02EDF75DE3C85C76D07E16DAE
              4B3D6ED202D9DC00777D8DE7D205222BE9555CF00ACFE594B4EC25B48CF012C7
              E5BE84C4AFCDC50570E739AEE0B5297CD1CFE182676957F8A2177D9A66109E26
              5DC9A789FF319DF2813B492F58F631E57EFEFDB8E071D2957FFE790796518447
              2857E5C0421FB158CB384CB96A472CF25038800BA65A46D54321758CC596F19C
              6819958FB1C4C1BB53D8322A1FBC9DAD82A465546E151CCD4D1BB815AD24ACDE
              DCD8DA3179CBA8DC8EC5379075B813B53C58BD818C0BAA655409199C892D6379
              62AE14265A467760D63216B90B17E28203A2AC2BC0AC65CC7719CE03D7DA32BA
              01276743F79C95A82B7FDC32D22F60BF30E92A702CD252537CE2BF1BAF086BAA
              FFECDA612FBCF0C20B79FC03EA31B627A913AFE00000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-microsoft-excel'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F0000021C504C5445FFFFFF0000005555552F7C2F2F7C312D7F2D337F332E7D
              322F7B312D7D322D7C312D7C312E7B332A7F382D7D312E7C322D7D322D7C322D
              7D312A7F332D7C312D7D312E7D322E7C312E7F342D7D312E7C322E7C312E7D32
              2D7C312F7A2F38903D4BAF504BAC527F7F7F2E7D334BAF4F4EB04E4CAF4F4BAF
              4F4CAE5000FF002D7D3069A26C53945679AB7B488D4C3D8640EEF4EE3E874260
              B86369BC6D78C37BA0D4A285BF887BAD7E629D65A2C5A4458B49CCDFCD478D4B
              87B489519355DBE9DC529355E6F0E77AAC7D99C09B5F9C62C2D9C3609C63F8FA
              F8EBF2EB36823A6EA57193BC9575A978C2D9C4EAF2EA3B853FDFEBE072A77565
              9F68BED7BFB6D2B7448B48428A46F4F8F484B386E2EDE380B08294BC9673C176
              87C98AA4D7A6F3FAF3C5DCC6F7FAF7A1C4A3C0D8C1D8E7D9FCFDFC4F9152C6DB
              C7358239E4EEE4C3DAC4BFD7C06BA36E99BF9B629E653481384C9050F9FBF9C4
              DAC5D0E2D190BA925AB55E61B8656CBD6F88CA8A73B776C5DBC6FDFEFD559558
              6CA46FF5F9F5438A4773A876B5D1B7D9E8DAB1CFB338833CFAFCFA498E4D76AA
              79FEFEFE5C9A5F9EC3A0A6C7A7307F34E1ECE1D4E4D5307E3462B9666EBE717F
              C681ABDAAD8EC490509253FBFCFBF4F8F54088447FAF822F7E33CADECB97BE99
              338037E7F0E8EBF3EC39843D4C8F4FAACAAB39843C70A673ABCBAD649F6776C2
              798BCB8EABD9ADFFFFFFCEE0CF6BBD6E7AC47D91CE94CFEAD0A9D0AB4CAF5045
              A3492E7D32D8E307500000002B74524E530000022A5C1C0A366699C9F53C1242
              72A3D5FD1E4E81B1E12C8DBDEDD7811A6232240278CD0C6A87CB004E687EE9E2
              000000097048597300000EC400000EC401952B0E1B00000296494441545885ED
              98F757134110C71141B12B60EF05EC5DC42E76050BD6D85151145B805850EC48
              AC18158D806205D45810E71F7477E7CADE71E06DE13D7DE4FB4332B3B3F379B9
              D9BDBDCB2424685637BF4AEC9E94FC97293E713D7AA6F4EADD07A0AF32AE5FFF
              010307A5024A0997963E78C850E025894B1C96347CC4486823719C59264F09E1
              689946A5B64312C2A5A58F7695491637C6BB4C9E1A3BAE038D9F4071137DA2A8
              7EB776A449195A71AD997A7193E3B838AE3370BF5AA87E92CC1F2D0E7D97C27D
              8B517D25995F620E7DFEDF70CD4DA8462BFBD3471CF920837BFF0E436F1BCC91
              3738F0BA5EEA62EB8C589DE1D7BE626EF4A535E3450DD57392F9ACC6A1A71EB8
              C813C4553F46FF11BA0FEDDA89EDBB07F711708F79E12ABCF6BBB238A844DC1D
              56ACDBE8DC0269DCCD1B88B84EEC6B15CCBCCA85E14A39D5659279A9DCA18BDE
              FBEE02E242C42C635669091F16DDC6C16A0C37C37934CE810A0ECE62F80C9C66
              DFC5A7D470709285AB8A4E584554C2154559FC38FB2C04551C1CB3271D0DBB62
              470AA80E93CC43050E1D6C1767DEBA44075C21A9D378BF49DB17D481DB6BE202
              7B34E07607AC8BDDA501B7935BB01DAE98F8526CC77D87B758BEAB7AC21B65DB
              5616DEB219A7E529E29A309CBB6923FBDE1056C2ADC7033464ADEF3A155C301F
              A36B011A8AD16C54C0ADE17ED26AB4577167BBE0F199834F878A1CEA4456228F
              7BF288EDBB48080195E8E6A2175D21895B8EF9A5CB0CDFA02FAD97C22DC1A774
              6CB139B0C8A873B6855B9845B58064CECF72685E5B5C212607E65AD9786BC4E6
              CC9658D959C61BCF4CBB54338CA1E912383FEA5238CDAFDAFFF6FF8A38AE8BE2
              F4363EA664686D1A4DB55B5AD374B5B43AA3E1664B5F3BD096BE6625276DAD54
              4EFA1ABDB6F4B5A16DF96B926BD51F2A754A7942A677980000000049454E44AE
              426082}
          end>
      end
      item
        Name = 'icons8-csv'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A08030000000F76B1
              30000001B0504C5445FFFFFF4DB5AD4CB5AB4CB5AC3FBF9F0000004CB5AC4CB6
              AB4DB7AB3CA49B1B85780972650D7669026C5E30998E1A83764BB4AB0770632C
              948A218A7E026B5D3FA79D289185087165359E9343ACA2369F940E766A016A5D
              137B70117B6D3FA89E268F84278F840F786C1F887C2F988D3AA498238D811881
              75339C9141AA9F036C5F127B6F45AEA4107A6D41A99F228B80238C803DA59B23
              8C811C857948B2A7289085248E820C766946AFA549B2A848B1A71E877B3FA99E
              43ACA1167E73198277289286198276248D81056D614CB6AC299387147C71218A
              7F20897D0A7367167F733FA89D1A83781A8377359D920972663BA399036B5F38
              A196349D933CA59A258E822E978C4AB4A9066F62188074349D913BA4992E968C
              0770641B847837A195056F6237A0950A73662D968B45AEA3218B7E026B5E4AB3
              A91780740B74682992870871644DB5AB1F897C3BA49A0B746711796D28918642
              ABA139A297157E7101695C056E61228A7F329B900E776B006A5D00695C046D60
              1D867A44ADA348B0A63EA79D3AA3994CB5AB47B0A63DA69B3AA29840A99F4BB4
              AA50B8AE6BC2BA5EBDB4E0F2F19CD7D1A4D9D56AC1B94DB6AC62A3C56F000000
              0974524E530042BB9D08005AB758043941E8000000097048597300000EC40000
              0EC401952B0E1B000002F4494441545885EDD9E95752411400706DB17D3729D3
              168A165B282D098C2CD334A34C2D51CCD24040A304052D073524A1FDFECBDD3B
              6F617B9C9C1C3AD579F365EE9D33F37BEFCDBBF30EE75055F5475AF52691B679
              CB56835686AE01A1B6CDC896431BDA12E81F656C09F4F76FC6B60CFAABB12D85
              36B6E5D086B624DAC896451BD8D2E8525B1E5D624BA48B6D9974912D952EB4E5
              D205B6643ADF964DE7D9D2E99C2D9FD6ED0AD09A5D095AB1B75784E6768D04FA
              CBE7D2F6490E5DA699B4499BB4499BF4FF4567336B1FD379F96A26F5614506BD
              BC94648C2DBE7FA7E6E98579CC13F1398C67316231653C8AE18C10FD9620DEDE
              4428CFBC56D3C43466531884F9BC5010C349113AA0CB8CF94978A5A78B130093
              D88FF34BA668E8A508FD02178C3D1FF58D603FEC051822F3D9D3C119ECA30003
              046668620C837EAF009DA6C77C42AFAE0F83C7008FB0F360FE90CC65F0F66337
              44337BF5AD5927EDC3050FF803F760D40D701FBB2ECAC73158030863B78469E7
              3D75C7D64D77E082BB3CBA83512F403B76B779E1B8DDEE10805FAD8B5BF4146E
              11BA0D17F4F028EB72B99CCA5EB336A73E8197DF4D65DC012234DD646BDE5B05
              27ED391BBE715D1B70603A08D0825DB3101D2EA6E19A528DC9ABEAF9A4F2B303
              504DCE6D90862B9795B21E1BE5E900AFC24B74B5EC4669884C5CE476D305CAB2
              587EC1D079CCCF8110EDC12567A1A4D9E24CAB147E751B6DCB1931FA34D5038F
              5C586C81DC9D37D3A9E4DB4DE517B3F20324449FC225ED3C3A89D1089CB05AAD
              C7290D25304F5144E5D7D8C0D83110A3EBE934EA5B6387A3B411FC6693FAD7C8
              A1BCD656413A9454CA16D24D181C81550B76759867483BCCE7D815DA2648C302
              2EAA6D993E44A405ABAB8EF6D873B08B4ECE814E3E857FFDD8FC7E51DAD597FB
              3EFB30CF460BBFDF34440FC4F681280DEE29150A2A523AAC5DA9439BC247F68A
              D390F537CEB33DBBBB67B5817A8FA5B661D7CE1DFA0C5F1C5BA060D1EFFF5888
              FC6AC25FF03BC4A44DDAA44DDAA44DDAA4FF455AECCF6EC3565D8696DC7E027D
              B993F107422FE90000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-folder'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C5000000E7504C5445FFFFFF000000FEA200FE9F00FEA100FF9F00FE9D00FEA0
              00FEA000FE9F00FE9F00FFFF00FEA000FEA000FEA000FEA000FFAA00FEA000FE
              A000FEA000FE9F00FEA000FEC624FEBF1EFEB918FFBF00FEC422FEB517FEB516
              FEB614FEA907FEB816FEB919FEBC1AFEBD1BFEC01DFFC120FECA28FEC928FEC9
              27FECA28FEC829FECB26FEC928FECA28FFFF00FECB26FEC828FECA27FEC927FE
              CA27FEC928FECA28FEC928FECB27FEC928FECA28FEC928FEC82AFFCC33FECB29
              FFC927FEC928FFBD1CFEC726FFC726FFA606FFC826FFAC0BFFC321FFA908FFCA
              28FFC927FFC624FFBC1BFFAF0EFFA000049821EB0000003E74524E5300000A38
              4E542EADF7FD58007CFD895002DB3E819FA5FDE59104F756723EB1CDADDBD3DF
              CDA59D817E3C3AD9D7024E4A87877AFDFD762CADF7AB2A0A36546AE0414F0000
              00097048597300000EC400000EC401952B0E1B00000117494441545885EDD847
              56025114846110132298504C98080A6A9B15054445BD18F6BF1EEFEBE4A4A50F
              AFCB09A7FE797D0BA8548A311696769BC84C4E4594495BE5B3D333B3DF9165E7
              ECD9DC7C3E1AB5765DB6F0276AEB1A7661986AE72ABBB8349CB571955D8E516D
              5C655762D9D15D658BF1ECC8AEB2AB66F7F5F93190C40DD64AEB1BBFECFB5B72
              3268732B605FFB3855A4BFEDB12FCF4855E4A9ECB23DAC2A5232EC0E5A15292B
              BB8B67F794DDC7B307CA56F06C852CD9FF66AB78B6AA6C0DCFD6C892254B962C
              59B264C9921D33B68E67EBCA1EE2D923651B78B669EEB563B47A726ACE4007AC
              3E9E79D7E53996BD088ED6CB2B1C7A7D930B6FE1DBBB16066DDD3FF8F79A77DF
              B53B4E37714EA71D9E818C31BF1FF23489452028FD0B0000000049454E44AE42
              6082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005E0000005E08030000009D0C53
              5C00000300504C5445FFFFFF000000FEA200FE9F00FEA100FF9F00FE9D00FEA0
              00FEA000FE9F00FE9F00FFFF00FEA000FEA000FEA000FEA000FFAA00FEA000FE
              A000FEA000FE9F00FEA000FEC624FEBF1EFEB918FFBF00FEC422FEB517FEB516
              FEB614FEA907FEB816FEB919FEBC1AFEBD1BFEC01DFFC120FECA28F4C42DA18B
              4968655D6666665F5F5F61616160606054545461616160606060606060606060
              6060616161606060FEC928606060FEC927606060FEC829606060FEC928606060
              7F7F7FFECB26FECA27606060FECA27FEC928616161FECB27FEC928FECA285F5F
              5FFFCC33FECB29638DAFA58E4962717D64B4F463ACE66172806394BBE9BB3064
              AEEABF9F3F62717C628AAB6399C57B7258638FB3639DCC6391B5638CAD639BC7
              7971586290B5867A5462738164B1EEA1D1F995CBF966B5F6A1D2F982C3F86399
              C46BB8F7B8DCFBAAD6FA65B6F69FD1F964A8DE78BEF769B7F69DD0F988C6F861
              626263A5DB66B6F6ADD8FB8BC7F86AB8F767B7F684C4F8B1D9FAB6DCFA6DBAF7
              A9914662798BB4DAFA9CD0F99BCFF9A5D3FAB7DDFBB9DDFB7BC0F76398C273BB
              F7B2D9FAB6DCFB7DC1F861636498864E726C5B61666A63A9E06BB9F79ED1F9A7
              D4FA70BBF664B0EECCA83B64ADE879BFF7A0D1F9B9DEFBBBDEFBBADEFBA6D4FA
              80C2F865B5F664B2F0617687AF95459D894B616D7664AAE269B7F77EC1F88EC8
              F893CBF994CCF98FCAF881C2F86DB9F7627686847854F9C62A83785561676C63
              9CCA64A5DA626D77726C5AEEBF2FF2C12D79715964ACE664B0ED6388A76C685E
              E3B7327F755761636562819B64A3D564B5F663A8DE6288A6616669706B5BE4B8
              32F7C52B96844E616970627F96628EB06298C2639ECD639FCE639AC66390B462
              829B626E78847855EDBE2EC0A03E6C685D65645FAE9445FCC829F3C22DA58E48
              67655F62626097854EF1C12DB39743616161AA9147E7BA30E8BB30C0A03FA18B
              498A7C527A7258736D5B716C5B787059867A539E8A4BB99B41E1B632FEC929FF
              BD1CFEC726FFC726FFA606FFC826FFAC0BFFC321FFA908FFCA28FFC927FFC624
              FFBC1BFFAF0EFFA0008A20B3850000004A74524E5300000A384E542EADF7FD58
              007CFD895002DB3E819FA5FDE59104F756723EB1CDADDBD3DFCDA5A9D1F90A5C
              BBF908447297ADB9B7A99D91816A3C3AD9F3044E874C7AFDDD2CADF7640A36CB
              06D214000000097048597300000EC400000EC401952B0E1B0000041449444154
              6881EDD97B5C14551407706F545654626564A63D9062659105C96C1B0CDB6CD3
              A808AD502AB117F9086BADEC61F4F09D828549B1A5958F4A7B02A995958862C5
              12046A3E8AC2AD4D910AB4B21ACB3CE7EECECEEC839DDD7B673F1FEBB3BFBF66
              EF9CF3FDDCBD736718A04B9748FEB7213447451D7D8C9F4411AEB8F863BB1EF7
              AFDF1C7F023F1F7DE249FE716E9FF227778AF3FAC8770BA4F3F9C0C7740FCCF3
              F8C09FA2A2F3F8C09FAACAB3FBC09FA6CE33FBC0F7C0FE43FFFC7D50E4CEC1D3
              63CFE8E9CBFFF5273F2DE5CC5EDEFC1F07B4D345F1C0599EFCEFBF69A98BE2AF
              BD3DF8FDDAEAA218ABE4FB68AD8B626F057FB6F6FC390AFE5CEDF9F3147C9CF6
              7C5C848FF0473ADF577BBEAF828FD79E8F8FF0113EC21F99FCBE8EF65F7EFEA9
              6D6FEB9EDD3F3AB4E67FF8BECDAE48EBAE160D79C777DFDABDD2FCCDD71AF13B
              776CF7C631DBBED284DFBAC5E56D6E6AFCB2A1FE8B3A5BAD6BE0F3CFF8F94F37
              51AA66E3866A77D657ADA3839FB4F0F21F7F84CEBAB51F567BE4031BF5DF5FC3
              C7AF5E85CA7B95D53EA928C733EFBEC3C3EF7C1B8DB75C537FF38D952B5E7FED
              D5E5CE4FCB96E2B9253CFC2B28BCFC126A8B17BDF88295A6ECF9E7A85F4AFD85
              ECBC0377E4E667D15A506255E499A7716C7E319C2E3A9F999F07ED73E9BA3F35
              C7EA91D9B37074264EFF0256DE81F7EA5A74664CA7E8B4279F78BCA48C1E3EB6
              00C70BA12041C7C83F0ACDC5B834531F41F1E1871E4472CA03F4D3FDF7C1F164
              0B94F463E3F7E1536C238AF7A277CF24694F4EA5D7A1409A7E221BDF812B7B37
              2205B067264E90F7FCF2F156EBB8BBF0281F4AF4494C7C3B6E1BA777E71D2B6F
              57DE53936EBBD5B939C7CE85A2FE4CFC12E86CF2BD5D3D930745C94CFC18E8BC
              458DAF822203137F3374DEA4C6E742510A135F049DF56AFC68284A65E2F742E7
              28353E078A0630F13742E70D6AFCF55094E6E62F0C81DF039D756A3CFE5819E8
              E62F0A81DF0D9D36357E24140D72F31787C08F80CE5A153D1B1F3A46371F7349
              F0FC75F850581F98CF821221DDCD93C1214CBF157AAB02F3D7CA57D6F927EA4B
              83E777E13BC23581F406FC82194A3E7AC865C1F22DCD2A17F7EA4C2830A52B79
              422E1F7A4590FE55D06DA9E89C1F8E9337134F9E902B870D0E2ABD12A0BD7C59
              A74B63514E5EE6838E19A7B7B4D4BF5E5963977725134FD2A8BFC19FDE80AF21
              D2C39891D799D0289EE97B55EB2CF42D53E09ABDCBB7174EF69A7AA6F49A2FFB
              2C3CD12552C552983F56B2B3B3F214BF46E8A5ADC3C4139DC1E558F2AA721B73
              726D232DAE018380BA5EF2D97842324C763F31198951405DF25979A24B167C70
              33EE77A35E2FFBCC3C2149FD52F5B22DA465B86E26B3C2E7E0F12BF44F36A4A4
              A6A60C1C644C9747153E1FDF49643F2CBCEC8787977C214CBCD31792C2C5A32F
              248569EDA90F3A09F1FFEA91FC8772181B932C7F1125237C0000000049454E44
              AE426082}
          end>
      end
      item
        Name = 'icons8-opened-folder'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005B0000005B08030000002BE809
              AB00000195504C5445FFFFFF000000FEA200FE9F00FEA100FF9F00FE9D00FEA0
              00FEA000FE9F00FE9F00FFFF00FEA000FEA000FEA000FEA000FFAA00FEA000FE
              A000FEA000FE9F00FEA000FE9F00FEA000FEA000FE9E00FE9F00FEA300FE9F00
              FF9F00FE9F00FEA300FE9F00FFA000FE9100FFA100FEA100FEA000FEA000FEB9
              19FECA27FEC928FFC32DFEC928FEC927FECA2BFEC927FECA27FEC927FECB29FE
              CA27FEC62AFECA28FEC928FFCF2FFECA28FEC824FECA27FFD42AFECA27FECA28
              FFC928FEC828FFCC2AFFC928FECA27FEC927FFCA28FEC928FEC427FECA27FEC9
              27FECB27FECA27FECA28FEC928FECA27FEC826FECE24FEC927FECA28FEC928FE
              CA29FFC92AFEA000FEDA24FECA27FE9E00FEC927FEA000FEC825FEC928FECA28
              FEC824FEA000FEC927FE9E00FEC927FECA26FF9900FEA200FEAD0AFEB717FEBA
              18FEBD1CFEC625FFA707FFB312FFA807FFC321FFC624FEC928FFAB0BFFA404FF
              C725FFBE1DFFB716FFB00FFFC927FFA101FFC221FFBA19FFAC0BFFA202FFBD1C
              FFCA27FFA808FFCA28FFC01EFFA909FFB313FFB412FFAF0EFFA505FFA000B34A
              C2630000006A74524E5300000A384E542EADF7FD58007CFD895002DB3E819FA5
              F7DD9F44BF1CE728DB0E83F106446A8387BF6E5010F9A91CF34EF94AE7127EDD
              102C1CFB06D5A5784A1EF1C19366380CAF815426F7CB9D4214E7B78B5C309D06
              CF3C8FD92EA3D10E7ABB2CCD5C0A36608F89741AB457C2E60000000970485973
              00000EC400000EC401952B0E1B000001F4494441546881EDD9775313411CC6F1
              2C092044200886261D42E84847942E3D517A11A549AF4A17C902D17BDD5C2289
              197E9784B97DF60F98FBBE80CF64E6E6C95E31998C8C8C8C50317F31664BAC46
              66A6BF7B3B2EFE85A25942A2A06D7D99A42D8BE17E3B39AC2C84FBEC9448B400
              AEDAB6D4C8B66E5CB55F45A175E3AA9D16D5D689AB767A745B1FAEDAAF1F613F
              227B4666962CDB57768E3C5B79932BCF56F2F2E5D94A8144BBB0489EAD144BB4
              4B24DAA5126DC7B3B5FFFEF1DEEAABCC595E11C9BEB9E62255565587B56F8564
              5F35B5616CAF30CD79DD5B4DDB7305B0797D8396FD1B4173DEA8615F427E36E7
              4D1AF62F0CCD7933B51157D25F0BB52F50762BB5CF4174DB3B629F9D82EC767A
              2D3D209ABFA7F609CAFE40ED6394DD41ED2394DD49ED9F20BA8BFE57FD00D1BC
              9BDA8728BB87DAB0C5F7521BB6F83E6AA3167FF091D8B0C537D1F312B6F87E6A
              C3163F406DD8E207A90D5BFC10B5F741F4B08DD8B0C58FD07B36D8193F4A6DD8
              E29DD4862DDE45ED3D94ED26366CF19FE8BDFD2E88E69FA90D5BFC18B5618B1F
              A7366CF113017B12BEF8B6A9801D7C17065BFC74F0197006BEF8D9A06D9BBBB7
              7740F4C17CD06616F0E2BFFC7FE666CCF1CF069DF10B5F436DEBB724DCE217DD
              2CD4666C29DEAE6C23E4E5152B7B6033B6FA7D6D5DB08D4DD7160B49F05B8591
              91D153EB0EA9B50AF5C4B20CAD0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-filter'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000052000000520803000000F0F273
              A900000096504C5445FFFFFF000000FECB81FECB80FECB80FFCB7FFECB7FFECC
              80FECA7FFECC7FFECB80FECB7FFECB80FECD80FFBF7FFECB7FFECC7FFEDA91FF
              D47FFECC7FFECC7FFECC80FECB80FECB80FED08BFFD47FFECB80FFD287FECB80
              FECD7FFECB7FFECD81FECB80FECC80FECC80FECB7FFEC67FFECA7FFECC7FFECB
              80FECB80FECB80FECB80FFCC7FFECB80FECC81FECC7FFEC68DFECB7FFFCC8090
              B777020000003074524E530000407276409F9D4E4C8787626008D1CF060C7EB7
              C1CD7C0A06BD10DB24EB38F95A78A5123A7AB9EF68B71EE150850868841F4500
              0000097048597300000EC400000EC401952B0E1B00000175494441545885EDD7
              5957C2301086E17EE2BEE1026A594B4B4170A3FFFFCFD92A2890493293C41B4F
              E67E9E93397D6F9A247F30C041EB30D0B48E80863CAE02CE49439E8614ABEAAC
              26CFC3921735791996BCAAC9EB7648F1E6B6F93C77F79DEE4390E9761E9FBEBE
              783D692FC40B7B6963AD49F407FEE2A08F6D12C391AF381A6297C438F313B331
              F6494C563EE26A029544EE43E6A0C8A470178B84243D52FACE87209D535AE743
              918E296DF22149A7947EF2A14987947EF3D190F29472D848694A850228A430A5
              ED7CB424A682940653659D220529EDE66320513253CA4A6299269929EDE76324
              31E39033725547725252F231938C94D47C2CA43525221F1B694989CAC74A1A53
              22F3B1938694E87C18A43E253A1F0EA94B49930F87443A7F2666AEC987456241
              3D72615C8964242319C948463292918CE47F26972F81C9D737E3829CCCDE3F2C
              A2945C6AFF761C49EBCD529271B390E4DC2C2279370B48EECD7C927D339714DC
              CC234537B3C85274F3860C3E9FB101FC3DE515A8C80000000049454E44AE4260
              82}
          end>
      end
      item
        Name = 'icons8-paper-100-save'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000129504C5445FFFFFF00000091C8F88FC9F890C9F94390C54290C93498
              DB3793D32F93D73497DB3594DB308BC941A3F141A5F56FBAF641A4F441A4F442
              A4F441A5F43FA4F442A4F441A5F53FBFFF41A4F440A6F541A5F443A5F341A5F4
              42A5F542A4F43FA2F341A5F540A6F441A5F542A5F445A2FE40A3F341A5F441A4
              F441A5F545A7F653ADF658AFF65AB0F746A1DE6AB3E56AB4E553A8E1E3F1FAFC
              FEFF4DA5E0DAE1E4D1DADDFAFBFCF9FAFBE1E6E9D9E0E3CFD8DCFEFEFEF4F6F7
              F1F4F5F9FCFE5EADE3EDF6FCFFFFFF54A8E15CACE285C1EA71B7E642A5F580C3
              F84A9FD761A6D362A6D361A5D261A4D0519DCF3090CF3191D13497DA5DA5D4AF
              BEC570A1BF2C86C18DB3CB90A0A89DADB4A6BAC43294D5455A6471838C93B6CA
              B0BEC5ACBDC52980B93293D43498DB90CAF9065272770000002D74524E530000
              2A765A6A54F94040EB2AEB26327AC3B3997830DF6804D936F55AFD50F32CBF4A
              B3F70A425E78898FAFBFC7AF779726000000097048597300000EC400000EC401
              952B0E1B00000141494441545885EDD5C756C3301085E12804420FBD97D07BAF
              A185DE7B71C0A10DEFFF103816268E8F624BE368C161FE8D77DFE25A3A8A4428
              2BF65BB42C74512E15B0B1AFD0C5882596586289259658628925965862892596
              586F009F1F76EF6F9E5E01A05C0F0B152563B3A669661D365EA9858578951616
              AA6BB4B050AB8785FFC0BE70F6D96133866164ACEF5338161E6DF6C1731BEEEF
              42B2B737D7B9AE2E7FBA38B73A3B05175B57EF9438910A82B3D88663C588E5EC
              D161F10E38DBA8CEEEEFF9B4CBD9267536EDC7EE70B619C96E0BDACAB32D3876
              7343502ACFB2561C9B12B4EE62DB506CD0B6ACBD03C5AE095A75B1ACB30BC106
              6ECB58770F825D11B45CC0B2DE3EF51182B6CDD59FD4C23236303854F211EC86
              4746C7C62726A7A60392FE656AC91E301C2BB7AD0ABBB4E8C32EA059989F2BDA
              EC0C9E957874FE52DFCAFF7B74179CAAAD0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-checked'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C5000001C8504C5445FFFFFF000000CCE5CCC6E4CAC8E7C8C8E6C8C7E6C9C7E5
              C9C7E6C8C7E6CABFE9BFC7E6CAC7E5C9C7E5C8C7E5C8C6E6C9CCEECCC8E6C8C8
              E5C8C8E5C9C7E5C9C7E5C9C9E4C9C7E5C9C8E6C9C7E4C7C8E5C9C7E5C9C9E7C9
              C8E6C9C7E6C9C8E7C8CBEACBC8E6C8C7E6C9C8E5C9C7E5C8C8ECC8C8E6C8C7E5
              C8C8E6C9C9E4C9C8E5C8C6E5C9C7E5C8C7E6C8C9E5C9C6E5C9C7E6C7C7E6C8C5
              E4CAC7E6C8C4EBC4C7E6C9C6E5C9C6E2C6C7E5C9C9E9C9C8E6C9C8E6C8C7E7C7
              C8E6C8C6E4CAC8E7C8C8E5C8C8E6C8C8E7C8C8E5C8CFDFCFC8E5C8D0E7D0C9E5
              C9C8E6C8CAE4CAC8E3C8C7E5C7C7E6C9C8E5C8CCE5CCC8E5C9C7E5C9C8E4C8C8
              E6C9C9E6C9C7E5C9C7E6C8C5E7C5C8E5C8C8E6C8C9E7C9C8E5C9C9E6C9C7E5C8
              C7E4CACAE7CAC7E4C7C7E5C9C7E8C7C7E6C8C7E7C9B0DCB2ABD9ADC3E4C451B2
              55AAD9AC6EBE7152B156C4E4C5A9D9ABAAD8AB6FBE727AC37DB7DEB87FC683A9
              D8AB80C782A8D8AAC4E4C681C683B7DFB881C68451B155A8D7AA9ED49F6FBF72
              81C7845AB55D82C784C5E5C5C7E6C883C7854DB05184C8879DD3A0B6DEB86FBF
              7359B45D70BF73B5DEB7C5E5C671C07378C27B58B45C4CAF50B5DEB6ACDAAD54
              B35759B55CACDAAEB5DDB6C7E5C8C8E6C90A0B61AD0000006474524E5300001E
              446A7E8999A56A0C488BCBF5480E66C1FBBF6442ABF74EC9C74CD1D14218A968
              F3F10E32DDDB30465AFBF95A6C4AF530D90CA7641AF118A7A540CF4C4AC9C540
              A910620A46891C1C447C970ABFBD62CD3EA3EF16A3D72AFD68FD562C60A116C7
              60546D763D000000097048597300000EC400000EC401952B0E1B0000039A4944
              41545885B5D9F95F1241140070561411C43C384C2C14C43CC2D434CB23934AC9
              D43233EDBE33CDECBE4FB2EC6E4B8BF7EFB62C08B3BB33B333B3F87E6399F97E
              F80CB373BC67B36D5148A6612BB21797384A9DCE52474999BDC8BC8364CABADC
              E59E0AD04485A77C9BCB0A5B59555D03D8A8F1FA2A05597FA0166F66A236E0E7
              676DDBEB68662682F5A4DE04D6BEC31C4DC7CE1007DBD0C886A6C3D9C0CA8623
              EC2A40938F898D0678D0743446CDD9E65DBC2A404BAB19EBAE30578C1169A3B3
              EDBB45548058078DDD93125301526132DB2EAC2A6E3B89ED8C89ABCA3884F06C
              7397155559D9BA716CA5C0CCD2C6DE1E0C1BB0AA02F41AD9B07515609F9EEDDB
              5F08B6E9808EED2F840A30A065ED8551213588B236C6551B13FFFE6A3E0ED910
              F6A0B8BAB1FE47F36018610F89AABF3764795DF37B47F2ACF0C8A655BD1BCFB1
              872DA93AB77F933D423D0F98AB5AB7369A65AB04D55F722E7E22CF8F66D96ACB
              EA8FEFC817DE0CDB23B4D11055888DAAAC5B44FD465401C654B6DCA2FA55A742
              42653D05562198666DFC2703BA0A91347B8C5FFD425501C615F6B815F5334E85
              90C216175C8532852DE153D7CC55985058C2FCFAF451580587C24EE2D555F943
              D2447D4F506152619D0455C6B86C2A3809ACAACAF23B9DBBF696495559CC2064
              55597EA37151F535455507C1F897BD5ACDF5465D6655FDCB8C13ECE58B7CFFE7
              39F719B3AA4EB032E363D47D9AE45621ACB0B86DD7E86AD42774557D79B14BCD
              63C47D94E454A18FB8303E44DC07C9FB5C6A84B28CA3EE3D445D315533CBB8E4
              C07F89BA5C6A76D3216D9177312E8B9ADD225DA40D7DD9E0AEDC6150635399E3
              C7095203BDCBA4C2C9ECA9C6476CB1BCC4AFC27496AD241FED5077914DEDDA3C
              DA49941CCAED254E357F1095FC94569B2EAB0A83F9437E90E62E70A9C8215FAA
              A7354CBB8BB71855E8442F503B692D6F2EB0ABA734D7BD38B5ED0D663535A3BD
              9C62F75FFE38ADBBF33614E42A3D7B467FF127BF6A1C316D4C5314E08E3E87C9
              7E445BACAAF32E0C2B755B4C01359D9570AC14DA928495B5F4DA39341DA84B06
              9E17762F68B2B8FAD46587E038C42E4A34566AE3CA346F464497D437A6855B05
              E6D9FC25C98C95A2DCCBC380A166824DB9FB6679D0D9CB4681502098639E11A9
              2B573100A99C3138C4A67A66B0DDC9C597E16BE6E8881BDF995A2A8AF7D34B45
              BD71625793C2D6B497F07AC4BCD7450B5B6A8C8E25EA746F482498689BA2F762
              2A1A4AE3FEF044A27460A03431110E8D3374E0AA5A72C47F7A4F47747C0F8242
              0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-index'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F0000004E504C5445FFFFFF1664BF1564C00000001566BF2296F32096F22197
              F02095F22095F32196F32195F32095F21666BF1564C02195F22195F31F97F221
              95F22095F21564BF1565C01363BF1465BF2196F31565C012A10A6A0000001874
              524E530038760078426636A5879BEF7E50AB62995078BB60CD40891DF5AD0500
              0000097048597300000EC400000EC401952B0E1B0000009D494441545885EDD8
              391283400C44D16135ABC7AC36F7BF28844A9CB4C4945CEE7F80172131A5108C
              CB7251A1EBE2CA43741357D5488F6F5CF3416AC9FD1BD7F54843A2A9C039A540
              8E1CC48D4F919E4B3164F18534FDE6BE23E7869B17A4683F15EB26D2734A811C
              398833FE8C53FC7A8C5780EF7D47CE0D67FCE4C1A7C2F8B9A814C8918338DFB7
              8014870FDFFB8E9C1BCEF8D08B4FC5FE16E939D34E659C0357EB787E84000000
              0049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-play'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000002C0000002C0403000000ECAA47
              3200000018504C5445FFFFFF2195F32296F30000002096F22196F22196F32196
              F3C3875CB90000000774524E5300832C00D3FDABA6A820D20000000970485973
              00000EC400000EC401952B0E1B0000008449444154289195D3C90DC0200C4451
              22A510A4341029BDD00AED871D2F3F87F8F80E80F13804AEE37A7CDDE14CE085
              337865F0C6DE3B3B1F6C7DB2F1C5DA372B172C5DB270C5DB352F373CDDF270C7
              DD3D3707AE4E5C1C39A7F883F910BE921FC8ED70F3FC55FCB13C061E1A8F9803
              C1F1E1B0713439C81C7B5E125E295EC08F75E57A01F11C17B247D3BC7A000000
              0049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-rename'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C50000016E504C5445FFFFFF0000004848B63E51B33E51B43E50B43E50B44050
              B64254B33F4CB23F51B63F51B63F50B53F50B53F51B64455BB3F51B53F50B43E
              50B53E50B54545B93366CC3F51B53E51B43E51B53F50B63E50B43F51B53D51B2
              3C52B43F51B43F50B43F50B53F4DB83F50B53E51B43E51B43E51B53F51B33F50
              B53A4EB03F50B54150B42A55AA3D4DB13E51B33F50B43F50B43E51B43E50B53F
              52B23854A93F4FB43E50B43F4FB33D50B33E50B53E50B40000FF3E51B53E51B5
              3F5FBF3F51B53A4EB03F50B53F51B43E51B33E51B48FCAF890C9F94961BD4256
              B78FCAF83F51B33F51B43F55BF3E51B53E51B5334CB2007F7F3E50B53F50B43F
              51B53F51B54350AE3D4FB43E51B53F50B53F4FAF3D50B33E50B53F51B43D52B4
              3F51B53E50B43E50B53F53B53E51B33F51B53F50B43854B83E50B53E51B43F51
              B43F50B43E50B43E52B3424DB13E50B53F51B53D4FB43F51B43F50B43F50B43F
              55B43F4FB53E50B54358B84D66C090CAF93F51B43F51B521FC1F830000007574
              524E53000006766E66563E1A143854646C1C0EF5CB8B480A0481C3EF3CF39932
              2289E9AF2495FBF9EDC5FD0CDD3206204E85CFDD8F280830C5405EFD7E007A9F
              08F31ADBD5F1D578BBF3FBA5D5F10CA7C90A0293B5A9C7123ACFE110366ED33E
              EFF1E1345EE5D112B9876CFB9F2416E5AD6254A57418507268998D7C00000009
              7048597300000EC400000EC401952B0E1B0000019D494441545885EDD9E95B01
              4100C7714B4BE8A422254A628BD22D6ABB5452D1A1FB52E9BE6FF3DFB7B4596B
              A71EBB669F279EF9BEFCCD3C9FF73BAB50E04A2EA2B094AA0A52ADA9849E6975
              FAAA6A550D3714CED6824C75F5066343CEDCA8693299BF8F9A8B60D3595A5AD9
              D1DA66E3E66259267B3B33693B1CB91B0216749284D1C99F50B00074B9801CAC
              A0FFC4BA29CAF68769A6A86E296CBA1E8FB7B74F20FAFAD50383FC8BE2D84C43
              761E3A3C02B923812588513FA78E05603724B14430AB8EC32F48632768564D4D
              A264892996A57F3997C84EB3EC0C5A76B6DCD8D09CF8E65976017E1C62D8F0A7
              F83E58F61D7E1CC62C66318B59CC6216B398C52C66315B7EAC4C9F24327D4095
              3FBBC8B211A4EC5284655D1E846C6019FCB41245C6C65601D71AD495C02AD741
              6E1B7124ECE616E0B7ED153E2E89637776F74C40D87EF0402B95755387290899
              EDE8382185153C5DFAF307242FA29693531958A78EF0F890B36756664A9EA365
              1D17DF0FABB14B1A1D7B757D935D6F0D3412F6EEFE21C9DBA38F4FBE2258A5EA
              99D4EB5EA067F1C42BF996F7F30557627D0166D5ECE92F7507F9000000004945
              4E44AE426082}
          end>
      end
      item
        Name = 'icons8-find-and-replace'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000053000000530803000000D46CCB
              3200000255504C5445FFFFFF0000002195F22095F22195F22196F32095F32095
              F22197F31F96F42AAAFF2193F12096F32095F32298F52095F32197F32094F621
              95F32196F32194F32095F21A93F12196F22195F22196F22095F22195F32195F3
              2095F42096F32095F32096F32095F42095F21F95F200AAFF279CEB2196F31F8F
              EF2095F22296F22395F12195F22294F32195F32196F33F7FFF2196F22196F221
              95F32096F22097F32096F21999FF2195F32195F31F97F21E97F22096F42195F2
              00FFFF2195F22096F32195F52096F32195F22095F32491EC2095F21D93F52096
              F22096F42193F32095F22195F32096F32096F32394F02095F42096F22294F221
              96F22699F21F94F42296F32095F32095F32196F32299EE2096F22095F21E92EF
              2196F3219BF32094F22196F32295F22195F21F97F32096F31F95F21C8DFE2196
              F22196F32195F22096F32096F22196F32196F32294F32196F22096F22A94E921
              96F32095F22194F22195F12096F32096F12195F12196F22299F62295F12097F2
              2196F32197F02096F12196F22195F32096F22491F22094F22195F23399FF2195
              F32195F21E98F42197F32095F21F94F41F94F42396F52195F32095F32096F221
              95F22196F32095F32196F22196F22498F02196F31E93F42094F12195F22096F3
              2195F2007FFF1F99F22195F32195F22094F22095F32096F32096F32097F42195
              F22197F32196F21F97EF2096F31F96F31E96F02295F31F95F22095F21C97F51F
              95F2178BE72096F32395ED2096F22195F22196F22196F31F98F12394F31E96F0
              2196F22095F31F96F12196F22095F32296F32095F32297F22195F22196F32C59
              E86A000000C574524E530000A9BBB9AB977E5A3006266EAD34F1441E83D770E1
              123CB7FDA5D5DD5ED9C9AB467668020CED10BD783A7842B144047A64C7E356CB
              0AEDDF502A5CFD00F79D34F162870E951AD1462CF9AFDBEB2474FB3CE5141842
              C39B9F0ECDB520EF164E5A52CF40F3280868B16AC366C15458A1F90C9BFB544C
              AD264A911E6066F53674E12ED3143E91048B7A186CE9304832729DD5E597DDA9
              B722813236E79FD10228EF8F64EB95B52EA387F720CB702285508D1AA30AC51C
              F3A1B989382A10936C38CFF32CC53AF119B6F5000000097048597300000EC400
              000EC401952B0E1B000004B9494441545885B5D9FD43144518077057EA501250
              4CE82CCD7C832C41490F132E7CC917C41792102F21318BCAC0304B4AC3CC142D
              5F4ACB97DE5FAC8CCACAB2777BEFF6EFEA76F7F9CECCCECEDECE8ED7FCB4F3CC
              3C1FE6EE6677678651A3FE8F624597D14545D75D9F281E33B644A3B395D7BC61
              5C69997B516E53197F6DE6848A8939E446F77A12CCCA6B31AB6E4ABAC864B776
              3391B7E89061E6140C6CAA5BBD956AD3BCD6DBA6CB65C6CC6873D66C52B2D54E
              B5866AB77BAD095B2AE573743EFB1DE87EA7539B4B955AB5E927434D36D0E94E
              6DB2FF274AE42503661D2EE65142A953993FADA8A8FEAE247EA2445E5236172C
              4C61A00D4EFF4589BB85B12F56990152321B9BECB96936D07B9A9728BE15C95C
              1A20FDE632674E2EA7CABD2B56AA45BFB92A156816CDD54D6EAF296194D2B46B
              02A860B6D05DBDA62A9669B7A6A5666E56AE45A775EB6399DE74539AA379A70D
              F1CCB6FB42CC05BC4F710449661B4BD8D8AE34EF6F08FD28216679C72696D2A9
              3437B3F64424E99AB9A99E790039C93285B9B809CD5B66AA1DC974EF9EAE6E64
              D58BBF3D99ADEC377F309ACC9974436ECD22AF27608E656DDB34482BC1EEF14E
              E43D14309BD1D4AA435ACBD93D5E391B99DB2533F33066DA235A662FBF7C14E6
              6392F9381A9AB548B1D4E1959AE44F1CD7DC41F1ACDE307D6503C6F384CFACC6
              44EA8B4F5AD5F8DEB6F8CC7EFCA99D06A6F524250FEC12CDA728BA3B63623E8D
              113D239AAB28B8C984B4760D503A7BF4E4CC3A04E71999561FA5EF11CC410CFE
              5933F3394A5F2B985B61EE3533F76186E256C899CF536C487EAF6896FD18D304
              6EBE40A10366A4B51EE68BDCACA0D04143F3259887B87998423B0CCD617982E6
              CC23145A6868A614E6510A4D35345F567CF6572874CCD064F3FB38371B29D4D6
              9B3735B49C80D9C5CD0EC44E9A99AF52FAEE616EB2B9B0CCCC7C8DD24F21E03C
              974E53F07533F30D4A3F239A672938C9E8E63C878F293EEBACF388BE69628E43
              365BDD39E65B88569898583435B0459163A63752F86DADADB4BF2CC180D8D7E9
              BD8BF142D258CA07CA3BC81DE3376B117FF7BDB8E4FB58D97EC0EF18D74C632F
              6DCF670D99162D730F323FE4316F0DF6115AD65583ACEF510881D2C11684C212
              C6337B2FA0E96390B68E39EB00F23E11A2B4A62D465B761B915A6629D2929F06
              CD143BF1E8EEF2481D936F022E8A61EC11D89AC93E58E9921AE6672C67E47395
              C98E276CFB0BEFF423D264B7B46D7FE96B60E6A56EDB5FA2CCAF78D73EFFB4E6
              7BC3AFB3B1CC1EDE7DE89CBF49D8177F13C7BC3CC07B7E2BB509E6704D0CD3EA
              E7DB4D7937299E097C7745CFCC44A0BEB38BEF7FD0305B7E1C19CC8F8AA6372F
              F39AEDFB7ECAE2102F14154C3FC9CC9F2B76FEF2EBDEABCEA3ACEE94F763370D
              E645B92991304BD678D5DF9CCA446AA38186A0CC9449986554DDEC54B06FC140
              D528CC0009730655DD63CADFD188812A513283244CAC32CE3A953FD0C806AA42
              C92CB91A28F40EC5E6C95DF1F602B8B2DF0A47A3CEBD53C8F056E67F3A972317
              7D67740134CA9C83DE8BDC6AA7FD5769A3BC8594D128F3EFC43F4BDDCE17BC6A
              99EA08464235CEFCD3ED978EFF5BBB3D5F173FAAF77F84C822A043970B647274
              A8AA50E364688E2C9CE9A10E5940D3415DB290A6D55FEEEDBA0A695AB4808BFF
              2F2C8DF21F12F9165E5BCC2D920000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-sort-left'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000054504C5445FFFFFF0000001E96F01F95F22095F32096F22195F22096
              F22195F300AAFF2195F31C8DFE2196F31E96F02096F32395F62195F32394F320
              96F22294F22195F32196F22094F22096F22196F32096F21E97F22196F3DE8E80
              2C0000001B74524E5300002250C966FDD381029908B110C31CD52AE33CEFF74E
              7EAFD52A76CB4F10000000097048597300000EC400000EC401952B0E1B000001
              22494441545885CDD8090E82301040512A82282A6EB8CDFDEF69A2B8C4762A4C
              BF510EF012C3B77426CBBEFDB8BECF08E5F231C915E504E42A118E9BCE04E4EA
              B980DC622920D7AC04E4D61B01B9ED4E402E6F05E48A5240AE12E1B86BBC1877
              8B97E2BA7821EE1E2FC33DE245B867BC04B76F7DCDCEBDC69BCE1D4298957B8B
              3791AB8F8A66E2BC7893B8E6A46A06EEECC79BC085E2B573C178CD5C385E2BA7
              C46BE3D4784D9C1EAF858BC46BE062F10EE7A2F10EE6E2F10EE53EC4FB630EFE
              B1F4ABA043A133A6FF64F411401F50F8F1491FEEF4A787FE30D29F6DFA52415F
              79E80B991EF49F5C66E9AB363D08D0630A3D44D1231E3D80D2E3B183877747AF
              16E8C507BD96A19746F44A8B5EB8D1EB407A59E9E055AAA317BDF41ABAEF923C
              E5B90006EEA70B77F5B30D0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-sort-right'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000054504C5445FFFFFF1E96F00000002095F31F95F22096F22195F22096
              F22195F32195F300AAFF2196F31C8DFE2096F31E96F02195F32395F62096F223
              94F32195F32294F22196F22094F22096F22196F32096F21E97F22196F3B49BD1
              0F0000001B74524E53002200C950D3FD66819902B108C310D51CE32AEF3CF74E
              7EAFD52A1BAE0F5C000000097048597300000EC400000EC401952B0E1B000001
              1D494441545885CDD8076EC330104451D7B8C4716FF1DEFF9E8E2BDC2459E40B
              601EE00302BF963BD368FCF769B6DE3D6FE1DA1D8AEB7EF5282EA26F71311852
              5C7C8F282E7EC614179329C5C56C4E71B158525CAC2A84AE898B0AA1EBE22A84
              AE8F2B153A015726740AAE44E8245CB1D069B842A113714542A7E262B5A6B8D7
              42A7E3223616F742E82C5C6C1F85CEC33D099D898BDF29C5C56C4771F742E7E3
              EE8406B85BA105EE466883BB0A8D7017A115EE2C34C39D8476B8A3D01077105A
              E2FE84FE609CFD587B155614ABB1FDC9EC08A003CA8E4F3BDCEDD3631F46FB6C
              DBA5C2AE3C7621A3EBA25D66EDAA6D83808D293644D9886703A88DC734BCDB6A
              C1161FB696B1A591ADB46CE166EB405B56D22AD516BDB886C62579CED9036A71
              AC996D2F8F200000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-word-wrap'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F0000011D504C5445FFFFFF526C79546F7B546B7C556E79536D7A000000556A
              74556E78516C7752707854717F546D7A536E79536D7A526F7A555555536E7A53
              6D79536E79546D7A3F7F7F546E79556E77536D79536F78536D7A536F7B536E7A
              53707C546E7A5C7373536C79536D79536D7A536E79546E79526E7A536E7A536E
              7A547171546E79536E7A536E7A536D79576F77557F7F546E7A546D7A4E757553
              6D7B4F6F7F536E78536E79536D7A536E7A546E79556A7F546E79526E78546D79
              546D7A546D79526A7B546E7A546D7A546E7A536D7A546E79546D79536E79536E
              79536D7A59727F546C79546D7A546E7A546E79546D79536E7A536D79546D7B54
              6F7B536D7A536D7A516D7A536E7A536D7A546D7A546D7951687F526F7B516D76
              54717A546E7A0197D44D0000005E74524E530028542C78870018322E2212F3C9
              8D4602E581F17004C71EEB36F540F12AD70A3C5691DF9152D9FD08A7AB99FD20
              06C37A0C3A105E70DBEB720C624A3E9B141EF9D3AD89767EBD2EBB1466B5A95A
              DBE7F95A56DFE138FBA7B36C163E1C1A12B27407000000097048597300000EC4
              00000EC401952B0E1B000001A4494441545885EDD86757C230140660A4184044
              EBC4817B318A7B83E21EB870EFFCFF9F21A36923267891F793A7EFD7F43CA76D
              EEBDE9A9CF074E8B1F16A3C405382CAD1EE771548E01E3711EE7711EE771FF93
              0B86FE96705B44C5357192B5473B3A4D1C574E577704C971DED3DB87E438EF8F
              41393E3008E5F8D03094E3F11128C747C79A2BE3D0F8C4E494E44DB3E69B6C66
              D6E1E60C40CF26928E97828C80B4E0AC0C829B5F10DE226440852D9B8B62E65D
              4A6CC61284F38BA75D86702B825BC50CF7B8CDAD61B8759B0B60B80D9BDB6C84
              33B7340B09F1EEB61BE0CCA4A159C90A2E47E7CC24D7713B82DB2573254DC7E5
              F76C6D9FDC15654DC71D889B3BA472154DC31D3913CA2072554DCD1D3BDA0971
              DED99A8A3B3D73A77B8EC609AD963B370A1796AB5D32FD4976A5D0F8B5EA4A91
              9B208973B5BA5C31C7289CA4D5E3AC5B46E164AD0E57BC63242E784FE11E1E19
              8D6319C9D37056DAF960FC7D2B244FC93D3D4BF5432814D7FBC9C55F5EDFE452
              D4FDAC8C318557F87E4DF6FDA3B6E2494D263CDDBC6B90131E8AB33D1857F570
              5CC50372650FC9953C28C7329F140E9A2FD60E0373401A2C0F0000000049454E
              44AE426082}
          end>
      end
      item
        Name = 'icons8-error-100-stop'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000058000000580803000000464BC0
              0600000225504C5445FFFFFF000000FFBB00FFBF07FEC006FEC107FEC006FEC1
              07FEBC0BFEC007FEC006FFBF05FEC107FEC106FEC006FEB600FEC006F44A32F4
              4336F44336F44336F44336F44336F44336F44336F44336F44336F44336F44336
              F44336F44336F44336F44336F44336F44336F44336FEBD08FEC107FEC106FEC1
              08FFFF00FEC006F44336FEC600FEC107F44336FEC107FEC006FFC006F87323F4
              4336F44336F44336F44336F44336F44336F44336F44336F44336FBC1BCF99F99
              F7837AFAB0AAFCD0CDFEF5F4FAB3AEF87822F6602AFAB7B2FDE8E6FAB8B4F44B
              3FFEFAFAFDE9E8FCD9D6FBC4BFF55230FDE7E5D39E14634535D19D15FAB0ABF4
              4B3EFDE5E4C896185E4137C89518FCD8D6FAB2ADF4493DFDE3E1FBC4C06E4D32
              FEC007FAB1ACFAB4AFF4473AFDE2E0F8948DE9B00DFABAB5FAB6B0F44539FDE0
              DEF0B50BEEB40CFBBDB8FAB8B3F44437FDDEDC7D592D7B582EFBC0BCFAB9B4FD
              DDDAFFFFFF674834DDA612F9A49EF9A29CEDB30C89632A88622BEDB20CF97C20
              F44A33FB9317F44435F87224FDB30CF5BA0AA97C20F5B90AF44833F87423FDAB
              0FECB20CE8AF0EF44336F6622AF87A21FB9B15FEBB09E5AC0FE2AA10DBA511D9
              A312D8A212D5A013CF9B15CC9816C99617C69418BF8E1ABC8C1BB98A1CB3841E
              AF821FAD7F1FA97D20A27722A075239F75249D7324966D26926B279169278D66
              2986612B845F2C835E2C815D2D7A572E76542F755330704F326A4A346849335D
              4037674734B8881CB3851EFFC10713B54FC30000003B74524E5300000E4476F5
              726816F19B30FDBF5206DDEFDFBF8F4C0CF39B2CFB9F1CEF5C8BA320A7301E6A
              743E00BDC312AF93204E549158F734AF28649704ABD7628A5100000009704859
              7300000EC400000EC401952B0E1B0000042C494441545885EDD9557BD4401406
              6002C50A6DA1942E5074F142912AC55D8ABB167787C5AD6881C1DD290EC535BF
              8F4DCECC66E4CC24D90D777C37DD9C21EF93277C3B09A54993FFF9F7B102A469
              B3664D83FC392FC1E0ACE6B6DDBC45F4704BDB4DCBA8E156AD016EDD2A6238DB
              A6C98E166ED396C16DDB440AE7D8A9E44409E7DA5C72A383F3DAF170BBBCC8E0
              2C5B48565430AB1A4BE0CAF9C1D9B694A095F381BDAA85AD9C0F9C23BB812B67
              8673553768E58CB058B5709533C259981BB0722658AE5AA8CA9960A56A612A67
              80D5AAB104A99C0146AAC612A0727A98ABDA1FC86F6FE25F392DCC57EDD74F37
              3FBC897FE5B4305FB5EF007FE346BE95D3C142D5BE01FC951BF9564E070B55FB
              02F0677EE657390D2C56ED33C09FF8995FE534B058B58F00370A439FCAE1B0B4
              AB7D00F8BD3835570E85E55DED3DC0EFC4A9B972282CEF6A6F017E238D8D95C3
              6065577B03F06B696CAC1C062BBBDA2B805FCA7353E51058DDD55E00DC20CF4D
              95436075576B00F8B9B260A89C0A230FD067003F5557F4955360EC01FA14E027
              EA8ABE720A8C3D401F03FC1859D2564E86D107E823801F224BDACAC930FA007D
              08F0036C4D573909C61FA0F701BE87ADE92A27C1F803F41EC077D1454DE54418
              7D57B3ED3B00DFC657F1CA0930FEAE66DBB700BE89AFE2951360CDBB9A7D13E0
              1BC8D2F56B57AFB42784E47728E858A88375EF6AF665802F290B17EB2F102FB1
              4E9D7158FBAE76FE9C9BB3D2F8CCE93A22A64B515704D6BFABE1397592A8E9D6
              5D850DEF6A584E20AC931E32ACA99A2EF51A97909E22ACAB5AC8EB755220C0BA
              AAB9397EEED8D18623DCE014350E0BE221FAB33B076BABE6E4E001A76D070EA6
              0667E8DFDBE1C47ECEDD97D80B1F62BD3C585B35277BA0C7BB5383D3CC4D2476
              ED64EE8EE4D176F8184FC1C6AA6DFB49B3950E2ED6A5DC4462CB66C036B9471B
              E1A037838D55DBC0E00D74008D589F80AC5BEB1CADA147ABDDB54E143657AD76
              15B8AB6AE1F83AFD1EAFA4D68AE5842CA39F97D2BB5CE8C27E555BB2D871172F
              A287D7D85D65F2C205F34597908E2E6CAC9A93798D73E736CE614757892CCF96
              5D52E0C0C6AA21B94214597649070736560DC92CAEBB3339B7869BE727E13E21
              77359B1054AE11E649B86F485784C90CEA4E9F26C3FD3282A7A6AE78CA3409EE
              1F16E6EFF164EE1ECFE664E71E0F1818129EE49DBF49680527173BAD1834B836
              143C3175FA042A8E57E412F84A0F193A2C4486B3B3D9F7B8868C93E5D280BFA3
              17525806278FE57A26C96585E9C056DC3D798CD05F26C35E1F0FF8CB7F29BDE1
              8A470BDF8B719C4BCAD383E925BB327341A66E45D0FFAE90D32BC664CF75E451
              F02156992E6C55516B34E1B38CFEACB2D286AD11449F222B03B87AA4D61D599D
              096C5517E9AED775D38793F73986B0B12ABA9A016C5556286E45255BCC04B6AC
              F27819A796C5CBBDA5CCE0E4BE515A529C9F44F38B4B4AE57F83FC0FCD5FB0BB
              77A2B007A02B0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-checked-checkbox'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F000000DB504C5445FFFFFF0000008CC0488AC24A8BC3498BC24A94BF3F8AC3
              498BC2498AC2498CC2498CC2488AC34A8BC34B8BC2498BC34A8AC24A8BC34B8B
              C1498BC24989C44A8BB9458AC2498AC2497FCC4C8AC24AFFFF008BC34A8DC34B
              8CC4488AC34A8AC34A8BC2498AC3498AC44A8AC2488AC3498BC3498BC2498BC3
              4A8BC14A89C44B8DC6548AC3499CBD837BA55C6797437AA65C74A05389B06EA1
              C18A80A96279A359A2C18BEBF4E3C2D7B2598E3376A356C2D7B17AA45BE8F1DE
              E9F2DFECF5E479A45A558B2F9EBF8792B577F0F8E8F1F8E991C75492C7558BC3
              4B8BC34AEDA88DC90000002C74524E530000305C72760C7CE1E17A42E74060FB
              FB5E42F9400AE9E50A7A00DF2E5A7478875A302EDF78E5E33E3C088993760179
              000000097048597300000EC400000EC401952B0E1B000001BF494441545885ED
              D8DB5682501006600352332DCC4ACD4307ED9C5976B4AC4832F7FB3F51A0B0D9
              2830037B2E5C2BFE3B2EF8168BC30CEBCF6488B3E64451B5F544D154C5355C2E
              9BCB33896C14B222B75994C1EC144B1EB7B52DAB31A6975D6E874063ACB23BE7
              F6F62934C6AAB51997A3D118ABDBDC419E8A6BD89C42A531D6B438958E6B599C
              C68FA6BF8932E540DBE20EF9D1E42751261C384AB994FBC79C49CA99E36F42CE
              1C1B86E7C972B6267892DC5CF33C39CED5B827C5799AEBC970A2667C7D4A727E
              ED037B75265E4370A3F737B40673A3A1F1FA82D540CED28C002F4483B899B6EC
              856900E7688B5EA816CD3D0FF949A217AE0157F7640478111A74EF02BC280D7C
              B24B5EA406BF770B9E4F7B5CD4105F85CF0334CC372B7A0FD11A6AA2081EA0E1
              06549017A821E7DDB217AC61C7E700A7A1A7F100A5E187FBBDA0DD8569317645
              9F6BB7A3302DCEEAE9C35AAC4DD603B5788BB1076931F76C0FD0E2AEED9B686D
              057F66532EE5568B232E3E086B99638B3BA1E33A764396A7D2BAB3C2AD4EC59D
              CEEBC0331AEDBCE69495150AAD72E156A9655D5ED355AFE82D4917BDD54BB186
              AE151A3258B770E56BB5AD34D5F675A268AD8E509293E60F63EBCCB85D4C53DA
              0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-unchecked-checkbox'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000093504C5445FFFFFF0000001F96F42195F32196F32095F22A94E92096
              F22095F22196F22196F22294F32195F21F97F32295F12096F22095F22096F422
              96F32095F21F95F3178BE72095F22195F21999FF2195F200FFFF2195F32097F4
              2197F32095F42296F22095F32196F31F94F42195F32196F32195F22196F22096
              F22094F22196F21C8DFE2196F3E1F5FE2C9BF42E9CF42296F32196F331420650
              0000002C74524E530000305C72760C7CE1E17A42E74060FBFB5E42F9400AE9E5
              0A7A00DF2E5A7478875A302EDF78E5E33E3C0889937601790000000970485973
              00000EC400000EC401952B0E1B000000E6494441545885EDD8B90282400C4551
              6510144141544016177017C9FF7F9DC3368C2D9332AF4B739A74773241DEB49B
              C6F4D9A8E94CEB8D9E33CC39286C611932B7B455B07AB63370ABB5AA06E07A3D
              B741D000FC6DCBEDF6181A4010369C89A30144357750FAA9BCB8E6342C0D20E1
              1CC3E352CEE9E2AABEA3560920E3DC515CE567D44A019C88238E38E288238E38
              E288238E38E288238E38E2D438E4F0819865CE9CBBE071795DC8D09256D104B7
              088BBBB639F086A3DDC32E56FA189AFFE853AAE7AA6B2E1B42AFA31C7A83A79C
              A1432B56C10AEBF557B5F91296BD474D4F732992A3EE07D212DF4A2FF3974000
              00000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-sheets-of-paper-with-a-question-mark'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C50000014D504C5445FFFFFF00000090CAF990CAF888CCFF90CAF844A1F642A5
              F641A4F38FC9F890C9F990C9F990CCF644A5F642A5F45CB1F687C4F68DC8F889
              C5F6227CD51B78D384C2F668AEEC388BDC6EB2EE67AEEC63AAEA2C83D84292DF
              6DB2EE5CA5E82881D6358ADC77B9F13389DB6FB3EE4D9BE38FC9F970B3EF5FA8
              E84998E266ACEB7BBBF23F91DE2D84D84293E0378BDB8EC8F83488DB1C78D37E
              BDF31B77D33E90DE55A0E581C0F454A0E68DC7F8388DDC5EA6E98CC8F84494E0
              7CBCF358A3E72A82D7207CD588C4F64C9AE26CB1EE4B9AE2388BDB86C3F55DA6
              E98CC7F780BEF41D79D43B8EDD4797E2257FD655A0E6529FE52E85D98AC6F728
              80D783C1F58EC9F859A4E71F7AD41A77D24695E187C3F589C4F660A8E94092DF
              2A82D8207BD51976D21E7AD42780D63A8DDD58A2E780BFF491CBF995CDF992CB
              F942A5F5E1F5FEC2E5FCB2DCFB91CAF99BD0FA90CAF981F6179B0000000F7452
              4E530000AB9B0EC71E545AC55A541E3CAB674F9562000000097048597300000E
              C400000EC401952B0E1B000001C2494441545885EDD8E74FC24018C77150DC7B
              EF85B8070A8A7B8B22B805511975E01EFFFF4BEDD3A2B43D2ABDFE4C4CE8F755
              2F4FF249A0D76B529BED8FB3A72BC8B542875D951EFB9173456A17C36A5C00FB
              FEA67501ECEB8BD645B0CF5A17C26A5D0CAB71196C71899C0156ED32D8D22739
              23ACCA85B14A17C72A5C202BB9650E349BE142D91F17CB7EBB6036EDA259C92D
              87B3E422D8C70765F7189691C55AAC093675777B732D2413F1D8158EBDBC880A
              E9CE2361107B762A641667BA86D9936341D911843D94B083F87E284857D13D00
              1B4812B52BFEF41D3FB9DB00768BA44D69B1B12E2ED600EC2AB12BF26A99564B
              E6D9C505B179793547ACCF3CAB6C96D8149A9D11556F00CC7AA645768A3131C3
              BA27E93F8861D9F004A9E36E28EB1E233538CA1A72B361BA5D82778439E56687
              A5B361883DE56507A533379265CCC90E244875659B73B2FDA43A599BC00CEB22
              B62FEB9C93ED15557FF63927DB23B2DD7096DE115D70D697FA8A717C9B647F2B
              2F584F6787B31DCECE1F883BA10DCDB6D243D682669BA5F7029A6D6AD43DBFB8
              6FD94883100DD5C3D98F3A5FADCEF49FED5B8BB5588BCD47B6C6701572957AAC
              F1F43EB95BACC54A555573A7C742FB049418614BF515DAD90000000049454E44
              AE426082}
          end>
      end
      item
        Name = 'icons8-page'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A08030000000F76B1
              3000000087504C5445FFFFFF8EC8F790C9F990C9F89FBFFF00000090C9F98FCA
              F98FCBF971B0EB79B7EE4E94DA5A9DE06AABE773B2EB3E86D34D92D984C1F487
              C3F562A4E36DAEE92E79CC3F88D3569BDE64A7E57CBAF081BEF367A9E66EAFEA
              92CBF9A0D3FA99CFFA77B6ED7BBAF089C4F51565C02A77CA8EC9F870AFEA75B4
              ECE1F5FEBCE2FBBFE3FCA0D2FA90CAF95BA689550000000974524E530042BB9D
              08005AB758043941E8000000097048597300000EC400000EC401952B0E1B0000
              011A494441545885EDD9D90E82400C8561715754DC70C37DDFDEFFF91C348A42
              0974723019ED7FD3BBEFAA4C9A90CB7D252BCFA9502C11C5D0E52BAB0A656368
              D206D097181B409F4FB48DA08FB40DA1691B43933688A66C144DD8303A6AE3E8
              889D863EECC976213A6CA7A1B71BB275980ED950FAD3C6D21F36987EB7D1F49B
              0DA7031B4FBFEC0CE8A79D05FDB0AB99D077BB9C865E2DC99E1FFA621E6D9692
              D64B68A185368A9E7A9E375173EC253465D3FECB37527348BF8041DB3FA107AE
              EBF6D5ECB9090DD8B45E42EBD0662E9F99B47FE274D5ECD0A74ED08A4DEBF5C3
              74DB719C969A4D27A1369B3673F932A41BB66DD7D5ACD90935D8B45E3F4CCB89
              23278ED02CDACCE5339396134768A185FE0B9AF7B39BCC8AA1C1DD0087447490
              17C7A01F0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-brief'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A08030000000F76B1
              30000000D2504C5445FFFFFF8EC8F790C9F990C9F89FBFFF00000090C9F98FCA
              F98FCBF977B0E8649FDC67A1DE7ABAF278BAF18EC9F81B53A92F65B3285EAE81
              BAEF76B0E777B1E85D97D63972BE3E78C255A0E5509DE48CC8F83368B56A97D1
              5485C54695E14192DF8BC7F73C71BA81ACDD6594CF528CD02761B32E67B7378B
              DC3186DA8AC6F799C0E977A4D9207BD51976D289C5F65585C6BBDEFB92BBE66B
              B0ED68AEEC8DC8F8255BAD4779BF3A6EB8437DC60D47A1144FA76CA6E1538DD0
              5790D392CBF9A0D3FA99CFFAE1F5FEBCE2FBBFE3FCA0D2FA90CAF93A6DC7C700
              00000974524E530042BB9D08005AB758043941E8000000097048597300000EC4
              00000EC401952B0E1B00000139494441545885EDD9D952C24010856140C51D23
              2A8846D4B847852810771497F77F25ABA47406D27DD1F18C552DF33FC07775AA
              6FBA50F8938A254953D333440C5DFE10354BD9189AB401F43B6303E8B757DA46
              D003DA86D0B48DA1491B4453368A266C189DB57174C606D2E336921EB3A1F4A8
              8DA5476C306DDB68DAB2E1B4B1F1F48FED80FEB65DD0437BCE09FD659701F4CB
              73B63E8666F2B4A77F4D3F3D9A1EB0F4FD9DE9D6D343FA264DD39E45773B4CD7
              62FA2A4992B645B72E992E26843E8FE338B5E8B353A61331AD737CFAE8BC795A
              4E1F1F990EB1B4CEF139A60FA228DAB7E8BD5DA6A698D679AF1DD23B61186E5B
              F4568369534CEB1C9F23BA5E336D60E9BCFD5B7A7DCD54C5D23AC7A797D67954
              75D2AB4110AC5874659969494CEB1C9F237A71C1348FA5F3E6694F4F122D7B76
              9315191ADC2741457915334ACE370000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-internet'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005E0000005E08030000009D0C53
              5C00000300504C5445FFFFFF0000003FAAF441A6F341A5F542A4F442A4F542A4
              F441A4F542A5F542A4F441A5F541A5F440A5F540A3F33FA3F53F9FFF42A5F541
              A4F442A4F542A5F542A5F443A5F34C99FF3FAAFF43A5F341A4F542A4F441A4F4
              42A5F543A3F43FA3F541A5F542A4F442A4F541A7F640A5F641A5F542A4F341A5
              F442A4F442A5F53F9FEF41A4F441A5F446A9F043A4F641A4F542A4F541A6F644
              A5F842A5F543A5F641A4F542A4F441A5F442A5F441A3F542A4F442A5F540A6F5
              3FA2F738A9FE42A5F541A4F541A5F443A1F13CA5F042A5F442A4F542A5F545A2
              FE41A4F442A5F540A5F441A4F446A7F642A0F541A5F541A4F442A4F542A4F442
              A5F541A4F442A5F441A5F542A4F441A3F4BDDAF26279868DB6D747A8F5BBDFFB
              C0DDF5677F8D90B9D7BFE0FCBCDEFBC3E2FCC2E0F86F87959DC5E6BEDFFBC2E1
              FCC4E1FA768E9F455A645B7B90C5E3FCBDDFFB5BB1F6BFDFFBC0E0FB8DA9BC54
              6F80516C7B668CA68DC5F1AFD8FBC1E1FC42A7F57CC0F991CBF98DC8F990CAF9
              92CCF991CAF949A9F5ACD7FA8DC9F98CC8F985C5F986C4F944A6F572BCF773BD
              F775BDF7AAD6FB8EC9F87EC2F87EC1F890CAF874BDF75AB1F697CDF995CCF95B
              B0F6ADD8FAA7D4FAAED7FA87C5F944A5F59ED0FA9FD1FA5FB3F652ADF560B3F6
              42A6F567B7F758B0F6B5DCFB89C7F98EC8F893CBF977BEF745A6F55AB0F66AB8
              F75DB2F66AB7F788C7F9A5D3FAA6D5FA95CBF946A7F553ADF579BFF87AC0F8B6
              DBFBB6DCFB4CA9F671BBF7A4D3FA87C6F9A2D2FABBDDFB6FBBF850ACF661B4F7
              BADDFB70BAF76DB9F89ACFF986C5F999CEF9B9DEFB6FBAF84AA9F6B2D9FA4BAA
              F659B0F662B4F754ADF573BCF775BCF7A8D5FA55AEF68AC6F969B7F797CEF998
              CEF943A5F568B7F78AC7F966B5F7AFD9FAB0D9FAACD7FBADD7FA47A7F583C4F8
              B7DBFB5CB1F683C3F881C3F846A8F561B3F7B8DDFBB9DDFB63B4F766B6F7BADE
              FBB7DCFB88C6F950ABF680C2F8B1D9FAB1DAFA5EB2F653ACF5A6D4FA7FC2F84E
              ABF69ACEF9B4DBFABBDEFB9BCFF951ACF551ADF543A6F59DCFF9B3DAFA9DD0FA
              68B8F74DAAF642A5F5C84B8AEF0000005874524E530000184266768795A3A599
              897C6A421C0887C3EFF3C7440A0C5AB7F7F9B95E389FF3A13A3EBF40C3C53610
              99FD1256E9EB5624CF38ED48F5FB4EFB4C362408D1CF971210C5BDA30A5CBD46
              C71C1A687C8B979B937E816246C7D927DA000000097048597300000EC400000E
              C401952B0E1B000007E3494441546881B599794054451CC7DB2812BCD050B140
              F34C434811AF343AD4B24CD332D354281385EDA92D6B50B999475AA65876686A
              800A98478A8696461E6128A628A964A2100A7288C821CF23D0D7FCE65D33EFD8
              B7E0F2FB839DF9EE6F3E3BCCFBCDEFCD71CF3D0D6C2663BBD7E5BEFB5D1F68E4
              E6DEB849D366CD1D68209A21DEC3A545CB0739CA3C5BB9B66EE30CBC57DB871E
              E634CDDBA79DD75DE2DB3FD2419BCD5B878E9DEE02DFB90B4DBB23FD91AD4BD7
              7AE2DB3F4A836ED7D6C047CD7FB769BD5BF77AE01FF3EDC1B7BE75137FDCB8CE
              B2D550A866D96B37B074F316EFD1C3D7AFAE78FFC7F9A6559515E5F079B58C95
              F1EC95AB502AAF28ADE2BD7AF6AA13DEC39D6F76B9A4B8A8100A970A5812CFE6
              5F8462615171C965DED3DDC3717C406FDCE4421E82FE0BA5DC1C96C6B339B950
              3ECFB2C579E7B073EF0047F181FC1C2ACC4698B3172058FE619578F60C44D005
              70C9FE1BBBF709740CDFB71FEE7A16A69C46C5532759359EFDEB14AA64E2E209
              E803D7AFAF23F85EFDC1F778066E780DCAC7582D3C7B146AD77031E34F28F7F7
              37C60F78023C8FD4F08874543E7C481B7F280DD5D2F972CD11F8CA7BA0117E10
              1E993F0EF2AD52A152C26AE3D9DFA17A802FE7EFC7E333C83EFEC99EE0B56FAF
              00F80D55520EEAE1F353E0FF142A7B7FC513401D3F043EE829F0D9BF4768B21B
              6ABFB07A78BEFB3F8B7CDCFFA755F14FE07DC1E36281D87C17AAED4CD6C7FFB4
              13D58F8AB5023CD59ED1C7F7C23123B5CF8767B783D5C7B3DB513D4DEA4D7512
              7CAFCC0F12FE5918F86D1552E3ADE09D610FFF23085BA5EA966D30FC8375F038
              D16C961B6F42D58D044C8D673722E107B9BA59637844FC20C8C0A736C89608F9
              80A86F8059C0A5930A648644A20E33B947774D7C2BCE4936440BDFCC59748E73
              D1C00F751E7EA81A1F087A42BC6C2740C88B276D3D48EB29290FA47584900042
              A00AFF1C52D3D6124101F9E6162968450EBB16DEB7A9A40093A5A312EF05A96C
              3BD9B0140971144A0BCFC621A9921460AA75785E816F077DCD26DD623922D3EB
              E321EB9F2685EC18A40C53E05F40DAF754BB3548C932C6AF435212A5AC468A0F
              8D6FE3CD91891D59010CEA2A63FC77485A994F2A2B90E21D44E15F4452CCB7A4
              5305A06A8CF165A07D432A5FC3D46D4DE15D91F215D56C395276D2244D3C7B18
              695F52CA17486941E121212CA37C604C3738824F573DA36548194EE161991D4D
              F92C5546841E1E56714B28E573A47892F897A0DD62CA07DE549F3982FF14698B
              282503DC46107817544FA45BC52AA78B1E7E09D26E534AD1428E486B08DF14D5
              CBE956F0E2FCC411FC024E5E2E08064BF69104BE09AAAFA65D60893ADF11FC7C
              A4E5D2124CAC9709FC2854CFACA1EC3892E6D152CD5CC0CF5588F338EEE35C5A
              CA446E8D09FC68A30C6EC732E77C64B3C5CF8E53C8A309BC5BBDE1E766DB78FB
              B092FEC2CD19F89536D9D6E9E2EB3D381F1078DBBCF7896F5E71C6A38D8A8A8A
              7C6F9635C2F22E2A45CD14545820BD4AE0C770AAC09CC1391098D31986897CC7
              8C2C3C0C159969BC0C0BEBD7EC4F2B705961849F8A90A1666C53DE06FEE4B740
              86BDCA58020F6B1C4552804C556A847F13114378BC397812E64F64D93D1390DB
              EB04BE39B4AB474A03FC1B02DE3C7E1CE64F6717835B0081D749C89975C29B23
              047E3CF2F20C22F1C3919240A14A9032C351BC759C55E633D0B4A5EA6548C360
              715FE5309E09C37C6B28E00F6C22520EC643C28F3943A22A94281DFC341ECF30
              11227FAA6DCE55F9C9627C102C444E90A81C78DF1B2D44103E59C433E3F10308
              65B26DB6E823F44204AF8FE997C20DF5BCD2C2474A782618F3436A21419868FC
              30887C6A740A554F5B13BF45C6335330DF82E86D15782F08CDA5240B2233D718
              9F4AE09970CC9F658BF653E04D1D397A0F8BD7510B738CF0D3E69078911F6D52
              E2F1F6613BB10F80E8E5CEDBDF3E645C596CA3F08C05F3AD2A7CBD363F956898
              69BCC0379B95F8FA6CDD34F02ABEB8F1ECE61CBC98A1CD0A3CDE36AF546C9BAB
              EC6E9BB3966BE09971145FDAF4E3F310226FC23AF0A2FDC8A9D5C2D37C09EF07
              47166972DA87C41A73D61EBE586B70806F95F9F2818B3F348F9362BD18DE3AA5
              F6F0BB75F04202C57CE57151AC78D4C5EE83C12FD0C7272FD0C30B0914F804DE
              031FBF1E2D129AAF82DA7C7D7C16444E88365E48A066EAA82E001FD51D13F9B0
              5C48DAA387CF2F47F803A13A7821819A350E1A7709E3934A775F812F81B82FD3
              C50BCF973E261D082F16EE120F298A43E53BD5DAF8EA3B087F9251E2432CE153
              82ADD2FB5D8137F9F387BC7C7C9E847282367E11CCDA1A15DE62A64DFB887A02
              3F2670441D735D0B5F8BDE9695B50C85C72B0503BCA97D1F9C504E4B07EC5565
              6A3C3E602F9D48E2C3ACC1F0114ED1F5AF0726D8B91E48C6D71BA8F393A5C09C
              84061CBA4FA71C872E3762F3697CF1252816CE6422978BD30A074AB81491124B
              FB6AA627FF0355951570F2C2ADA6AE660EE1F3DC3519BBE58C29F419F0A19AF9
              9EB6C18A8BA59BB532BE36054B498972BE1793BC05F85663BCC9D47D08FDEE10
              AFC556C9D7623B44BCB80AE79F82C560EC05EBAA75A9974208FB6DD1B659741C
              AABA6FEF4AB293FD2BC9429B9F898841F813A1ECBEC185EA301F9D0B554FB701
              B09294E97C31549A5A8EE09105B5766DE5A940FB8CE92ADC33C874BE4C4C2DC7
              F0D846B88C6CD2D8B7919BFBA831633B8F20BF2126112EC953AB0E783B260F04
              862AA6D65DE315BF64A647C7E9784B18B95273269E08D386C79B9C8E3729E00D
              859704E7E24D341CE31BD4FE070F583F185DC042F30000000049454E44AE4260
              82}
          end>
      end
      item
        Name = 'icons8-database-100-yellow'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004A0000004A08030000002B0E32
              430000003F504C5445FFFFFF000000E8D6C6E9D7C5E8D8C3E5D0CCE8D6C3E9D7
              C3E9D6C3E9D7C3E6D2C5E5D9C3E8D6C4E8D7C3E8D6C4E8D6C4E9D7C3E7D5C5E9
              D7C4E8D6C3E9D7C4693EFBA90000001374524E5300002C60660AABA9A5A31E1E
              4E5AA1A9A72C60E6BDEBCE000000097048597300000EC400000EC401952B0E1B
              0000008E494441545885EDD5CB1240300C85E10675ABA2E4FD9F95856255334D
              CC1873CE037CBBE437467544549455F6CA620722656B16ADB127D5CA24E62E52
              FD2AA55677508354621E0ECACB290F0A14A87C4AF19C9DDE9391BFBEF17AC893
              4C9AAF874C1496FC4C2CE19609857D9D4252D343524181FA1F85A43E0D49CDA4
              90D4F4905450A0FE4721A94F7B25A94ADB00B8D840B6F69EA900000000004945
              4E44AE426082}
          end>
      end
      item
        Name = 'icons8-grid-2'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F0000006F504C5445FFFFFF0000008ECAF791CAF991CAF88FC9F88FCAF88FCB
              F790CAF88FCAF88FC9F98FC9F88FC7F792C8F790CAF990C9F890CAF88FCAF88F
              CAF990C9F890C9F88DCBF98FCAF990C9F991C8FA8FCAF98FC8F994CDF690C9F8
              8FC9FA90CAF98FCAF98FC9F891CAFA90CAF98FC9F890CAF92BAF4CE900000023
              74524E530000225C74767440C7C785C520205C72F7CDD578D32C87DB32565E1E
              C53E8583C33E8907A96B0A000000097048597300000EC400000EC401952B0E1B
              000000E7494441545885EDD8B11282301045D1008660144404115150D9FFFF46
              0949B02185640B9DD95BA5D83943A1CD630CB9602A8C367C7571146AC5702201
              CFB662E6981C7C35804132C3497F4C25352710BE4D358889DBE1680089E2F658
              1A403A72191E178DDCC1BCF3A3A3C25E17AE8BDC1CF0913B99771938AA2C57B9
              2E4A7370268E38E288238E38E296B9FAE2A8B15CE3BAA81738848823EE6B0EF9
              67FCDBFF59E288238E38E288FB4F2E366FA4D1E80A68A9492BC4E35A35077ACF
              A8B61BEE5879D7536A87C3F576E8ED3086DE9E7D6668EF39F5F154CE3C92A719
              7FAD8E67AD5656EEF4CEDE687EBCE23307C5C80000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-database-symbol'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000058000000580803000000464BC0
              06000001BF504C5445FFFFFF000000D1C6E8D2C5E9D2C3E8CCCCE5D0C3E8D1C3
              E9D0C3E9D1C3E9CDC5E6D4C3E5D1C4E8D1C3E8D1C4E8D1C4E8D1C3E9D0C5E7D1
              C4E98AB198439E483FBF3F429F4642A046429F4648914889B29651A359439F46
              43A14738A95441A04842A04743A046429E45439F46439F47429F473F9F3F00FF
              00439F4742A046489D48CFC3E660A66643A04645A24542A046449944439F4642
              9F473F9F4A439F46429F46469E46439F46429F477F7F7F429E4741A046439F46
              42A04743A047439F46439F4742A047429F46429F4742A047439F4659A560429F
              4745A24542A048439F4655AA5542A04744A14843A045429F464C994C429F4744
              A148439F4742A047439F4742A04642A047429E4641A04548A34843A047439F46
              43A04643A04743A04647A34742A04743A04644A14442A04741A045429F4643A0
              4643A046429F47439F4643A0466FB672C0DFC2439F474AA250D0C4E76CB46FAE
              D6B0B4BCC89BB6AC75AD8076AD817DAF8A8CB29BBDDDBEBFC0D4B5BDC963A86D
              A8BABA6CAA7685C288FFFFFF4AA14FBCBFD259AB5D82C0849EB7AF86B09343A0
              4755A55B80B08DB4BDC885B1947CAE8873AC7E77AD827DAF898DB39CA2B8B3BE
              BFD3D0C3E8D1C4E9740572FE0000006C74524E5300002C60660AABA9A5A31E1E
              4E5AA1A9A72C60C53404F1AD500693DDE5720822B7DF4C5AF39908008BCB1466
              C5D916D30EAF68189BF91C85E1023274A7CFE9F7FBEDD9B38748CFF50A50A306
              E53E70C30ADF3C9FDDC9F5DB44460EAFDD68EF9F189BC31EA53E72A7CDE9EFB5
              74F04C84000000097048597300000EC400000EC401952B0E1B0000022F494441
              545885EDD6575BD4401406E03D54A583828A8A5411A4292E65151605A44A2F4A
              53ACA0808260175084A12A253F587CCCB2C326D93DE78C7B21E4BBCBCCE4BD4A
              CE7C0E47F0020021A161EC848680317FE1F0084D2991E116F0093557D34E9AC3
              517BAAF05EB4291CA3EA6A5A8C291CAB0EC7DAB00DDBF0D187833684A2833536
              D5077D9CAFEBB99AE2D5DC04ABAB092031897F9926251A582FFCCFF3FFC27661
              B10B8B0DDBB00D1F65F8381596DD9DED5F3FB736374E9D4E36857985657D6D55
              1C24E5CCD9734698535852CF0B9F5CB8986684A9B994EECBFE4946A62A9C956D
              E6EE27E7B20A9C7BC582DD4F5EFE61985258AE1658BB4214164930ADB0ACF873
              85282EF1C2A4EF7859567EE85992D6AEE502A7B07CFF26C38B7A16E4C5EBC099
              15F322209C52CA986E5F456058DC60C05F30B0B38C0C7F1618589493E1351C5C
              5149855771B07011E14F0209DF24C23BFA7B0B8B16F9A81FB845843F60E12A22
              FC1E0B5713E17758D84D84E7B0700D11DEC4C2B7894368050BDF211696592C5C
              4B1CF46FF5F7963C03DE03CEE8CFD3FA813A626179F31AF9E7D5530BCB5D1CDC
              D048BDFE9B707033B957B4B4A2E07BF4C2D28681DB194DA8A333303CD5C5A958
              9981E16E6075B71CD998D43321ADF594F0E0B45EE1377D2EE0C190DFEFCF75DE
              072E0CA555D66EF603E0C3303068E50EB9400506181E3163A71E0E780E706178
              34EA34B88FBBBCFB6C18E0497985AC363C7D26EF2AC00095AEE72FC6C6DD352F
              0B5FD5D5771CDE73042FBF017B4B9ABC8762273D0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-chevron-down'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000120504C5445FFFFFFFFBF00000000FEC106FEC107FEC107FEC007FEC0
              07FFAA00FEC106FEC20CFEC106FEC008FEC007FEC206FFFF00FEC007FFBB00FE
              C107FFBF05FEC107FEC107FEC006FFCC00FEC107FEC006FEC007FFC006FEC007
              FFCC00FEC106FEC108FEC006FEC107FFFF00FEC006FEC008FEC007FEC800FEC0
              07FFC107FEC600FEC107FEC106FEC006FEBC09FEC10AFEC106FEC006FEC007FF
              BF06FEC007FEC006FEBF09FFBF00FEC007FEC106FEC006FFC107FEC106FEC007
              FEC106FEC107FEC007FEC106FEC107FEC107FEBF04FEC006FEBB0DFEC006FEC1
              06FEC107FFC007FFBF00FEC106FEC006FFBF00FEC007FEC006FEC107FFBF07FE
              B600FEC006FEC105FEC107FEBF05FEC007FEC107FEC106FEC107FEC208FEC106
              FEC409FEC007FFC1073A0A36700000005E74524E530004009346A5FD8302BB14
              E53CFB7000AF0EDB30F7629F0AD324F1548F04C71CEB8102B938AD0EF76008CF
              52A31A18C37EF328D5E3380CA7706EABBF874EEFD1A166F934E1124AED20CD08
              9BDD10B37AFD4406935AF52CD9AD74FB3EE71AE2A2E5CD000000097048597300
              000EC400000EC401952B0E1B0000029E494441545885EDD85753C240140560B9
              624410514110044550EC62EFBDF7DE0BF7FFFF0B9311CC26D9DDBB09199F729E
              F77CEA0C9E6C686909122448907F48087C4F48675BC37EABE1569D6DD3DA237E
              A29176ADCD60113BA2FEA9D10EC43A8BB14EBFD4CE189A2CC6BB127EA089AE38
              B22C62774FF36A4FF7AFC5B0D89B6C564DF6A293C5545F736A5F0A792C623AE3
              1DCDA44DC7C6627FD6AB9AED47318BB9016FEA400E652C62BEE01E2DE4AD0687
              C5C121B7EAD020D22C165D6E4FB86817B82C6AC32575B434AC39003E8B5856DE
              9E68995317B1181B51534762BCB69055DB9EFAB2B86011472B945A191554652C
              B93D7FCBE28EC5B171993A3E262CCA597D7B2644E8445A52A3589C146C4F7652
              D62259CC4DF1D4A99CB444B358736E4F215F93770C765A7E44DF9E19AB3A635F
              1647A67576B64A9DB26E8F7359ECA9CEEA2C84A8BF09B5B952032DCD3997C59A
              5A3E0406AB6FFB3CF50B34B687BB2C96CC1BCF975F161616A9D34BCBC6B9E525
              EADCE202982CACAC52E7E36B006BFC6561B2BA022C0BB04E563636C81FBD5EC7
              4C56309D6E628E34C34274B33975D37CA4B02C44B6A84F9A24B52DE6F26D6101
              B677BCAA3BDBAC636321BBEB4DDDB52E9D9D85CC9E1775CF762774B000FB076E
              D1837DBBC161E1F0C89D7A74E820782C1C93FFF86CCAC74E81CB722F4082F02F
              567C16E0E4544D3D3DE1D6452C9C9DABA8E767FCB690858B4B5ABDBC1094C5AC
              7EBF48C9D194F876226321792553AF247729290BD73762F5E65A5294B390B8BD
              E3A377B7D27B2AC102DC731FDFC57B798B649DAF31A8F03244B3F0F068571F1F
              A88E020BF0F4CCA2CF4F744389859757537D7D5128A8B150796BA86FE41B850B
              1612EF1F06FAF1AEF6DD8B2A0BF0F985F8F5A978589D85EF6AF55BF5AC0B1642
              EA5F1BFAF43D659020418248F303CDC02E42099A4D2E0000000049454E44AE42
              6082}
          end>
      end
      item
        Name = 'icons8-sort-up'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F0000004B504C5445FFFFFF0000002096F11F98F12195F22193F32095F32491
              F52096F22299EE2096F21999FF2096F300AAFF2195F32095F32096F22196F221
              95F22395F12195F32195F32095F32096F22196F39D8186F40000001874524E53
              00004E38F52CF11CE30ED30AC502B1977E68FD3AC781C3CD755820F300000009
              7048597300000EC400000EC401952B0E1B00000144494441545885ED97CB72C2
              301004896D3060403660B2FFFFA571E297D068372B4BA9CA417D9EEA5B1F66B7
              CB643299CC7FE0434351A8664A5D5955653ADDFE4074D8A7D2D5471A38D66974
              A733FD703EA5D035179AB834F1BAEB8D166ED7689D210B13AB6BE98D364ED791
              4317A32BEEAEEE2EE621EBCACAB511897988BAEF1810290F4937C680087908BA
              390684CF83D7AD31206C1EACCE8E01E1F2607546B2B17970BA56B67179303A88
              01F1E6E1D7610C88370FAFEEE18901A91E3A9D3F06C4938747C7C580601EA8E3
              6340200FD0354FBD8DE8D9C83A3906C4C9C3D5FD120362245D1F6A23EA799D22
              06A4E3749A18103B0F5BA78B01B1F2B074DA1890358F55A78F0159F258742131
              20731EB32E2C0664CA63D285C6808C794CBAE01810B3EA36C480F4B36E530C48
              37EAB6C5800C790CBAFAF5998857FD675F2A93C96432217C01D46D98C57085DE
              820000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-caret-arrowhead-facing-down'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F0000004E504C5445FFFFFF2395F62095F32096F20000002096F12195F22196
              F22195F32095F300AAFF2195F31999FF2195F32299EE2096F22491F52096F221
              93F32095F32395F12195F22096F22096F31F98F12196F31A3A54F00000001974
              524E53001CC3CD004EFD68819702B10AC70ED31CE32CF13AF57EC5381934870C
              000000097048597300000EC400000EC401952B0E1B00000137494441545885ED
              D3491682500C44519B4240B141C566FF1B15FB0F2421F9708E0E52F3BAB33799
              F87C3E9FEF1F369DCD47DA6C5A734816D751B64870E7908EC3A57872C8C6D032
              BC39E4C3B51C5F6EB91AAAAD960187623D4C5B1708396CB643B4ED064D0EBB32
              5E2B776873D81F62B5C31E5D0EC72A4EAB8EA0B8C83CEA18682E2E8F141C1793
              47069EB3E79143E2AC793C636039631EAF1878CE94C73B068133E4F18941E2D4
              797C631039651E410C32A7CA238CA187D3E491523F86C3A94F3B91378EEBCB23
              A75F2C27E7D18AA19F4371E6B573C19C784EC8A313838663F3E8C6A0E2983C88
              18741C2E441ED54538C81C9107198396EBE641C6A0E6DA79D031E8B9661E4C0C
              062ECC838BC1C00579B03158B84F1E7C0C26EE958710838D7BE421C560E4EA3C
              C418AC1C12318690F3F97C3EDFEF7703FFC2AC411A8DED430000000049454E44
              AE426082}
          end>
      end
      item
        Name = 'icons8-sort-left-other'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000054504C5445FFFFFF0000001E96F01F95F22095F32096F22195F22096
              F22195F300AAFF2195F31C8DFE2196F31E96F02096F32395F62195F32394F320
              96F22294F22195F32196F22094F22096F22196F32096F21E97F22196F3DE8E80
              2C0000001B74524E5300002250C966FDD381029908B110C31CD52AE33CEFF74E
              7EAFD52A76CB4F10000000097048597300000EC400000EC401952B0E1B000001
              22494441545885CDD8090E82301040512A82282A6EB8CDFDEF69A2B8C4762A4C
              BF510EF012C3B77426CBBEFDB8BECF08E5F231C915E504E42A118E9BCE04E4EA
              B980DC622920D7AC04E4D61B01B9ED4E402E6F05E48A5240AE12E1B86BBC1877
              8B97E2BA7821EE1E2FC33DE245B867BC04B76F7DCDCEBDC69BCE1D4298957B8B
              3791AB8F8A66E2BC7893B8E6A46A06EEECC79BC085E2B573C178CD5C385E2BA7
              C46BE3D4784D9C1EAF858BC46BE062F10EE7A2F10EE6E2F10EE53EC4FB630EFE
              B1F4ABA043A133A6FF64F411401F50F8F1491FEEF4A787FE30D29F6DFA52415F
              79E80B991EF49F5C66E9AB363D08D0630A3D44D1231E3D80D2E3B183877747AF
              16E8C507BD96A19746F44A8B5EB8D1EB407A59E9E055AAA317BDF41ABAEF923C
              E5B90006EEA70B77F5B30D0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-sort-right-other'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000054504C5445FFFFFF1E96F00000002095F31F95F22096F22195F22096
              F22195F32195F300AAFF2196F31C8DFE2096F31E96F02195F32395F62096F223
              94F32195F32294F22196F22094F22096F22196F32096F21E97F22196F3B49BD1
              0F0000001B74524E53002200C950D3FD66819902B108C310D51CE32AEF3CF74E
              7EAFD52A1BAE0F5C000000097048597300000EC400000EC401952B0E1B000001
              1D494441545885CDD8076EC330104451D7B8C4716FF1DEFF9E8E2BDC2459E40B
              601EE00302BF963BD368FCF769B6DE3D6FE1DA1D8AEB7EF5282EA26F71311852
              5C7C8F282E7EC614179329C5C56C4E71B158525CAC2A84AE898B0AA1EBE22A84
              AE8F2B153A015726740AAE44E8245CB1D069B842A113714542A7E262B5A6B8D7
              42A7E3223616F742E82C5C6C1F85CEC33D099D898BDF29C5C56C4771F742E7E3
              EE8406B85BA105EE466883BB0A8D7017A115EE2C34C39D8476B8A3D01077105A
              E2FE84FE609CFD587B155614ABB1FDC9EC08A003CA8E4F3BDCEDD3631F46FB6C
              DBA5C2AE3C7621A3EBA25D66EDAA6D83808D293644D9886703A88DC734BCDB6A
              C1161FB696B1A591ADB46CE166EB405B56D22AD516BDB886C62579CED9036A71
              AC996D2F8F200000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-double-left'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F000000F9504C5445FFFFFF0000002296F31E97F22299EE1F96F42096F22095
              F22394F32096F32095F32395F11C97F52095F200FFFF2195F200AAFF2095F320
              96F32196F32095F33399FF2195F32096F32AAAFF2196F32195F32095F32095F3
              2096F32095F22095F32196F22096F3007FFF2195F21F9FFF2196F21C8DFE2196
              F32095F21999FF2196F22196F22196F32096F22095F22096F32A94E92095F327
              9CEB2195F22491EC2196F32096F22196F32095F23F7FFF2196F21F8FEF2195F2
              1C9BF02196F21A93F12096F22699F22195F32095F22491F22196F32195F32096
              F32195F31F94F42195F31E98F42096F31D93F52195F22096F32491F52196F321
              96F32967D0D70000005274524E530000162A0E30D5E92AC5F13A1A9500A90297
              AB97AD0499AD069BB19BB39DB59DB79F02B908B9089FBB0AA1BFC1A3A5C30CC5
              0CA70EC9CBABCB04CD10CF12CF12D114AFD314AFD5B3D718D918D91AB7DB1CB1
              E0B156EA000000097048597300000EC400000EC401952B0E1B000001E2494441
              545885B5D8E752C2401405608988620315C5DE7BEFBDF75EF2FE0F2310223961
              4FB8CC1CF74F6652BE999D24BBF79E9616F9485986D74A2FA5DB8263139C9769
              EF605AB6B3AB49CECBF83EF1D259DF0F3C3357D68857D6AA9E950B34A7176881
              67E442CDE1855AC5B37135ADE47513ADE4B59AB8A8E6F7F432CDCFE52D1C687D
              5CEBCF5B260BDA00D70A83965701DA10D78AC3290307DA08D746CB5A430EB431
              AE8D57B4461C68135C9B0CB4061C68535C9BAE6AC91C6833B3549B9B0F4F2771
              566D61F1EF7C0207DA529E6ACB2BB50B9C036D956B6B118D73566D3DAA510EB4
              0DABC638D036B9B6B58DCFB939ABB6B31B7BD0C981B6C7B5EC7E7C562E0EB41C
              D70ED271CDC559B5C37ACDC18176C4B5638756CF81D67F42B5D3338756C7A136
              48B5F30B9716E7402B70EDF2CAA9C538D08AC3D11B41BBBE716BC88176CBB5BB
              7BA20107DA03D732548B72A08D72EDD1A35A8403ED896BCF2F5CAB71A08D73ED
              F52D41FBE3409BE4DAFB47921672A07D72EDEB3B51FB274E3C59F5AB507F28EA
              CF58FD93A99700F502A55E3ED58BBB7AEB516F8CEA6D5B5D54A84B1E7541A62E
              17D5C5ACBAD4563702EA3645DD44A95B3C7503AA6E8FD5CDBB3D5AF831450BEA
              E0431DCBA8432375A4A50EDCD471A03AAC5447A9EAA0571D433713920BC72F1E
              3B12F4ED6636580000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-double-right'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F000000FC504C5445FFFFFF0000001F96F42299EE1E97F22296F32395F12095
              F32096F32394F32095F22096F21C97F500AAFF2195F200FFFF2095F23F7FFF20
              96F32095F33399FF2095F32196F32AAAFF2096F32195F32195F32196F32095F3
              2095F32095F22096F32491FE2196F22095F31F9FFF2195F2007FFF2096F31C8D
              FE2095F21999FF2096F22196F32196F22196F22196F3178BE72095F32096F22A
              94E92096F32095F2279CEB2195F32195F22196F32095F21F8FEF2096F22196F3
              1E96F02196F21C9BF02196F22699F22195F22491F22096F22195F32195F32196
              F3219BF32196F31E98F42195F32096F31D93F52096F32095F32491F52095F321
              95F22196F32E46B6B00000005374524E530000300E2A163AF1C52AE9D51A02A9
              009504AB9704AD9706AD99B19BB39BB59D06B79D08B9029F08BB0ABD9FBFA1C1
              0AC3A30CC3A50CC7A7C9CB10CDAB10CD12CF14D114D1AFD5AF16D718D9B31AD9
              DB1CDDB75D1865EF000000097048597300000EC400000EC401952B0E1B000001
              D5494441545885C5D8674FC260140560AE05D9B8C02A22EE817BEF8D7B6BFFFF
              7F31082D5DA7BDC193F87E6DF2244DDFDE711209FA91DFD367083AC9147CE43E
              6EAE3F9D415E369757792EAE3F6D59C0CBE62C4BE575B99606BC96A6F31CAEAD
              857A6D4DE5D99CAD8578B6A6F13A5CD2D1025E21D77D14EB75B862C942DEC0A0
              A5F7EC971D1AC6DE88DE733E45B982BD51B5D7BD28E618F6C6B59EEB1A9B55EC
              4D283DF74F66D6B037A9F33C25C0AC636F4AE57938999EC1DEACC6F37232370F
              BD854585E7E36469F94F9E9F93C60AF48AABB15E8093C61AF6D6E3BC20278D8D
              DEBD104E36B7B0B71DED8571B2B38BBDBD482F9493FD4C8F5E3827C601F60E23
              3CC0897184BD12F61027C6712F1EE4E4E4147B67C8C39C9C5F40CFD30ADC5E04
              279757D02B032F8A93EB1BEC5542BD484E9AB7D0F3B416C78BE6A499C7DE5D88
              17C349EA1E7B0F412F8E93C727EC55035E2C27CF2FD87BF57BF19CBCBD63AFE6
              F3149C143EB057F77A1A4E3EBFB0F7EDF1FE81E3BE2CF753702F0AF71A737F32
              6E09E016286EF9E416776EEBE136466EDBE60E15DC91873B9071C745EE30CB1D
              B5B98B00774DE12E51DC158FBB8072D763EEF2CE8D16B8C1073796E18646E448
              8B1CB891E3407658C98E52D9412F3B862686E4C4F303700F1A85EF1E3C430000
              000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-event'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000540000005408030000002BB5E0
              F30000023D504C5445FFFFFF000000AFBEC5AFBEC5B0BDC5AFBDC5AFBFBFAEBB
              C9B0BDC4B1BDC5B0BDC4AFBEC4B1BCC7AFBFC4B0BEC4AFBFC4AFBDC499CCCCAA
              AAD4B0BEC5B0BDC5B0BEC5B0BFC6AFBEC5B0BEC4AFBEC6B0BEC4AEBDC4F34539
              F44335F44336F54337B2BBC0C89191F24830F64335F44335F34236F34235F442
              36F54436FF0000F34336F34236F34235F34335F44336F44335F44235F44335F4
              4334F44136F34237F34335F34335F44236EC645CE96D66DAA4A3CFD7DBE2E6E8
              E3E8EADFE4E7CED7DCCED7DBCED7DBD1D9DDCFD8DCAAFFFFCFD8DBFFFFFFCFD7
              DCCFD8DCCED7DCCCCCE5C6E2E2D0D7DDD0D8DDCED7DBCED8DBCBD5D9CBD4D9DB
              E1E5CDD7DBCFD8DDE4E9ECEEC5C2F08880F18E87DDE3E6C8D2D6CAD3D8EFA9A4
              F44D41D3DBDFB4C1C7EFBBB8F27168F17870DAE0E3C0CBD0C2CDD3ECEFF1E8EB
              EEE4E8ECEAEDF0B5C3C990A4AE94A7B1C8D2D7BECACFBFCBD1CFD8DCDE9D9AF1
              4235EC3F33EE4034D6302ABF2120B81C1CE63A30C82723B91D1CD62F29C12320
              B71E1EB81D1CB81D1DB62424B71F1FC12220ED3F33B62E2FB3878CB0B9C0B1A9
              AFB45C5EE0362DE1362DB4595CB1A8AEB2888CB62F2FC22321F24236DB332BB6
              2A2BB46A6DB4696CB1ACB2B72B2CDB332CC52522B3797DB0BBC1B62C2DE4392F
              B62C2CB0BAC1B37A7EC52622BB1E1DB1A5ABB55658D9312AD9322AB45558B1A6
              ACBA1D1DE0372EE1382EC32421D6312AF24134BA1E1DB71C1CD53029BE211FD8
              312AD9322BB45E61BE201FF14135C26767B1B5BBE73B31F34336D87571B4B7BC
              F44336B0BEC50DB6EA920000005074524E5300004293A3741012744299E92E30
              E964DB0406DD60C74446C566F168164C6266F7A51438BDFDFDBB380085838B89
              4A48D3D1302E6E6E8B97C3D5AF97D1D5C38F74723C3A02E10260ABA90A08623C
              8F999608BB8F000000097048597300000EC400000EC401952B0E1B000002DB49
              4441545885EDD9E75313411806F043B0A1C65E006976147BA1839112B1A0140B
              A2A022A208A2800A56147B6F58117B45F28A4080C0E66FF3B2BB496ECFBB9D1B
              B27CC8CC3D9F5EDEF7E1C7C064264C4E92462641FF675470C8E8311A7B2663C7
              85048FD7D86BA352A84BCE84897C7392C5DD0AD5F8764D74B20B67CA549E396D
              3A69CD3088CE2475D72C1E3A9B96E618442DB41FC643C368C962100DA7FD081E
              1A414BE13C746E6454344D0CEDC74673124B4B319E4554E43C153A7FC142E4CD
              10ED0F224E066969C8B75AB47889028D5BEA54F6878B22E45C16E745E3D9FEF0
              5184967BD015EC7EA09FF6FB78681F2DF50FB0FB95145DC56C1DBD1EB4A75BDF
              FCDBE341BB1CCC613541D7B0F53FE045ED9D7A66A7DD8BC26FF6B416A3EBD865
              870F855F7AE84FF0A11DEC693D4637B0CB1F0A54F7F7EF56A076F6148FD10476
              6987EFB4FF0DBEEAA15FE0332D7D828FEC29410BFD00EF49BDFD1DB4E9A16DF0
              F60D69BD865706D097F0A215D79F439713E9C4D90BCF70A9F5293C31803E7E04
              0F1FB4BBEEDF03B8AB67227407E0F62DD7CD1BD7A143F5933551D4720DE06A33
              C015CECB547EA15E0668BE0470B14575D04691E34217C0F9A6469E895063D339
              80B3671CEABD0E2AA7A1BE8E4FBA5357DFA0B1D547FD084113C5A289184D128B
              2605189A7C5A6892319A724A68524CD444D5EBDA932435F25C43E75AEEC1005A
              7D82A44A9EABE85CCD3D98A8898E389A7A5C95633495F25CE9F9827B502615A3
              694785262DD0D18A2324E5F25C4EE70AF7E1F0219283EA8301B48CFE935C2ACF
              A5742E731F0ED077E1FDEA83899A28172DD947522CCFC5742E711FF6EE21D9AD
              3E1840FD4BA0A1E9BB54292A242990E7023A17710FCAA407D8DB89899AA822F9
              3B490AE5B990CEF9DC8301D4BF041A9A2116CDC0E846B1A815A39BC4A29918CD
              CA166966E76034C82612B5D18F8FA5CDE2CC5CC9F3E9F916616AEE56DFC30369
              9B90BF6BB64D621E73646DB7E6EDF02B79D6CC1CDF630EF1F90759BEF8AA8F94
              09E50000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-eye'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000620000006208030000009C7BF6
              3C00000300504C5445FFFFFF00000096A5B494AAAA8DA0A990A5AC90A3AE8FA4
              AD8FA3AE8FA3AE90A4AD90A3AD8FA4AD8FA3AD90A3AD90A3AD8EA4AD8EA3AF88
              AAAA9F9F9F90A3AD90A3AD8FA4AE90A4AE8EA1AB7F7F7F91A3AE8FA4AD8FA4AD
              8FA4AE90A4AE8FA1AE91A9A990A4AF8FA3AD8FA3AE7FAAAA8BA2AD8FA3AE90A4
              AD91A5AF8CA5B290A4AD8EA3AD7FBFBF90A4AE90A3AE90A3AD8EA4AC8FA2B08F
              A3AD90A4AE949FAA91B6B690A4AE9BAEB6A8B8BFB6C4CBC1CDD3CBD3D9D5DBE0
              D2DBDFC7D2D6BECACFB5C2C9A4B4BC99ABB391A3AE92A2AD8FA4AE9CADB6B6C3
              CAE2E8EAF8FAFAD5DCDFABBBC295A9B390A4AD8FA3AD90A3AE96A9B3B9C4CBF1
              F3F4E2E7EBABBAC28FA4AE90A3AEA0B1B9D3DADEF8F9F9BFCBD098ABB48FA4AE
              8FA4AD90A5AC8FA4AD9EAFB9DBE3E5C4CDD38DA9A991A5AED4DBDFFBFCFCBBC6
              CC90A3AD8FA4AFB6C3CBF0F2F4A4B4BD8FA4AE8EA6AB8FA4AE9CAFB6EAEEEFCE
              D7DB95A7B290A5AE8FA3ADF2F5F5A2B3BB8FA5AC8FA4AE96A9B2DBE2E6BDC8CE
              91A4AE8FA3AE9EAFB8F2F5F5DAE1E496A9B391A2AD8FA4AEA9B9C0FBFDFDEFF2
              F39AADB58FA3AFB4C2C9F7F8F99EAFB88FA3AE91A3AD90A3ADC1CBD1FAFCFC90
              A3AE8DA4AF8FA3AD8FA3AECCD4DAACBBC291A3AD91A6ABD8DFE3B3C0C79999B2
              D6DDE0B1BFC690A4AE8FA4ADD0D8DCACBBC390A4ADCBD4D8A9B9BFF4FBFC05AE
              C200ACC000646900A2B6B2E6EC3FC1D000686E0094A506AEC2F0FAFB99DEE600
              A3B6006F7600656B0097A7EFFAFB0FB1C500ABC000909E007078006165006064
              006A6F00849100A7BBB8E8EE7BD4DF00A6BA009EAF009BAD00A4B732BCCDFEFF
              FFF1FAFC19B4C7C0EAF090A4AFABE4EB62CCD968CEDA29B9CB47C3D21CB5C8DF
              F5F7F5FCFD46C3D21DB5C8D7F2F5F9FDFE67CEDAE2F6F8FDFDFDA7E2EA14B3C6
              04ADC2F8FDFDEEF9FB72D1DD0BB0C401ACC150C6D4D3F1F492A5AF93A6AFEBF8
              FA8EDAE434BDCE02ADC100ACC11EB6C875D2DDD5F1F5ECF9FAB1E6EC89D9E269
              CEDB5CCAD758C9D666CDDA7DD5DFA6E2E9DBF3F6FEFEFE92A6AFFFFFFFFDFEFE
              91A5AF8FA3AD90A4AEF11C5346000000A674524E530000100C1A4A78A9CFE1EF
              FBEDDDC79B6A3C0E0897DFCB7E340246ADF5E78F281476C15806168BF566148B
              640468EDCF3A36CDA11806FDF5E7DFDDDFE1E1DFDFDFEBF9562ED3F5DFEBFDE3
              E5FBA770F9FBDFF3E9E5E3A9EFDFFBDDF9FB6E24D5F1E5DD083EE1FDDFC960DF
              F1EBE12A78F3EBDFFD3C89F3ED4695FBE1DD4E8FF3F1E1FD4883E7FDEFF740DF
              F7F1F3386ADBFDF12C4EFDDBE31C30DBDF0ADFE1B1C5DDE38DD9E780846A2F00
              0000097048597300000EC400000EC401952B0E1B00000546494441546881ED98
              794014551CC707CC4ACB0ECD88D24AB3432BB563B3A22DB5FBC4228AB4FBD82E
              3B76BB2C3AB632B6A23B259AEC58DB3205C552536005154C25154AB33C4A6551
              849112330A97A3999D99F7FBBD376F8659E4CFF9FEB7BFF7FBFD3EFBDEEFF7DE
              BC194170E4C89123478E1C75A112E25362B73803EC23F6EBBEFF0107F6E8D9DE
              DE7ED0C1BD0E39F4B0C37B7729A24FF723FAB6B36A3B32E9283BC13610C9471F
              D3CF905F53FF638FDB77C4F1037A99E55735F08441FB8438F1A493AD018A7A9C
              6209B1440C1E6203A0A8EFA9A7750A917CFA507B0045C386770271C699F601B2
              DACE3A3B4E846BC839862CAD23CE3DEFFC940BDC175E3472D4E856C3F0D08BE3
              425C72299BE0B2CBAF6889225D79D5D5D7B03ED726DA475C974AC78EB9FE8628
              476937EEA5FDD27915E121BADD4407DE9CD1CC0328BA65EC38CAF5D6DB6C216E
              BF838ABAF32EC8F8DFBF4DFFECF97B77E3AEBF88A9E5EE31F462DDD331E25EAA
              5547DF4792FDD9B053D2555FB7A356B77BEEDF8E231E603BCB8078109761DB43
              1E3D514DA45AA2B475CB667DECE1F198F1C8A3D688C7B0F3E35E3DC91F0DBF4B
              066DDA4866E87B0285F57CD202213C853C5B476ED033ACAF330214FDF6ABEEF1
              F43328B2DF045384F02CF27B2E93FCC775BFF00992B4760D717A1E6DC6D417CC
              102F22C24B7E12FCF34F660449AA22F388BEFC0A62BCCA474C4484D7B248E89A
              4A738224AD86960EBC8ED6EA0D1E0257FA4DB4BD5659112469257866BF0519DE
              7EC7887817867F7C0F112AAAAD112B9683EFFBA87B3FF890454C9A4C06B7E720
              C2B21FE88C4BCBCB96D096C5C8BBF92360A4E7D2888FE106B0574431D145385B
              69C9C270385C5C54B80019E77F8FFD3F01C6B02918919B0E844F7144348292CD
              9B1BD634E73B64FE960AF80C189F270362D017C4BC2D4805CC2E8054B38AC344
              3397823D9F8A884E05461220BE044288F6CF834C33A687918ABE2103D3BEA642
              9ABF22D9264FD01193DA88712C4D883600A2244CA910462AE8982C384CFA0F56
              11B9707C4F6508A814A5C534A2C8AC18F2FE1801E51014449F81C430DEF07883
              969D4513C2C5D0558BD9A8009C2503144412F9392E9BF58DC2E151C820C233C8
              D06E43582639135387CB88DE89B24229B244836B7467E7101E255D8A4BC93C45
              DF7AAEA05B569AC1D762A14AC950031BD592A1640B310788E0938D3E2FEB5C45
              F22C611073A0DC3BD8285121E4080C2221A4987D7EC6790B242A326DDA454C50
              5A2C959E181DE65CC64648544675ED4268A8FACD748C37B62021CEF342501974
              57D5D60303177C7A19D8EB38043721504F3D2147190BD28CB512629079CC2C47
              E6462A20C01098EB41D0C8402B25AF55510C32B7A414190B6A3904C104C16364
              D14FEED2798585E50B2813B52BBC06027B558BB52E5DF39592B5E6AFC7BD6424
              186E831A2380C2AAAC117853647208C63BADBA56780FD6AEB022449611C7E6D8
              8E63099C9BB9C610E1D0ADD86A4EA89C4DDC3C195C02EFFD42DD1F6ED1638351
              0985F007F904EE5B92C64005A931B972E6937DDDAC9601EF072B84CC50FD4572
              35AF8D7000054DE405335B5D241F8760F6C6AA318230913CF6665B1D5947A6A0
              F62A395B6D21B4A2CB5527DBB06557641A0036ADAE812AE853304965F6F5402B
              880C81B22FCF6BDA935F5797BFAAB1022EEE7ED167BE4896083211B72FD3F848
              4700D589D3493610092EAD22F24CD82795AA0DDE0C0D10349B420708682D3987
              18602E401EAFA80F9A55C10E0243DCBE0CD11BF0676779B2FD81343108F690CB
              3A4587DF06118427EB19D8435842421D02EC7E44158450D080F1D9C96F1B11F3
              0C8508C79713B2993F2E842A57FC9FC0BBE4ABBB23478E1C3972E448D3FFF964
              C13649776B1C0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-eye-other'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000620000006208030000009C7BF6
              3C00000300504C5445FFFFFF00000096A5B494AAAA8DA0A990A5AC90A3AE8FA4
              AD8FA3AE8FA3AE90A4AD90A3AD8FA4AD8FA3AD90A3AD90A3AD8EA4AD8EA3AF88
              AAAA9F9F9F90A3AD90A3AD8FA4AE90A4AE8EA1AB7F7F7F91A3AE8FA4AD8FA4AD
              8FA4AE90A4AE8FA1AE91A9A990A4AF8FA3AD8FA3AE7FAAAA8BA2AD8FA3AE90A4
              AD91A5AF8CA5B290A4AD8EA3AD7FBFBF90A4AE90A3AE90A3AD8EA4AC8FA2B08F
              A3AD90A4AE949FAA91B6B690A4AE9BAEB6A8B8BFB6C4CBC1CDD3CBD3D9D5DBE0
              D2DBDFC7D2D6BECACFB5C2C9A4B4BC99ABB391A3AE92A2AD8FA4AE9CADB6B6C3
              CAE2E8EAF8FAFAD5DCDFABBBC295A9B390A4AD8FA3AD90A3AE96A9B3B9C4CBF1
              F3F4E2E7EBABBAC28FA4AE90A3AEA0B1B9D3DADEF8F9F9BFCBD098ABB48FA4AE
              8FA4AD90A5AC8FA4AD9EAFB9DBE3E5C4CDD38DA9A991A5AED4DBDFFBFCFCBBC6
              CC90A3AD8FA4AFB6C3CBF0F2F4A4B4BD8FA4AE8EA6AB8FA4AE9CAFB6EAEEEFCE
              D7DB95A7B290A5AE8FA3ADF2F5F5A2B3BB8FA5AC8FA4AE96A9B2DBE2E6BDC8CE
              91A4AE8FA3AE9EAFB8F2F5F5DAE1E496A9B391A2AD8FA4AEA9B9C0FBFDFDEFF2
              F39AADB58FA3AFB4C2C9F7F8F99EAFB88FA3AE91A3AD90A3ADC1CBD1FAFCFC90
              A3AE8DA4AF8FA3AD8FA3AECCD4DAACBBC291A3AD91A6ABD8DFE3B3C0C79999B2
              D6DDE0B1BFC690A4AE8FA4ADD0D8DCACBBC390A4ADCBD4D8A9B9BFF4FBFC05AE
              C200ACC000646900A2B6B2E6EC3FC1D000686E0094A506AEC2F0FAFB99DEE600
              A3B6006F7600656B0097A7EFFAFB0FB1C500ABC000909E007078006165006064
              006A6F00849100A7BBB8E8EE7BD4DF00A6BA009EAF009BAD00A4B732BCCDFEFF
              FFF1FAFC19B4C7C0EAF090A4AFABE4EB62CCD968CEDA29B9CB47C3D21CB5C8DF
              F5F7F5FCFD46C3D21DB5C8D7F2F5F9FDFE67CEDAE2F6F8FDFDFDA7E2EA14B3C6
              04ADC2F8FDFDEEF9FB72D1DD0BB0C401ACC150C6D4D3F1F492A5AF93A6AFEBF8
              FA8EDAE434BDCE02ADC100ACC11EB6C875D2DDD5F1F5ECF9FAB1E6EC89D9E269
              CEDB5CCAD758C9D666CDDA7DD5DFA6E2E9DBF3F6FEFEFE92A6AFFFFFFFFDFEFE
              91A5AF8FA3AD90A4AEF11C5346000000A674524E530000100C1A4A78A9CFE1EF
              FBEDDDC79B6A3C0E0897DFCB7E340246ADF5E78F281476C15806168BF566148B
              640468EDCF3A36CDA11806FDF5E7DFDDDFE1E1DFDFDFEBF9562ED3F5DFEBFDE3
              E5FBA770F9FBDFF3E9E5E3A9EFDFFBDDF9FB6E24D5F1E5DD083EE1FDDFC960DF
              F1EBE12A78F3EBDFFD3C89F3ED4695FBE1DD4E8FF3F1E1FD4883E7FDEFF740DF
              F7F1F3386ADBFDF12C4EFDDBE31C30DBDF0ADFE1B1C5DDE38DD9E780846A2F00
              0000097048597300000EC400000EC401952B0E1B00000546494441546881ED98
              794014551CC707CC4ACB0ECD88D24AB3432BB563B3A22DB5FBC4228AB4FBD82E
              3B76BB2C3AB632B6A23B259AEC58DB3205C552536005154C25154AB33C4A6551
              849112330A97A3999D99F7FBBD376F8659E4CFF9FEB7BFF7FBFD3EFBDEEFF7DE
              BC194170E4C89123478E1C75A112E25362B73803EC23F6EBBEFF0107F6E8D9DE
              DE7ED0C1BD0E39F4B0C37B7729A24FF723FAB6B36A3B32E9283BC13610C9471F
              D3CF905F53FF638FDB77C4F1037A99E55735F08441FB8438F1A493AD018A7A9C
              6209B1440C1E6203A0A8EFA9A7750A917CFA507B0045C386770271C699F601B2
              DACE3A3B4E846BC839862CAD23CE3DEFFC940BDC175E3472D4E856C3F0D08BE3
              425C72299BE0B2CBAF6889225D79D5D5D7B03ED726DA475C974AC78EB9FE8628
              476937EEA5FDD27915E121BADD4407DE9CD1CC0328BA65EC38CAF5D6DB6C216E
              BF838ABAF32EC8F8DFBF4DFFECF97B77E3AEBF88A9E5EE31F462DDD331E25EAA
              5547DF4792FDD9B053D2555FB7A356B77BEEDF8E231E603BCB8078109761DB43
              1E3D514DA45AA2B475CB667DECE1F198F1C8A3D688C7B0F3E35E3DC91F0DBF4B
              066DDA4866E87B0285F57CD202213C853C5B476ED033ACAF330214FDF6ABEEF1
              F43328B2DF045384F02CF27B2E93FCC775BFF00992B4760D717A1E6DC6D417CC
              102F22C24B7E12FCF34F660449AA22F388BEFC0A62BCCA474C4484D7B248E89A
              4A738224AD86960EBC8ED6EA0D1E0257FA4DB4BD5659112469257866BF0519DE
              7EC7887817867F7C0F112AAAAD112B9683EFFBA87B3FF890454C9A4C06B7E720
              C2B21FE88C4BCBCB96D096C5C8BBF92360A4E7D2888FE106B0574431D145385B
              69C9C270385C5C54B80019E77F8FFD3F01C6B02918919B0E844F7144348292CD
              9B1BD634E73B64FE960AF80C189F270362D017C4BC2D4805CC2E8054B38AC344
              3397823D9F8A884E05461220BE044288F6CF834C33A687918ABE2103D3BEA642
              9ABF22D9264FD01193DA88712C4D883600A2244CA910462AE8982C384CFA0F56
              11B9707C4F6508A814A5C534A2C8AC18F2FE1801E51014449F81C430DEF07883
              969D4513C2C5D0558BD9A8009C2503144412F9392E9BF58DC2E151C820C233C8
              D06E43582639135387CB88DE89B24229B244836B7467E7101E255D8A4BC93C45
              DF7AAEA05B569AC1D762A14AC950031BD592A1640B310788E0938D3E2FEB5C45
              F22C611073A0DC3BD8285121E4080C2221A4987D7EC6790B242A326DDA454C50
              5A2C959E181DE65CC64648544675ED4268A8FACD748C37B62021CEF342501974
              57D5D60303177C7A19D8EB38043721504F3D2147190BD28CB512629079CC2C47
              E6462A20C01098EB41D0C8402B25AF55510C32B7A414190B6A3904C104C16364
              D14FEED2798585E50B2813B52BBC06027B558BB52E5DF39592B5E6AFC7BD6424
              186E831A2380C2AAAC117853647208C63BADBA56780FD6AEB022449611C7E6D8
              8E63099C9BB9C610E1D0ADD86A4EA89C4DDC3C195C02EFFD42DD1F6ED1638351
              0985F007F904EE5B92C64005A931B972E6937DDDAC9601EF072B84CC50FD4572
              35AF8D7000054DE405335B5D241F8760F6C6AA318230913CF6665B1D5947A6A0
              F62A395B6D21B4A2CB5527DBB06557641A0036ADAE812AE853304965F6F5402B
              880C81B22FCF6BDA935F5797BFAAB1022EEE7ED167BE4896083211B72FD3F848
              4700D589D3493610092EAD22F24CD82795AA0DDE0C0D10349B420708682D3987
              18602E401EAFA80F9A55C10E0243DCBE0CD11BF0676779B2FD81343108F690CB
              3A4587DF06118427EB19D8435842421D02EC7E44158450D080F1D9C96F1B11F3
              0C8508C79713B2993F2E842A57FC9FC0BBE4ABBB23478E1C3972E448D3FFF964
              C13649776B1C0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-denied'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005E0000005E08030000009D0C53
              5C00000300504C5445FFFFFF0000005555554242424141414242424242424242
              424242424343434242424141414141414141417F7F7F33333341414141414142
              42424040404242424141414242424141413F3F3F424242414141414141444444
              4242424141414141414646464242424242423F3F3F4242424242424343434141
              414242424242424242424242424242424141413F3F3F40404042424242424241
              41413F3F3F414141414141434343414141414141424242414141424242424242
              414141414141484540FEA626FEA726FEA825FEA524FEA626FEA725FEA726FEA6
              25FEA726FEA625FEA526FFAA00FFA625FEA725FFFF00FFA827FEA626FEB242FE
              B241FEA726FEA627FEB74DFEB74DFEB64EFEB74DFEBA4EFFB44AFEB74DFFB64D
              FEB64CFEB64CFEBB50FEB64CFEB74DFFB44BFFB74CFEB648FEB74DFEB74DFFBF
              55FEB84DFEB84DFEB64DFEB74DFFAA55FEB74CFEB74DFEB64BFFA31EFE9800FF
              0000F34534F34335F34335F34235F44236F34135FF7F00F34334F34336F44235
              F44335F34335F34136FF5555F44335F44235F34234F54037F34236F34335F542
              33F44335F34235F34335F44435FE9204F34336F44235FE48242487C6748C7ADD
              4F41F44236FF4C332E93CA1A78B80A63A70960A3F343354CCCFF4FC3F74EC3F7
              F3433645B9FE4EC3F64FC2F7F34236F3423650C2F64EC3F7F442364BC6F5F449
              3CFBB7B2F55C51F64F2EFF960150818E1E7EBCF44436FC820EF3970B1267A304
              5B9F4ABCF24FC3F7F96B1C848C6936A1DAF65E26FF9701FC990301579BFF9502
              FFA41EFFA41FFFA21AFF9F11FF9B06F44336FFA92CFFAA2DFF9F12FF9800FFA3
              1CFF9801FFB13DFFB13EFEB64DFFB241DC9A3FC48636FDB54CC58737AD732DE9
              A545BF82357B4A1BE9A544F6B14CA16928CE8E3AE1A54CF5B14CFFB344ECA844
              665844F1AC48804E1DCB8C397847197F4D1CF0AA47645744EAA644DE952A584F
              42DB993FDC9A40C38536EEA846554D42D9932BFFA726CC8B2D4D48404A4641C5
              882FBC8D49BA8C49B589496C5C45FFB74D5A5144E7A84BEAAA4CAB83486C5C44
              4C48434343424242429D9A813E000000A774524E53000002325C8399A5AB484C
              ABEDD3020466E35436D778FB8D04A3E99324A1FD9B1287E73850F744F52A9BD3
              6E9FE1104E66ADB708F92E38626C93A3B1B9C3CFDB85835852C1BDE3CBC96C6A
              02ABA90054A7E5E5A754858158561A18CFCD747012F3F110890EE5E30C4C4883
              A5029D76FD8968002C5A8199A52A02449FE9E99F42025ED75C36CFCD367CFDFB
              786EAFAD064CA7E9BD0A52CDFBFDB10A62CD850A78EFFD4058E7D71A6F62AF16
              000000097048597300000EC400000EC401952B0E1B00000505494441546881ED
              D8797CD3641807F0658A2703142F101551BC6FF116F0020F749E788BF709C8B1
              D1B5D8E94099B3834DDD74303690C1D65637B56B29EA50E05506BA292228201E
              C41BB0F1C0311D6A7CD336C9FB26798F24FDF097BF3FF6C9DB37F9F6D9D337EF
              B26665ED94089464EFB26BB7DD76DF23993D692722E1E5B3F7DABBBBAC27A747
              26F99EBDF691F1EC9B41BEF77EB2319CE5F3F0FB1F60D265F9C0DE076584CFEE
              63812BE97B703FF77C8F43083ACCA187F577CB1F4ED661061CE18E3F92AACBF2
              C0A3DCF0FDFB3278F9E8635CF0C7B274593EAEA763BE9FD59234E678C7FC0944
              F3DF7FB4C313297718953F6920C1FE7B47D75F7F6AC3931DF2A790EC4E18DD3F
              D5217F1AD1C6FCEEE4EED0F8D307916DCC3FC3117F26CD46FDB31CF167536DC4
              EFE6883F876EEBFEB98EF8F3147B3BD9D6FCF31DF183E1951D345BC91FF0A4C1
              8EF821F0CA6D2C7E1B3C6988233E8797CFF99FCF343F94971FEA84BFE0F7DFF8
              F85F7FB9D03E7F9124257E56F9AD5B36E3EA4F5BB6AAFC8F3F48D2C5B6F94B24
              49FAFEBB14FFED37A2B809D53789E2D75FA5F82FBF80270EB3CD0F87576DFC7C
              43D2582F8AE23A945F075F589F3CDAF0D94678E270DBFCA50A9FD63E5D2B8A6B
              507E8D28AEFD247DACF097D9E62F47F8CECDAB3F5E85F2AB3E5AFD6127C25F61
              9B1F71A524B5B3D68D927649BA6A846D5EC8BDFA9A6B79F8EBAEBF2197A0339E
              7346F2F037926C267F130F7FB363FE160EBDED56C7BC701B9BBF9DA2B3F83BD8
              FC2817FC9D77B1F4BBEF71C10BF7B2F891349DC9DF773F5D7FE04157BCF0501B
              4D6F7B98AA73FC5F4BBDB51EA1EB1C7CEE68B23E9AB81B70F3C298B1247DEC18
              86CEF59D42EEA3E3ACF071A358B5F37EE132FE03B3FEFE7826CECB4F58B9C2B0
              F5B7AF5839419D9D98973FC95350E09994EF9DE88C6F6D6D5DFE9EF60EEDEF2E
              872FA478DFE4C7FC404BE1E34FF89CF130CB962E79E7ED254B97A5460A5F3465
              2A3064EA933E873C1EC83F35CD882B297E3A23BCAFE4192B1D8040A9CF3D3F7D
              8635AEA4ACDC06FFEC7316FAE2E7C93A0015959CFC0B2F56B5CC7CCBA4BFF906
              4D07605611075F3DBB66510B4CDCC42FA4EB00D432F939735F8AC5A2CD908FBC
              6ED05F7B95C5CFAB63F0F317C4943429E537E2FA2B2F6B4C3814D4CD6028AC1D
              D797D3F8869A582AD116737B16227A48F78370A0FBA5143E5DBA567E33EA2F0E
              A2BAE6079303CDF79713F9B9313DD148B2FEC684AA27E2B89EF683E981E6E713
              F86A5487FECCA4DF1C897724121DF148B3B6E44321DD0F6A0375B682C0E33AF4
              AB5AB0CC33560F7D5DD7AA0F782DF9D93163A24DA8DEA82F15DD37EB004CB6E2
              E79B749845119DDF0E283EA283120B7ECE022B5EF90D9A923DAA6ADA01C83EAA
              83020BDED878FC3DA2F007BE9985893AA830F30D343D15C35E1926E9A0D8CCD7
              D8E6F53583EE0F4AA699788EE20D7C106D0EEE9B9B43ED7C3A1D44DDE0979978
              C2B2C11227EBB85F6BE4797A83F2261DF3A718799EDEC4A2167A386CE19B3605
              8E7513433E5B7445EABE3A5B6FDAD2785A8F74A70B5DEFAADFA5CE961AF96A2E
              3D160DE27EFA6E0AE37AC06BE4B93E59B4FCA4AFDDAB6154071ED31F435E5E2F
              1FFAC84E10467458BC91B7DC8BE9E503EC464206A5E60791861ADE501F019554
              14713D0412E22DA4EB855EE6531ADDF7D3747F5277C10B7914BF304F70CB0BDE
              62925E9CD65DF142656DC00A0FD456AA67B8E261836699F5195E7DDE250F3BE4
              C13E02BF270F9D75CDC316D59594D5FB03017F7D59495D253E97B553F21F9525
              74C6AD8811A30000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-user-100-edit'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000300504C5445FFFFFF0000005555554242424141414242424242424242
              424242424343434242424141414141414141417F7F7F33333341414141414142
              42424040404242424141414242424141413F3F3F424242414141414141444444
              4242424141414141414646464242424242423F3F3F4242424242424343434141
              414242424242424242424242424242424141413F3F3F40404042424242424241
              41413F3F3F414141414141434343414141414141424242414141424242424242
              414141414141484540FEA626FEA726FEA825FEA524FEA626FEA725FEA726FEA6
              25FEA726FEA625FEA526FFAA00FFA625FEA725FFFF00FFA827FEA626FEB242FE
              B241FEA726FEA627FEB74DFEB74DFEB64EFEB74DFEBA4EFFB44AFEB74DFFB64D
              FEB64CFEB64CFEBB50FEB64CFEB74DFFB44BFFB74CFEB648FEB74DFEB74DFFBF
              55FEB84DFEB84DFEB64DFEB74DFFAA55FEB74CFEB74DFEB64BFFA31EE67474E5
              7373E67474FF7F7FFE9800E37373E57272E47272E57272AFBCC3B8B2B9DF7A7B
              E37474AFBDC4B0BDC5B8B2B9E27777E37474F89C10BDB6A3B7B3B9E47373FB96
              00FD9700FA9A09BCB7A2E27778E47272E67070FE9600F89B0FBDB7A4B8B2B8E3
              73732487C687875E2288C7BDB6A3AFBEC4B0BEC22E93CA1A78B80A63A70F5F9B
              0B64A71B79B92991CBBDB7A1B1C1C54CCCFF4FC3F74EC3F74FC3F74FC2F648B6
              FEFD9600FA9B0E45B9FE4EC3F64FC2F74EC3F74ABDF1286183F896042A618204
              5B9F4ABCF24FC3F737A2DAA78235AB833336A1DAFD980101579BB0BEC5FFA41E
              FFA41FFFA21AFF9F11FF9B06E47373FFA92CFFAA2DFF9F12FF9800E57373FFA3
              1CFF9801FFB13DFFB13EFEB64DFFB241DC9A3FC48636FDB54CC58737AD732DE9
              A545BF82357B4A1BE9A544F6B14CA16928CE8E3AE1A54CF5B14CFFB344ECA844
              665844F1AC48804E1DCB8C397847197F4D1CF0AA47645744EAA644DE952A584F
              42DB993FDC9A40C38536EEA846554D42D9932BFFA726CC8B2D4D48404A4641C5
              882FBC8D49BA8C49B589496C5C45FFB74D5A5144E7A84BEAAA4CAB83486C5C44
              4C484343434242424213F9E2AE000000AE74524E53000002325C8399A5AB484C
              ABEDD3020466E35436D778FB8D04A3E99324A1FD9B1287E73850F744F52A9BD3
              6E9FE1104E66ADB708F92E38626C93A3B1B9C3CFDB85835852C1BDE3CBC96C6A
              02ABA90054A7E5E5A754858158561A18CFCD747012F3F110890EE5E30C4C4883
              A5029D76FD8948C766026848F7FB6C4CE7F7704AF7F1F7644AE9EFC348F7FBEF
              F7F1344CF9EFE1424CA748EDF13652CDFBFDFBCB4EE3420A62CDC95C06F1360A
              78EFEBDC8FA8E9000000097048597300000EC400000EC401952B0E1B00000469
              494441545885EDD7777813651C0770AE88A250507000A2224371CB7221E00211
              B42A8A5B5C2C0504151437E000CA88205A4D071A9A88A94953F2A696A4125492
              A22D1B853294D33A00BD2A68EB40CFF7923679EFBD77A6D1BFFCFE75F7F6779F
              E7FBBC7DAF4FAF59B37F310A2319CD0F6B71F8112D63399235D8180136E3A856
              ADF56432DBA4836D7BF431BA39EDD2C0B63F56C7235297C31E77BC45D5F513DA
              7768129BD191801AE97462E7D4D93627515498934FE9922A7B2A5D85E9DA2D35
              B63B53D5F51EA7A5C276E9C461F5D37BA6C09EC15375FDCCB6D26C67D2D1C273
              96347B36D5FAFBAFC4E539B43783C69EDB83621EFAF38FDF7F4BDC9E27C99E4F
              33EB61926E2F49B637D534B9AD29BB4061FBF4A59B26B79F147B01CB44DD0BA5
              D88B9826E2B690622F669B49F71229B6BF61D6D1CD847BA9143B003EF12BCB34
              F20B1C1A20C50E844F1CE4B107E1D04029365394CDFC9F95650789B28364D8CB
              0EFC2CC6FE547BB9387B85A6FDF84323BB7FDF5EB3F6FDBEFD8DEC77DF6ADA95
              C2EC559AA67D531367BFFE4A55F7A0EA1E55FDF28B38BB7B171C1C2CCC0E81D3
              3B7754C79EDDAEAAEA3694DD0617B6C7AEAA3FDF09078708B3571B6C83F2D956
              55DD82B25B5475EBE6866B831D2ACC5E83B0F57B376DDC80B21BD66F5A578FB0
              C384D9E1D76A5A15EF1C18A9D2B4EB860BB34AD6F537DC28C28EB8E9E62C924A
              FF3F61A4087B0BD164B1B78AB0B749B3B70BA8957748B3CA9D7CF62E9ACA60EF
              E6B3A35260EFB997A7DE777F0AACF2008F1D495559ECE8316C75ECB89458657C
              254BAD7C90AEB2BFCB98AFC4430C95CD664DA0AB13C86FAD08AB4C9C4453274D
              64A9BC6FDEAC872793D0C9A3985D053EFCA77C6A553F9942071F79F4B1A902EC
              B4B515D89FDEAA8AB5D3A8EAE34F44A73F29C2462291351F27E4AA8FD6C0052A
              FBD4D3CF44A31F3E3B558885591D5EF541F9AAF0EAF81D8D7DEEF9D08C99D1E8
              F459A2AC3914F6851743A1D04BB0EFCBE96467CF999B0DDD19F3E62F4823BB70
              4E24627B05BA8B16737F65AF2E21B14B5E2375357E32F7F550CE1B9C93F0A63D
              3798B7D2AAAECC0BE6172CB57635627BEB6D85C53A9615960561DEB7B2A5C67A
              C0E97A07EF0AB3FC5D85C1BA8BDE03C0BF023E5EE2C3555F315C5EE105C053E4
              C6BA4696CF5618ACCB038CD88D5A75385B67ACDA63031E17D635AE92598713C4
              E337806029610B82FE8611A7C3DA95CC365435526075E36A4162C4E3B27425B2
              4520197F7E0CA9B335A2B6D80E04F3FDC9991C9F45B5B20E54856E6E8C09D694
              D6DA6CB5A535F1BB5C8E6A65CD6AA2AF29BCAE567619C0E3B7E3AA9DABE2ACCB
              A2C2044C85F30380AB62ACBB90C4C2C665C5790699575CE60724D596E366B0F8
              C69AE2F5E22B880A8AE8AC83A55A83AA00B8A9AC932BD155735D94952B8BA9E6
              BA28CBDC59AE6AAA8BB21EA6638ED786ABA090CC12CF2C2DD9153E4C05C04564
              A5F66057B8DC87A9E82E20ACCC39F09687C3B0AF49054E222BB3B581DDE170B8
              DCACA29B9B64A58E57897E48ABCEC65F3B7793D99280E55526B35207811CD77F
              C83A9B1C129BF6FC0362CF9B11616779700000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-add-user-male'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005E0000005E08030000009D0C53
              5C00000300504C5445FFFFFF0000005555554242424141414242424242424242
              424242424343434242424141414141414141417F7F7F33333341414141414142
              42424040404242424141414242424141413F3F3F424242414141414141444444
              4242424141414141414646464242424242423F3F3F4242424242424343434141
              414242424242424242424242424242424141413F3F3F40404042424242424241
              41413F3F3F414141414141434343414141414141424242414141424242424242
              414141414141484540FEA626FEA726FEA825FEA524FEA626FEA725FEA726FEA6
              25FEA726FEA625FEA526FFAA00FFA625FEA725FFFF00FFA827FEA626FEB242FE
              B241FEA726FEA627FEB74DFEB74DFEB64EFEB74DFEBA4EFFB44AFEB74DFFB64D
              FEB64CFEB64CFEBB50FEB64CFEB74DFFB44BFFB74CFEB648FEB74DFEB74DFFBF
              55FEB84DFEB84DFEB64DFEB74DFFAA55FEB74CFEB74DFEB64BFFA31EFE980000
              FF0045A245439E4643A047429F4742A04741A04743A14743A046429F4743A047
              439F47419E4555AA5543A145429F4742A04840A245429F4643A04742A046439F
              47429F46439F47449F46F19804439F4642A0474891482487C6748C7A4B9C4F42
              A0464C994C2E93CA1A78B80A63A70960A3439F464CCCFF4FC3F74EC3F743A047
              45B9FE4EC3F64FC2F742A04642A04650C2F64EC3F742A0474BC6F55E9F3DFA98
              0250818E1E7EBCFFFFFF64B16744A047CE9A12F3970B1267A3045B9F4ABCF24F
              C3F782C0844EA6529C9C25848C6936A1DA7C9E32FD9801FC990301579BF89803
              FFA41EFFA41FFFA21AFF9F11FF9B0643A047FFA92CFFAA2DFF9F12FF9800FFA3
              1CFF9801FFB13DFFB13EFEB64DFFB241DC9A3FC48636FDB54CC58737AD732DE9
              A545BF82357B4A1BE9A544F6B14CA16928CE8E3AE1A54CF5B14CFFB344ECA844
              665844F1AC48804E1DCB8C397847197F4D1CF0AA47645744EAA644DE952A584F
              42DB993FDC9A40C38536EEA846554D42D9932BFFA726CC8B2D4D48404A4641C5
              882FBC8D49BA8C49B589496C5C45FFB74D5A5144E7A84BEAAA4CAB83486C5C44
              4C48434343424242429B069727000000A674524E53000002325C8399A5AB484C
              ABEDD3020466E35436D778FB8D04A3E99324A1FD9B1287E73850F744F52A9BD3
              6E9FE1104E66ADB708F92E38626C93A3B1B9C3CFDB85835852C1BDE3CBC96C6A
              02ABA90054A7E5E5A754858158561A18CFCD747012F3F110890EE5E30C4C4883
              A5029D76FD8968002C5A8199A52A449FE9E99F42025ED75C36CFCD367CFDFB78
              6EAFAD064CA7E9BD0A52CDFBFDB10A62CD850A78EFFD4058E7D71AEB51914C00
              0000097048597300000EC400000EC401952B0E1B000004B7494441546881EDD8
              777C13651807F05E1541A561B9405444716F710BA80C0758276E714F4046DA34
              18B506A9984AA3562D9416B460A5A5689A6B6DD5AAC029056D1511141007E706
              CC39B0D67DBC97E472EF8DF77D9FDC9B0F7FF9FB239F1BEF7DEFCD73EFCDACAC
              9D128192EC5D76EDB25BD76EF1EC4E6B8805CA67EFB16777D5488E27937C8F9E
              BD54737A6790EFB3976A0DB0FB107EEF7D6CBAAAEEDB67BF8CF0D97D1D702DFD
              F6EFCFCF7B0E20E828071E3480973F98ACA30C3C848F3F94AAABEAA0C378F801
              FD18BC7AF8111CFC912C5D558FEAE19AEFEF3424AD39DA357F0CD1FCEFDFD4E4
              B194338CCA1F378860FFF3F75F7FFE919A3DDE257F02C9EE4431FC135DF22711
              6D93DF9D5C1D1A7FF260B26DF24F71C59F4AB371FF3457FCE9541BF3BBB8E2CF
              A0DB867FA62BFE2CCDFE9D6CA7FCB35DF143D0961D345BCB6FA8D11057FC50B4
              E57616BF1D351AEA8ACF81F239FFF399E68741F9616EF8737EFD05C6FFFCD3B9
              E9F3E7294AEC479DDFB6758B59FD61EB369DFFFE3B45199E363F4251946FBF49
              F05F7F25CB9B717DB32C7FF94582FFFC33D47064DAFC28B4D5A64F37C68D0DB2
              2CAFC7F9F568C186F8D4C64F36A186A3D2E6CFD7F8A4F6F13A595E8BF36B6579
              DD47C9698DBF206DFE428CEFDCB2E6C3D538BFFA8335EF7762FC4569F3A3C728
              4A3B6BDC686957948B47A7CD0BB9975C7A1984BFFC8A2B73093AE339672C84BF
              8A6433F9AB21FC35AEF96B017ADB75AE79E17A367F034567F137B2F9711CFC4D
              37B3F45B6EE5E085DB58FC589ACEE46FBF83AEDF7917172FDCDD46D3DBEEA1EA
              80F75AEAA9752F5D07F0B9E3C9FA78E2D500CC0B132692F48913183AE89B42EE
              7D939CF049E3587D877E7099FC9E5D7F77321387F25356ADB45CFADB57AE9AA2
              AF9DEACDCBF71514F8F2F3FC53DDF1ADADAD2BDE49EDA1FDED15684182F74CBB
              3F20A5F2C0830F995EB4E03CCAF2654BDF7A73E9B2E589398D2F7C382859129C
              EE71C99B83F8476658712D458F6684F7CC7CCC4997A450B1879F7F7C9633AEA5
              249C06FFC4930EFA1B4F9175492A7D1AC83FF36C59CBECD76DFA6BAFD274499A
              5308E0CBE75634B7A034D9F85730AAB12199466C6125939F37FF39518CD6233E
              F2B2457F690926D52D4EA60E5BF87C15835FB050D452AB75BFC6AC2F7A5162F1
              D20B611A5F5D2126126DB197072F0D89978A297CB2EBA9EED7E3FEA225103E10
              26F2F34523D148BCFF35315D8FD548105ECA23F0E5B88EFCD971BF3ED2D4118B
              753445EA4330BE94C09B75E497B59822C1F890D7919F2B5A13ADC5F5089097A6
              39F10B6C3A4A73C4E0F5D2372C26A421D960A6033F6FA113AFFD83DA788DCA6A
              C17C81036F2DBC791F51F4D308E54BED7C354D4F04CC17D9F98A0CF2336C3CA0
              F33CC5A1563E993A285F62E309C3C614F0C8A9B4F290DA88CDFAE9A4DF46526C
              32FADF9B6EE521B511A3D0B3D66FE501E346348E2D830FDA2E6990D21BC567F0
              C556BE1CA45BAB43E0437E2B0F3AB2A23134A9BCCF763384F251008F3A6FE51D
              AFC54EA961F3C5F60791EA0A68F0C153671DEF5A4A0B410F8184F8031235013F
              F3298DC34FE81CBCE0A5F801AFC0CB0BFE22925EE417F879215C1972C2439561
              BD05178F0A34C7AECFF21BEB397954219FE910047C5E7C2D378F5E3EABF24B82
              815028102CC9AFF29AD765ED94EC003B7F6805B52B91520000000049454E44AE
              426082}
          end>
      end
      item
        Name = 'icons8-denied-other'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005E0000005E08030000009D0C53
              5C00000300504C5445FFFFFF0000005555554242424141414242424242424242
              424242424343434242424141414141414141417F7F7F33333341414141414142
              42424040404242424141414242424141413F3F3F424242414141414141444444
              4242424141414141414646464242424242423F3F3F4242424242424343434141
              414242424242424242424242424242424141413F3F3F40404042424242424241
              41413F3F3F414141414141434343414141414141424242414141424242424242
              414141414141484540FEA626FEA726FEA825FEA524FEA626FEA725FEA726FEA6
              25FEA726FEA625FEA526FFAA00FFA625FEA725FFFF00FFA827FEA626FEB242FE
              B241FEA726FEA627FEB74DFEB74DFEB64EFEB74DFEBA4EFFB44AFEB74DFFB64D
              FEB64CFEB64CFEBB50FEB64CFEB74DFFB44BFFB74CFEB648FEB74DFEB74DFFBF
              55FEB84DFEB84DFEB64DFEB74DFFAA55FEB74CFEB74DFEB64BFFA31EFE9800FF
              0000F34534F34335F34335F34235F44236F34135FF7F00F34334F34336F44235
              F44335F34335F34136FF5555F44335F44235F34234F54037F34236F34335F542
              33F44335F34235F34335F44435FE9204F34336F44235FE48242487C6748C7ADD
              4F41F44236FF4C332E93CA1A78B80A63A70960A3F343354CCCFF4FC3F74EC3F7
              F3433645B9FE4EC3F64FC2F7F34236F3423650C2F64EC3F7F442364BC6F5F449
              3CFBB7B2F55C51F64F2EFF960150818E1E7EBCF44436FC820EF3970B1267A304
              5B9F4ABCF24FC3F7F96B1C848C6936A1DAF65E26FF9701FC990301579BFF9502
              FFA41EFFA41FFFA21AFF9F11FF9B06F44336FFA92CFFAA2DFF9F12FF9800FFA3
              1CFF9801FFB13DFFB13EFEB64DFFB241DC9A3FC48636FDB54CC58737AD732DE9
              A545BF82357B4A1BE9A544F6B14CA16928CE8E3AE1A54CF5B14CFFB344ECA844
              665844F1AC48804E1DCB8C397847197F4D1CF0AA47645744EAA644DE952A584F
              42DB993FDC9A40C38536EEA846554D42D9932BFFA726CC8B2D4D48404A4641C5
              882FBC8D49BA8C49B589496C5C45FFB74D5A5144E7A84BEAAA4CAB83486C5C44
              4C48434343424242429D9A813E000000A774524E53000002325C8399A5AB484C
              ABEDD3020466E35436D778FB8D04A3E99324A1FD9B1287E73850F744F52A9BD3
              6E9FE1104E66ADB708F92E38626C93A3B1B9C3CFDB85835852C1BDE3CBC96C6A
              02ABA90054A7E5E5A754858158561A18CFCD747012F3F110890EE5E30C4C4883
              A5029D76FD8968002C5A8199A52A02449FE9E99F42025ED75C36CFCD367CFDFB
              786EAFAD064CA7E9BD0A52CDFBFDB10A62CD850A78EFFD4058E7D71A6F62AF16
              000000097048597300000EC400000EC401952B0E1B00000505494441546881ED
              D8797CD3641807F0658A2703142F101551BC6FF116F0020F749E788BF709C8B1
              D1B5D8E94099B3834DDD74303690C1D65637B56B29EA50E05506BA292228201E
              C41BB0F1C0311D6A7CD336C9FB26798F24FDF097BF3FF6C9DB37F9F6D9D337EF
              B26665ED94089464EFB26BB7DD76DF23993D692722E1E5B3F7DABBBBAC27A747
              26F99EBDF691F1EC9B41BEF77EB2319CE5F3F0FB1F60D265F9C0DE076584CFEE
              63812BE97B703FF77C8F43083ACCA187F577CB1F4ED661061CE18E3F92AACBF2
              C0A3DCF0FDFB3278F9E8635CF0C7B274593EAEA763BE9FD59234E678C7FC0944
              F3DF7FB4C313297718953F6920C1FE7B47D75F7F6AC3931DF2A790EC4E18DD3F
              D5217F1AD1C6FCEEE4EED0F8D307916DCC3FC3117F26CD46FDB31CF167536DC4
              EFE6883F876EEBFEB98EF8F3147B3BD9D6FCF31DF183E1951D345BC91FF0A4C1
              8EF821F0CA6D2C7E1B3C6988233E8797CFF99FCF343F94971FEA84BFE0F7DFF8
              F85F7FB9D03E7F9124257E56F9AD5B36E3EA4F5BB6AAFC8F3F48D2C5B6F94B24
              49FAFEBB14FFED37A2B809D53789E2D75FA5F82FBF80270EB3CD0F87576DFC7C
              43D2582F8AE23A945F075F589F3CDAF0D94678E270DBFCA50A9FD63E5D2B8A6B
              507E8D28AEFD247DACF097D9E62F47F8CECDAB3F5E85F2AB3E5AFD6127C25F61
              9B1F71A524B5B3D68D927649BA6A846D5EC8BDFA9A6B79F8EBAEBF2197A0339E
              7346F2F037926C267F130F7FB363FE160EBDED56C7BC701B9BBF9DA2B3F83BD8
              FC2817FC9D77B1F4BBEF71C10BF7B2F891349DC9DF773F5D7FE04157BCF0501B
              4D6F7B98AA73FC5F4BBDB51EA1EB1C7CEE68B23E9AB81B70F3C298B1247DEC18
              86CEF59D42EEA3E3ACF071A358B5F37EE132FE03B3FEFE7826CECB4F58B9C2B0
              F5B7AF5839419D9D98973FC95350E09994EF9DE88C6F6D6D5DFE9EF60EEDEF2E
              872FA478DFE4C7FC404BE1E34FF89CF130CB962E79E7ED254B97A5460A5F3465
              2A3064EA933E873C1EC83F35CD882B297E3A23BCAFE4192B1D8040A9CF3D3F7D
              8635AEA4ACDC06FFEC7316FAE2E7C93A0015959CFC0B2F56B5CC7CCBA4BFF906
              4D07605611075F3DBB66510B4CDCC42FA4EB00D432F939735F8AC5A2CD908FBC
              6ED05F7B95C5CFAB63F0F317C4943429E537E2FA2B2F6B4C3814D4CD6028AC1D
              D797D3F8869A582AD116737B16227A48F78370A0FBA5143E5DBA567E33EA2F0E
              A2BAE6079303CDF79713F9B9313DD148B2FEC684AA27E2B89EF683E981E6E713
              F86A5487FECCA4DF1C897724121DF148B3B6E44321DD0F6A0375B682C0E33AF4
              AB5AB0CC33560F7D5DD7AA0F782DF9D93163A24DA8DEA82F15DD37EB004CB6E2
              E79B749845119DDF0E283EA283120B7ECE022B5EF90D9A923DAA6ADA01C83EAA
              83020BDED878FC3DA2F007BE9985893AA830F30D343D15C35E1926E9A0D8CCD7
              D8E6F53583EE0F4AA699788EE20D7C106D0EEE9B9B43ED7C3A1D44DDE0979978
              C2B2C11227EBB85F6BE4797A83F2261DF3A718799EDEC4A2167A386CE19B3605
              8E7513433E5B7445EABE3A5B6FDAD2785A8F74A70B5DEFAADFA5CE961AF96A2E
              3D160DE27EFA6E0AE37AC06BE4B93E59B4FCA4AFDDAB6154071ED31F435E5E2F
              1FFAC84E10467458BC91B7DC8BE9E503EC464206A5E60791861ADE501F019554
              14713D0412E22DA4EB855EE6531ADDF7D3747F5277C10B7914BF304F70CB0BDE
              62925E9CD65DF142656DC00A0FD456AA67B8E261836699F5195E7DDE250F3BE4
              C13E02BF270F9D75CDC316D59594D5FB03017F7D59495D253E97B553F21F9525
              74C6AD8811A30000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-add-other'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000078504C5445FFFFFF0000009D25AC9C26AF9C27AF9C26AF9A26B19C27
              B09B26B09B27AFFF00FF9C27AF9B26B09C26AF9C27B09C26AF9824AE9A26B19D
              25B09C27B09B26B09F27AF9C26B09D28AE9C26AF9C27AF9B26AE9B27B09C29AC
              AD4CBEB35BC3AA45BBA43AB7AC4BBDA131B3A030B4E1BEE7A842BA9B27AF9C27
              B03D9123A70000001D74524E530000225C747642C9C7400087858740C722205E
              747820C53E85C55C891EF97DF414000000097048597300000EC400000EC40195
              2B0E1B000000DE494441545885EDD8C90E82301485611965461C110714B17DFF
              37B4B4488C6988C25960BCFFB6E9976EBA39B3193843665AB63338DB3295D272
              EE9C8FCCF33B2E08C7622216052D87D044B1E25C8CC65922B914C4F1B4E11628
              8DF34C704B1C67096E85E31CC1AD715C48DC5BF75A76238E38E288238EB8E973
              95A6ABE22EBAB3AAEAE5EAAF23EE37B852D359DD3BE9CECAB297D3359D5F411C
              71C41147DC54B9CFFB3B0E3C1A81272D13C76D9A39D043695BB92E260CA3B19D
              9A52230C973F87DE18F03E9607DD0CED8F9E53F7FECBAA6D1859E11C06E714C7
              6E2487F6008467423CC4A472560000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-delete-button-other'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000066504C5445FFFFFF0000009D25AC9C26AF9C27AF9C26AF9A26B19C27
              B09B26B09B27AFFF00FF9C27AF9B26B09C26AF9C27B09C26AF9824AE9A26B19D
              25B09C27B09B26B09F27AF9C26B09D28AE9C26AF9C27AF9B26AE9B27B09C29AC
              AA45BBE1BEE7A131B39B27AF9C27B0FB1D52E00000001D74524E530000225C74
              7642C9C7400087858740C722205E747820C53E85C55C891EF97DF41400000009
              7048597300000EC400000EC401952B0E1B000000C1494441545885EDD8470E83
              300044519A09A68654429A7DFF4BC61882A22C908C678334FF004FB39E200017
              DAA23811AB4BE26854262EDD69CF32397379E18B9954994F1C42335523976234
              AD6ACB35204E3703B747695AB7863BE0B8D870471C270C77C271053972E4C891
              23476EB3DCDBB945EEE51CB96D704FE71639BFC89123478E1C39727F1CF83402
              5F5A118E3B0F776086D22EF65DAC154653D7F14A2D315CF73D7A2BC03ED5E5F3
              0D2DBDEFD49BFC79B5C3B0EDC57D75A27FCC2739B40FF630C81F4DE354560000
              000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-skip-to-start'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000002C0000002C0803000000295AAA
              3300000048504C5445FFFFFF2096F32096F22096F30000002299EE2095F32096
              F32095F22294F22196F23F7FFF2195F32195F21E96F02195F32095F42096F31F
              8FEF2195F22498F02196F22095F22196F30CEC4E230000001774524E53009DCD
              85000E6EC3A53CE10483FD22C75EF110A7223CC774640CC30000000970485973
              00000EC400000EC401952B0E1B000000B549444154388DA595D9128230100451
              579178A078E4FFFF542D8C15914DA6CB794D3FD06433DB34308B65CACABCAC37
              6FB88D295B8FED42ABC2BBFD21AAF0B17F1E89F0E91C5578B88C470ADC85A8C2
              2F3315BEF69F932A3C9A49703253E05B882A9C9955E1DCAC067F9995E1895911
              9E9A15E05F331F9E3173E1FB8C990B17F2278C3E0309B25FC72E055E371B2438
              A26CF8D9B3820F9655012C19565F868AD158E51A2A73636B822D20CB579BB234
              87B434E53C00AD2360226BB4D20C0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-end'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000002C0000002C0803000000295AAA
              3300000048504C5445FFFFFF2095F32299EE0000002096F32096F22096F32096
              F32196F22294F22095F22195F22195F33F7FFF2195F31E96F02096F32095F421
              95F21F8FEF2498F02196F22095F22196F3AB6B218D0000001774524E53006E0E
              0085CD9DC3E13CA5FD8304C722F15EA710223CC70B0D42320000000970485973
              00000EC400000EC401952B0E1B000000AD49444154388DAD95D9128230100401
              410E2F4061FEFF4F5124560A13D8AE629EFB219D6C66930426CD4EB1E485CB79
              81CBAA8EC18D5C4A07EB72BDD961E9FE00B0DA0EC052FF04B0029E7138E0B901
              BF3D5F005E7B6EC32BCF3D58D50060DF731FF63C2DF0CFD3043B4F23FCF5B4C2
              B3A719FE780258ED08602F07C3E41840905C1D7914F0DC6490C08892E127DF0A
              7C585205A064487D916204954BCA1CAC09B280C86A4B03664BFE97A63913E9E4
              5EAAA5C24D0E0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-rhombus-add'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005E0000005E0806000000AAD2A3
              6E000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E35644758520000055A4944415478
              5EEDDBBFAB1C6514C6F1082982A455AE60A190BFC056095A69A17005C146B030
              608A1469FC038414824510C12682815B88DCBD1BAD2C630A0D7ACB44025AC444
              C132DE545710C6F3CC7DCF6477E7CCEFF3CE7BCECE7CE191607667673EC4BD9B
              DDF5549665F312ECE41F1E3BF8F1D97C0EF30B0FF0C50FBFE67388EF13BE40BF
              959DCC1FBE3FF812BA4F7C5FF095E83C3FF87EE01BD1793EF07DC0B746E7D9C7
              B70FDF199D671BDF367C6F749E5D7CBBF083D17936F16DC2ABA1F3ECE1DB8357
              47E7D9C2B705DF157DFFD6F7F9A4DF136707DF0E7C1FF4AF6E9EC9E710DF067C
              5F74CE217E7AF8A1E89C33FCB4F05AE89C23FC74F0DAE89C13FC34F0B1D03907
              F8E3C3C746E78CE38F0B3F163A67187F3CF8B1D139A3F8E3C0A742E70CE2C787
              4F8DCE19C38F0B6F059D33841F0FDE1A3A67043F0EBC5574CE00BE3EBC75742E
              31BE2EBC17742E21BE1EBC37742E11BE0EBC57742E01FE7078EFE8DCC8F8C3E0
              B7059D1B11BF3FFCB6A17323E1F783DF56746E04FCEEF0DB8ECE45C6EF063F15
              742E227E7BF8A9A17391F0DBC14F159D8B80DF0C3F75744E19BF1E7E465F4F11
              BF1A7E469753C297E167F4FA14F0CBF0337ABB06E2AFC3CFE8DD1A80FF047E46
              EF574FFC197E6883E1D18CDFAD9EE8B8EB3A3C9AF1DB35001D95E1D18C5FDF40
              7424C3A3195F4E011D55C3A3197F3D2574540F8F66FC9314D151333C9A3ABE32
              3A6A078F2680FFE68DDD73B44BB47DDA1DDA235A86BDBE7C373BBFFC207B69F9
              51F6C2C167D9D38BEFE4EB6E818EDAC3A32DC427D4D3B47768B719B9ED5E5E5E
              CC9E5B5CCB9E5ADC0CD7DC0E1D7583475B844F78AFD2F0275B846D3BFC97F0CC
              E2FA1F6DD1517778E41C9FB0CED0AEAEE2290DC76C759DFDE091537C82D9A175
              7E5AE9301C7B273C5C65FDE191337C80D0EE05A098C363D4E20F83474EF00902
              4F2F31FFA46F0E8F55799DC3E191037C42E8F49CFEF0F1C3ECE8DFA3D2FE393E
              126F5FB1CFC3C397D2814786F10900AF5E2498CAFDF9F82F622977FCDFB178FB
              9ABD114E632D3A94123C32884F178ED7E99D5F322AC2E3F9FE74389D223A9422
              3C32864F178DBF1C4920B55384C7DE0BA753448752864786F0E9A27BFD405586
              BF1D4EA7880E15011E19C0A70BC67B2F1244E394E1B173E1B4F2E85091E05162
              7CBA58BCE12521342E02FCA5705A7974A888F028213E5D2CDE659410F2BD75E3
              EDCAD5C14BB75F9DF458B4FD705A7974A8C8F028113E5D6CE5AB99AFEF7D9343
              6AF7CBDF87E2E3D1EE84D3CAA39B8E008F12E0D3C516EFA76F2E01FCA3705A79
              74D391E0D1C8F8C2C5174B00BF864C371D111E8D854FF7912E9E373D78141B1F
              B7A5FBE0E33A09009BD653CD6AB1F0033AEE834F8604807CD3F9E12AA58DBF82
              8EE183690120DF273F7F9A2D7FFBB672752F27A5DBF3AEDFDD131F8F96E0E564
              5D5AF81BE8D88B07572580568BF017A8CBE14CF3E85089E1D1507C011DC35730
              048056F3FD964197FAE257A0F35E597E2821344E19FE305C65111DCA083CEA83
              5F838E3D7FF08504D13865F80BE10A8BE85086E05157FC86E1CB46AF2DDF9730
              6AA708FF3BADF433890E650C1E29E3EF2CBE7CB081D13845F8DD70556BD1A10C
              C223357C3A061D8B00AE6D80D44E097E2F5C4D293A9451783418FF041D872284
              B3B4D69FBD7EFCD395CA49B71786CF5ACFE6D721641B1EF5C67F82CE1104BED0
              84E75C094A73F76991BFD034469DF1CBE81C406831BF4DD6F82D32E4031EB5C6
              AF46E708064F3B7B014A733866E5D3CB6A7EE051237E33FA6A84B44BD378EAC1
              31C4572F55F9824795F8DDD03902C3FBF61768873409B56EB80FEEDBFCAEE946
              FEE05109BF1FFA660488AF835CA695FE579CF06BFC3BFC1E6EB3F6DE4BD77CC2
              A3025F077DECFCC223803B444705FCBCB1979DFA1FF0491B3AB771EE65000000
              0049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-rhombus-delete'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005E0000005E0806000000AAD2A3
              6E000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E3564475852000006454944415478
              5EEDDB4F681C551C07F01E7A10CCD9530F3D1651F0505A94A8875653B1070F22
              01EBADE2A5A0E2CDAB07855682B4504BC5852A064D6B625BDB189424B41E052F
              11156DE39F6A0441D4959AD96CC6DF77F6FDC6F9F3DEBEF9F366E6BDDDF9C2B7
              4D67DFCCECFB106667DF6E77F8BEDFB6810EFE7031173EBF2BA88371171EE0E7
              57D6823A88EF267C88BEEA0FEA1EBE7BF0297437F1DD8257A273DDC177075E8B
              CE7503DF0DF8CCE85CFBF1ED87CF8DCEB51BDF6EF8C2E85C7BF1ED852F8DCEB5
              13DF4E7863E85CFBF0ED83378ECEB50BDF2EF8BCE873AB5783CA1E93D61E7C7B
              E08BA07796EF08EA20BE1DF045D1390EE2370F5F169DE3187EB3F0A6D0390EE1
              37076F1A9DE3087E33F055A1731CC0AF1FBE6A748EE5F8F5C2D785CEB118BF3E
              F8BAD13996E2D703DF143AC742FCEAE19B46E758865F2DBC2DE81C8BF0AB83B7
              0D9D63097E35F0B6A2732CC0370F6F3B3AA7617CB3F0AEA0731AC43707EF1A3A
              A7217C33F0AEA2731AC02F0FEF3A3AA766FC72F0A382CEA911BF38FCA8A1736A
              C22F063FAAE89C1AF0F3C38F3A3AA762FC7CF0E382CEA9103F3BFCB8A1732AC2
              CF063FAEE89C0AF0F5F0E38ECE318C3F1CBE458FC720BE1ABE4597C710BE1CBE
              451F1E03F869F8163D5B4AE2C7E15BF47C2981FF3F7C8B5E2C05F15BF8B2290D
              8FB4F8F952101DBBC6E191163F5B4AA0236978A4C51F9E92E8881C1E69F1E531
              808EA8E191163F1E43E8C87078A4C51FC4203AA28747C60CBF7B60DF04F53075
              86BAFCD7817DEBF4B7CF5D7B62CABFF2CCB4FFDA8B2FF9874E9CF6EF9C5D4A18
              0C4747B2C12363804FA8F750CF52FF66E42CDD989AF44F1D3BE6DF7DE67D9ABB
              1E1DC90E8F8C283EE1EDA276A83DC62CD23F0FEEDFDE3834394B3FEF12875626
              1F3C3262F8847484FA07E3192A8E77449C429AFCF0C888E013CEF10856153D2E
              4E954A3178C4717C42C1B55C8665BAEF8853C6521C1E71149F30AAFE4D4F7646
              9C3A4C3978C4317C42C0355D861374F3DC5BD2EDBA6EBEFBB6747BA4B16B7E79
              78C4117C9A3CEE5E942FA44047FADF7F2B7D5C55EF93CBC17EBD954FA58F8BE2
              1675B7782A86E01107F069E2B86594A184E89CFE8DEFFCEEC1FDD2B1D17A8B97
              C41E83F43E5B948E139D154FC5203C62313E4D1A6F8EA4F7E949744E7FFD86DF
              7DE4FED478AE7765418C8CC75BFA583A5EF43E3C1F1A66101EB1149F262CBD8B
              F9F7D4EB01962AFD1FD7FDEED403A9FDBCCBF362843CDE47E753FB889EC5F3A1
              2186E111CBF069B2587B512E03F4AEAF0458AAF47FFAC1EF3EF66038DEBB7841
              3C22CFD6D75FC58E9F289EC7040DAB001EB1089F268A052F1942582DFEAD9FFD
              EEE30FF9DEC29CD8228F069D7B988656048F58824F13C52AA30C20562DFEAFB7
              C44FF264444767687885F08805F834D1E5C4C495D5E1AB92031D5DA65D2A8647
              1AC64FAEA7EBDABB0E97ECD9FA26173A7A9376AB011E690A9F8E2199B8B659F1
              0BA007A5D4048FD48D8F7DE918B2896769FFB70D0029B3ED79F482FBB0745F5D
              2935C22375E10B741C4336715DBDC5C132802EFD8D5F0AE1536A8647AAC68FA0
              A3F88C54367955BDAB17019339B8DBC9895FE3353E99AAF013E8E8D2D34FC926
              2FAD6A1940979CF8D7689786E011D3F81274F4C4F32FC8269FAA77E9C3005195
              ED7FBAE2277972E09FA4E10DC223A6F015E8E893AFBE219B7CACDA650071F7B2
              F5E517628B3C19F1A76968C3F04859FC21E828BEF7F2FBA3E9852EAEB7F04180
              A64AF296B124FE6D6A856B357953145F83CEED3CF7AC0CC1BFFDCACB01962AAA
              FB741DFE900F458235791A62093C52043F033A7AEF9BEFC910826E76CE0458C9
              E8DE1CA9F0359F44EDC554699845F0485EFCCC5D59DB989A9C9740044DE2677D
              479AC4D7A0CF8B595A088F18C7A763D13169E2BBA9CA7579C6CF8ACE65FCDEAA
              F633D73D628696C223C6F007E8E2A858A93C1AC14815F8B2EDBAE2AE48B63DD2
              A3E22904B1171E298D1F47E710C2E9044AD5ED885387B11B1E298C2F47470862
              27752E025365719E9DE2D461EC874772E3ABD139C0A02ABFEE61A8387E0A1D71
              031EC98CAF478F866070CD57BEE0162C8E17BBA627E30E3CA2C5CF87CE21A43D
              54E5AD66CEE238E1DD8B2A6EC1234AFC62E8D110D85E2AFE6301DED6CB5055C5
              78EC17BC39CA12F7E091147E79F4680810DFC399A69EA45EA3DEA446A1F16F6C
              C7E318372176CD1C37E19110DF2C7A5D71171E01B883E84808DFB6EEFA3BFE03
              72F83711316020C90000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-rhombus-edit'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005E0000005E0806000000AAD2A3
              6E000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E3564475852000004BD4944415478
              5EEDD55D48547918C7F1D382BA156D41B0575D76157417050BB11544B5BD5D45
              45DD14D4D245202A141574D56D50EC9ABD40F47257911569655AD32ADD2F745D
              641905A551A42933A7F33B33CFE4382F9E73FE6FCF3373BEF0A8E071063FFC50
              CFF7FDF41C5CFE83C46E0DFD1E9EC0E4C203FCE6D317E109C497095F44CFF8F9
              93872F0FBE0C5D26BE2CF8AAE87472F0E5C0CF8A4E27035F067C64743AFEF8FC
              E163A3D3F1C6E70D9F189D8E2F3E5F7865743A9EF83CE1B5A1D3F1C3E707AF1D
              9D8E173E2FF8B8E83732BDE155FA5EC5E383CF073E09FAE527BF8627109F077C
              52744A20BE7B7855744A18BE5B785DE894207C77F0BAD12921F86EE04DA15302
              F0EDC39B46A798E3DB85B7854E31C6B7076F1B9D628A6F07DE153AC510DF3CBC
              6B748A19BE59782EE814237C73F0DCD02926F866E0B9A2530CF0F5C37347A71C
              E3EB8597824E39C4D7072F0D9D7284AF075E2A3AE5005F1D5E3A3A65195F0DBE
              5ED0298BF8C9E1EB0D9DB2849F0CBE5ED1290BF8F1E1EB1D9D328C1F0FBE51D0
              2983F8D1E11B0D9D32841F0DBE51D12903F8B3C3373A3AA519BF367C8A5E9A46
              FCEAF0297AE534E157864FD16BA701BF1C3E458F96227E297C8A1E2F05FC9FF0
              297AB212E2A7F0AA29C3A3143F5E09D1F1A3A5F028C58F96023A2A8747297EED
              14D151657894E2574E033AAA0E8F52FCD234A1A3DAF028C5CFA7111DCD0E8F1A
              1D5F333A8A068F1A155F017DA4A363E3DBF6F6E7C1E7BFFD93277F095FAF5074
              78D468F80AE8C3EDED9BDEB6B58D07F0FE9BB6B6A9E0EBC3E16B168A078F1A05
              5F01FDF6E3FFB63EB8FBF0DDCB63C7BF013EC40F6EB8A3A395961F1F1ED53BBE
              0A7AFFE05FDDFD43E3DD03437E80FFF9F59123E1EA69F901FE013C970C1ED52B
              BE02FAC4A5459BFB7BAEBD073A5DEFBD87A33396FF0CCF268747F586AF803ED5
              E96DCA9EF3C6272FCC9D7CDC7BF5D374FCFCF28F8E078B1F1B696D5D81E7D5E0
              51BDE02BA0E73ABD2D40F7BB02CAE0262E2E9CE8EFBD3E5A8AFFE055F00F775D
              F85E41EAF0483ABE86A5133A1D961FFCD9F908F4DB038363DD03CF5685EF5548
              0F3C928AAF71E9332FBFFC2BC3773243C5A553FAE091347C034B9F7ED94E6F6C
              F2E26F2BC3F79A915E782405DFE0D271400F9E2B5B3AA51F1E71C7B7B0F4DC3F
              5EC9DFF4999981475CF11D2F9D32078FB8E133583A65161E71C167B274CA3C3C
              728DCF68E9941D78E40A9FD9D2297BF0C8363EC3A55376E1912D7CA64BA7ECC3
              23D3F88C974EB98147A6F0992F9D72078F74E3ABA15B593AE5161EE9C257409F
              FAD7DB6A6BE9947B78A48A2F68E9140F7894145FD8D2293EF028097ED2A5DF6F
              5A9EEBF23E57C2A633B1748A173C8A8B1FF97EA2A3EC939653D9FB4DA301FE64
              5574034BA7F8C123EDF8A5E8C1AF3B279769F9DFCFB4F8B99EA68FB9F3DEF732
              74434BA778C2236DF8A5E8A8E7CCD2255F1FCDFB0278DCF4E59B5E3AC5171E29
              E397A3A35DBBD66EDBBFEF4FFF6BDFFC10BEB8FC2EEF83E9A553BCE15162FCCA
              E868DB8EF567576DD8EE1F3AB8DAFFD6377724FBB4B92F97693E91EB695E5678
              C478FCE1516CFCEAE868CFDE355777EE5E77FAD081D57F0C5E5ABC20F8EDE714
              BE652D19F028327E6D742EC98147B3E2CB4047B2E051557C39E8481E3C2AC397
              858E64C2A322BE3C7424171E015C203A2AC2A767FB7CEF078A02E2CF49BDCE74
              0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-update'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005E0000005E08030000009D0C53
              5C00000300504C5445FFFFFF000000FFAA55F7BF2AFBBE2CFABF2DFBBF2DFBBF
              2DFBBF2CFABF2DFABF2CFBBF2CFABF2DFCBF2BFABE2CFEC128FEBB28FBC02BFB
              BF2CFBBF2DFABF2DFABF2DFAC02DFABF2CFABE2DFFFF00FEC52EFBC02DFABF2D
              FABF2CFBC02DFBC12EFFFF00FBBE2DFAC02DFABF2CFAC02CFCBF2EFBBF2CFAC0
              2DFBBF2DF7BD2BFBBF2CFBC02DFFBF33F7BF2FFABF2CFAC02CFABF2EFAC02CFA
              BF2CFBC02CF8C22EFBC02CFBC02CFAC02CFAC02CFAC02CFBC02CFAC02DFCC12C
              FABF2DFABF2DFBBF2CFAC02CFBBE2EF7C12EFFD42AF9BD2BF9C02CFBC02CFBBF
              2DFFCC33F8C02BFABF2CFABF2DFFC32DFAC02CFAC02DFBC02BFEBF2DFEB92EF9
              BD2FFBC02DF9BF2DFBC02CFEC62AFBBF2BFBC02CFBBF2CFEBC2FFBC02DFBBF2C
              FAC12BFFBF1FFBBF2CFFBF2AFAC02BFABF2CFAC02DFFBF2FFAC02DFABF2CFABF
              2CFEC431FBBF2CFBBF2DFCC12DFAC02DFBC12BFABF2DFAC02DFABF2CFBBF2DFB
              BE2EFBBF2DFEB624FCC02CFEC230FBC02DFAC02CFBC02DFAC02DFFBB33FBC02C
              FFC32AFABF2DFBBF2DFBC02CF9C02DFBBF2CFAC02DFEC427FABF2DFABF2DFFBF
              2AFEC638FAC02CFBBF2DFFBF3FFCC02DFBC02DFCBF2DFAC02CFAC02CFABF2CFB
              C02DFBC02DFCC02EFABE2BFAC02DFBC02CFABF2DFBBF2CFBBF2DFBBF2EFAC02C
              FBBF2CFEC12BFBBF2CFFCC33FCC12BFAC12CF8BD2DFAC02DFBC02CFBBE2DF8BF
              2C439D4342A04542A04743A04643A046429F47429F4742A047439E46439E483F
              BF3F41A04642A04643A046429F4642A046429F4648914842A04542A047439F46
              43A14738A954FAC02C41A04842A047429E45FAC02D439F46439F473F9F3FF9BF
              2D00FF00439F4742A046489D48FAC02C43A04643A04645A245439F4742A04644
              994442A048439F463FA246429F47FBC02E439F473F9F4AFABF2C439F46429F46
              469E46FAC02C429E47439F46429F477F7F7F45A24541A046439F46429F4642A0
              47FAC12D429F4743A047FBC02C439F467DBD77B9DBAA7CBC784AA34DB7DAA9B9
              DBAB49A34D4BA44E7BBC77DAECC796C98D97CA8E96CA8DDCEDC88DC5856CB469
              43A047FABF2DFBC02D1FF557A6000000ED74524E53000002244A70818D99A9A5
              917C5C3E18125295D1F9E7B378320216CDFDEB9F42004EB5FBE358D3F79D22D9
              931420B3EF6872F7C326D5C9BBADB1C7F35A38E1C17E4620062E62DF990A287C
              BF10FD7A401C0A2ADB609B1240D9DB1A4EDF3A08850C34F5AF10E7B16C1ACD89
              5EE146AF66B74452D7065614CBB9C1AB0E441EEDC7D32CC9A30CF3F11808EB91
              045A8758ABFB68D1485E3AF98B74DDCB48F5891C50045666266A97422822547A
              97A3A999876234043291DFF1AD500648C5E57208BD22B74CBF5AF30864008BCB
              14F19DD91689D30E5CAF24684CB718E59BF91CA73285E1022074A77ACF3E97E9
              9FA33BC82AB8000000097048597300000EC400000EC401952B0E1B000005B449
              4441546881D5DA6B40144500077087BC0B898C404014E27824958410C9499812
              682F452B2CD32831795427A211BD080D357A274541512ABD2C8B204AC88EB2A8
              28828032B3B42BD434CBCC48CDEA72EFDCE576666776675F77DC87FE5FBC9BD9
              FDDD3A3BB38F19860DF372806A7C4E1A6E309EEC3BC2CFF714FF53479EA6BE03
              8A2A1F707A60D0282791E090D0D16143C18F318C0D7752137146A4965F50E04D
              51D13174DB9558E318F7F9B033C729D983893BEB6C37F9A87354712EA3C6C7BB
              C19F9BA009E73221D1A49337259DA75967937CBE2E3E209A62C44D4C314F4A35
              5F10EC90D6A54DD6C15F3845DCBE53D32FCA40BD3073DA74DF8BC53F7049A656
              3E2A8ED8312635EA52E95E975D2E3AF333666AE3A767E17B45CC92EDDAB31388
              0137F10A2DBC016FDA08C395723897AB42703F9BEA93FC1C4C0FBFFA1A259CCB
              DC6B317FDE7C35FE3AAC6572AE57C3D9DCB000DB635C2E561326E517DE286CBB
              284F83CE6676BEB04F810F2CCD2C0C95F079427F73F82B0D452237DD2CF8B7B8
              8A7C2C8B9D45127E09DA2CAB582BCE2677A970BA96B1DF4DB796B023ED36315F
              28E8A53A74B625841E947F3B28BA83FB300988F8F96968A3445D3AEB9BD1AE77
              DEE5FAD722E6EF469B1875EA0094896F0DE1703442FE1E5415A2F9AC0A295F4E
              F22B6005CF9BEE8535B101FA75F64A455E4843457C14EA9273DDD1413CD93C15
              227E25AC58E50EBEDA781FA12F46352E7E19ACA8BC5F3FFE40D283A233FB9088
              47DD66966EFCE1E258A73845249F076F2113345E6950C21EC996E068C842BE18
              563CAAF7D8331F4B96F26B84FA417E2A5F1E4EBB64ABA522B052C45B844A8E5F
              5DC5979BDDD0D9E43EFE04AE876337508EAF86154FBAC7B3796A550DE25760E5
              1C5FCB9767E93DB178E29F7E866742B1528EAFE3CBEB3CD0D9843D9B30786BAC
              2079D3733CBFD6339ECDBA05F9D89075F1EB60A3ADF79807A0FEF917443CBA22
              BC3804BC282CFF12AF57D57B854FE7F97943AF733CEC971E761C39FE659E9FE1
              1DDE8FE70BFE97BC971BC7CBA71676CC6CEFF05E1E561BE045E115AFF0437A49
              93F226F86C5CEB151EA4F0FC5877915737BEF67AC31B8D4D6F36BF45E1D77A74
              337C7B530B83D2FACEE677C53CBA955BE408F958DB1851DE7B7F0BC9E7C249A7
              0FF4E21FB68B712E2D1F113CF898E7C3E96FEEB2F9A483A6B369FC14E73F83AD
              A3EB21B0F373199C4D5737C697C147D82F749CDCCE1E799D617AFB041E8C8087
              EFAF9DFF52496798AFB60A3CBA2E546A9E62FD5A5967986D9D884723CBE9A751
              FF46EEAC0AD92EF0DF42DE11A98DFF4E55675A77082F9E41D0DFA93C31C9C7AA
              C01E871FBE175E9B2321EF5CAAE5B559325685FC67FF97FF64FB4178E9FF11F9
              1A3A7FBF926E47FE2E37A72C3629EA76FB3FAE2FBBF708132E8988579F706951
              D6EDF6BF5D5FFBB1E9A23582AF72FC3FA9E9C7FE727DDF8BF16539C8771A15CF
              EF464C3C7A445E67F6E15375A3B1A9BA68A589919F31FDF09F0312FD0F58B29F
              9C68AC12FC29BFC8F3BF0AFA21BB1DFA48FF1D551F20A7492763D3328EDF6407
              D8415C873E45676C4A93BCCB9372E97C03A1BB7C9A2EE1C11CAC7DD81FF0A74E
              513742FE186F1E1AA0EAE2C6E1DA9F5C7988892E95FE17D0A51EF987A93AD32B
              5D1E5898E32453956CACCE40F3B7F5D32C81C18CC4A7EA4C3B6571236F91539A
              9A923AF39202F3CA9DDCACBD83A1FB629D69A22ECD18D2283F80C53140F5253A
              63A52F2C95A72AFBC7199A2FD13BFAE496C58697281E3E43F1253A73506151AF
              546151CF7154EA4B75A65979493255764992B4389FA2B7A92EA816A6645179F2
              F0599FA2B307AFBE1C3C73FDF8A01AD25E6E368EDC4C4A47287A0FD0C073F1C9
              A836A4D7BA16B32D1BCA07CB1A29209196AD5A795AB67429EB1DFDC0131E74F7
              2AE9362BF08C073BF62B1CBB4BF784077DDB64DBBD1F78CE03B0BD95AAF7F4C1
              0D3CE3415FA34D82B7350BF51EF2EC33CFAEDD44A33758F15A8F7900F6F4EFDD
              D775C0666BED6D6FB27693751AFF8EC4ED9C001F384851C96A38BD0000000049
              454E44AE426082}
          end>
      end
      item
        Name = 'icons8-collaboration'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000243504C5445FFFFFF0000002299EE1F96F32096F22095F22196F32096
              F32095F22197F000FFFF1F9FFF2195F32096F32195F22196F31F94F42095F321
              96F22096F11999FF2196F32094F22195F22299F62196F32095F32093F11366C1
              1464C01464C11363C01362C42096F21564BF1464C01363BF2096F21564BF0055
              AA1565C01364C11465C00066CC1666BE1565C01465C01564BF2195F32195F320
              94F11C82DF2096F22491F21565BF1567BD1464C01465BF1565C01464C01166BB
              1564BF1564C01465C01565C01464C01666C01564C02196F2FEA624FEA626FEA6
              25FEA726FEA726FFA425FEA825FEA626FEA625FEA727FFFF00FEA625FEA726FE
              A7251464C0FEA625FEA726156ABFFFAA2AFEA725FEA625FEA222FEA625FEA625
              FF7F00FEA725FEA626FEA625FEA726FEA625FEA524FEA625FEA525FF9933FEA7
              26FEA625FFA726FEA626FEA728FEA625FEA725FEA923FEA726FEA726FFAA00FE
              A626FEA725FEA91CFEA625FEA726FEA627FEA725FEA626FEA824FFB219FEA625
              FEA725FEA725FEA8257F7F7F617C8D5F7D8B607C8A5F7D8B5F7D8A607D8A5F7C
              8A5F7D8A607B8A627F8B607C8A607C8A5F7D8A5E7C885F7D8A607C8A5D7D8A6A
              7F945F7D8B5F7C8A5C738B5F7C8A607D8B617F8B617D89607D8B617D8B5F7C8B
              5F7D8B607C8D5D7886607D8A5F7D8A637F8D607D8B5F7D8B5F7D8B607C8B607D
              8A607D8BFEA626FFA726166BC61A79D41B7FDB1C82DF176ECA1E88E41977D321
              95F11975D12195F31669C42094F11B80DC1566C02091ED166BC7176FCB1870CC
              1770CB1565C0166CC62196F32DB0A769000000A774524E5300000E588FA5AB9D
              7E36000883F3CF4418C9FD740AC964F71EF597F36866624C1A8DFDC340A39102
              9B5AE10442839FA5D9999DFBD514A92E87A16AEB0E60A7C5CDF338F17A307EB1
              C77E303EC7C53A00819995976C680C18F5F316918D02E52E504E6452363604EF
              EDA19F26FBFB248D8702B9B708A9A762E7E5600A58A9D758022E6891B3C5CDB3
              91662C97E9E92A3AB5380C97950ADDDD2A3EEF36F5F12C12E7E31293A56EAB78
              EED4B0000000097048597300000EC400000EC401952B0E1B000002D949444154
              5885EDD9F75313411C05700EC48A62EF05B160C7DE6B50402CB11B1B2A28F682
              6297A6800A2AF6825D408E5363EF1AEF4FF32E097B777BBBDFDD3B6F677426EF
              E7F73E934C6E7693495C9CA0487AE2135A25B686D3A66DBBF61267226C87A48E
              2A4F3A253B613B77E142B574EDC6CF76EFC1AB6AE9C9CD263950D55EBD39D9F8
              3E4E58B52F279BE04855FBF51F40CDC04129881DEC8C557F8780A40E191A6587
              39647F41AC96E1696136D121FB93C1864688614323C5B0A3460B614363C4B063
              C5B0E3C4B0E93136C6FE6BEC0F31EC7721ECB7AF42D82F6CD505FBF99308F6E3
              070ED531FBFE1D8FEA947DFB864BB5B1E3271033715230187CFDEA251F6A6327
              4FA17CF999CA0B9258AA2A4D4B75CFD255499AEE9A8554296D864B1654B5CC9C
              E58665A992347BCEDC79F3E9594062D92A2BBE0C3BFBF7AAC58DB25EA86637C2
              7AA39ADC30EB956AB83ABBD03315B9E92DBF79BD753D6723AE8D5D9499959D9D
              B53887DFC117BA8BB14B962AD12C5BCE8712169A6B61FD2B9A1594E64C3F1B25
              2F7C191676A562C92A364B59F8569BD8350A96B52C95BA5867B0EB037869C346
              58051606BB09EF28CA6698051688DD926B2FE5829F1AB4406C8EBDA3285B2116
              5A20761BA9B41D62A10562F348A53C88851688CD2795F221165A207607A9B413
              62A105620B76D93BBB0B20165A18CFED1E7B692FA4820B83DDB71FEF1C3808B3
              C0C274261CC24B8761155A98D8C223D6CED142164B5F980FC6A263E6CEF12296
              0A2C2CB783FFC4C996CAA9D31CA7387D81DD6567CE1697040225C5A51C2F155A
              787EF3C658325B567EEE7C45655555E5858B97CACB78E6B48589ADAEB92C9B72
              A5E62A0BA52F105B7BAD49C6D254711D42A14594BD71D35609D76EDDA6A1F022
              C256DF2155F4DCBD4779FFF022CCDEAFA37564B9AE96A4B2163AFBE021BD23CB
              8F1EDB55E642639F3C853AB2FCEC39AEB2171A5B0F7764B91E67D90B8D6D6095
              1A7096BDF8EFD8C6178C34E22C7BE1F07F4BEEFC01596D7E00996640AA000000
              0049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-bug'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000050000000500803000000B9CF02
              9F00000300504C5445FFFFFF0000003A485036474D36464E33336635454F3647
              4E36474F3646513C4B4B36474E37474E334C4C37474E37464F33444C37464D36
              464E36474F36474F36484D37474F36474E38454D37474E36474E37474F354750
              34464F36454E37474E48484833445536464E36474E36474F37464F37474E3746
              4E35435036464F36474F38474C36464E36474F37464E37465037474F37464E32
              475136484837464F37424D36474E36464E55555537464E38465436464F3F3F3F
              36464D36464F37474E37485037474F36474E38464E37474E37464F37464F3544
              4E2F3F4F37464F37464F39464C37474E37444B38494F37474F36474F36474E35
              464F37464E334C4C38485036474F36464E35474E2D4B5A2E4545394A5237464F
              36474E3746503F3F5538474E36454D364A4F384750007F7F2F7C2F2D7D312E7B
              322D7B32307F3038545437464F36484E327A322D7D312E7C322E7D312C793736
              464F37474F2E7D322E7D322E7D312E7B3237474E37474F36464E325C422D7C31
              2D7B32345945306A3C30683C337F332E7C312D7D313079302E7C322E7D332D7C
              322D7C323377332E7D312D7B302D7D31364550306D3A30713836464E36464F35
              474F37464E354A4A37454E335D43335F4137464F36464E36484E2E7D322E7D31
              3A624437474F36464E37464E37474E36464F2E7E312D7C312E7C322D7C313871
              3836464F37484F37474F72B74956A8476DB54949A34754A84757A74736474E37
              474F7ABB4A45A14650A14462AF474EA44636464E8DC64B4CA44635465088C34C
              4DA44637474D7FFF7F5DAD480F41110F401085BE496AA03B689E3B57A9483161
              1E2F5F1E57AA486EA43C0A360B6EA33B204E161E4D1586BD4754A84748A24874
              AA3F28571925541972A83E54A74743A0476EB5498BC34A7ABB4A49A3470D3E10
              0D3D102B7930276F2A0B380D266E2A0B3A0D0C390D246A28306C3B09350B0B39
              0D18521B2A752E316A3D2A762E2E7C32306E3A316A3C316B3C374A4E2F77362F
              7835364B4D3553482E7C333555482E7D32365249307238307138316E3A32673E
              335E4335534937474FC2E1C404000000C174524E53000022785E043099852E10
              6A7214EFC71E44F7F73C38E1C93AED4A20381C70FB060EEB8DDBAFAFD912B1C5
              32DD7A646881C3180EAB16EDFD02FD128D046CF98B5CD1CF5AB3F15234108B87
              28D3242C7CFB745AA30A3ED7BF68100A1E56D7660C44425C56022A97F3F32A08
              E75418A9FDA51670C146EFED426E40C1E3FDFDEFE5E314F7F7147278D5CF0E4C
              448146D7BF9BBB469D1836E5FDD57E2AABC71A60B5F94EE556B5F3C508EF6ABF
              76F1FDFDDD3CA9A174FD28EFB5E11ADF4C1EDD5202FD50E57473000000097048
              597300000EC400000EC401952B0E1B000005D6494441545885CDD8694014551C
              007027450E05528220F240500C821058390D33C1342A8410C18044B2C2CAD20E
              20BA4CBB8DF020DC0A942E130D73495C053BE8BE743B58374BA568A1B0B22CD7
              447BBD6B8799376F7616E143EF8B6FFEC78F7DB3B3E3CC1B3264F08780C63943
              87B9089C31DCD5D5D5CD7EE0060FDC79551E23467AE089087A7A01E07D2EA774
              140060B4FDC0071E9CC729F2F503E07C39E80F4B41C005CADA4094B890CC71D1
              1865CDD87128315E06064D403110AC5C76080C4F24D349701AAA28987C116E0D
              937F4221FC621C562E3B028523D1EC12348BE22D178E29D10C28C4C402EEB275
              5361342E223E3E22014EBC12B9CB0549C9020B0AC2B44B712E8559F6741CBD6C
              06FEE77266B933713435CD1E9081C2AC10B2EC2BE45DB38138E6C8335792E5A6
              5F2546E4A07DD95733CBBA268E7019739944260E675DDB176140B86C1E2864CF
              43E11C451C83F3A511052870412117858314610CCA22CE8241830BE6792C40E1
              051E7983025E37AFEF5BCE4F93A5CE0A2C00B2113950B030550EA6160E10BC1E
              3063E100C14C16CCFCBF8145FF9E39DD7BEA1F3C4EF59E3E73B2E82CC0F445C5
              F4E886C537DA9871D3E29B69B264EC12274148DE82C85B6F63353C96DE7E07E2
              962D21B51AE072209277DEC5F5E0B8FB9E9252CA81E51AA050564E2BEFAD50F3
              6CB6FBEEA745E565821608C91C547A429D83E3EFBF504D4E19DBCB053179FC4F
              87A0ED8F631C4E1584B7D4071C7B36DB83D9BC3E55F0A1155AE0C32BFB05AED2
              F26CB647FA053EAA0D3ED61F70A5B6675BFA783FC0279C006D4FF6037CCA1990
              7712F960F2EAA79D012B3D9D025D563F13007E7706FC2DAEAA803559D065CDDA
              00F49BFA956D3EDAD373948DF5C242D664C07501F437FF8BBCF5E7EE2EABB5AB
              BB471EFD89D4C65505A982EBEDF7F96A5967E78F563C7EE894859FB55787AB82
              69385FB3411FFF9CA4B1E388958E238725E1E75FA8ADDB881B36A982CB60B65E
              8FA72FBEF4326D3CF4BD551CDF1DA2C115AFAC7A155679D46E862DAFA982C130
              BB05CF1AB61EFCD662B11C309BCDEDDF7C6DF7BEFAB21D060EC0C4B6D71BB7E3
              C230207B0C65C0376076079A184C66B31DDC6FD9F705F13EDF67D94F4198687A
              D3DE92A50AA23F875F9B769AA5A0E533EC7DFA89450A9A9B51E56C71513C7017
              200FA4C68FE5A0E523047E689183BB514B296C0951038BC7C1EC1E3869F98001
              DF47E07B0CD88A7AF6C2161F35301A5D03E8E5F0ADB719B0ED5DABF59D360B67
              C9BEA8C75305C4C944CE39B4B4755BADDD5C50877A86AB80E8E393374F05D861
              B576704161233D4D3C109DE0503E68EBEAB2B120B910FD80F4CD420EA24BA00A
              CF1A146077B702C4D7217E76715301C5EB9A037676AA80596293129C22FEB116
              0578B843054C418F242A203A1D0578663CC88215152CD8449AA601E95BB91C44
              5FD828326D674138187037A9DC04249B12725067BFAEE1D8EA34182E5EBC2C18
              88BE1340DF951BB5C156529988BA86E62AC075AEF8EE9B4A13ADDA60332DC5FB
              00BB6A9365A02E7834F9EFA1A6FF20D9060021D38B4570728A0F09FA2445D3AA
              4A6DB092968ACFD0356914D4D59340EA9CBE2D8F6A6DB05A2CCEAEA2A4B70E83
              E47D7373947407C54F1BCC9794FBD611710306F7C05940448C240F6FB54D5A60
              938FB4417047DB4E603E3987497E5185B2AC10084C5AA009307B42FAD8FAA478
              B5C7397FA0BD64308BD3A8066682135AE04990C669540323003039064D00B0DB
              428E405700343E217C9673751ECCF506E0F83647E0CE6300D4390BBA14E03DB2
              66476033AA98A9DC8FE580C9B564CB0D2C720416919A497A2DB0785828FD1985
              05B6A8832D7AFAAC9B10AB7704168BBB48E50BE1A1410D340842E1DC0994CCD2
              AB827BD329B785BE691AF8A00127F346D297FA8C1D63B8A0FF0CCA55F9DBD3C6
              061ED860A4E992527A9FCA581BA8040BBD48B26EBDF49C349858B0A941921E3F
              827E83531315A03B4E4C64AF84ED8D72903E098B23B780EC57AF5180C9F92041
              C1A1D162E8030D2DCABC4B2424FD6294E730B194B3874086D1D00C87C1A8924E
              CE2CD509127070C77F48D6F34D0EBCE1590000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-collaboration-other'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000243504C5445FFFFFF0000002299EE1F96F32096F22095F22196F32096
              F32095F22197F000FFFF1F9FFF2195F32096F32195F22196F31F94F42095F321
              96F22096F11999FF2196F32094F22195F22299F62196F32095F32093F11366C1
              1464C01464C11363C01362C42096F21564BF1464C01363BF2096F21564BF0055
              AA1565C01364C11465C00066CC1666BE1565C01465C01564BF2195F32195F320
              94F11C82DF2096F22491F21565BF1567BD1464C01465BF1565C01464C01166BB
              1564BF1564C01465C01565C01464C01666C01564C02196F2FEA624FEA626FEA6
              25FEA726FEA726FFA425FEA825FEA626FEA625FEA727FFFF00FEA625FEA726FE
              A7251464C0FEA625FEA726156ABFFFAA2AFEA725FEA625FEA222FEA625FEA625
              FF7F00FEA725FEA626FEA625FEA726FEA625FEA524FEA625FEA525FF9933FEA7
              26FEA625FFA726FEA626FEA728FEA625FEA725FEA923FEA726FEA726FFAA00FE
              A626FEA725FEA91CFEA625FEA726FEA627FEA725FEA626FEA824FFB219FEA625
              FEA725FEA725FEA8257F7F7F617C8D5F7D8B607C8A5F7D8B5F7D8A607D8A5F7C
              8A5F7D8A607B8A627F8B607C8A607C8A5F7D8A5E7C885F7D8A607C8A5D7D8A6A
              7F945F7D8B5F7C8A5C738B5F7C8A607D8B617F8B617D89607D8B617D8B5F7C8B
              5F7D8B607C8D5D7886607D8A5F7D8A637F8D607D8B5F7D8B5F7D8B607C8B607D
              8A607D8BFEA626FFA726166BC61A79D41B7FDB1C82DF176ECA1E88E41977D321
              95F11975D12195F31669C42094F11B80DC1566C02091ED166BC7176FCB1870CC
              1770CB1565C0166CC62196F32DB0A769000000A774524E5300000E588FA5AB9D
              7E36000883F3CF4418C9FD740AC964F71EF597F36866624C1A8DFDC340A39102
              9B5AE10442839FA5D9999DFBD514A92E87A16AEB0E60A7C5CDF338F17A307EB1
              C77E303EC7C53A00819995976C680C18F5F316918D02E52E504E6452363604EF
              EDA19F26FBFB248D8702B9B708A9A762E7E5600A58A9D758022E6891B3C5CDB3
              91662C97E9E92A3AB5380C97950ADDDD2A3EEF36F5F12C12E7E31293A56EAB78
              EED4B0000000097048597300000EC400000EC401952B0E1B000002D949444154
              5885EDD9F75313411C05700EC48A62EF05B160C7DE6B50402CB11B1B2A28F682
              6297A6800A2AF6825D408E5363EF1AEF4FF32E097B777BBBDFDD3B6F677426EF
              E7F73E934C6E7693495C9CA0487AE2135A25B686D3A66DBBF61267226C87A48E
              2A4F3A253B613B77E142B574EDC6CF76EFC1AB6AE9C9CD263950D55EBD39D9F8
              3E4E58B52F279BE04855FBF51F40CDC04129881DEC8C557F8780A40E191A6587
              39647F41AC96E1696136D121FB93C1864688614323C5B0A3460B614363C4B063
              C5B0E3C4B0E93136C6FE6BEC0F31EC7721ECB7AF42D82F6CD505FBF99308F6E3
              070ED531FBFE1D8FEA947DFB864BB5B1E3271033715230187CFDEA251F6A6327
              4FA17CF999CA0B9258AA2A4D4B75CFD255499AEE9A8554296D864B1654B5CC9C
              E58665A992347BCEDC79F3E9594062D92A2BBE0C3BFBF7AAC58DB25EA86637C2
              7AA39ADC30EB956AB83ABBD03315B9E92DBF79BD753D6723AE8D5D9499959D9D
              B53887DFC117BA8BB14B962AD12C5BCE8712169A6B61FD2B9A1594E64C3F1B25
              2F7C191676A562C92A364B59F8569BD8350A96B52C95BA5867B0EB037869C346
              58051606BB09EF28CA6698051688DD926B2FE5829F1AB4406C8EBDA3285B2116
              5A20761BA9B41D62A10562F348A53C88851688CD2795F221165A207607A9B413
              62A105620B76D93BBB0B20165A18CFED1E7B692FA4820B83DDB71FEF1C3808B3
              C0C274261CC24B8761155A98D8C223D6CED142164B5F980FC6A263E6CEF12296
              0A2C2CB783FFC4C996CAA9D31CA7387D81DD6567CE1697040225C5A51C2F155A
              787EF3C658325B567EEE7C45655555E5858B97CACB78E6B48589ADAEB92C9B72
              A5E62A0BA52F105B7BAD49C6D254711D42A14594BD71D35609D76EDDA6A1F022
              C256DF2155F4DCBD4779FFF022CCDEAFA37564B9AE96A4B2163AFBE021BD23CB
              8F1EDB55E642639F3C853AB2FCEC39AEB2171A5B0F7764B91E67D90B8D6D6095
              1A7096BDF8EFD8C6178C34E22C7BE1F07F4BEEFC01596D7E00996640AA000000
              0049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-support-orange'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005B0000005B08060000001C36F9
              99000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E3564475852000008554944415478
              5EED9D7F6894751CC74544C4444464D6B6BB76C7B4348D20B1F02F0911098910
              2910A91493A158EBD8EE8E39A721262112112225232496447F898498980C37F5
              B8BBDAD2653194C608099132091191EBFD3EBE4777CF3ECFDD73CFAFFB3E777B
              C31B65BBE7FBE3F57CEFFB7CBEBF9ECDC8E572D3F6C9FFFFA7813431F0CCDC74
              A2BDFDFA474BD68CEC0DBD3EBCEBE9CDD9787463E6C0B275FCD9B9CD2D6DEAA3
              AEA92160132C2166BA233DF099AB5D913F013657C9F8DCBD4C327225B5BB79BB
              4ACA91EA16F63F030BE600D4A6542CFA4D261EFA578269C557F78487AF7CB176
              BE4AD691EA0EF6E01B4D61403A968985EF1BC1556B37415375039BFD2FBEF6FD
              68CD0F2570D5DA6DD054E061FFFAF7B6D9E8870F02CE23099A1D7B019A0A346C
              460D8073C308CB89BD024D0516763EB288871E4BC0EC9A918757A0A9C0C19ECC
              BD390B0FBF7E0996137B0D9A0A14EC89F813F301E69C119453FB019A0A0CECAF
              5B67CC467F7A4182E5C47E81A602031BA04F48B09CD84FD054206063B8BC5582
              E5C47E83A6B4879DDDB6B00970EE1A6139712D4053DAC3C6A8F0B804CCAE6B05
              9AD21AF6EFA75636A562D10712343BAE25684A6BD81CB848D0ECB8D6A029DD61
              A72470D55A07D0638AB396B0BF8F3DB7C88DE1B80EA011B6C633BB9F7A595BD8
              D944789D04AF1AE39B71B3D6A071B3932C0B577BB4859DD9B7B4D308AF5A2392
              F94D255713A10CBD85B2E05B7A545FD8C9C8C78582DA352299DC505774A14AD2
              576562E1BEE2B2E0C69FD517762CFC797161ED9A2BE72A49DFC4C50C6339F0B3
              B4B6B0D1125C818D74BE5249FA22403D2496634FF89AB6B0D1B25D1939725094
              4EB4FBD29500A869D787FA8C6B0B1B059CF255B46B003FA292F54C78001E91F2
              2E18CFA0096D61A325744885B663B6EE9FE34FBABEC3A920461A52BE068F690B
              3B9D68DB2014D8B6017C70FFFEFD3355F2AE88A3423C133E95F2331A8DE7BCB6
              B0C78FB4354B8576E85E95BC6311341E869F097998F9A4B6B02954C6D5796CC6
              DDD9CE962D2A79DB52A08F49799899E306BD61C7438352C19D1895E68EA98D2A
              8BAAA5BA8EAAC3D2ABC9A55BB5868D50EA13A9E04E8D16FE980F60958D65E541
              DB5C0BE5F638BD617745B6480577CBEC0A8EAF5B3557655756B7726B66E206D9
              DAAF82EBEE300DAD610F7546DAA5C2BB6980181F4D865F51598ACA83EE8E9C94
              AEB7625C7B86E9680D3BFF204A465C5B162B677C8B2E64DE6FDE600C0F099A43
              7EE91AAB2E6CA6D71A3685567153AA8057C6437912FF9E24A0547774355AFE80
              F133D5187DFCC35FE28B17B02EFAC34E46AE4895088AF1303EADAAA2376C7EA5
              D132D8D2C48A04C13C18A5AAA3376C7421AEADAED7C2EC02D16066A9EAE80B1B
              7D674CAA40903CBCB37987AA4E5E5AC27663FDB1D666F7C79DB7AA4A7969071B
              850C3C68BA10EE154B2BD8237DD1F7F2934542E183644450173946304A1BD888
              67EB0234EAF020DDDD1A55D52A9116B0D975D403681AF5E852D59AA29AC3CE26
              C2810EEF8A8D61FD80D47D145453D8E8DB0E4B850EA21153A7FA5F0CCF515513
              5513D8BCFB2860354B4ABAFB263782AAEA99CA77D86A16CDF5738CB5727EEE66
              DBC22655BDB2F21576FEC06877E49454E8209A53AF95BA8E62F906FBD6A997E6
              01B4EB0746CD8CE1FE23D8F67B46CA19AD7902A1EAABAA6A96E50B6C9E8D41E1
              D252C1DD3643484E601586CADC7AC69518E4DFC70502FCDEF60D40BAE39903CB
              3AAC2EA519E5396C2E74B29052E1BD3060C654D6A2380B777947CB0B9C24427C
              7F02AD3F8BEBFE32A6A37C17AD78189F3BCC93034E37F9780A1B855D85825A7A
              1F931B465E499575D56237C78D41D77ADAA27C1B0FCFC9AB5FB926CF6073FB18
              5AB4E357075935BA883E95B5B6F20476FA83D05B6865AEBDD9C6820FA9ACB596
              EBB0F955F6739E03791D55596B2FD76073B082CAFB3D2A3CA6B20F845C81CDC0
              1E2DFA5B018667AE34E9A3A31CC31EEA59B908A02F4940BC32BA8ED31C8DAA22
              04468E605FEA082D47C4E1EF269A64E4A2DD4145AD651B76BABB753D4665F724
              205E99A3D05A9FD875225BB051F15D9C7B30C2F0D2E8A36F5899C6D45955C156
              BB397D9F87C68D9D3CDFB1A2551523B0B20C7BE4CBD5F3D0BACE4A30BC34BBAA
              EB07A32B5431022D4BB079AC0D151F3382F0DA78183E1CF97049D9BDD3415245
              D8DC368B16EDDB6452C1F951A80B878D745259D8997D4B37A3D2BE6C4637DAC9
              0C9EAE3285CD5DF800EDEA8B65AD1AFDF471558CBA9208FBF2EEB6E57EC7D005
              7374C8A84715A5AE24C2C657B8EC3B4F11FEDD019418FFE20587CD3FBCDBDE8C
              9FBD033B5A91C1F5A9A08E0EAD680AEC6C22BC5E025130819AC5BCF9455D0CA7
              A5EB2A99E9067DD052495360A3D26724183406178F87DF5EFC7CFE8326E2611D
              744177A4EBCDCCCF73AD522551B72A81CD96892EC4F40F3400CA77EABAB2C20D
              B3FCAE106E376078A92EAD6B95C0E6E49204A460DC88B8BAAEACACBEBE82B134
              D2DCA42EAB7B95C0E6F2BE04A560E3191133FDB42FB256BA7E8A13E11E754943
              A80436BA8992D7A3093EA8AE2BAB4A378D0EE24A8B5395C2AE70420B91C6A815
              401642C714FFBE8CFA78C3A804F6506764BB04A7D8D2C19C62A9BF3E275E4BE3
              464CD67B8867A612D80CEB2440C5E64C1CBB09A98573E2A8DC5C0ABAA9FBF532
              5D6A4725B00910306F4BA08C460B1D6588379A0CEFC4BFBD70D98D939C67B9BE
              37F49ACAB72155029B026CC7EF40958CE781E9C19E46D114D8F9F756BBBC470F
              DD477F3EF106D714D8140625BB2468768CEEE3A2F15871A34A844DB1354AF0AA
              F458A3461E924C6173D33860D95E49478B3ECD456295DCB42053D805F17D7400
              F7870454323E7B9BA1A1D35DFAF5A88AB0296E9C643F8E88629071B61130C2C0
              4778A89E4FF72ED9C9BF04AD2E9B96419660178BD3B01CFC70B28907837EDCD3
              F26C35C7D31A5925B0A7EDB57333FE036F8E533BC3E68ABE0000000049454E44
              AE426082}
          end>
      end
      item
        Name = 'icons8-more-info'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C5000001AD504C5445FFFFFF00000000FFFF2299F62196F32196F32095F22196
              F32195F32095F22195F22A94E91F96F42196F22096F22196F32195F31F94F422
              99EE2096F22196F32096F22196F22094F22294F32196F32195F22196F22096F1
              2196F32195F32196F12096F22195F22296F31E98F42196F22196F22095F32095
              F32491EC2396F52195F32095F31F94F42096F32095F42197F32095F22095F221
              96F32095F32297F42195F21F96F42096F3279CEB2096F22196F21C97F52096F3
              1F94F42195F21F97F32195F22195F12195F12095F32096F31F95F32195F21F8F
              EF2195F2178BE72096F42395F62491F52197F32096F22095F31999FF2195F220
              95F22196F12095F32096F22094F22195F22196F32296F32096F22195F32394F3
              2195F21F95F22196F22095F32296F32295F12196F2219BF32095F21F94F1C4E3
              FC3EA4F54DABF52799F36AB9F796CDF997CEF96BB9F7299AF353ADF6E4F2FEE5
              F3FE54AEF646A7F5F5FAFEF6FBFF46A8F5C0E1FCC2E2FC309DF448A9F549A9F5
              39A1F43AA2F4D9EDFDDAEEFD65B6F7FEFFFF67B7F782C4F8FCFEFFFFFFFFFDFE
              FF85C5F847A8F5CDE8FCA4D4FA4AA9F52195F22196F356ACD078000000677452
              4E530000001E446A7E8999A56A0C488BCBF58B480E66C1FBBF6442ABF7F74EC9
              C74CD1D14218A968F3F10E32DDDB30F3465AFBF95A6C4AF530D90CA7641AF118
              A740CF4C4AC9C540A910620A461C1C447C970ABFBD62C5CD3EA3EF16A3D72AFD
              68FD562C60A116CB60DAA84708000000097048597300000EC400000EC401952B
              0E1B0000033A494441545885B5D9F943124114077007D195233554C0484C14C4
              140853D32C35934A23B52C33ED3EEDB4FBD0CAB2C4D298BFB95D7641D8EBBD59
              86EFCF6F3E3FEC31C79BAAAA0A8580B155DB6B6A853A87A34EA875DAABE10104
              645DEE03F50DB4240DF58D075DE5B09EA6E616AA9B16AFCF6391F5B71ED237E5
              045AFDECACED709B992927D86E6363ED4760544A478881EDECC2A1521C9D5836
              1CC1AB9476FB506CB4950595D21585D99EA3AC2AA5BD7D10EB6E80156D627173
              3671CC8A4A69B2DF8C3D9EB5A6529A0D1BB309CBAAE8268CD881A475557C0E21
              7DB667B01C559CD986F4588F852FAB3427867558E6BF409B112D1B2E5FA5F4A4
              9A1D3DC583ED3EAD62C778A8E27C56CADAC101FFF67677F7FE4255D9F162D606
              CEDA7F763262B67F437513B622F60C54FD6B2B93CBD64FA872B2883D0B15FFC8
              28D9842AA7F659F0C97ECF14F20DAA4D15D87350E9D77D7603AA1DCBB3E74DF7
              0352D677F2EAF63A541B882A6C135449E9973CFB19AEBDA0B0CD70E9A78FB2FA
              E13D5CEB95D961CC42F3EEADA4BE798D284D4EE75837A294D2B5572F5F3C7F86
              2A9DC9B18DA85A860839B69E371B94589BA59D815962127B91B74A695A642FF1
              6743225B83295C7BAA640D53ED14D95A4CE1067A4A90322BB2A8EF8B8D154476
              8E3F3B27B20EFEACA3726C851E42855E59853E30277F362CB2F08686990D61A7
              1A3676143B3132B131F434CEC4E6A67122F06605F412C9C4CA4BA40BB1A0B3B0
              C97979FB71992F7B45D9D5F8F8B20B0AEB01B7762CEC607E6B47E01E0A035BD8
              88123F4F767C7F931FE4C75E2D3A3BB443C5AB4F94AC429503C507A80EA81A9B
              6B25C7BD142735BB587A38452D9470AEABCEBC9D5C8ED24B37D4077FC4AF0667
              41DBA6E070465FD6E97E447BCB55575C3A2C192AB305D47D93E8B12454918655
              79EDB55BC5ED405533F0B665F74E491757DDBAECB7F81C927789194BE2312B6A
              44D5D4D7B685FB2C7C672BF708C49228F3F4E0D0DC99E8B6DC7D4B2CE8D27DAD
              607041B08CFE22B20F1EEA0046D719E31338F5D1A2EE70E3CB9749707DA374CA
              AD3FD8F4AA2835163033032329C3A1C0C5D682D7E0F7487A1F5BBDD8CA657A46
              6853FD2191A0109F371F85BA3424697F7856BE349C0D87D288018CF796E8FC07
              1A799E8F0908CDA30000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-export'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C50000011A504C5445FFFFFF000000FFCCCCFFCABBFECBBCFFCCBCFFCCBBFECC
              BBFECCBCFECBBCFECBBBFECBBCFECCBCFFAAAAFECCBCFECBBCFECCBBFECCBBFE
              CCBAFECDBAFECCBBFFCCBBFECBBBFECBBCFECDBAFECBBCFECDBCFFCABBFECBBC
              FECCBAFECBBAFFCCBBFE815AFE5723FE5822FE5721FF3F3FFE5622FF5A1EFE56
              22FE5724FE5722FE5420FE5721FE5721FFFF7FFECBBBFECBBCFECBBCFECAB8FE
              CBBBFECBBCFECBBCFECCBCFECBBCFECBBDFECDBDFFBFBFFECCBCFECBBBFECBBB
              FECDBAFF6C3DFF5D2AFFAD93FFB29AFFB9A2FF6636FFC2AFFF7346FFC8B8FF82
              5AFF9473FF5823FFA689FF5C29FFB49DFF6332FFBFACFF6F41FFC7B5FF7C53FF
              CBBBFF8F6BFFA184FF5B26FF5722FFB098FF602EFFA386FFBDA8FFB39AFECBBB
              FFCCBCAF0CE21B0000003E74524E530000044487A1AB9D7E365EE1CF029DFD74
              936442F71EC3971AE94C226438683C74FD6E9704BB10D722ED3EF96202C19540
              1C91629BFD72583E04839B7C34C6217E46000000097048597300000EC400000E
              C401952B0E1B0000015D494441545885EDD9D74EC3401005D02CA18309900009
              35F4DE7B0D107A27814BDDFFFF0D82E0014563617BB84291F6BEFB3CACBD33E3
              DD588C19F399AA78754D6DE8D4D5377C3DFE9D72B6B1C9464C73DC97F55AA2A2
              A5245AFDD836855A4ABBCC2675AA4D75886CA792B55D129B7ED7B2194F60BBB5
              AAB53D02DBAB67FB04B65FCF0E38D6B18E756CE5B06FAF14F6E5F989C2E2F181
              C202C50285C5FD1D85C5ED0D85C5F51585C5E50585C5F95981C102A7271416C7
              471416F9C300ECC17E80147FB2C8657F67F7103E83431416181EA1B0181DA3B0
              189FA0B0989CA2B0989EA92096B3089C57C6F9C028DB21C0E625959A40095F18
              43B39C324E693A9C16C969E89CF183332C71463BCA20CA199B39433EE997A42C
              8E75AC631DFB4F2CE9109B74E49E4E68D5CCACC09A392D3B6F247641A9A61645
              D62CE9D86523B3DE8A025D5D333EAC31EBD1AFE1368C3F6B36935B112E0DB777
              767D2F0DFF3A1FB510A239F5AC59DD0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-import'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C50000011A504C5445FFFFFF000000FFCCCCF7BBCEF7BACFF8BAD0F7BBD0F8BA
              CFF8BAD0FABCCFF6BBCEF8BAD0F7BACFFFAAAAF7BBCFF8BBCFF8BBD0F7BACFF7
              BAD1F7BACFF6BBCCF8BACFF8BACFF5BACDF8BBCFF8B9D0F7BBD2F7BAD1F5BAD1
              F7BAD0F6BBD0EF5B8DE81E61E91C63E81E62FF7FFFF8BBCFF8BAD0F7BCCFF7BA
              D0F6B8D3F7BBCFF7BCD0F8BBD0F7BBD0F8BAD0F9BAD1F6B9D1FFBFBFF7BAD0F8
              BBCFF8BBCFFABACDEF5488F7B5CCF16B98EA2367F284AAEA2D6EF598B8EC3A77
              F6A9C4EE4D84F7B3CAF491B3F06594F8B9CFE92165F27EA5EB296BF493B4EB35
              73F6A4C0ED4780F7B1C9EF5D8EF8B8CEE92064F175A0EA2669F48EB1EB3171F5
              9FBCEC417BF7AEC7E91E63EF568AF7B6CCE91F64F06E9BF8BACFF387ACF7BACF
              F8BBD01A3047B10000003574524E530000044487A1AB9D7E365EE1CF02FD7493
              6442F71EC3971AE94C226438683C7044248702C19540F71C91629BFD72583E04
              839B7C34E93E6B47000000097048597300000EC400000EC401952B0E1B000001
              62494441545885EDD9C75203310C06E09800A16D8050127AEFBDF7DE7B158480
              DFFF3548262706793D58FE271CFCDFF73B78D792D64E249051A55425AB6B6AFF
              9C545D7DF9F1727EB10D8DDA314D49231BA55CD162D2CD26B645A016D3CAB319
              99AADBDA59B643C8EA4E8ECD7E49D95CC4B05D5255EB6E86ED91B3BD0CDB2767
              FB031BD8C006F6DFB29F08B6F09107B0EF6F44FED9D71702B0CF4F04601F1F08
              C0DEDF917FF6F686C83F7B7D4500F6F28200ECF91901D8D313F2CF1E1FD18F1C
              C66760B094211B7BB04F0E19B6B07BBB2EAA8DDDD976522DECD6A69B1ACB1636
              F28E6A1CBBBEE68A5682052D02EA95C13E30D476406D5E54A9D1A0C2A851651C
              D574502D12D5D03568FCD0A8610935DAA10651D4D88C1AF235E897C49EC00636
              B081AD100B3AC4061DB967D3523537C2B06A54CA8E298E1D17AA13932CABA664
              ECB4E2D9684680CECE2903ABD4BCFB35DC8232B36A31B3E47069B8BCB26ABC34
              F49D6F8289A8739320504E0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-eye-otherB'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000620000006208030000009C7BF6
              3C00000300504C5445FFFFFF00000096A5B494AAAA8DA0A990A5AC90A3AE8FA4
              AD8FA3AE8FA3AE90A4AD90A3AD8FA4AD8FA3AD90A3AD90A3AD8EA4AD8EA3AF88
              AAAA9F9F9F90A3AD90A3AD8FA4AE90A4AE8EA1AB7F7F7F91A3AE8FA4AD8FA4AD
              8FA4AE90A4AE8FA1AE91A9A990A4AF8FA3AD8FA3AE7FAAAA8BA2AD8FA3AE90A4
              AD91A5AF8CA5B290A4AD8EA3AD7FBFBF90A4AE90A3AE90A3AD8EA4AC8FA2B08F
              A3AD90A4AE949FAA91B6B690A4AE9BAEB6A8B8BFB6C4CBC1CDD3CBD3D9D5DBE0
              D2DBDFC7D2D6BECACFB5C2C9A4B4BC99ABB391A3AE92A2AD8FA4AE9CADB6B6C3
              CAE2E8EAF8FAFAD5DCDFABBBC295A9B390A4AD8FA3AD90A3AE96A9B3B9C4CBF1
              F3F4E2E7EBABBAC28FA4AE90A3AEA0B1B9D3DADEF8F9F9BFCBD098ABB48FA4AE
              8FA4AD90A5AC8FA4AD9EAFB9DBE3E5C4CDD38DA9A991A5AED4DBDFFBFCFCBBC6
              CC90A3AD8FA4AFB6C3CBF0F2F4A4B4BD8FA4AE8EA6AB8FA4AE9CAFB6EAEEEFCE
              D7DB95A7B290A5AE8FA3ADF2F5F5A2B3BB8FA5AC8FA4AE96A9B2DBE2E6BDC8CE
              91A4AE8FA3AE9EAFB8F2F5F5DAE1E496A9B391A2AD8FA4AEA9B9C0FBFDFDEFF2
              F39AADB58FA3AFB4C2C9F7F8F99EAFB88FA3AE91A3AD90A3ADC1CBD1FAFCFC90
              A3AE8DA4AF8FA3AD8FA3AECCD4DAACBBC291A3AD91A6ABD8DFE3B3C0C79999B2
              D6DDE0B1BFC690A4AE8FA4ADD0D8DCACBBC390A4ADCBD4D8A9B9BFF4FBFC05AE
              C200ACC000646900A2B6B2E6EC3FC1D000686E0094A506AEC2F0FAFB99DEE600
              A3B6006F7600656B0097A7EFFAFB0FB1C500ABC000909E007078006165006064
              006A6F00849100A7BBB8E8EE7BD4DF00A6BA009EAF009BAD00A4B732BCCDFEFF
              FFF1FAFC19B4C7C0EAF090A4AFABE4EB62CCD968CEDA29B9CB47C3D21CB5C8DF
              F5F7F5FCFD46C3D21DB5C8D7F2F5F9FDFE67CEDAE2F6F8FDFDFDA7E2EA14B3C6
              04ADC2F8FDFDEEF9FB72D1DD0BB0C401ACC150C6D4D3F1F492A5AF93A6AFEBF8
              FA8EDAE434BDCE02ADC100ACC11EB6C875D2DDD5F1F5ECF9FAB1E6EC89D9E269
              CEDB5CCAD758C9D666CDDA7DD5DFA6E2E9DBF3F6FEFEFE92A6AFFFFFFFFDFEFE
              91A5AF8FA3AD90A4AEF11C5346000000A674524E530000100C1A4A78A9CFE1EF
              FBEDDDC79B6A3C0E0897DFCB7E340246ADF5E78F281476C15806168BF566148B
              640468EDCF3A36CDA11806FDF5E7DFDDDFE1E1DFDFDFEBF9562ED3F5DFEBFDE3
              E5FBA770F9FBDFF3E9E5E3A9EFDFFBDDF9FB6E24D5F1E5DD083EE1FDDFC960DF
              F1EBE12A78F3EBDFFD3C89F3ED4695FBE1DD4E8FF3F1E1FD4883E7FDEFF740DF
              F7F1F3386ADBFDF12C4EFDDBE31C30DBDF0ADFE1B1C5DDE38DD9E780846A2F00
              0000097048597300000EC400000EC401952B0E1B00000546494441546881ED98
              794014551CC707CC4ACB0ECD88D24AB3432BB563B3A22DB5FBC4228AB4FBD82E
              3B76BB2C3AB632B6A23B259AEC58DB3205C552536005154C25154AB33C4A6551
              849112330A97A3999D99F7FBBD376F8659E4CFF9FEB7BFF7FBFD3EFBDEEFF7DE
              BC194170E4C89123478E1C75A112E25362B73803EC23F6EBBEFF0107F6E8D9DE
              DE7ED0C1BD0E39F4B0C37B7729A24FF723FAB6B36A3B32E9283BC13610C9471F
              D3CF905F53FF638FDB77C4F1037A99E55735F08441FB8438F1A493AD018A7A9C
              6209B1440C1E6203A0A8EFA9A7750A917CFA507B0045C386770271C699F601B2
              DACE3A3B4E846BC839862CAD23CE3DEFFC940BDC175E3472D4E856C3F0D08BE3
              425C72299BE0B2CBAF6889225D79D5D5D7B03ED726DA475C974AC78EB9FE8628
              476937EEA5FDD27915E121BADD4407DE9CD1CC0328BA65EC38CAF5D6DB6C216E
              BF838ABAF32EC8F8DFBF4DFFECF97B77E3AEBF88A9E5EE31F462DDD331E25EAA
              5547DF4792FDD9B053D2555FB7A356B77BEEDF8E231E603BCB8078109761DB43
              1E3D514DA45AA2B475CB667DECE1F198F1C8A3D688C7B0F3E35E3DC91F0DBF4B
              066DDA4866E87B0285F57CD202213C853C5B476ED033ACAF330214FDF6ABEEF1
              F43328B2DF045384F02CF27B2E93FCC775BFF00992B4760D717A1E6DC6D417CC
              102F22C24B7E12FCF34F660449AA22F388BEFC0A62BCCA474C4484D7B248E89A
              4A738224AD86960EBC8ED6EA0D1E0257FA4DB4BD5659112469257866BF0519DE
              7EC7887817867F7C0F112AAAAD112B9683EFFBA87B3FF890454C9A4C06B7E720
              C2B21FE88C4BCBCB96D096C5C8BBF92360A4E7D2888FE106B0574431D145385B
              69C9C270385C5C54B80019E77F8FFD3F01C6B02918919B0E844F7144348292CD
              9B1BD634E73B64FE960AF80C189F270362D017C4BC2D4805CC2E8054B38AC344
              3397823D9F8A884E05461220BE044288F6CF834C33A687918ABE2103D3BEA642
              9ABF22D9264FD01193DA88712C4D883600A2244CA910462AE8982C384CFA0F56
              11B9707C4F6508A814A5C534A2C8AC18F2FE1801E51014449F81C430DEF07883
              969D4513C2C5D0558BD9A8009C2503144412F9392E9BF58DC2E151C820C233C8
              D06E43582639135387CB88DE89B24229B244836B7467E7101E255D8A4BC93C45
              DF7AAEA05B569AC1D762A14AC950031BD592A1640B310788E0938D3E2FEB5C45
              F22C611073A0DC3BD8285121E4080C2221A4987D7EC6790B242A326DDA454C50
              5A2C959E181DE65CC64648544675ED4268A8FACD748C37B62021CEF342501974
              57D5D60303177C7A19D8EB38043721504F3D2147190BD28CB512629079CC2C47
              E6462A20C01098EB41D0C8402B25AF55510C32B7A414190B6A3904C104C16364
              D14FEED2798585E50B2813B52BBC06027B558BB52E5DF39592B5E6AFC7BD6424
              186E831A2380C2AAAC117853647208C63BADBA56780FD6AEB022449611C7E6D8
              8E63099C9BB9C610E1D0ADD86A4EA89C4DDC3C195C02EFFD42DD1F6ED1638351
              0985F007F904EE5B92C64005A931B972E6937DDDAC9601EF072B84CC50FD4572
              35AF8D7000054DE405335B5D241F8760F6C6AA318230913CF6665B1D5947A6A0
              F62A395B6D21B4A2CB5527DBB06557641A0036ADAE812AE853304965F6F5402B
              880C81B22FCF6BDA935F5797BFAAB1022EEE7ED167BE4896083211B72FD3F848
              4700D589D3493610092EAD22F24CD82795AA0DDE0C0D10349B420708682D3987
              18602E401EAFA80F9A55C10E0243DCBE0CD11BF0676779B2FD81343108F690CB
              3A4587DF06118427EB19D8435842421D02EC7E44158450D080F1D9C96F1B11F3
              0C8508C79713B2993F2E842A57FC9FC0BBE4ABBB23478E1C3972E448D3FFF964
              C13649776B1C0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-eye-otherC'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000620000006208030000009C7BF6
              3C00000300504C5445FFFFFF00000096A5B494AAAA8DA0A990A5AC90A3AE8FA4
              AD8FA3AE8FA3AE90A4AD90A3AD8FA4AD8FA3AD90A3AD90A3AD8EA4AD8EA3AF88
              AAAA9F9F9F90A3AD90A3AD8FA4AE90A4AE8EA1AB7F7F7F91A3AE8FA4AD8FA4AD
              8FA4AE90A4AE8FA1AE91A9A990A4AF8FA3AD8FA3AE7FAAAA8BA2AD8FA3AE90A4
              AD91A5AF8CA5B290A4AD8EA3AD7FBFBF90A4AE90A3AE90A3AD8EA4AC8FA2B08F
              A3AD90A4AE949FAA91B6B690A4AE9BAEB6A8B8BFB6C4CBC1CDD3CBD3D9D5DBE0
              D2DBDFC7D2D6BECACFB5C2C9A4B4BC99ABB391A3AE92A2AD8FA4AE9CADB6B6C3
              CAE2E8EAF8FAFAD5DCDFABBBC295A9B390A4AD8FA3AD90A3AE96A9B3B9C4CBF1
              F3F4E2E7EBABBAC28FA4AE90A3AEA0B1B9D3DADEF8F9F9BFCBD098ABB48FA4AE
              8FA4AD90A5AC8FA4AD9EAFB9DBE3E5C4CDD38DA9A991A5AED4DBDFFBFCFCBBC6
              CC90A3AD8FA4AFB6C3CBF0F2F4A4B4BD8FA4AE8EA6AB8FA4AE9CAFB6EAEEEFCE
              D7DB95A7B290A5AE8FA3ADF2F5F5A2B3BB8FA5AC8FA4AE96A9B2DBE2E6BDC8CE
              91A4AE8FA3AE9EAFB8F2F5F5DAE1E496A9B391A2AD8FA4AEA9B9C0FBFDFDEFF2
              F39AADB58FA3AFB4C2C9F7F8F99EAFB88FA3AE91A3AD90A3ADC1CBD1FAFCFC90
              A3AE8DA4AF8FA3AD8FA3AECCD4DAACBBC291A3AD91A6ABD8DFE3B3C0C79999B2
              D6DDE0B1BFC690A4AE8FA4ADD0D8DCACBBC390A4ADCBD4D8A9B9BFF4FBFC05AE
              C200ACC000646900A2B6B2E6EC3FC1D000686E0094A506AEC2F0FAFB99DEE600
              A3B6006F7600656B0097A7EFFAFB0FB1C500ABC000909E007078006165006064
              006A6F00849100A7BBB8E8EE7BD4DF00A6BA009EAF009BAD00A4B732BCCDFEFF
              FFF1FAFC19B4C7C0EAF090A4AFABE4EB62CCD968CEDA29B9CB47C3D21CB5C8DF
              F5F7F5FCFD46C3D21DB5C8D7F2F5F9FDFE67CEDAE2F6F8FDFDFDA7E2EA14B3C6
              04ADC2F8FDFDEEF9FB72D1DD0BB0C401ACC150C6D4D3F1F492A5AF93A6AFEBF8
              FA8EDAE434BDCE02ADC100ACC11EB6C875D2DDD5F1F5ECF9FAB1E6EC89D9E269
              CEDB5CCAD758C9D666CDDA7DD5DFA6E2E9DBF3F6FEFEFE92A6AFFFFFFFFDFEFE
              91A5AF8FA3AD90A4AEF11C5346000000A674524E530000100C1A4A78A9CFE1EF
              FBEDDDC79B6A3C0E0897DFCB7E340246ADF5E78F281476C15806168BF566148B
              640468EDCF3A36CDA11806FDF5E7DFDDDFE1E1DFDFDFEBF9562ED3F5DFEBFDE3
              E5FBA770F9FBDFF3E9E5E3A9EFDFFBDDF9FB6E24D5F1E5DD083EE1FDDFC960DF
              F1EBE12A78F3EBDFFD3C89F3ED4695FBE1DD4E8FF3F1E1FD4883E7FDEFF740DF
              F7F1F3386ADBFDF12C4EFDDBE31C30DBDF0ADFE1B1C5DDE38DD9E780846A2F00
              0000097048597300000EC400000EC401952B0E1B00000546494441546881ED98
              794014551CC707CC4ACB0ECD88D24AB3432BB563B3A22DB5FBC4228AB4FBD82E
              3B76BB2C3AB632B6A23B259AEC58DB3205C552536005154C25154AB33C4A6551
              849112330A97A3999D99F7FBBD376F8659E4CFF9FEB7BFF7FBFD3EFBDEEFF7DE
              BC194170E4C89123478E1C75A112E25362B73803EC23F6EBBEFF0107F6E8D9DE
              DE7ED0C1BD0E39F4B0C37B7729A24FF723FAB6B36A3B32E9283BC13610C9471F
              D3CF905F53FF638FDB77C4F1037A99E55735F08441FB8438F1A493AD018A7A9C
              6209B1440C1E6203A0A8EFA9A7750A917CFA507B0045C386770271C699F601B2
              DACE3A3B4E846BC839862CAD23CE3DEFFC940BDC175E3472D4E856C3F0D08BE3
              425C72299BE0B2CBAF6889225D79D5D5D7B03ED726DA475C974AC78EB9FE8628
              476937EEA5FDD27915E121BADD4407DE9CD1CC0328BA65EC38CAF5D6DB6C216E
              BF838ABAF32EC8F8DFBF4DFFECF97B77E3AEBF88A9E5EE31F462DDD331E25EAA
              5547DF4792FDD9B053D2555FB7A356B77BEEDF8E231E603BCB8078109761DB43
              1E3D514DA45AA2B475CB667DECE1F198F1C8A3D688C7B0F3E35E3DC91F0DBF4B
              066DDA4866E87B0285F57CD202213C853C5B476ED033ACAF330214FDF6ABEEF1
              F43328B2DF045384F02CF27B2E93FCC775BFF00992B4760D717A1E6DC6D417CC
              102F22C24B7E12FCF34F660449AA22F388BEFC0A62BCCA474C4484D7B248E89A
              4A738224AD86960EBC8ED6EA0D1E0257FA4DB4BD5659112469257866BF0519DE
              7EC7887817867F7C0F112AAAAD112B9683EFFBA87B3FF890454C9A4C06B7E720
              C2B21FE88C4BCBCB96D096C5C8BBF92360A4E7D2888FE106B0574431D145385B
              69C9C270385C5C54B80019E77F8FFD3F01C6B02918919B0E844F7144348292CD
              9B1BD634E73B64FE960AF80C189F270362D017C4BC2D4805CC2E8054B38AC344
              3397823D9F8A884E05461220BE044288F6CF834C33A687918ABE2103D3BEA642
              9ABF22D9264FD01193DA88712C4D883600A2244CA910462AE8982C384CFA0F56
              11B9707C4F6508A814A5C534A2C8AC18F2FE1801E51014449F81C430DEF07883
              969D4513C2C5D0558BD9A8009C2503144412F9392E9BF58DC2E151C820C233C8
              D06E43582639135387CB88DE89B24229B244836B7467E7101E255D8A4BC93C45
              DF7AAEA05B569AC1D762A14AC950031BD592A1640B310788E0938D3E2FEB5C45
              F22C611073A0DC3BD8285121E4080C2221A4987D7EC6790B242A326DDA454C50
              5A2C959E181DE65CC64648544675ED4268A8FACD748C37B62021CEF342501974
              57D5D60303177C7A19D8EB38043721504F3D2147190BD28CB512629079CC2C47
              E6462A20C01098EB41D0C8402B25AF55510C32B7A414190B6A3904C104C16364
              D14FEED2798585E50B2813B52BBC06027B558BB52E5DF39592B5E6AFC7BD6424
              186E831A2380C2AAAC117853647208C63BADBA56780FD6AEB022449611C7E6D8
              8E63099C9BB9C610E1D0ADD86A4EA89C4DDC3C195C02EFFD42DD1F6ED1638351
              0985F007F904EE5B92C64005A931B972E6937DDDAC9601EF072B84CC50FD4572
              35AF8D7000054DE405335B5D241F8760F6C6AA318230913CF6665B1D5947A6A0
              F62A395B6D21B4A2CB5527DBB06557641A0036ADAE812AE853304965F6F5402B
              880C81B22FCF6BDA935F5797BFAAB1022EEE7ED167BE4896083211B72FD3F848
              4700D589D3493610092EAD22F24CD82795AA0DDE0C0D10349B420708682D3987
              18602E401EAFA80F9A55C10E0243DCBE0CD11BF0676779B2FD81343108F690CB
              3A4587DF06118427EB19D8435842421D02EC7E44158450D080F1D9C96F1B11F3
              0C8508C79713B2993F2E842A57FC9FC0BBE4ABBB23478E1C3972E448D3FFF964
              C13649776B1C0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-play-selected'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000450000002C0806000000337675
              BB000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E3564475852000001DD4944415468
              43ED9AC16DC25010445D4A9C738A444A0D711329279DE0736498758698AC0906
              EFFCBF208FF41694D3F393E080D20CC3B0F187D93F2A683FFAF7D7AE7F6B920F
              AE4E5EC54BB7FF6ABBFD77DBF59F99E3C0D5C9AB18A3F4C348DE3870B5B3DBED
              06050C02CEA3E48D03D7CA51489E38704D1285D48F03D793B49A655148BD3870
              75F22A6E8B42CAC781AB9357715F14522E0E5CC7737C51C020605D14A28F633D
              EC4C1E241206013151882E8EF5B0337990481804C44621F171ACC7545C89260A
              898B035727AF421B85AC8F035727AFA24C14727F1CB88EE7F8A2804140D928E4
              F638D6C3CEE44122611050270A591EC77AD8993C48240C02EA4621D7E3588FA9
              B8921C51C8E5387075F22A7245213E0E5C9DBC8A9C51C86F1CB89A3002296010
              B045F98141C0C37D7CF05E018380ED8B76861C512EC7E0E0EAE455D48D723D06
              075727AFA24E94E53138B8DA99FB253E02060165A3DC1E8383EB9345B93F0607
              D72789B23E0607D793B41A4D94B8181C5C9DBC8AD828F13138B83A7915315174
              3138B8DA99FB3E888041C0BA28FA181C5C9347291783836BD228E56370703D49
              AB5916A55E0C0EAE4E5EC5FF51EAC7E0E0EAE455CC47C9138383AB9357711E25
              5F0C0EAE4E5EC518256F0C0EAE4E5EC5F6CFC50FCDD01C00E44E5041E67E5959
              0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-play-cropped'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000450000002C0806000000337675
              BB000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E3564475852000001C74944415468
              43ED9A4D4EC33018447B14C29A3517E062913803B904C7E1260D5B64340E1354
              3EB7CD8FC7FE1232D2F3A2AB9727C5EA22A710C2C11F923F2A68DEFAD7C7AE7F
              3A391F5C8DBC8A87EEFCD174E7AFA6EBDF3DC781AB91573144E9C380DF38708D
              47DBB641018380CB287EE3C0B57214E2270E5C9D4421F5E3C0759456332D0AA9
              1707AE465EC5BC28A47C1CB81A7915CBA2907271E01A8FD47D90030601EBA210
              7D1CB86E2C0AD1C581EB46A390FC71E03A4AABD14421F9E2C0D5C8ABD04621EB
              E3C0D5C8AB2813852C8F03D7787CBE3C07050C02CA4621F3E3C075E751C8F438
              70FD2751C8FD38701DA5D5F88842AEC781AB9157E12B0AB171E06AE455F88C42
              7EE3C0350AA7FE8DE68041C011E50706019B7B7D520F94030601C7459BC04794
              EB3138B81A791575A3DC8FC1C1D5C8ABA813657A0C0EAEF148DD073960105036
              CAFC181C5C771665790C0EAE3B89B23E0607D7515A8D264ABE181C5C8DBC8ABC
              51F2C7E0E06AE455E489A28BC1C1351EA9FB20070C02D645D1C7E0E0EA3C4AB9
              181C5C9D46291F8383EB28AD665A947A3138B81A7915B7A3D48FC1C1D5C8AB48
              47F1138383AB91577119C55F0C0EAE465EC510C56F0C0EAE465EC5F171F1A609
              A76FF4EF746A154EF3CE0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-semicolon'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
              54000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E3564475852000003684944415478
              5EEDDC316B145114C5F1878D167E026D52588995BDE00710B4106C4310EC2C4C
              2918D0423B09C9BE0D2A449479B359504424441115514452D9588820D85908B6
              82B23E36A430FB2799DD8577EE845BFC081C9237977B7632814D120683813304
              43A783A1D3C1D0E960A816BAFDA3A19BBE17F49EE650C0506DAB907A504CAC37
              690E050CD5BC1063BC1063BC1063BC1063BC1063BC1063BC1063BC1063BC1063
              BC1063BC1063BC1063BC1063BC1063BC1063BC1063BC1063BC1063BC1063BC10
              63BC1063BC1063BC1063BC108342A73A5712CDA080A1D3C1D0E960E87430743A
              183A1D0C9D0E864E0743A783A1D3C1D0E960E87430743A183A1D0C9D0E864E07
              43B5E11B54317D29E835CDA180A15AF9770CD3479A430143B5E28574D3079A43
              014335C11DE2FF7C6637823BE42DCDA180A15AF942EA37348702866A82425ED1
              1C0A18AA099E212F690E050CD5CA1752BFA039143054137CCBDAA0391430542B
              5F485AA73914305413DC21CF680E050CD504CF90A7348702866AE50B494F680E
              050CD50477C8639A430143B5F2CF90DE239A430143352FC4182FC4182FC4182F
              C4182FC4182FC498F285D4F7690E050CD504852CD21C0A18AA952F245DA73914
              30542B5E484CF3348702866D85CB6E225617E93C050CDB282C3D3C89CB6E22D6
              67E84C050CDB28ACD45770D9CDCCD0990A18B6517E303F8045EF2DA65F749E0A
              866D940BF98C0BDF4B4CEFE83C150CDB2674ABABB8EC2662BD4267AA60D82679
              A933F955FE6764D1CDCDD2B92A18B6C9C4CF8EA1F4372CF70FD3B92A18B645BE
              332EF3A21B8AD51A9DAB84611BE432E670C96349E7E96C250CADCB65DCE2058F
              E5079DAD86A155A1DB3F9E5FD51BB0DC095497E81A6A185A143AD5355EEC24EC
              FCC5D44E185A9217389B7DFA7FA1533B4DD7B200430BF273623EFB09CB9C52EF
              265DCF0A0C2DC8DF56BEF242A710EB3B742D4B30B4202FF0ECC842A71193995F
              64D80D8656E457F4262E777C1B61617080AE610D8656E4424EC172C713D33D3A
              DB2A0C2DC90B7D8E8B6E22A6053AD3320C2D09B1770297BD9B987E6773749E75
              185A937FE2AA71F124A65EFE68E62DD97161684D584A474616BF534CDFC24A7D
              81BEBE4D30B4282FBC83450C55B7C3E2FA41FABAB6C1D0A2B0BA7A68A4889856
              C372FF187D7E5B616855E8D437B68AA8D7F65B11DB30B42CDCDD9F456CC3D0A9
              0CC23F21E18EAC89DC64BD0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-caret-arrowhead-facing-down-other-gray'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E08060000008EAA20
              1D000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E3564475852000002204944415478
              5EED97CB4D034110442D8E3E10012110804510C4E120FCD146411CC460214E9C
              0881083870445065EA82196CAFDDEB9D4F3DA9256B77A7A7AB4F7E13638C31C6
              18638C31C618638C3135B35AAD6E96CBE506F5E2DA5B1BEE4A6BFB010FEF519F
              78F1E5FA5BDC0D77A475FD062FE6A943AEEDE2E65A531A7CD0A50EB65CDC89D6
              B31F7CF8906AD06271175ACB61BAAEBBC281C754A3968A3BE02EB496E3C0C129
              0E3EEF366BA5947DAA75F463BD5E5FA3C1EB6ED3DA8B99995D6B388DC562C1FF
              786FA90B6A2C666566C53F0F34BA45C3F7D44535153332AB62C780A677A88FD4
              853514B331A3E2C682C655DA0533319B620E032EA8CE2E9849F1860517556317
              CCA258970117166F17CCA03897A374BBE0ECBDAD200A0C50A45D68E6D3AC208A
              D2EC82B39E6D05519462179C31CC0AA2C8DD2E385BB8154481E1B2B40BCEC4D9
              34669E60C0ACEC82B370268D973718341BBBE02C1AAB0C3030E64E87B9547106
              8D5316187C34BBE0DD1AA33CC6B20BDE399A15448120B48BA7DD704395EE1AD7
              0AA2B8945DF08E6CAC208AA1ED82BDB3B3822886B20BF6CCD60AA240D0198286
              D9857ACDD4BE6E1036C42ED883BDD4B60D10F86CBB600FB56B0B0447FEF4520E
              15CFAA4D9B6001BDED826774BC5DFADA05BF2DDE0AA2C0428EB20B7D53871544
              71C82EF8AE3A2B88E23FBBE0B36AAD208A5DBBE0EFEAAD200A2C6C6B172CFED6
              63730C581AEDA22D2B30C618638C31C618638C31C618333A93C9379B498F7C17
              8C90570000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-caret-arrowhead-facing-down-other'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F0000004E504C5445FFFFFF2395F62095F32096F20000002096F12195F22196
              F22195F32095F300AAFF2195F31999FF2195F32299EE2096F22491F52096F221
              93F32095F32395F12195F22096F22096F31F98F12196F31A3A54F00000001974
              524E53001CC3CD004EFD68819702B10AC70ED31CE32CF13AF57EC5381934870C
              000000097048597300000EC400000EC401952B0E1B00000137494441545885ED
              D3491682500C44519B4240B141C566FF1B15FB0F2421F9708E0E52F3BAB33799
              F87C3E9FEF1F369DCD47DA6C5A734816D751B64870E7908EC3A57872C8C6D032
              BC39E4C3B51C5F6EB91AAAAD960187623D4C5B1708396CB643B4ED064D0EBB32
              5E2B776873D81F62B5C31E5D0EC72A4EAB8EA0B8C83CEA18682E2E8F141C1793
              47069EB3E79143E2AC793C636039631EAF1878CE94C73B068133E4F18941E2D4
              797C631039651E410C32A7CA238CA187D3E491523F86C3A94F3B91378EEBCB23
              A75F2C27E7D18AA19F4371E6B573C19C784EC8A313838663F3E8C6A0E2983C88
              18741C2E441ED54538C81C9107198396EBE641C6A0E6DA79D031E8B9661E4C0C
              062ECC838BC1C00579B03158B84F1E7C0C26EE958710838D7BE421C560E4EA3C
              C418AC1C12318690F3F97C3EDFEF7703FFC2AC411A8DED430000000049454E44
              AE426082}
          end>
      end
      item
        Name = 'icons8-alphabetical-sorting'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000052000000520803000000F0F273
              A900000189504C5445FFFFFF0000002195F32195F32196F254717A536D792096
              F12096F3546B7C2095F32096F2219BF3007FFF2096F22195F32096F42096F221
              95F21E93F42299EE2195F22196F22097F22196F32AAAFF2195F32096F32295F2
              2096F32196F32196F22195F200AAFF2195F21C8DFE2297F22096F21F8FEF2095
              F32294F21F95F21F9FFF2296F31F96F42096F22095F31F96F41E96F01F95F21F
              97F22196F32195F22095F21F96F32194F22096F32095F22095F32094F22498F0
              2196F22195F300FFFF1999FF2A94E93F7FFF2195F22096F21C9BF01E96F01F94
              F42195F32195F22197F02095F32395F62195F32096F22491FE2095F22396F557
              6B78526C7B536F792195F32096F22096F2547178536E7A2095F22095F2526F7A
              536E7A2196F22095F2536D7A2197F33399FF546D792193F34C667F536E792096
              F32196F2576D7B1F94F12095F32095F42195F22195F52095F22196F22297F117
              8BE71F96F32095F3546E792096F12196F32096F32196F32095F32196F32195F2
              536D792096F42095F22195F2546E7A2196F3D4BB10B90000008074524E530000
              83993C1A9926B32C87FB1602E37246D3A7320EF79366ED06C7D952F344A9E502
              91083AA710F33C28081648CDF13010685089B7BB5854F1E99B3E2268DF000A0C
              04FD8D122230D7A336561CEFD506BD322644642EF9D124EFD3F946FD917E7644
              04AB2C0AD3AB7A2260C9747A34FBF7240A70C3764EF5EB6AB39B62ED5EA59DE0
              406D000000097048597300000EC400000EC401952B0E1B000002E44944415458
              85EDD8E95B1251140670AE682688B6514A992C194A51A6D96AD1A6B62F6626A9
              4511D4B46FB45B3A7F7970CF007766EE3DE702E3A7783FF8E8E599DFC3F1BCC2
              A0CFB71961423AFC9574329D746DB1D2259E3AC96E9367AB16D9B361A5072303
              40067B3D23437D409AFD9E91DB2CD1DCEE19B9A34A9A3B3D2277856BE46E8FC8
              3D35D11C18F4868C706D2FFFBACF13124A39B45FB79A1A2494723814D5AC264D
              C6A2D6C471CD6AD224947228C10E68569326A19423E5BFA1A85E3549F260B8B6
              E9B85E3549124A994C94BF1DD5AB264946AA73D726A7AA499163A6C0C4B5AA49
              9150CA648AFFD009AF9A875A22AD528EC0B13539514D823C0C73F7A5214774AA
              4990F5574A31475B20C7C35212AF264E1E938A443571322227CD89A649AB94C1
              743DEB7435517212C8E3C22353743531D22AA5794278E4A449561323AD529E4A
              088F0C9E26AB8991C3409EB15D3049561321ABA53C6BBB607A9DAA26429E03F1
              7CC67EC514554D84BC30CE73D17145028E43CD90EAD1F0B4C936D926DBA4A7A4
              F542E6CAA5E6C980E27D7CF43F252F777B4E5EC144829C99B5656E808B57532D
              908E5C83B1AFA36243E40D183B808B8D90376F71F1F61DCFC8CC5D2E06EF1162
              03643F8CDD2165E6EFD7B350251784C37909F960918B0FE5F7424BD90D34D925
              37997AC4C5E539C5B42BAB98B8BA2219FC318CFD44213296C3C89CE477F914EE
              2AD3CF9424CBABC53C73933370D7BEF85C2DB2425125160B12F2058CFD121119
              33142BCA1ACC4DBE02F1750C25152B2AAFC64DCE26B9181EC345C58A72CC4DC6
              AC8F7D6F2851BAA23C93906F418C106357E25E115F8D937CF79E8B1F3ED2A27B
              45B01A07F909FE23687ED6119D2BB256E320FD207E517F28B1A72492A5FA799D
              FC0AE2B7694DD1B6A2BC705C237BBF03F9435B1456545B8D48667E82B8FCCB6F
              CB6FCC34D6405C33C4D32AF947FEA66BFE459F27AC48588D48AAEE3670125654
              B29FB548565694771CB54A168AB6D588E4845F1E743D951886F3C4B719F907DB
              C54AF420AF86A40000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-alphabetical-sorting-2'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000052000000520803000000F0F273
              A9000001B3504C5445FFFFFF0000001F97F22195F32394F054717A536D792095
              F32294F2546B7C2096F31C8DFE2095F22195F21F98F11F96F42195F32491F221
              96F22096F21F9FFF2195F32096F22197F02096F22095F32096F32096F22AAAFF
              3F7FFF2196F32095F21E93F42196F32195F32196F23399FF279CEB2195F32095
              F22193F32096F32096F22095F21E98F42196F32096F22394F300FFFF2196F220
              95F22095F32195F300AAFF2296F32195F22196F21F99F22096F22195F32096F3
              1F95F32196F22196F32297F11E96F02096F22096F32196F22196F32096F42294
              F31E96F02296F32094F62095F32095F22096F3178BE72195F32195F32095F321
              96F32195F22094F21C97F52096F32096F31999FF2196F32294F31F96F12196F2
              2196F32096F22095F41F96F32095F22095F21F96F4576B78526C7B536F792195
              F2547178536E7A2296F2526F7A536E7A2096F22196F1536D7A2096F12195F254
              6D794C667F536E792097F2576D7B2193F12096F32195F22195F22196F32195F3
              2095F22095F3546E792196F32096F32096F32196F21D93F5536D791E97F22195
              F52096F12195F32095F32195F22395F61F95F22195F2546E7A2196F300B7A94B
              0000008E74524E5300005099241A99873C2CD908E9FD38488B14E7D508B1FB36
              6685F3D30604C9FB328181CF040CDDF92C9F7CCB18EDF92A00B9766EC7022CF7
              F728D172C340FDF52410E36EA9C15C4222161EF1A5850AEF8356DFB73E1A9DF1
              0AD75838B7978F7458D3BB302644648F24EF7846FDBD4C7626A9AB0AD3662226
              C5B9A744D73E9D7654EB87931AED2A3474D96C781C504C8E8754000000097048
              597300000EC400000EC401952B0E1B000002F0494441545885EDD86757134114
              06E00C0114219168AC94D8B00444C40A160CF65E5123361491001A4DC2DA8D0D
              BBB03F59CFBDB3D999656676B24EBE70723F40B87B78CECEBE7372773714AA44
              11426AC2E2AA258AAAABA755C7761D72912DAEC52AB2618E56C3822397340627
              BDF134811889AA441FD2534B67816C568A6591B165202E8F9B235780B872955A
              2C875C8DD9ACF111CB206BD782D8D26A8C6C6B0731B1CE4FD427D7E3B237F88A
              DA643402E2C64DC6C88ECD206ED9EA2FEA92DB70D9490D5193AC41B1B3CD18D9
              B51DC4EE1D3AA216D9B3134FB2574BD42277A1B87B8F3172EF3E10F7F7E9891A
              646B3F9EE4014D51836C46F1A0E6B235C84387411C38A22BFA92A9413CC9A3DA
              A22F790CC5E33DC6C81328264E9EE2EA7470F2CC59F1D43D179C3C2F16FF8794
              DD6D2C78B23125AE0BC1C9405525AB6495AC9295213BE03B4DE316589B8C5F84
              6FDE4B06C9CBF8657E456B9AEB9157E980B8668C1C8A50F2BA31B2D71963376E
              9A22D3A5D178CB1039EC4EDBDB86C83BA0C17D66A4CB084937E55DF879CF0879
              1FAC9618C43E6284C44D99240FE0F7432133FAC8AD31871C639AA32C4937651F
              7D6BF058488E67E694951967C90990FA09C19537899F2327A754E2D424B7F034
              5D37214FE0D353F115CCAAC82C772DE9A67C469CF725CFC524C9C9C51C1F4FD8
              59B7B3F2EE9498CC17646221CF917453E2B33DAE7C5A729A9624A28C45381237
              A5FD02FE9886CF2F25A424A27FD1F0E42B77DDCECA67A5EF58851165094FD24D
              F9FA0D56DA675E0822CA110F3931EFCE5F392FE64704D170E45B1169BF939EA6
              37228C86258785A2FD5E4A7A22A2D1B064584CAAE64591258B6E9F9271C953A9
              725E3011E5983625E9A61CFCE0D647E8A8E6851B51291A86C44D697F628E7C86
              4EE48BC2B466509CB1D82E9243F85AC3FECA1CF986ADEF0A9246C444E3927453
              76728770B78FA8488CA8C8F790FC81E44FEED02F6C8AE78553393E9A1219C57F
              4EC4B843BFF16A88E78553F902174D89FC836FFCBD972D095D9FFB42CBF27642
              95A8BF8DCCB1103B62AF130000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-red-triangle'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
              54000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E3564475852000002294944415478
              5EEDD8AD4D45411445E1279048042520110485A305248212E802814450042520
              101481442028001204E232378484900DBC37F767CF397789CF6C3593E5CEEAF5
              F8B04BEAB2EBBA553459839CABCF46902DC87B71A63E1A45A6206FC589FA6424
              5982BC1447EA83D16408F25C1CA8CF45143DC853B1A73E1655E4200FC5AEFA54
              645183DC17E962F42206B92BB6D567328816E4A6D8521FC9225290EB22758C5E
              942021EF52352204097B97AAD17290FE2E75AA1E9D59AB41FA5348F8BB548D16
              83A4B94BD5682D487F97DA570F5D8A96823C16A9EE52355A0992F22E55A38520
              FD5D6A473D6E89DC416E8BB477A91ACE20E9EF52355C41AE0A62088E2017EA21
              F834779045DDA56ACC15649177A91A730459EC5DAAC6D441167D97AA316590C5
              DFA56A4C1584BB54A5298270971A60EC20DCA5061A330877A9118C1584BBD448
              C608C25D6A44438370971AD99020DCA526501384BBD484360DC25D6A629B04E1
              2E3583758370979AC93A41B84BCDE8BF20DCA566F65710EE5206BF05E12E65A2
              82709732FA1984BB94D9F720DCA51AF01584BB5423FA20DCA51A2247F8C8113E
              72848F1CE12347F8C8113E72848F1CE12347F8C8113E72848F1CE12347F8C811
              3E72848F1CE12347F8C8113E72848F1CE12347F8C8113E72848F1CE12347F8C8
              113E72848F1CE12347F8C8113E72848F1CE12347F8C8113E72848F1CE12347F8
              C8113E72848F1CE12347F8C8113E72848F1CE12347F8C8113E72848F1CE12347
              B874AB0FC0746010F59BBB810000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-star-filled'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A08030000000F76B1
              3000000180504C5445FFFFFF000000FFCC26FEC927FEC62AFECA28FECA28FFCF
              2FFFC928FECA28FFCC22FEC927FEC927FEC427FECA27FECA28FFD42AFEC928FE
              C928FFCC33FECA28FEC927FEC61CFECA27FECA28FEC928FECB28FEDA24FECA28
              FEC926FFD42AFEC927FFCA28FFCC33FECA28FEC829FFBF3FFEC928FFC927FECA
              27FEC927FEC726FECA27FFC928FECA27FECA27FEC82AFFC829FECA27FEC927FE
              CA28FEC927FECA27FEC828FECB28FECA28FEC927FEC928FECB24FEC926FECA28
              FECA28FECA27FECB26FEC927FEC927FECA28FECA26FEC926FEC927FEC928FEC9
              28FEC927FEC927FEC827FFCC26FECA28FEC828FFC828FFC92AFECD2AFFC727FE
              CA2BFECA27FECB28FECA28FEC72CFEC927FEC927FFC32DFEC927FEC928FEC928
              FEC928FECA27FECE24FECA28FEC928FEC625FECA28FECA27FECA28FEC927FFFF
              00FECA26FECA27FEC826FECA27FEC928FEC927FEC927FEC927FECB27FEC927FE
              C824FECA28FEC927FECA29FECA27FEC927FEC928FECA27FECA27FEC825FECB26
              FECB28FEC928FFCA28E6FE970D0000007E74524E530000148712F38310F17E0E
              EF7C0CED780CEB760AE97208E770E56C06E56806E16604DF6204DD60DB6C2E52
              789DC12A507499BFE3264A7097BBFD224893B9FB4EF968FD5C56FB4CF946F540
              3CF138323024201CD918D716D3CF10F3386491BD143EC31A9FA1CBAD0234C742
              4ED37A5AA766810EF78F569BA926AFB52E3A44E02BF1F9000000097048597300
              000EC400000EC401952B0E1B0000034D494441545885EDD9675FEA301407608B
              0B178A03C48508280E868A02E2DEB815F7DE7BE15E977CF56BC5D13609CD91F0
              EADEFFDB24CFAFA56D7A7A4849F91F4504F6683480C9303A353559745A7A7A5A
              92E80C84329243676A11D2662685CE42EFC94A069D9D23D239D949A073D14772
              F9D379BA18ADCBE34EE7A3CFE4F3A60BF45FB4BE80335D88BE53C8972E2AFEA1
              8B8BB8D2254892129EB4C128A58D068E742992A5941F6D30C96913CB61B3D165
              4891325E74798592AE28E744572A65842AF9D055669C365771A1AB7119A16A1E
              B4A58644D75838D056928C903571DA6627D3765BC2742D5946A83651DA5647A3
              EB540E5B8D2E70D064841CF1DF0954BAA8BEA1B1C969A4C3628CCEA6C6867ACA
              F68DD3E52EB7A7B9A535BE294F6B4BB3C7ED523EFB12DAE26D6BF7F9CD01082A
              4DC0ECF7B5B7792D52DAD611747476D9BB7F6BCAD36DEFEA74043B6C22DDD3CB
              C794A7B7473CEABE287F39DA17FBADADFDBCE57EEBD7651CE06CF70FFCDC2183
              433CE5A141E9CDE7E6782D7BDDF2FB7A7884973C32AC7C6446437CE4D028FE34
              8E71B14363A43D647C227179629CBC3D4D6A1395B593B49D6F4A9798AC9B22EF
              7C62A6F5EAEBE9D14F5336D58FB85436FF7831BA8478B4E035A91BE498BC427C
              5A9831FF4E36CF086AB4304BAC96D45233AB7448AFDDB9305C0ECF610CF18D3E
              BF009517E671855C2C2C2EC1E4A5450242A94334CB107999D892A295382BABEC
              F2EA0A91A0D17980577194DC6BA0D16B901F640D44AF43E87510BD01A13740F4
              2684DE04D1A00DD008A1B72032425B007A1B466F0368EC7B3F7E88DD000AED83
              D13E00BD03A3770034B06AD0B2D3BB3019A15D663A08A583CC74893A260FA93D
              47A6F7C840607F9FF2E9B7C74C1F9096470FDF4B18D72171233F60A58F48E5B0
              FF383678EC270C868E18E9197CEDC9E9CFF0E9093EAEAC6F68F49972E1F99962
              C2B972C619AE10E90BF932FB2576BA47978ADECE05237D255D54716DC1670882
              E55AD657BC62A425A7ABF750DBA7068FA4183F67A36DDFDFA7AB911B1A2CE626
              F25DAD0CE1DD2212EDFA9C7E7BA7FA479DE6EEF673B20B1B23D1F71F73BB1FF0
              E29390B987581FE59E898EBCCF0C3C3EB1C0629E1EC5A73FC2443F23F4F2CA0A
              8B797D41E899890E3BDF20B09837679889FE0385C98B80FF03FF03F90BEB4C0C
              79E774CBEB0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-star-filled-gray'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A080600000038A841
              02000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E3564475852000005C74944415478
              5EED9D4F685C5518C583888848111129D28514C9C245117151444444A44809A5
              8B2E8A0B11095D6411A448112904172E455C142922AEC48574E54244A4389364
              1288812EA44891464444444A2922227A7EE68C4C275F93F766DE4CEE9DB9070E
              BC79EFDEEF9E73F226EF4FEE7B99292828289802743A9D87A03F168C0A2B2B2B
              EF407F2C1805DAEDF6830AF92664D9AB0B9A86027E7B7575F51FC8B257173489
              F5F5F50714EE8D9EA06FB0CE9B0B9A82823DDF0DB927ECF3DE5CD00414EA0185
              FA7B1034EB0EB859C1B050A06FF587DC25DBDCAC6018B45AADFB15E66F51C890
              6DB471F38241A120CF4501F792366E5E3008363636D89B7F8DC2ED256D68EB6E
              0575A100DF88828D485B772BA883B5B5B5FB14DE2F51A811694B1F772FA80A05
              F77A14E86EA48FBB175481CE22EE55683F4761EE46FAD0D7650AF682025B8C82
              AC42FABA4CC16EF0DEFC53146215D2B7ECD515A0B016FAC31B800B2E57106173
              73F39E61F6E62EA9412D972DE887023A13053708A9E5B205BDD0951D7BF3F528
              B441482D6ABA7C41170A67BE3FAC0638EFF205405774776B0FFC21086A285293
              DA1EA6607979F9D528A826486D0F33DDD0392F7BF3B528A426486DC6F070D30B
              05F14A145093640C0F379DF0DEFC7D144E93648CA9DDAB7D53BF89ABC04A64AC
              89FDE300F787DBEDF611993C299E133F142F8BB5EFCC3545C6B606B4A0E9241A
              93BF97CDA5AE8EEC8F4BF009F1ACF881F8B5F863643465A2D9DAF1809713781B
              DBE5BCCF736735E84B12B4A8E50BE297E275F1EF7EC193463CDA2B9E2F68DD22
              596879B6F679BA0F4C87C563E282F8BEF885784DFCAB7FF0C26D928D33222B32
              233B323CBCE300AC0E73DAF0677F91C2E1E84CE71CF336B4F28C187628AC4FB2
              2453C77B3BB85CD5C689FF9D3B6A9221593AD6186AF472097B70921D193ACEDD
              A186A7C47200AC4932233BC7580DEAC0797139405624599199E3AB07753C5EC2
              DE9B0EF9B8631B0C2AF0A2782B1AA0F0BF906F9191E31A0E3A823E57C2DE4932
              211BC7D40C3A9DCE332AFCFFC33AD34EB22013C7D32CF4D33B5AC2DE0E992C1C
              CB68A0019ED440777CD461D2897732701CA385067B42DC7326FEA411CF78770C
              E3817EAADC83DEB71BF8E3265EF16CFBE385069F15879E2B973AF18857DBDE1F
              E8C8FB98443436952B35E20D8FB6BBBFD057EA51096A7CA6D17E134F78B3CD34
              20618724EC6ABFD85C692F876C2F2D48D84109FCAE57708EB48783B69526F455
              7B5842AFF48BCF8568C783EDA40DDE7924C1DF464652269AD16E1B79A0D56AF1
              22939B91A1148956345B7E3E9068A67C85A652245AD16CF9F940C28F46865226
              9A2D3F1F48F46B9199948966CBCF0712FD5E642665A2D9F2F381447F15994999
              68B6FC7C20D1D9DDD943B3E5E701CE4523233930ABF368ED19CF46267220DA6D
              237D48F0D81E991801F379605F7B0593B52313C913EDB6913E24F69BC8440E44
              BB6DA40F89CD764A02DA6D236DB4DBED47220339110FB6932EB4471C8BC4E744
              3CD84EBA90C8DAAF514B8D78B09D7421911F45E29BA06A339BFE6373644F25E0
              C176D28544AE47E287A16AC2CF7A27B0B0CC3AB6457D86211E3C4C9AD8DADABA
              4B221B9DDEAB7A3C44F99487D801B6D126EA3B28F180170F911E986812091F84
              32BBA2BDF67997DE13B4A54F546B10E2C5A5D3837CCE45A2EB5035AE50C7256B
              83BED4886AD7E1301A460E897B33125D85EACB63BEA79BF8CAFA57D8696A4663
              55215E5C2E3D48DC2791E8DDA83E4C929C1FC54BA6A8496D8F118E7F27E2C565
              D283C455FECAAA2D738DCFB6C6F01E51C6602CC68CB444C48BBBA70599E1ED08
              7B3E04AA36FC0BA6251DBCC6FE6F3D1893B1D11069EB255EF0E4AEE980F3DA48
              709712FE87F86E0A7FC140035AD01469ED124FEE920E24FA542456EB796CF7A2
              96939B998926B4A1B15773977872D37420514B7D22B95CFE54DCDF99F2158046
              6BBDEDB25E9F97DC241D48D4A51E819FEB6B77C49BB2019AD1DEE3E39237A503
              89BA2A5E96C0A7BD2A5BE0012F78F2AA7420712F78716230899E0A0A0A32C2CC
              CCBF03612FEBDE3DB5480000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-code-file'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A08030000000F76B1
              3000000180504C5445FFFFFF8EC8F790C9F990C9F89FBFFF00000090C9F98FCA
              F98FCBF96DB2EE1E7AD48DC8F83A8DDD3186DA58A3E789C4F61B77D375B8F06D
              B1ED1F7AD44E9BE33B8EDD3086DA59A4E777B8F06BB0ED207BD44D9BE33C8EDD
              88C5F62F85D959A4E887C4F678BAF186C3F56AAFED207CD54C9AE23C8FDE2E85
              D95BA5E887C3F579BAF169AEEC217BD54B99E23E90DE2D84D95CA5E886C3F61A
              77D27ABBF267AEEC227CD54A98E33F91DE4294E02C83D85DA6E976B7F0207BD5
              4F9CE384C2F67BBBF26FB3EE509CE367ADEB227DD64998E24092DF2B83D85EA7
              E984C1F57CBCF266ADEB237DD58FC9F94897E24292DF2982D75FA8E881BFF583
              C1F57DBDF365ACEB257ED54796E14293E089C5F73489DB2981D760A8E9388BDC
              82C0F57EBDF364ABEA257FD66EB2EE1D78D34696E14393E071B3EF2880D761A9
              E980BEF480BFF462AAEA2780D64494E04595E1267FD663AAEA8CC8F84797E223
              7DD61976D281C0F48EC9F872B5EF55A0E592CBF9A0D3FA99CFFAE1F5FEBCE2FB
              BFE3FCA0D2FA90CAF9A7D8166D0000000974524E530042BB9D08005AB7580439
              41E8000000097048597300000EC400000EC401952B0E1B000002B64944415458
              85EDD96773D3401006E084123A845E4D31BD9A1E4302712074D109C4104A0231
              A407CEA2C3FDF5BC278F1D49B7D29D9C3D0686EC17EFBED23CA3B9B1A5B3DDD2
              F247AA7541965AB868315109749BCC544B289B87266D06FA7782CD40FFFA49DB
              1CF40FDA66A1699B87266D269AB2B968C266A3759B8FD66C463A6E73D2319B95
              8EDABC74C466A6C336371DB2D9E9599B9F6ED80EE8BAED82AED94B9DD081DDC6
              407FFFA6D7571E3AA1FE47FACB67DF115D15E2D3C76927F4941062D2CD554F80
              1E77438F811E75428F4016234EE851C863C987E7428F839E70434F829E72427F
              504B5D7542BF875C49399E89AE0E87A777A0DF06DD3079ED59E86A65683034BE
              01FD5A35834315CACE40572B4284EC576AA95F06321686B0ED69250B31D0985F
              607AAE9A019513B6355D93CBFD8DE019C6A7AAE92FD3B62DADC9B20FF3139962
              5BD2BAFC58058F648A6D473FD464F900C1FDFA40DA563421CB7B48EE3626CAB6
              A129D9BB83E8F6EC4CD8163425CB5B2ABB190A74DB4C93B2BC81EC7A24D16C23
              4DCBF21AC2DE6814B74D7482EC5D457A2516C66C13DDA3CE16A51822BB557A39
              9E9682932F59D2BEBA758AAECE187211E185B8DCD9A5CE2DD63754C6B5A6ED0E
              64E7D3658B77885FD46DEF1CA2B3E9B2CDFB9AB0CF20387D2A5DB6FA34EAF649
              CC05836C770FD1EC13188F1B64CB3B5FCCF68E613A6A906DEFD751FB885AEAC3
              06D9FA2913B10FA13D6892ED9F8D61FB00BAFD2639C313BD66973D74FBD0ECAD
              E75E9996B3EC43945DC8A3D9A3967A7723CF174839D3EEC92F06B2DC057A6728
              CF172839DB9ECFCF052F3B406F0FE739F22B5E133B557F1BE8ADC9C7E7406F51
              4B9D73426F06BDC92C37436F04BDC109EDAF07BDCE09BD1672FB1A27F46AD0AB
              2CE426E895A07B9CD02B96835EE684F64BBD7DEDF11D0F0F8DF2BA6DE4BFF7B7
              A7797A9EFEB7E86C7F7693D59A4033D70C6F214DBDFABAAC200000000049454E
              44AE426082}
          end>
      end
      item
        Name = 'icons8-color-palette'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000300504C5445FFFFFF000000FFAA00FEC406FEC107FEC007FEC006FEC1
              07FEC106FEC007FFC107FEC106FEC107FEC107FEC206FEC206FEC004FEBC0BFE
              C20CFEC105FEC006FEC006FEC007FEC107FEC106FEBF07FEBD07FFC107FEC007
              FEC007FEC006FEC007FEC108FEB600FEC107FEC106FEC106FEBF09FEB900FEC1
              06FEC107FEC007FEC005FFFF00FEC006FEC107FEC107FEC107FEC006FEC006FE
              C107FEC006FFBF00FEC007FFC107FEBD08FEC107FEC007FEC006FEC106FEBF05
              FEC107FEC106FEC007FFD400FEC106FEC106FEC006FFC007FFC300FEC006FEC0
              06FEC400FEC106FEC305FEC106FEC107FEBF05FEC106FEC107FFC305FEC008FF
              C006FEC10AFFC106FEC006FEC107FEC107FEC005FEC007FFBF0AFEC107FEC107
              FEC006FEC106FFBF00FEC106FEC409FEBF04FEC006FEC007FEC006FEC007FEC0
              06FEC007FEC006FEC007FFBD07FF4601FF8504FFB606FFC007FF6102FF6B02FF
              4300FF9505FF9E05FF6702FF4400FF3D00FF3E00FF5001FF7A03FFB406FFBB07
              FFBE07D27B54C3646DC06072CD735DE89D2EFFC008BE5C76B0468EEAA12BF1AC
              1E9F2CAAE19339DBBD16AFB9289CB72FA5B82BFDBD0BAE4391A02DA854B04CFC
              C108D5804FBB587BBEBA217CB43CF8C00A9D29AEFAB910E1923BFEC10771B241
              D7BD17F1AC1FD8844ADCBD16F7B514DE8E3FAEB928F0AA209BB730C96C64AF45
              8FA6B82CF6B315A231A59C28AFC4BB1F78B33FE396369E2AADCB705FF9C00EE5
              BC23F7C00B56B04CB2BA26E79B30A8399C9C27B09F2DAAD47E51BEB44C5CA1B4
              2597EE6EA5A0A9B82BFCBB0DD7834BB85380AB3E97A7399DB34B89CE755AF5B2
              17F5BF116CA4A397AD76FDC1087BB43D53B04DD8BD1662A3AE96AC778EB5364C
              AF50DABD17A4B0682397F1D8B931D6BD178FB63562B14750B04E5BB14A78B43E
              B3B926F9C00AFEC1083A9BD86EA5A12D99E6FCC00BB1B25BE8BC1FABB160E1BB
              262497EF2B98E85AA1B7B9B35167A4A9E0BB28409CD260A2B0F6BF11F0BE1784
              A9892B98E92196F3379ADCA0AF6CFCC10AF8C00FC5B545ABB05FAFB15CD1B839
              FDC009FEC007FFC107968981C60000006B74524E530000022646627E9199A5AB
              9D898570543416145A97C9F5F5C7242281CDFDDD8F3E0662C3E91C0AE5FDAD30
              00EBA520F97672FB2410AFF11EDB6AE1702C68E14406EDBF4C6610E5E90C7C2A
              EBA958A3F3325EC11878996AD7564018B3AF6EDF04E31A34E3F952F148D92883
              864A73F3000000097048597300000EC400000EC401952B0E1B0000054C494441
              545885B5D9795C54451C00701FB22E208BB11851822CA045FB8CE45AAC500805
              17E5680541D94851C43CC803705131BBEFFBBEAC2CCA4AB3C3CAEDB4C3EE7B3B
              142CECB23B2BDB42CB782DECBE79BF9937F3E6ED7EE8F71F33BFDF97D9D9B76F
              E6CD1B32E47F0C413BC286861B86192322A38647449B62461C11AB95AC8F35C7
              8D3C325E22E2A80463DCD1A1B3C78C4A4C224914A3932D6121B029A9697D4CD3
              1F634C6383648F8D398E630E44FAF1D6205831759C1EB43F924EC8D0CB5A1368
              C0BF87FFF9FBD04175FB89E3C3F4B062661605EDFDEB4FAF2FFE38F0BBBA2F21
              9BCFE6E4D286FADBAFDE40ECFF45DD6B0BE7B17913A853F8B317C57ECA78B34E
              D266879E4C557FF2823840CB38458BCD1F4355A51F21FB03E57B93FA26B259F3
              24BA7AF07BC87A0FD172D20B586C21F5C2F2C57798EAFD969A746A06831DCE50
              A57D38FB0D3DAB48A4B29359AAF4F557187B98913685C616973059E94BA87EB1
              979135D54E619529E8F9FCB33DDD5DBB7729059F7E02D88F99FFBD54CD4E43B7
              D68FBA3CFEF8B007157CA0A8EFF732D9E9852AB64CEE7BEF5D8F1CEFBC2D37EE
              7D4B1EEF9B6F20E5F5D75EDDF9CACB2FBDA8B8E5248B06DBD3E5516207988717
              7CDFDBF3CF3DABB43CF3B47B20B63F859A7249B642EE7912A89E27B6818FD8BB
              EFF1C7C09F8FBAE57864ABDC565988B376B40E3E0C59CF16E63C6EDD8C58F743
              0FCAADA7E1AC01A5EFC1D80798EC263788FBE55607CECE40E9DD187B1F4BED84
              AA7BA7DC9C89B155CA22DB85B1F7B2D87B30D6BD31D05C8DB1E54AFE6E8CBD9B
              C5DE85B37752D9994AFE06A8DE713B8BBD0D676F0D34D7606C2D2800C3EDDE45
              130762E32D50DD2437CF826C2C2CB8F926A4DEC85425E906C85E2FB75A203B1B
              2BB86EC7B5FE19D8A0A14A9DD728EAD557C9AD75909D42946CDB72E515975FC6
              9C577F5C7A89AC6EBF586E1B87FD78A3B501465C74E100BAF902F41B939C187B
              7A48AC74FE79E79EB3FEEC4ED0528FB189A1B1AAE8CBC3D83306894DC35787A9
              83C4CEC2D9CAC1516BE7E0ECE0A85238BEA0DBC9FE751DA1A851C4AE2605EB5D
              BB6675BB6B555B6BB0EADC0672B304B7DF2D2B5DFE5811DC90E3E7A9B67636A0
              B6BBE458BE2C08357D847A233A1FF59EB5D2A544B37EB5710165DBAC6C40D700
              D5B574895EB569216D931F89FA5743D6A5F76B3B7311F59164B1DCBFAE1D6375
              CE42995DA0B20E39A1C3153C1B9F0A1E6930761ACA5985B12D3AD4DA7C81C58A
              E811B70DAAED6BF96A648EC06405A79CD50AD936BE3A4A1034D85294B7025C5F
              FCC1CE24559C5526B7633952F997972D479B1546A3D465CD4B07E6B54DC7C496
              A95482856BEF92D6E6E6161D286D0E08D6A247518593C786B6F856CEE1B11339
              427CF2ECAAC2AA0223BEEC2DE0B1393686E78FC8BA4099390A3617F15821594B
              8D16519D0813FB32786C83C6AA9E2B8242D1097A4C3C563031D5467C4CD9E084
              70BEC8638B9B586C14510ACF9E16F158A186C51A885278D538B8ACC83A53B110
              A5E1A02F93CB0AF98C6355F278721EE8ABE6B3C2303A5B4094C2D3971A1D6C58
              11952547540AFACA75B082792E8D4D244AE1FD43DFF9ADA591E62EC42AE11C24
              D97195757439399DC24E32838C58F889D2089579D09A4A3B114F6C40FD63B15B
              2839EDEC63E14C9A5BE2F0FF4AC30CD8E166569E6E5670502FDF9288FAB8FA08
              E2084EBD98B159215CEF234A527630AC60A51F39AB42B5F9E0BC77B057F04D49
              4A280C92158438ED45A83F269829751C56A81B497B4F00A2567515E8617D3B28
              A7D64B1D6731B588CFFAEE9411AA975A81683290AB4D10AC6F258A9941F935DB
              4CCC5771FAD87ED911590BA7797A9483BCBF84C2F6478AD5317EB1B1A2CC58ED
              B0323EBD9A1DF4F80F2928F85C183A4FB00000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-querytab-right'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005B0000005B08030000002BE809
              AB00000228504C5445FFFFFF0000007FFFFF90CCFA91CAF890C9F98FC9F890C9
              F88ECBFA8FCAF98FC9F990C9F98DC6FE8FCAF890C9F88FC9F890CAF98FC9F990
              C9F890C9F990CAF88FC9F871C16A5EB46671B87473BA75A5DA8372B97473BA76
              74BB786EB26F73BA7674BB7774BB7874BF7C546E79536E7A546D7A73BA7673BA
              776CBB74536E7A536D7A74BB7774BC7773BC7573BA7576BD7C74BB7774BC7839
              906D536F7B526C7B516E7974BA7774BC7674BB7874BC7874BB7773BA7652A969
              74BB7873BB758EC8F57FC0B2546D7A536D7A486D6D556677546D7A546D794C66
              7F8FC9F783C3BC73B07373BA7A73BA767EC38674BA7673BB7674C27474BB7873
              BF7874BB7774BB776BB26E74BC7770B8742B2B2B73BA7673BA7774BB7774BA77
              73BA7671C07474BB7774BA7873BA7674BD7473BB756FB77474BB7773BA7672BB
              8173BA7674BB7774BB7775BB7E73BA7687C5CE74BB7B74BB7883C3C373BA7673
              BB768EC8F674BB7871B97474BA7674B97773BA7672B97674BB7874BB787DBD8E
              73BA765EB46672BA7573BA7673BA7674BD7972B97691CAFA90CAF98FC9F991CA
              F990C9F88FC8F98EC9F98EC8F280C1B274BB798EC8EF7EC0A573BA798CC8EB7B
              BE988FC9F68EC8F382C2BB8EC9F480C1B574BB7A7EC0AB8DC8EE7BBE9E8FC9F8
              8BC7E77ABE938AC6DF78BC8E76BC8374BA7B88C5D575BB7F88C6D776BB838FC9
              F788C6D578BD8A8BC7E679BD928BC7E37BBE978DC8ED7EC0A874BB788EC8F07D
              C0A473BA788EC9F2546E7A74BB7790CAF92E3F78D00000008B74524E53000002
              3C748F99723A62E15E08A9A9A7608FEFBB97C3020234520044F16C08F5F78706
              E1EF9BFBA30AF1A5FDA718CB1ACF2C0040442CD940EB4AE56802F578C5DF7076
              060EA1AB0A97B906FB7204FB810A9B10FBB10ABB2200CF26E33AA50AD124A91A
              AB12F5950674EF64F550ADFDF3D9E960C3D53AD734B328F185045E0442E55224
              383ADF605CA75E5A70125DB1000000097048597300000EC400000EC401952B0E
              1B00000288494441546881EDD9D75BD3501806F0248CD6524110A856C58D6270
              D53D40C5BD072A8A7B8B7B2B384045C4BDF71E0838717DE7DF33794C35A76DD2
              93E4FB6E78FA5EF4E2BDF85D9C9E3639E793A454521189AC47494BCFC8F4940C
              9F5F91B9FCB5A52E0186904096146707BB62C87AB28331B6948D45339623F176
              373C9AB12CCE5650D63A9A8062B6D33069C6FC663B1DD7F699ED5CA3CCEBEE29
              7906936BB6F38DB240F6940283C94FD954766188CEEED1334C66F7EADDA788CC
              EEDBAFFF0067F6C0414219ACD9503C64A823BBE4B75086E936A8A5C3C96C5047
              8C24B301468D8E08DB63C60A655CD486F113846DE1446D9838294466C3E42953
              C96C282B9F466643D9F45F6436FCFCF15DC09E516191997636747CFBEA617FCF
              B2B501BE7CA6B3E1D3473A1BDADB5AEDEDD9732C3237A90D1F5AE6D9DAC24960
              C3FBF90BC86C58B86831990D4B962E23B3415DBEC2C2767052B2B0A172E52A32
              1B6075D51A325B5D5B4D6603AC5B1F32D9CEF3EEADB50D1B3652D9EAA6CD1122
              BB78CBD6A4EBADD509D639DA5AAFF7B6EDC9F7A03B7BC7CE5D02FBDB955DB9BB
              48E477E9C6AED913B2FA3FF16AEFDD572813D96FF6FF3BA860DBAF5F257CA661
              ECEF972F9E13D91DCF9E5A3CE7BDDB4FF4971FBBE7BCEBF57EFCE82123B20F3C
              B8CF88EC8387EE3122FBF091A38CC83E763C2C726E70639F3829769672619FAA
              9593D8CE63ECEFBB77CC25A67DFBD64DAE44B46F5CBFC69778EB5D77FA8C7103
              8BFE5DD69C3D27D1D8F50DE7F59727719B8B56DBB4172E46FE97C876D8741586
              6D73E954B6DD1DB5568BB609EFA829EFD6FDB876A3D9C69D655CE266197213A6
              7D59E66C29078F6E8E991DC941B4C15473ECCC4BFBBC8233ABBB1A3FABD3A2F8
              7D9E678C8DF133C6543A4BFE00704A831E8E4234ED0000000049454E44AE4260
              82}
          end>
      end
      item
        Name = 'icons8-querytab-left'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005C0000005C0803000000D43122
              6A00000228504C5445FFFFFF0000007FFFFF90CCFA91CAF890C9F98FC9F890C9
              F88ECBFA8FCAF98FC9F990C9F98DC6FE8FCAF890C9F88FC9F890CAF98FC9F990
              C9F890C9F990CAF88FC9F8A5DA8339906D72B97674BD795EB46673BA7673BA76
              72BA755EB46673BA7674BB7773BA7672B9747DBD8E74BB7874BB7873B57973BB
              7674BB775B8278536E7A546D7A76BB7B74BB7773BA76536D7A71B77374BA7772
              B97673BA7674B97774BA7672B976649876526C7B516E798FC9F771B97474BB78
              82C2BE73BA7675BB7D72B876608E77536D7A486D6D5566778FC9F787C4D174BD
              7775BB7E72B7765E8777546D794C667F71C16A73BA7674BB7774BB776EB26F73
              BA7672BB8173BA7674BB776FB77473BB7574BD7473BA7673BA7674BA7874BB77
              74BB7771C07473BA7674BA7774BB7773BA7773BA762B2B2B70B87474BC776BB2
              6E74BB7773BF7874BB7874C27473BB7674BA767EC38673BA7673BA7673B07374
              BB7775BB7B85C4C88FC9F674BB7C7FC1B174BB788EC8F573BA7674BB7774BC78
              74BB7874BC7674BA7774BC7874BB7774BF7C74BB7874BB7774BB7873BA7673BA
              7571B87491CAFA90CAF98FC9F991CAF990C9F88FC8F98EC9F97DBFA58EC9F379
              BD908DC8EC8EC9F273BA787DC0A48EC8F07EC0A87BBE978BC7E379BD928BC7E6
              78BD8A88C6D576BB8388C5D574BA7B78BC8E7ABE938BC7E774BB787BBE9E8DC8
              EE7EC0AB8DC8ED74BB7A80C1B58EC9F475BB7C82C2BB8EC8F386C4CB8FC9F68F
              C9F7546E7A5C827871B77674BB7790CAF943A328DD0000009074524E53000002
              3C748F99723A62E15E08A9A9A7608FEFBB97C3000038240252E542045EEFF544
              0485F10C8BFBF3EF9B12A3F9A51ABF28B334D7F976442CC33AD5DBE9FDFB9B76
              060E97AB36F5FDC1AB0A0250E76408740695F512AB1AA9FB24D1FD0AA53AE326
              CF0022BB0AB1109B0A81FB0472F30654F9B197FDDFF5C568E54AEB40D92CCF06
              87F76CF152343ADF605CA75E5A3DCBF5FD000000097048597300000EC400000E
              C401952B0E1B00000279494441546881EDD9D75713511006F0BD014C0C110453
              746DD8B1F7DE7B45C5DE7BEFBDF78E8A1DECDDA858502CF7FE7B6EC222E7EEDE
              355976BE17CF7E4FC99C9CDFC3ECEC436634CD8F9FECC3E4047272F39A794A5E
              30144853565C6B1E160409E76B763CD282824EA52062C5B5022A5B8842CD82B7
              A4B385C897F10049BF1B120E48780EA52D4448C27369F1A0841799D5E2569E52
              6C3245121E35AB31E629319389FEBF783C8EC313ADDBC070BD6DBBF628BC43C7
              924E9D417897AEDD380AEFDEA394F3DF3D7B654E6FD7789FBEFDB881FFFA9939
              FDDDE20306728EC2070DE6307CC8D07A9B0F1B3E227346BAC1478D1E63DAF4D3
              F263EC388EC2EBBE8FE728FC5BED578EC2BF7CFEC45178CD472E65C2C449AA4C
              6E0AFEE17D52C61DE67C8A7B7CEABBB79CA3F0696FAC3619AE4F9F61B3F9CC59
              B35599E3122F9B3BCF6E134D8B3EBF4461D3E0E50B4A553609BE70D162A54D81
              2F59AAA653B8FBBF5732BE6CF90A149E58B96AB593ED195FB3D691F68EEBEBD6
              3BE3AF5F8926A7BEE71B363AF6C53BBE69F3161CCED8D66DEA77A8B1E7C68F15
              4DB6541DDED0ED3BD49D21C1D9CE5DBB7138DBB3771F0E67FB0F1CC4E12C71E8
              250E67875F3CC7E151F1ECA905A798F3065C3C790CC445CDA3240E170FABAB40
              3D4FE541ED111C2EEA8E1EC3E1E2F88993383CA69F3A8DC3193B73168827CE9D
              07E1E9DCBF97A49FF346BD3A89C3C5DD3B5500DC5C8968172E5E823CD034AE95
              5FBE82C3B5F8D56B203C15BDCCFC6094993DCAAAFBBDA28F63F07FADB88D72B6
              55F58A1BBA9C0FD1E215124E7B10B92E1F44D80D4AFCA6F508554867575A8F50
              2C4276E2AAB49DCF8CEFB7680E7FB71587BFD4530D053D9F2C2BFE9E2CFDF8C9
              367F00F4897BADAB7E25400000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-select-all'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000075504C5445FFFFFFB1BFC3AFBEC5000000AFBCC3B0BDC5AEBEC6B0BD
              C5B0BEC4B0BDC4AFBEC4B0BDC5AFBDC4B1BDC3AFBEC5B0BDC52196F32096F220
              95F3AFBFC5AFBEC4B0BEC41F95F22196F3AFBDC61F95F32096F3AFBFC4B0BEC5
              B0BDC52096F3B1BCC3AFBFC3B0BDC4B0BFC5AFBCC6B1BFC62196F3B0BEC5F66F
              AB290000002574524E53003876004C623E78A5D387EFBB789BC3C1CDF150AB83
              50545A40C360CD9D9D6C4089587048CCBA3E86000000097048597300000EC400
              000EC401952B0E1B00000104494441545885ED98D90E823010455140413637DC
              7101F5FF3F51814E184888654A422B3D6F5C3A87974E87D4307A663245980C0B
              653684360A2D0871F5ECAB9BBF11B0C841990BA18B4207425CBDD0BA1E749E5F
              008B02BF22843044610061F9E83574912944A475F2E9C43C7546AE5BAEBAF143
              B77E75432DDD669B1343B2DB77A3AC8A0BC941FA26D33A5975DCFBEEC8A5E3EE
              8A938ABAF325278117DCE7DD15EB92427253ED70D7BABFD151B7716D6C57DB98
              DA648CB24ABC6707D1D1C6B6A2B342EB86D3517F176B63BBFA5D6C7C87361819
              AAE96863BB5527C4D874723799D689EA7ABE7063C022C96E1747A2BB3F10B028
              4559066186C214425CFD24DED3B7F201C23625EDD2BAE1D90000000049454E44
              AE426082}
          end>
      end
      item
        Name = 'icons8-source-code-other'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000058000000580803000000464BC0
              0600000198504C5445FFFFFF0000001D93F5178BE72195F22096F22196F22498
              F02294F32095F22196F32395F62196F32095F32299EE2096F22195F22096F422
              96F22195F21E96F01A93F12095F22095F32094F22195F32096F22196F21F94F4
              2195F22096F33D51B53E51B50000FF2196F32197F33F50B63E51B33E4FB53E50
              B43F50B43F5FBF3F3FBF3F50B53F51B53E50B23F51B63E50B43E51B53D51B724
              91F52095F23C4BB43E50B53C54B63E51B43E53B63C50B53F51B4334CB23E51B4
              404FB52699F23F52B43F51B53F51B44455BB5555AA3F50B53648B63E51B53F51
              B53F51B53E50B51F94F13F50B53E51B53F51B52196F23F51B43E51B43E51B320
              96F12196F33E50B43F4FB52095F23F50B43F51B42196F32A94E92193F32196F3
              3F50B44848B62095F32196F23F50B53F50B52096F32095F31F9FFF3E51B42298
              F52095F23E51B43F4FB72196F22196F13F4DB83F50B43F50B400FFFF2196F221
              96F32AAAFF404EB42395F12095F33F51B42196F22095F43D51B63E51B33F50B5
              007FFF2195F22096F33F7FFF3F51B41F97F32196F33F51B43F51B52195F22196
              F37A9FE9D50000008474524E5300001A0AF5D37A2258CB721CAFC50EF9D15E78
              B72212FBC96472BDFD18FDC3427A006A6C684E2CF1A5080495F5381CE3C9181C
              BD10BB14D93026D90AF5521444EFD30E02B10EEDC59DFD60F98760CF54977626
              B17E507E859DD70C2CABBD068552BFCDDBF308DB34A5DF208B4C24EBED00E1EF
              06363A9D4891465A50FD02E7EB047040979007191E000000097048597300000E
              C400000EC401952B0E1B0000035E494441545885EDD8675BD44010006022071C
              BD1CBD7A7080E50404C58282140B453C0191A6A080A0A0D205942210EE6F7B90
              994D2E992DC713BF653E6E66DFDB679349762E29C90B2FBCF04225B404E39A52
              56E270B22F2535ED7FC0FE682CD233325D87B3A297719E9DEC2E9C936BC0D13C
              715EC2703EB8D10297E100C285EEC245C5E096481213854B71C1652EC3E5E056
              B8FCB85556015C2DCB24E19AEB414E7A2DEE449D753454AF063734EA376ED270
              35B85595E6D8ADDB7AF88E0ADCD4ACEB7ACB5DCA6DAD00B8CD1CBB773F96DED8
              2087DB1FE817D1FC9080CB70274AD9D0A3C7467A930CEE68D18D78F2D4099780
              5BDC89235DCF20BDBB470CF7F6E91861FB22B4C273800338F2FC054B7FD92182
              83AF5862BFF35617E04E0CB0A19A4136A1AF57000FB1B4B3D7CE9D18063737C7
              1C7BD3CFA644F8708825E96F9DEE082E7854A3E78CF1E077E6AF0F395D6D1C61
              7FDCF07B530ED1B065BF2682043C09AE6F2A7E3C42DD170B1C2B38FA3E404CE3
              82676C17AC4F122B4113BE2C38233E7C245C6D16E139FB958E4F6C2A2B410643
              C15DC4E71EFBCCCB98077761D171A9A79B4DC6124498159CAE7F6927DD255CF0
              3271B1E92B9B0E2508B0659B9ABF91AEB682F02A75F5FB0F06182568C0C10936
              FCD3F19E32626D1DDC8D4DF2FA5638FED61BB05970E12DDAD5B671C13B9C842E
              F3618D206C16CFE02FCE346D17E13D5EC6FE1963C60CF8372BB83FFBBC590787
              E01E1DF352B4BF0C8E95600CB6145C883BE904177CCA4DB1EE687FBD2A7C8AF0
              893AACB215C747E01E1EF05DFB56A8DCBC3D5CF02EDF75DE3C85C76D07E16DAE
              4B3D6ED202D9DC00777D8DE7D205222BE9555CF00ACFE594B4EC25B48CF012C7
              E5BE84C4AFCDC50570E739AEE0B5297CD1CFE182676957F8A2177D9A66109E26
              5DC9A789FF319DF2813B492F58F631E57EFEFDB8E071D2957FFE790796518447
              2857E5C0421FB158CB384CB96A472CF25038800BA65A46D54321758CC596F19C
              6819958FB1C4C1BB53D8322A1FBC9DAD82A465546E151CCD4D1BB815AD24ACDE
              DCD8DA3179CBA8DC8EC5379075B813B53C58BD818C0BAA655409199C892D6379
              62AE14265A467760D63216B90B17E28203A2AC2BC0AC65CC7719CE03D7DA32BA
              01276743F79C95A82B7FDC32D22F60BF30E92A702CD252537CE2BF1BAF086BAA
              FFECDA612FBCF0C20B79FC03EA31B627A913AFE00000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-refresh-right'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005C0000005C0803000000D43122
              6A000000DB504C5445FFFFFF0000008080802491F51C9BF02294F22195F31F97
              EF2195F21F96F42095F32197F32095F22096F42195F22095F200AAFF2195F31C
              8DFE2096F31D93F51F94F42396F52195F42094F22195F22096F32196F21F96F1
              2195F22095F400FFFF2095F32195F32196F32095F4007FFF2096F22195F32096
              F12097F32195F21F94F42095F32095F2279CEB2491FE2096F32196F22AAAFF21
              93F12096F31F97F32195F22196F32195F22196F22196F32094F22196F21F95F2
              2196F32195F22195F32395F12195F31F99F22193F31F97F22296F31E92EF2195
              F22196F3D9D359D70000004774524E530000001C123CD720E730F344F95C7895
              02AF08C51A3032623E8FDBFD38BF5E009D81AF4602D1DF2656CF18ADBB0C06F3
              A106268740FD6AF57A547CF7505A6AED3A2E282C504220FEEAA9F60000000970
              48597300000EC400000EC401952B0E1B00000148494441546881EDD75B4FC240
              1086E1168F2872F2AC68450545F084820A2A2A28F3FF7F91424CBBDD32CDB63B
              73619CEF76D3274DFBA6491D8777EECF321C135C70C105175C70639C63FF1A9F
              9B67C4171697187158CE32E2B0B2CA88436E8D1187719E110728141971289519
              7158D783A7C4410F1EC78B1B9B5B46DBF6713D7804DFD9DDDB87140B073F13AF
              1CA481A7CB1DC6E35E3ED54DFF4E0D3E8A7B4716F46441F051BC6A69031C9731
              FC646C8DFBC1EBF869CDDE86FAD96CFC9CC06E5C208FA5696FB72E91177A756D
              6DDFDC6229B6ADED3B0FEDFCDE92EE74D5F232CAEFBFFE3E1F1E9F4CD60BAEE8
              3FBB31F88B8ABFBA460B3EB983B7F0491CFE9E10AF7FE84731F83019EEE7CD80
              0779D3E34ADEE4B89A37311ECE9B16EF8F9023025CCF1BC33F5BCABECCF07624
              6F04279EE08227C6E9F777714770C105175C70C105175C706E7CB26FBCB649DA
              175E55470000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-refresh-left'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005B0000005B08030000002BE809
              AB000000D5504C5445FFFFFF0000001F99F22193F11E92EF2095F22296F32395
              F12195F32294F22193F32196F31F97F22196F22196F32195F200FFFF2096F32A
              AAFF2196F2279CEB1F94F42195F22195F32195F31F95F22094F22196F32195F2
              2195F22097F31F97F32297F12095F32196F32295F22096F1007FFF1C9BF02096
              F31C8DFE2196F32096F200AAFF2095F22096F32195F22095F22095F42095F220
              95F21E93F42197F32096F22096F32095F21F98F11F96F42195F22195F42396F5
              1F94F41E98F41F97EF2195F32195F32096F42491F58080802195F22196F3586D
              F2C00000004574524E530000282620BB423AED3C2C5A50F76AFD008706A10C18
              CFDF2E507C547AF5564024F3AB52260212C508AF7C02959D78765EF9BD3244FB
              D98D3830E76232301820D7AF5C1C007C9F4DA9000000097048597300000EC400
              000EC401952B0E1B00000139494441546881EDD5D952C2401085611A65535944
              047745047117F71D37E6FD1F4983924498810E9DAEF2E2FCD7335FE5E2542691
              4008218410FA7F51ECC1861D879D9CE139B3A95069969DC9E678F69C0935CFB1
              17F246CB2E148D925D5AF4CEA9D8E525A365575246CB5EAE1A2D3B5933D1EC15
              B69DC99A8876816BAFE683736BEB9C3636C3F696DBF6662D6A7BC8F6E59F598B
              DA09BEF38FFD3B6B49F5B2DD1ECC5AD22E596D7FD6921A567BAF36F9E6C4AA4D
              ABDDDA97D3BD34596D6A1F88ED4372D874742CA44F4A4E9BE8B427908B674463
              6C3AEF4C4D5F5CD2789BAEEAD3B8D737B777C3F2A84DF70FC195C72756CF2FCD
              51D86653F7D5B799FF5857966727187AFC36B5DFF46C7FE81AF660E83A36BD77
              F4ECFED0B56C6FE86AF6F7D0F56C6A7DE8D9D260BBECCFD8830D1B366CD8B061
              47B0D5FA02255DFAFD2CFC7FB00000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-refresh'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000052000000520803000000F0F273
              A900000102504C5445FFFFFF0000002491F51C9BF02294F22195F31F97EF2195
              F21F96F42095F32197F32095F22096F42195F22095F200AAFF2195F31C8DFE20
              96F31D93F51F94F42396F52195F42094F22195F22096F32196F21F96F12195F2
              2095F400FFFF2095F32195F32196F32095F4007FFF2096F22195F32096F12097
              F32195F21F94F42095F32095F2279CEB2491FE2096F32196F22AAAFF2193F120
              96F31F97F32195F22196F32195F22196F22196F32094F22196F21F95F22196F3
              2195F22195F32395F12195F31F99F22193F31F97F22296F31E92EF2195F22297
              F12196F32295F22096F22096F32095F22095F21E93F42096F22096F32095F21F
              98F11E98F42195F22196F34E0D794F0000005474524E5300001C123CD720E730
              F344F95C789502AF08C51A3032623E8FDBFD38BF5E009D81AF4602D1DF2656CF
              18ADBB0C06F3A106268740FD6AF57A547CF7505A6AED3A2E282C5042207A24AB
              527C9D76BD32FBD98D3818202BDBDA000000097048597300000EC400000EC401
              952B0E1B00000213494441545885EDD8D752C24014066016142902626F441141
              140B55A548B777E5BCFFAB48806477930821E778E10CFFE526F92699FC7B2613
              97EB4FC21CC6ED31AF21C9B9792F39090B3E7212FC017212828BE424F442E424
              4038424EC252949C84655E502A127841ADC9C8CAEA9AADACEB242FA805B9B1B9
              B50D0EA215D444EEEC3AE10609C6AC4825E4E8064719165426953D04A8462DA8
              4CEE2345807854260F7A68B25F50914C1CE24548A644F288404C1F4B0F7E8217
              33A7D2EB393B478B1759B94439B498570CBD2C20C162C9B421A5B77379756D27
              657E45A56A1E1B3591BC1937D278F870AB37B4B5DFC8E69464B2A5AFFD46B6A7
              23FB752426D53AD292833A9292C33A12925A1DE9C84AC7B88625791DADC86E46
              C8AD3D32D732AF213F0DAC322367E48CFC0F642B670FB815874D771CD9A8CFD9
              23DBE248AC8D213B1520264B45A02595BC7A9892CC5E0031799A0162F2380DC4
              642B09D391CD4964A30E5392A50964B5C20F976D7DB3DE5D8AE4918954EB884A
              C1400EEB88CABD4C8EEA88893F2B915A1D31796022A9D7119347914C25275F30
              31E984487A96F162AFCBA4078FC6D1E4139349160923C567C5483216C2FC3328
              BEE85B54DC3DB1A063F1F58D59922CE077C2BD7F7C7E8983441E1BBE057EE6BA
              BD5F64ABDF09C36C320C37EFBC4EDA1C6EE61847302F2819C9A24BE4A45E5042
              522B2829C91683E4E4A0A0C4A45A506AB25F50729279DC4892383F406ED846AA
              D3BD680000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-windows-xp'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000300504C5445FFFFFF000000FE5424FE5820FE5620FF5721FE5420FE54
              1CFE4824FE5723FE5722FE5622FE5722FE5621FE5622FE5721FF5621FF7F00FE
              5723FE5621FE5622FE5722FE5622FE5028FE5423FE5621FE5722FE5621FF4C19
              FE5724FE5621FE5821FE5721FE5722FE5621FF5721FE5722FE5721FE5720FE57
              22FE541C7AB4407BB441FE5621FE57217BB3417BB3417FAF3F66CC33FE56227B
              B3427CB2427BB34271A9387FB23F7DB3427BB3417CB242FE56237DB4427CB242
              7CB2417BB6417FB43F7BB1417BB3417CB24275B03AFE5821FE5622FF00007BB2
              417BB2417CB3417FB0447FAA557FB63F7AB53F7CB3417BB3417BB2417BB2417B
              B2417BB3417BB3427BB2417FB2447CB543FF55227BB2427BB3417CB341FE5621
              FF5722FE54217CB2417FAA3FFE58227CB342FE57227CB2427CB342FF56237CB4
              44FE57227DB242FE57217CB242FE5621FE57206DB6487AB242FE5423FE5621FF
              5722FE5621FF5621FE5621FE5621FE56227BB141FF5722FE5722FE5521FE5622
              FF3F3FFF5A1EFE5722FE5722FE57217CB342FE5621FE5822FF552AFF57217BB3
              427BB243FE5722FE5621FE572279B23FFE5721FE5621FE5721FF552A7BB3417C
              B34100FFFF00A7F202A9F402A9F403A8F402A9F402A9F403A9F403A8F303A9F4
              02AAF4007FFF05A8F302A9F302A9F303A8F403A8F403A8F304A9F600A6F502A9
              F302A9F403A9F27DB2407FB24C04A6F502A9F303A8F302A8F304AAF27AB3427C
              B34103A8F403A9F303A8F400A3EC7BB2417BB34100AAFF03A8F402A9F479B042
              7BB3417AB43F04A6F57DB4417BB2427CB2417CB3427CB3417BB34303A8F302A8
              F4FEC108FFFF007BB4427CB2427BB2427BB2427BB3417CB34102A8F303A8F3FF
              CC00FFC107FEC006FFC3077FAD457CB3447DB24378B54300ADF3FEC007FEC007
              FEC007FFBF00FFBB0002A9F303A9F4FEC107FEC107FEC007FFC308FEC005FEC0
              06FEC006FEC107FEC007FEC007FEC107FEC107FEC305FEC800FEC008FEBF07FE
              C106FEC106FEC10702A9F4FEC007FEC106FEC007FFC006FFC10703A8F303A9F4
              7CB3427CB242FF5722037717FD000000FA74524E530000143646542608063A76
              B3EDFBC98F44024EADF7DF7C123897EF780A22E34A6895B5A1F75A46FD124A3E
              91C3AF971004D7F3EF7608146CC7503240E785221858B3FB0C6AE5008D894E1A
              061C34629FDBBFD3F5EB741E2C0E66E199DB782CF90C6EBD9BD37250284868BF
              97DD74064C24CBAB8B8999AFD942F1AD622C041052A5E1B9B7420681D572B35A
              872826BFF90C68DF00285C7691ADBBAB9D8F60022C70AFEBEF99381ACFD55442
              0A34B9FDCD3C36E3A5FD970E93FD02ED622A9B30363299F1F7B35A83D33A0054
              93CDFBE94AC98704F1BD22162434261640F78B100E5CEF8DEF831E307AC9B3D5
              FDB5682A0E3C6C9FE36A5EEDC7B5A199142FAE000000097048597300000EC400
              000EC401952B0E1B00000423494441545885EDD6655C13611C07704F50B1BB3B
              B103BBBBBB5BB0BB135BEC0E268A220CB05040540C44C544305199C1285141C4
              60A08073633ECFDDC6B6E7B9FBEF866F7CE1EFC560CFFDEFFB19773F764F8E1C
              FFF3CF84114C4E0BCB5C9616B9F3084F9011E2ACF2E6CB5F40C3A560A1C2458A
              FE056755AC78098D714A962A9D4DAE4CD9021A9E942B5F213B5C453E8B4DA5CA
              D9E0AA08721A4D55F3B96A0057DD6CCEAA06C0D5349BAB0568D6B5D1409DBAE6
              70F500AE3E1E6890D9B09190D698E29A005C297C868D5ADDB459731EAB45CB56
              AD494EB826286DD0405B354EBBF61D8CAD8E9D3A775177E94A72DD00AD7B0F34
              D053CD25B355AFDE7D1AA385BEFDFA0F1838885D1B4C5D3B933519A236CCD076
              C30CDE0D27B93C504D72A181116A202349CE12D00A8E4203A3016D0C5514D335
              01B8B114370EE0C6E3EB6E0370AD490EACC984AC9AF0C7D68EE426029A514DF8
              32892139A82693F1C014809B4A72604DA699AAC974929B01686C4D6602DA1886
              E4A09ACC325593D9143707E0E6A2E3F3A09ACC27B905BA534B2C5C3479F192A5
              CB965BEB395C931580866B62CCB135B15FB96AF51ADDCADA75EBB577670363A2
              260E0CC96DD4D82FDDB49931CEDA2DF6982B8B7FDF0A70DB48CE6AFB0EDEDD48
              ED9D3544D46417F5E904B37BCFDE7DE8C77E403BC008708E92834E870E3B1F39
              EA724CE2AA5DEBB109BF9AAC09C5B949DD3D54FA781E3FA13F06D6A40ECD9D94
              9E525139EDE5A83D7C06D06CCF929CB78F2F8DE19CF3E306CE5F10E61C1892BB
              C88FA1F85FBACC4E74BD7255889B497201D70439952A503B7DBD41268F6573E3
              2643724180F6FB64D6F5BD75FB8EB175F7DE7D3BFDEDCAE28201EE011E0809E5
              069B3F7CF4F809473D9DD4FED959C362E8B930807B8E8EBF78192ED377E6D5EB
              5B6FDEDA3154745C843FC0E15B2B572A23A3A269002786E26201ED5D001A8853
              A2BCFFF091B2E2133E25529C704D54AA2378E0B3924DD297AFDF4275277F4F56
              A4A4A2C51F24E70AD5E4271AF8A8D4272D3DE3575C4A62786A9276414672504D
              FC23D0C057A5703E53B702AAC9393C900170711407D52418DFBB488093931C58
              9320AE268289FC4E72504D3C5C75351148064372504D2E1AD484373F480EAC49
              2C9A92019A414DB41C54135F5C1305A019D444CB413509C353E100174771504D
              9CF03F93C89A701C58136F336AC271604DF0732C05E00C6BC271DA9A78F8B848
              BDFCFC62A5C13EEFB2B8A3782815E01424E78A1ED4BEEE811283D500EF4B9E1C
              E785DEC5039A514D582EE8775860044326408AB703FE66D584E5DC2494C5E6B2
              93AFCAD9AC9A98D841499C714DA293004E6E7C06BC2173C44F09F13511B5BF13
              5F13515C14F0C72A885931BB4FB970EF64C4A8A8CD6CB4228DCF4A4B49262745
              71084C20BF402313E531F49C488E614293A3D2755F2CEF1313425EF04E89E670
              6264F17279888C5FD271FFF38FE40F2355152385811B900000000049454E44AE
              426082}
          end>
      end
      item
        Name = 'icons8-apple-logo'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000300504C5445FFFFFF00000055AAFF43A6F441A5F440A5F641A4F641A5
              F542A4F541A4F543A6F441A5F442A5F542A0F542A4F542A5F543A4F441A5F542
              A4F442A5F541A4F440A5F542A5F541A5F446A9F043A5F641A5F448A3EC42A4F4
              42A6F341A5F541A5F455AAFF41A5F543A3F442A5F441A5F542A4F444A6F540A5
              F542A5F541A5F442A5F441A4F342A5F442A5F541A5F542A4F544A1F642A5F541
              A6F641A4F442A5F441A4F441A6F300FFFF44AAEE42A4F541A5F541A4F541A4F4
              41A5F544A5F842A6F33FA4F43F9FEF43A5F642A4F442A5F441A4F542A4F442A5
              F43FAAFF40A6F441A4F441A4F541A5F541A7F67F7FFF41A6F642A4F442A5F442
              A5F441A3F440A5F442A4F441A4F441A5F443A5F33399FF45A2FE41A4F543A3F3
              41A4F541A4F441A5F542A5F441A5F442A4F442A5F540A3F341A5F43FA5F241A4
              F441A4F540A6F542A5F541A5F542A4F342A5F442A5F440A4F244A5F6389EF23F
              9FDF42A4F53399EE2F93EB2990EA2793E842A4F4268FE92C91E92B92E942A4F5
              007FFF228BE7248CE8218BE7218AE52B91E92A92EB3A9EF22991EA278EE9218A
              E61F9FFF2B91EA2C94EB2E94EC238CE72AAAFF329AEE2B93EC33CCFF2E96E926
              90E8228CE72E96E72D95EC3193EB2F9FEF218AE72F92EB258EE82991EB3298F4
              2C93EA208AE62A91EB2F9AED2E93EA2D96EE2890E8258DE72B94EE2E95EB258D
              E8258DE72C96EE2C95EB268FE9258EE72C92EB2B95EB2890EA2A92EB3298EA2D
              94EB2E95EA2890EA2A91EC2F8FEF248CE7258EE800FFFF2E96EE2E96ED2B92EB
              2D93EC2992EA2C94EB2A92EA2C92EB2B93EA218BE6268EE92891EA2991EA2B91
              E92A91EB2992EB2890E9228BE62D94EC2D95EB228BE71F88E62089E52089E629
              91E9399DF1369BF041A5F5208AE62D94EC3CA0F31F88E5399EF1268FE92991EA
              2D95EC2F96EC2F95ED2C94EB2A92EB278FE9258EE8248CE8238CE7238CE82890
              E92B93EB2F95EC349BEF3A9FF241A4F5268EE82F96ED389CF03FA2F43DA0F321
              8AE63299EE41A4F41E88E640A3F51E88E5228BE73B9FF11F89E52A91EA40A4F4
              3096ED42A4F442A5F542D8D1A6000000CF74524E53000002305E3E3E9FEF9B48
              CBA51AB59B4CED7E6CFD5266FD1238C30EDF5CA1E106325EADB7FB1A6A4CAFFB
              5ADBEFF1BD1ED356E3E19942000EA1B3B7A78D242E30107299ABBBA77E0C4AF9
              D7893A0258A9F7B14646CBE59744040ACF40A5C9CDE3DFF3F342F514DBD136A3
              9D407AC7933CC7089FF940C72C76E39D3AEB02F9F7F9FD2278DDCFE9FD08C98F
              95F7064CAF0452E7FB2CA53430FD66F1CD18ADFDC32A266ADFEF5C74EDF16E76
              E9E55034D1B3188156D3AF10F7EB024C2C935EB785BD91ABFDE9CBB9A7B5C1DF
              F97C6AFB85CFC27F000000097048597300000EC400000EC401952B0E1B000003
              58494441545885B5D6795C8C411807F0468E2C85449123250A85B09BBB4458CA
              7D24F77DDF8550089BDCF77D17A1E8508E56C8955BEE448E50A15C65B2D46B57
              DB9E33BBEFCC6EBF3FE779DEEF3B9FF77D67DE31302889009294322C5D466D90
              962B5BCE8861CAEB89E3546024A9A817CED884294A257D7095AB4835C6540F5C
              55B3628DA9A63B57BD50A6995BE8CCD590CF8DA9A95E26E42C6BC935A6B6CE5C
              1D05ADAE95AE5CBD4205CE1AD140C6D92868F5510D449CB1AD5C336AA033D750
              AE99D9213B88387B99D6A831BA83886B52AC3970301D449CA3546BDA0CD741C4
              15AD88E64EF80E22AE05C3B46CC5E569E8D0C439734C5BB769DBAEBD7507E940
              4717D7E29A15B7935BE72E26EE5DEDBAB1E278DD6DF8B217D9A3A787A7E27D7A
              F57694D5FAF4EDC7D3CAF51FC02867E0A0C15EFF2B439CECF92A35EFA19A398B
              610C22FCE1366EF6236C512577670D9CCB48D4251A33CA10CB7146136B0C3366
              2C86E3AA3E1A76E173919CE1382A4DBCC78C4770961328B5899350B39B4CA94D
              F1423DBBA994DA34F487329D4E9B81FE8C67D269B366A3B93954DA5C1FF422F3
              72A0D10A7C315B800705F6F78F681E869B4FAEFDCE870B00867327C57E15E441
              E887E3BCC9B0DC9F3FA0380B71DC2212EC7B41BE0483A2C5188E67CE96FAF635
              271B4AE30F309CB3E2155F3E7FCACACCC8FEF8419CF7E9EF32DE66BE799D9693
              9396F6EA656A3E544880562EF74556760A6499255AB8E7CF9EB2A524598AE33C
              C5D693C7A9249624CB706FD68879944E8A411888E3963F24C7205C81E356D268
              501084E15651713018C3ADA6E3D6AC4573EBE838B81ECD6D48A6E3441B911CD8
              4439BDCD5B90DC564A0EFA6F4371DBF368BD1D3B111CD845CB41D1EE3DEADC5E
              6A0EC27DFB0FA87207453A78F0902A070EEBA085A89FA04275E08E208E8B47A9
              B530D4E9F31835771C79363E41A98523BE3B712258FF7494F2E0249A03A7A8B8
              48D4AA90244A40A10504E138104DAEDD8F416D01D29C26E662911B9434716708
              B5B3E73471E03CD9D215C4A377635984249AE802FA5FA19004F65ADE45A09503
              97D86A2997010B0E24AA6CF457AE5EBB7E23E9E6ADDBCAC3C977002B0EDCBD27
              BF48E01B2A1BF7495010C322004B0EB8464AC110A1AB52212E30BC686107F8C5
              29153472E2C408136283E31185A8E8C4246184EAA84149E41F7F308E8747CDAF
              B00000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-linux'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000300504C5445FFFFFF0000002A2A3F2731372531382532382531372532
              372532362630390000002732382631372632372531372632372436361C383825
              3137263238263237253138283535263137263137005555263138263237243236
              2730392532382631382532372533382534342631382631382532372530392430
              3624313825303826323725313726313826323825323824323826323626323823
              31382532382A3838253238263137514E2E655C2B2531382F3A38262E36253137
              273A3A263137253238222E392431372632372424482631382632382632381F3F
              3F2632362531382532362532371F2F3F25313827323626313625313828323225
              323725313728343A2532382531372C383F424D5228343A535D62D2D6D8424E53
              465056757E82B1B7BA2B373DD6DADDE4E7E9848B8F899195ABB0B4878E925B65
              6938434A273339D0D4D7A6ACAF818A8E646D72364247E7EAEC323D43A9AFB3ED
              ECE0F4DD92F7D469F6D671F5DA82F0E5BBDADEDF60696FEDEDE6F6D87BFEC314
              FFC108F6D675ECEFF0CACFD1EDEDEAF4DC94FDC51EF7D464C0C4C5F3DD98FDC5
              1F9C73058764048260037D5C03A67B05EBB106ECBF35373D354A555AF5D97EC0
              9005AB7F05FDC007A27805C79505D6A611F7BF12CD9B06805E03AE8205D29E06
              D09C06393F34F0B506916C049D7405EDB206FDBF072D3636DFAB0EE7AE06FEC0
              078C7521333A35A99344F7CB41FEC210FABD07C79506F2B706FCC11084773D3A
              454BA6A8A939362C93792CF8C426E2AA07F9BD07FFC107DFA807F5B907E7B51E
              C1B89DDADEE02F3B40E3E6E82C2C2C666766D2C8A2997E1EBF9715D4A411D4AC
              2FBFAC6F2323212A2A2ADCDFE1777F84C2C4C63B3B3B9DA3A7808182AAACAE9E
              A4A8D4D8DBD6D9DA2222224F4F50414C519D9FA09EA0A1ABB1B5BEC4C66C6D6E
              212121242424ADAFB02C373E92999CE1E4E6363637262626D1D3D5939A9E939A
              9DE9ECEEB3B5B7C7CACCC6CBCEDBDDDFCBCECF5761663B464CE6EAEB677074A6
              ADB0A7ADB1666F73E2E6E8ECEFF1EAEDEF8F979A29343A6C747929353B333F44
              5862673E494E263238C084A44A0000005874524E5300000C4E83A3AB9D743402
              2CA1F9D9680E088FFDEF6C12CFA502B593383AA9C3EF36229948E5582A685E6A
              818B647A5A6A7E24AB12DFFDEFE5BFCB20D30CF7F516609906DD83D70842ED3C
              E11091405CEB18369BFDCBFBD906FF8FD3000000097048597300000EC400000E
              C401952B0E1B0000051E494441545885B5D67B581545140070C0EC4588A09959
              98203D2D2B4D2E820969EF97514682BC4C0B415E59A958849A91F6928A32B5B0
              C45C84A8D04A060CADB8589141F622680B2929B3484207E522A799D9BD1F7777
              67772FCBE7F98B8F9DFDDD333B33678E87C7C9084FA3F01A74CAE0534F3BFD8C
              338D06B9CB799FE503520CF11D3A50CECF7F18F4C5F0B307C68D38079431F2DC
              8170A3401DE70D803B5FA3010458E74673B80BAC7363381C045AE582781A8CB5
              CA0573B90BAD7217B92ABD277AE4BF2EB6C85D02E0E8EE3ECE8C635DF8E81189
              BBD42277194027C6FF51A2039338FC2FE3C659E47CA11DFFF3376E27C421FCD7
              C13FF11F8CBBDC227705B41DF8FDB7D6FD002D5DBFFE22FE8C9B1937DE227725
              34FD248A8D4D003FE21F44F1FBEFBE65DC5516B960D8F78D2836D4D3ECBE1645
              71AF949DAF452E10BEAAFBF28BCFF7D4DA6B3EFB54143FD9BD9F71575BE426C0
              AEEA8F775655A28A1DE8A30F3FD87E781BE3265AE4AE01287F1F55BE87D0BB65
              08BD535AB29571932C729E21C502EA8B2D5BDEDECCBC208B9CADA80FDBF4D69B
              1B51A1EE5AB8C385BEF1BA8C556D58BF0EA1D7A45336D92217B6F6D5572A0B90
              B0E3E5F52FD1445FCC97BC706BDC94352F3CFFDCB3CFAC5EB5AE80604FE7C9A7
              0CFC2D71D74E85A7563ABFDD932B96635CED605C44A415EE3A8065B94FE450EC
              F1C796D29A82B3A5F4A659E0A65F0FB004E3C58B1E7DE4E185588A87242E24B0
              FFDC0D0059581599199277E34DFDE56E0E01485773384DAEF0EAA267C64DB885
              BCB440C3A5A6C8D3BDB55F9CDF14F2CEFC4C0D8793E5F46EBBBD3FDC1DF49507
              B51A7EC079B58DEE0777277D61573587CB9CEFF466B8CD794DA2E3E771348CE7
              3AB9BB46B8CB8DA3C3B7DDCFE5E62439BDB16E72511174742257C33801E2E318
              37EC6EF7B87B006642828E86673B20B69B79F7BAC50545C37D31B376EB71381D
              A05BFA8283DCE1A641743A34E96A389140073B94E9E973E13E1076223E579FEB
              EA0588AB630D558039E74F7EDBD1A6AF614CBF5C333BBD234D39BF3110D69954
              67C4B5D14DB997723E43CDB819A4996BD09612D7A0CD45C2D114D7C5D0E52643
              746B7BBD215747399C45B9C1265C38A98DB9BDA9861C76D0F2C04EC710138E74
              B0A370AFB186494D4E6C954E469431379170B91D26DC2CC8C86C56DCB97A1C29
              C261D8600FB3C887B9F898C4791B729164C44C832D2C456C46ABF38E34CE2E7C
              8D6DABD10193B94EBC44BAC1871B2F455919DA64CB3A64C235623C4FD9FEF039
              441BBA2A5B8F81B7342F6F79757D5A6C460BE5C61B71CE5EAE304BAF76625C8A
              5069763E8DB894C262BB0127389B4D7B8A639F8EB690F62C258CCBAF159090A3
              CB95F5F59AC564DBF3D77731FB39A695B0A17C0E21C1A511AE226D6B7AAB3157
              5EA4CB2175D849BD883FC0E1F2E8D38292F272BBF4EB0287734D4C8E50B26C3D
              CD3A9C4BC81F4FC1556934B49176E9499DA69C9C9E72B2DAECD006BAAD5A3455
              798586436E71828D7A9AE92EE28CCC7183436BC96AF46A1A8B959C9124432597
              C31B54DCD3A8D92B0BF6F046A21C938D42A3A230AD4B89A5A6C34EEE50C17CB2
              08D51E4F5EE682CD6E4882CDBC916435141C1723510331479AA409CFD99E1D43
              96C6C6CD4DBD8D75B80ABAF962E2923BB2E3E49E2E546BB19DE25676B41428A3
              58A3714E05E7903967AB8A1AED3C79A742C773E522A6AA394128F3E472A4D671
              417B8077108D482FDA574F8F0AB6BB6AA8EF8E5171348AB4A2E0A90ABD871C8E
              D57795A7E65CBF8AA739C744E73BCE8B809F9EE2DFFA1C9BB64049CD54A5FCE8
              33F5238F9311FF0344464ED9BE2243A40000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-key-100-lightblue'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A08030000000F76B1
              30000001C2504C5445FFFFFF2B2B2B2B9AFF2B9BFE2B9DFE2B9EFE2B9DFE2B9E
              FF2B9DFE2B9CFE2B9DFF2B9CFE2B9DFE2B9CFE2BA3FF2B9DFF2B9CFE2B9DFE2B
              9CFE2B9CFE2B9DFE2B9CFE2B4EFF2B9BFE2B9DFE2B9DFE2B9DFE2B96FF2B9DFE
              2B9CFE2B9CFE2B9CFE2B9BFE2B9DFE2B9CFE2B9FFE2B9EFE2B9DFE2B9DFE2B9C
              FE2B9BFE2B9BFE2B9CFE2B9DFE2B9EFF2BB8FF2B9CFE2B9CFE2B9DFE2B9CFE2B
              9DFE2B9CFE2B9DFF2B9CFE2B9DFE2B9CFE2B9DFE2B9CFE2B9CFE2B9DFE2B9CFE
              2B9BFE2BA0FE2B9FFE2B9CFE2B9CFE2B9CFE2B9DFE2BA9FE2B9CFE2B9CFE2BA3
              FF2B9DFE2B9CFE2B9CFE2B9DFE2B9DFE2B9CFE2B9DFE2B9DFE2B9BFE2B9DFE2B
              9CFE2BA0FE2B9EFF2B9DFF2B9DFE2B9CFF2B9EFE2B9CFE2B9EFE2B9CFF2B9EFF
              2B9BFE2B9EFF2B9AFE2B9EFE2B9EFF2B9CFE2B9DFE2B9CFE2B9CFE2B9DFE2B9D
              FE2B9BFE2B9CFE2B9DFE2B9DFE2B9CFE2B9DFE2B9CFE2B9EFE2B9CFE2B9BFE2B
              9CFE2B9CFE2B96FF2B9DFE2B9DFE2B9CFE2BA3FF2B9CFE2B9EFF2B9DFE2B9BFE
              2B9EFE2B9DFE2B9CFE2B9CFE2B9CFE2B9CFE2B9AFE2B96FF2B9DFE2B9FFE2B9D
              FE2B9CFE2B9EFE2B9DFE2B9DFE2B9EFE2B9DFE2B9CFD2B90E42B8CDD2B9CFD2B
              8FE42B9DFD2B9DFE2B9DFF0644F6320000009074524E530000102C48627E8997
              9BABAFBB600A325C85ADD5F785003870A3FD066CE1DF6C30D5D32E4AF5F3F534
              0ADD7A7802E5E33AF9E3CDCDBDB7B7F97EEBB14628122A7CC3A3C10668F70464
              6495B9DBC5D75C16FB831620F1EF1E2C2A343C3026281C1C08E7EDC7A5AB8346
              50DF9BA758FB32FD3E899D02C993B50E3EC1E96A24E5DB5887B30E0C95146A97
              42877C5268BFEDCDEA6AC7000000097048597300000EC400000EC401952B0E1B
              000002D7494441545885EDD8E95712511806702F122210A090A094489B1652A6
              A02546A6B99459B618952D2ED1A2D1BED966B66F5AE6DCFF37300119DE79EFCC
              9D3B9DD3F27C9B739EFB3B6766CEBDF39E292BFB4D21504CE5E675960A6BA5CD
              EE70D86D95D60ACB7A73B909ACAAA69D2E7755B5C74BC1783DD51BDC2EA776BA
              C6E7AFF5D4C1E8DAD4796AFDBE1A0D7460E326B65A487D30A0966E086981B3D9
              BC451DBD759B5699D2ED6635B4AF51BB4C6963139BDE51CF2353BAD3C9A4C37C
              32A5CD2C3AB28B97DE1D61D02DE0B23DAD6DD198A3DD66EB70C4A26DAD7BC152
              0B83DE27EB77C6C35DFB13F20D9D38D0D51DEF94552D0CFA6071BD2720570B09
              F414777B71FA90EC5EFB946542FA8ABBFD0328DD44F969DA80D2837AE8C3286D
              D5431F41E921593B8CD1DDB2723B4A1F95B57B317A58563E86D19192CDE05696
              8FCBBB5E8C1E91B7E9899323307CAAAAF4239440E8D325ED4C46CF0019859A49
              843E0B2D509F7308EDD3479F47E8317DF418425FD047BB10FAA23EFA12425FD6
              478F23F4843EDA89D064528F3C859E2157F4D051944EE9A1AFA234F71492CD35
              94BEAE87BE81D2A5479F8624F161619A5F9E64CC2133FCF44D069DE6A70719B4
              E916AF2C8DB386603B2F1D232CFAF61D4EFA2E9326F7F8E4FB844D3F88F3C80F
              9D2A6832F048D22C3F7E42D4D084CC3ED5063F7B1E212A69425EF86D2FD5B1D2
              5CEAD5446E991A3A9B647AFEF534F66CA68667FCB36FD62E514BAFE4ED3B2538
              F5BEB4AD8926CD796BF94726CBF9CB79A0CC4B2F7DCF64E93FFD57D152DA285A
              FA007485D0B02C82569045D01F615904DD6F368C56B245D00AB6109AF67F328C
              FE3337BA91F467C3E810F43343080DCA426858164187804141103D3461184D3B
              605BC86B846D21346C8BA1E917E3E8F97F94FE2AC1B480118704258896825057
              239DB78B461C50D64CE7ECB5230E2C6BA757ED02AD2473D0BFEC3CAD28F3D02B
              768E5696B9E8ACBD4A23321F4D161C8BDF3259742C202584169A9FD99F566F63
              CADB410000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-unchecked-checkbox-other'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000093504C5445FFFFFF0000001F96F42195F32196F32095F22A94E92096
              F22095F22196F22196F22294F32195F21F97F32295F12096F22095F22096F422
              96F32095F21F95F3178BE72095F22195F21999FF2195F200FFFF2195F32097F4
              2197F32095F42296F22095F32196F31F94F42195F32196F32195F22196F22096
              F22094F22196F21C8DFE2196F3E1F5FE2C9BF42E9CF42296F32196F331420650
              0000002C74524E530000305C72760C7CE1E17A42E74060FBFB5E42F9400AE9E5
              0A7A00DF2E5A7478875A302EDF78E5E33E3C0889937601790000000970485973
              00000EC400000EC401952B0E1B000000E6494441545885EDD8B90282400C4551
              6510144141544016177017C9FF7F9DC3368C2D9332AF4B739A74773241DEB49B
              C6F4D9A8E94CEB8D9E33CC39286C611932B7B455B07AB63370ABB5AA06E07A3D
              B741D000FC6DCBEDF6181A4010369C89A30144357750FAA9BCB8E6342C0D20E1
              1CC3E352CEE9E2AABEA3560920E3DC515CE567D44A019C88238E38E288238E38
              E288238E38E288238E38E2D438E4F0819865CE9CBBE071795DC8D09256D104B7
              088BBBB639F086A3DDC32E56FA189AFFE853AAE7AA6B2E1B42AFA31C7A83A79C
              A1432B56C10AEBF557B5F91296BD474D4F732992A3EE07D212DF4A2FF3974000
              00000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-checked-checkbox-other'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F000000DB504C5445FFFFFF0000008CC0488AC24A8BC3498BC24A94BF3F8AC3
              498BC2498AC2498CC2498CC2488AC34A8BC34B8BC2498BC34A8AC24A8BC34B8B
              C1498BC24989C44A8BB9458AC2498AC2497FCC4C8AC24AFFFF008BC34A8DC34B
              8CC4488AC34A8AC34A8BC2498AC3498AC44A8AC2488AC3498BC3498BC2498BC3
              4A8BC14A89C44B8DC6548AC3499CBD837BA55C6797437AA65C74A05389B06EA1
              C18A80A96279A359A2C18BEBF4E3C2D7B2598E3376A356C2D7B17AA45BE8F1DE
              E9F2DFECF5E479A45A558B2F9EBF8792B577F0F8E8F1F8E991C75492C7558BC3
              4B8BC34AEDA88DC90000002C74524E530000305C72760C7CE1E17A42E74060FB
              FB5E42F9400AE9E50A7A00DF2E5A7478875A302EDF78E5E33E3C088993760179
              000000097048597300000EC400000EC401952B0E1B000001BF494441545885ED
              D8DB5682501006600352332DCC4ACD4307ED9C5976B4AC4832F7FB3F51A0B0D9
              2830037B2E5C2BFE3B2EF8168BC30CEBCF6488B3E64451B5F544D154C5355C2E
              9BCB33896C14B222B75994C1EC144B1EB7B52DAB31A6975D6E874063ACB23BE7
              F6F62934C6AAB51997A3D118ABDBDC419E8A6BD89C42A531D6B438958E6B599C
              C68FA6BF8932E540DBE20EF9D1E42751261C384AB994FBC79C49CA99E36F42CE
              1C1B86E7C972B6267892DC5CF33C39CED5B827C5799AEBC970A2667C7D4A727E
              ED037B75265E4370A3F737B40673A3A1F1FA82D540CED28C002F4483B899B6EC
              856900E7688B5EA816CD3D0FF949A217AE0157F7640478111A74EF02BC280D7C
              B24B5EA406BF770B9E4F7B5CD4105F85CF0334CC372B7A0FD11A6AA2081EA0E1
              06549017A821E7DDB217AC61C7E700A7A1A7F100A5E187FBBDA0DD8569317645
              9F6BB7A3302DCEEAE9C35AAC4DD603B5788BB1076931F76C0FD0E2AEED9B686D
              057F66532EE5568B232E3E086B99638B3BA1E33A764396A7D2BAB3C2AD4EC59D
              CEEBC0331AEDBCE69495150AAD72E156A9655D5ED355AFE82D4917BDD54BB186
              AE151A3258B770E56BB5AD34D5F675A268AD8E509293E60F63EBCCB85D4C53DA
              0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-edit-property'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C5000001C5504C5445FFFFFF0000003F4FB53E51B43F51B53E50B4424DB13D51
              B63E50B55555AA3F50B43E52B33F50B43E4FB5566AC1586BC49AB9E8829ED99D
              BDE998B9E6B2D5F6BADCF9BADEFAFF5555E37676E37474E57272E47373E47474
              E37171E47373E57272E47272D1A0ADC99A9DE57373AFBDC5CD9496B0BEC5CC94
              98E57575E77373E47272E57272E76F6FCC9599B7BCB7B0BDC5D48A8AFA990AB6
              BAB4B0BEC4B2BCC6FB9808B6B9B3B8B9ADFE9800FE9600FD9903E4B76CB9DCF9
              BBDDFBF5C52BFBC010FD9E06FD9905DCBE85BFD4FFFEC106FEBE06FE9C01FF9A
              00FEBF09FEC208D0A5164E5546917F2D837633FEC107FEBC066D673BFEC007FE
              C106FEC006FEC208FFCC004D54475E5F40786F378D7A32FFD400988428797036
              8B7A309977223D4B4D39484E37474FB39322FFC107FAA115F5C429D3D4A4F5A7
              26C2DBE54994DE2A81D6247ED5388ADA227BD58FC1F072AFE9539BE168A8E5C8
              D1CCA8D2F62D83D7A7D1F62E84D7B8C2C25DA1E3F99C12FF9800FA9E13B7C2C2
              F4A124C8D0CBBBD8ECB0BEC5B1C1C9B9D8F1B5DAF9B2D9F9B1D7F8BADDFBE573
              7395C6F18ABEEE7AB4EBB8DCFA5CA0E33F8EDC1976D2B1D8F875B1EA60A4E444
              92DDB4D9F9BBDEFB576DC33F51B5F6C533830000005F74524E5300005093997E
              165AD702A124A52CB134DF52D93EB12CA5021C2EDDDD302EEBED3054C5EDFDC5
              FDC532208F8F20C5D7EB30F7CDED32F5CDC1ED30EF542C44B5E5F1F1660CDBDB
              EB301C5CABFB3899F5A1DBF5BB7A3A04FBEFBF6A0618BF6E0E261DDFE4000000
              097048597300000EC400000EC401952B0E1B00000237494441545885EDD65757
              D44018806156404051A96217E9A0544151EC20BD1701692E41110454AC045D96
              A544403AF27B99850D3B19939949BEC94538FB5ECD393BE7B948BECC4E5898B3
              729D0A8F001779DA8587D8A87D1145C710EC1921ECFE59828D15C39E0BB12156
              973DFF4F481708366E4F48F121D6E96C821836916093C4B0C9047BD1C1ECEE0E
              6A172DB677186D99613737509B68B1BEC1E8EFC965D756516B68B1B2CAE88F19
              D6722789B5E9D93A6BC06C626D3A132C671F9B7229C506F6F215E5EA35037679
              09B58C168B4B8C1608F6FA0D45516EA60A9E845B7E557585B1BE34E5A8F45481
              AC6F3E23137305B1BE79AF372B5B757304BD32BF8ABBB942066CEE50C5DC3C11
              ACE7F72FAFD6BD2D80F5CCCA335A37FD0EFCA841AAAC75F55E19FF24FC0CAAC8
              FDA1BAF94805B0DFBF612A720B026E6111E473F8AA5565B9B8E450BD5B0AFA8B
              FC42A8B25C5672ACC20E468D8ADC7BAA0A620915B9F74BE1C7F834A9CAE50FD8
              D78FCF9F347D0C3ED629A64A998449FA6451550BAC91FA1053CDB346EA6C05DF
              F563E203DE78E0201833523DF07B829E0ABF7EE8AA60565F85B2062A90D551A7
              F7C0ACA10A628D55084B51012C4DB5CE5255CBECFB519A6A997DF77684A2FEC7
              3E7ACCD713E9E9335C7DFE42F37325C1BA38AB92A497D541B5BC86B2979FAD95
              24DCA5AA26D83A0977E9AA09B65EC25C866A826D180EBA2C959F6D74BF397699
              2A3FDBE456DDE616A6CACFB6BAFD6E5B7B476717C76E6EF6957BA8BBA7F735DF
              666EB6AF7F6090930CB04EEA00857D60F91E8A86DB0000000049454E44AE4260
              82}
          end>
      end
      item
        Name = 'icons8-add-property'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C50000022B504C5445FFFFFF0000003F4FB53E51B43F51B53E50B4424DB13D51
              B63E50B55555AA3F50B43E52B33F50B43E4FB5566AC1586BC49AB9E8829ED99D
              BDE998B9E6B2D5F6BADCF9BADEFA86C1AB43A047439F4647A34742A04743A046
              43A04748A34842A0473F9F4A42A047489D48439F473F9F3F439F4643A146429F
              474C994C429F46439F4655AA5543A14742A04743A04755AA5544A14443A14543
              9F4642A04743A04643A04643A04742A048419C4A439F4643A047459F45439F47
              43A147B9DCF9BBDDFB97C9C944A04943A047429F473F9F4700FF00439F4644A0
              47449944439F4642A04742A04742A04743A14342A04643A047429F47429F4642
              9F48429E4538A954429F46449F4842A046429F47419D4641A046429F47429F46
              43A046429F47449F46449E4744A14472B88CADD7E57CBD9C50A75C83C1A86CB5
              854CA55645A04A569EE1BDDDBE66B27B2B82D759AB5DAED6B082C0846CB46F1F
              7AD4ABD4F7B4DBF2AED6F76DB68598C8F2FFFFFF85C2883488D8C0DFC26FB672
              8CC0EF47A34EA2D1D6B8DDFA3588D945A14B91C4F048A34F98CCC752A85DA1D1
              D544A0486EB688B3DAEF5DAE6E9CCECD7BBD9B51A75D43A04748A24D6DB5869C
              CECC4B96DFBBDDFAA3D2D684C1A96BB58459AC694DA45547A24D44A1494BA453
              54A86065B27A7ABD9998CCC6B5DCF2A3CFF5217AD48BBFEE388ADAB9DCFAB2D9
              F9B1D7F8BADDFB95C6F18ABEEE7AB4EBB8DCFA5CA0E33F8EDC1976D2B1D8F875
              B1EA60A4E44492DDB4D9F9BBDEFB576DC33F51B51D2803D70000006274524E53
              00005093997E165AD702A124A52CB134DF52D93EB12CA546FB9B18F168AF0ECF
              18DB14C908994CDF0A70E5064EADEF02345E85A5A39578501EDD8D30C1442C44
              56F5B3682000AF560ED187D79B12CB8599F1544C08C142AD8F2E326083A7A178
              521EFC89629E000000097048597300000EC400000EC401952B0E1B0000029049
              4441545885EDD9FB3B1451180770A77B5452929292482EA1A4D24D892E745149
              F71BBAE8227423897443EA6C222AA28BB2A1902D7F5E67ECD99A9D6676DEF7CC
              ECE3D97DF6FBD3D979CF7C9E79CEBE73CE0FE3E7E7592113264E329CC953883C
              8C9D3A6A46A64D57B0FEA6B0A3010A768639EC4C1FEB6355D959BF4D49A0829D
              FDCB9404F9584F67E798C3CE55B0C1E6B0F3146C8807B3B611161B1BFC1CD1C9
              30861D1A641962831F833AF9EEBDEC403FCB001BF4F5EBE41B86158E37B16E5A
              5BCF6A3037B16EDA1384E34DACB597C5CA065F7BB5F305CD023AA1E7B3D57CF6
              D3B0DAB31A657B3E3A667EE8EE7ADFD9F1EEED9BF6B6D7AD2DC6D857363EAFF9
              A585CAF2E2F97C237F195FD5A6675499D0050B0D36586343FD7F2A4BD82243EC
              D3276AA894F0C5E2ECE3475A2AA54B22F05BCD43BB5AA7AD52BA3412DB090F6A
              A57ACD7D572AA5CBA2906CB5546E94AFEBBD2A1EB91B8D63EF8EF556835CA8AC
              E0717ADEE56AACE6117947AA36D5EBB3312BD09DE0FC16A8B33416CB3653081B
              178F646F83589A005FDB5BECD24D0B8C5D09EF841BEC523785B1894950B65CAA
              75F1DBCA4AEDB9EE60F9EFD2123E2119CA5E936A57F95D572A3452C927AC82EE
              0997A55A27945D8DEA840E281B8D628BA16C0A8AB540D93528F612944D45B1ED
              50762D8ABD0865D7A1D80BC0B78CAE47B1AD40360DB783B59C87B11B901B6311
              8CDD88640BEB20EC26F4A1530061378FB15BD2E1D9BA4D9FCDB09FBC0493EDBA
              6C58A6009BB543269438B66F39BB9308B064D76EEA32D94488259139AED43D59
              822CD9BB4F5BDD6F5745581295AB811E38E89822C2127228464DCDC8FC3B418C
              2579B1714AF470BEAC2EC812129F7024F19F9976F49853559865493A7EE264EE
              A9D3A967CE9E5396D0DF02C7377F0076B63BA20FC3A04C0000000049454E44AE
              426082}
          end>
      end
      item
        Name = 'icons8-delete-document'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000270504C5445FFFFFF0000003F4FB53E51B43F51B53E50B4424DB13D51
              B63E50B55555AA3F50B43E52B33F50B43E4FB5566AC1586BC49AB9E8829ED99C
              BBE8829FDBBADEFABADCF9D398A3F34337F34336F44732F44236F24335F34335
              EC4836F34236F43F35F44235F24830F34335FF3F3FF34335F44335F34235FF4C
              33F34236F34335FF552AF54336F44235F44336FF5555F54435F44335F34335F4
              4236F34335F44335F44336F54235F64139F44336F44336F44535F44336F34334
              B9DCF9BBDDFBC9AEC3F34439F34336F54235F73F37FF0000F34336F34435EE44
              33F44335F34236F44236F34236F14335F34236F34336F34235F44235F34236F5
              4234FE3838F44236F34435F44236F44235F44136F54137F44235F34236F44335
              F34235F44435F24434F64433FAAAA4FEF6F6DE7F82C2CCE3F54E42FDD8D5FEF5
              F5F76F65D98C93FBBAB6FEF0EFED544DD596A0E1787AEF4F47FBB7B2FEE8E7F3
              4539F14D43569EE1E3706F2B82D7FFFAFAFEE9E71F7AD4FAB0ABFDE0DEF55347
              ABD4F7FAA8A2FDDFDDBDD6F1AED6F7FAA49EE1797ACAB6C8F66D63FEF4F3FFFA
              F9FFFFFFFAA49DF76E64FEEFEEF7786FF55448FDE1DFFAA39C98C8F2F54C3F34
              88D8BFD3EE8CC0EFF1493EC7BED2B8DDFA3588D9F2463B91C4F0F14A3FCBB1C2
              EC574EC7BDD1F44437E07A7DBED4EEE76561C9B6C9D98C92ED554EF44336F249
              3DE0797BCAB6C74B96DFBCDDF9C7BFD3D597A1E17779E9605BF04F46F2483CF3
              4538F04E43EC5951E46F6EDA8A90CCB1C1BDD7F2A3CFF5217AD48BBFEE388ADA
              B9DCFAB2D9F9B1D7F8BADDFB95C6F18ABEEE7AB4EBB8DCFA5CA0E33F8EDC1976
              D2B1D8F875B1EA60A4E44492DDB4D9F9BBDEFB576DC33F51B55667B21B000000
              6174524E5300005093997E165AD702A124A52CB134DF52DB50A52C46FB9B18F1
              68AF0ECF18DB14C908994CDF0A70E5064EADEF02345E85A5A39578501EDD8D30
              C1442C4456F5B3682000AF560ED187D79B12CB8599F1544C08C142AD8F2E3260
              83A7A178521E4BEAFF43000000097048597300000EC400000EC401952B0E1B00
              0002FC494441545885EDD9F75B1331180770E2DE7BE2441019820B15B708EE81
              7BEF89B8702BD43D38B5A875E30245830A8A03C181520505A4CABF64AE6D2EB9
              EB5D7BC95D1F1E78FAFD29ED9B7C9E3EB937B91F1A14D4B0029A346D6638CD5B
              003A886D5967465AB556B06D4C61EBDA2AD876E6B0ED036C8055653BFC33251D
              156CA7BFA6A4B382ED620EDB55C1763387ED1E60036CFDB18E5A14071AFCA9F5
              911A16B6BA0AA51A0D7E57F9C8AFC6CB5656A054A2C1CF0A1FF9C1C272A731B1
              7EDADB86D5607E62FD742770A731B1F672143B1A7C2FD7CE3766564727947DB5
              9BCF7EA951FBAD46D9B2CF78E6A7D2928FC51FDEBF7B5BF4E675618131F695C3
              3DEFE58B7C48E5F9B31E461E997B57F39E42657AF6EA6DB0C19EE4E678A828C1
              7D0CB18F1FA9A162FAF6E3671F3ED05221EC3F80FDAAB9EF52B3B555080786B0
              76C2BDBB62FDCE6D6F2A84834219D95B62F9A6E6BEE284B1B1379CBD954BD6DB
              688CFA30588DD57C455E17AB79A4B3AE5DCD2294F5CA65691C3E84B913C829B8
              2408C4B5660A172F48A50856F63CAD1217A902E5464631B2E7F0CAB382405CA7
              4ABBD1FAF7F60CFAEA34BE5D6CA704E2BA55413889D9A1FA3BE104FAAA54DA03
              0B7633B224355D7A9C31B17AD9E362AD047ABAC78E7AA8100ED3CB1E116B87A1
              8AABA2C2E17AEF844362AD186ABA32158E60EA848350CB95AB308C893D00E5EE
              7EACA629AEF5914C6CBE7CB1153F2DD40FF2CA2826769F5CCD249BA070E398D8
              222D15B916BA369A89DDABA92ADC314CEC1E15352D43C51DCBC4167AAAE93916
              4F379EED062BD8ED5E67DB45F5ABE4A662761CE3C5B8132F4CD9419D02B7BB7D
              1BAE8E6764B766CB5C7CB69C2E512730BF74B648BB9BB2993AB1C8252A9CE864
              274DD69F295389BB893AB19654A226B8DEBC8025D3A0AF042772B049D37DB133
              00070B66CEF2AECE065C2C0899E34D9D9BC4C98279F3B5D5052E958705A1C91A
              E8C245780A0F0BC0E270353521519AC0C7822511914A74E932AACEC9021015BD
              3C8698F12B56CAAADC2C4AECAAD56B92D7AE8B5BBF61A3B2C4FC5F60FDE63F96
              2D1947EE3B47810000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-querytab-add'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A08030000000F76B1
              3000000117504C5445FFFFFF0000007FFFFF90CCFA91CAF890C9F98FC9F890C9
              F88ECBFA8FCAF98FC9F990C9F98DC6FE8FCAF890C9F88FC9F890CAF98FC9F990
              C9F890C9F990CAF88FC9F8546E79536E7A546D7A536E7A536D7A536F7B526C7B
              516E79546D7A536D7A486D6D556677546D7A546D794C667F4CAF504CAF5077C0
              BA4CAF504CAF504CAF504CAF504CAF504CAF504CAF504CAF504CAF504CAF504C
              AF504CAF504CAF504CAF508FC9F94CAF504CAF504CAF508FC8F94CAF505EB67E
              4CAF504CAF504CAF5081C6847CC2C955B26776BFB959B47272BEAEA0D4A3AEDA
              B088C98BCAE7CBA7D7A94DAF51F8FCF8FFFFFFE3F2E4F0F8F1F1F9F1E2F2E25A
              B47579C1C18EC9F64CAF5050B05A57B36D62B78773BEB186C6E1546E7A90CAF9
              E6004C1A0000004074524E530000023C748F99723A62E15E08A9A9A7608FEFBB
              97C3E1EF9BF1A540442C7076060EA1AB0A40D3B1088F18C7D79348045C246CAB
              EF7060CB64DB5E50D7A30CDFA6A175B3000000097048597300000EC400000EC4
              01952B0E1B00000231494441545885EDD96B5BDA301407F0A6A0203A1C084EDD
              E66ECA4AE9540608C860F72B5E26106EF6FB7F8EB534C500E9ED242F98F4FFAE
              270FBF27CF690AA191A4FF33C88C1C89AEAD73652D1697111D8B963612BA8024
              36A5797AEB9108D84C726B969692A2645DDF9666E8C7E2645DDFA46959489FED
              24648A8E8894753D4ED151B1748CA253A496DEE14A9A30298ACE905A1671254B
              984C4887F452D2BB4F7C650F40EFDFF9CAC1CAD04F9FF9CA73000D4B482F197D
              F8C2212FB969C775FD6A45E9D76F1C72C44DC312D2C169E09FA1900E420BCAC3
              A159BD36CA8CE6CE5561B731A4437AA91F99F16838E863DC1F0C47639174AFDB
              C1543ADD9EA85E1FE7F05C066F85D04A7E1E369357F869B5C092312EA8BCB4AA
              B1658C35958F561CE63C99B7C245D37DBEFD6BE6E6BEF08E873EA667797D65E6
              92AA9CC0D7756FE04E6BA760BA8BDD697C06A63B5E7401DAEB31F6A27111488F
              BCE9F7407A483EDFB6426872D59E0C9516E99918656695AC8F3F57ACFC9E8CE5
              8074DF9B2E0369EC4DE3E5A37D36C4ED25B35166567DDE46C8AB71B2F87EFDB4
              42161FB9FA315D7C7100FDDDFB91A948B063089F0F3A3A074CFB9B175DB58E7C
              B683D35FBDE81A39A80A7E9CD4FBE24ED715FB78ED2270BF3FBBD30DFBE40E21
              391E0B7828F8C18D6EA27B3A785AD49EEC9395E9B5D6E2A2915AC70EF9686F71
              A03472DA3E69D38D199846AD264B6EB6103F8D5063A129F5863DC64923A556A5
              E16A4D990EF1D2468A9552AE6C7C3FE74A95225D67FC5E0BCB3FC35BF1ED5ECB
              4BB60000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-querytab-close'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A08030000000F76B1
              300000018F504C5445FFFFFF0000007FFFFF90CCFA91CAF890C9F98FC9F890C9
              F88ECBFA8FCAF98FC9F990C9F98DC6FE8FCAF890C9F88FC9F890CAF98FC9F990
              C9F890C9F990CAF88FC9F8546E79536E7A546D7A536E7A536D7A536F7B526C7B
              516E79546D7A536D7A486D6D556677546D7A546D794C667FA1B2D6F44336F443
              36F0473DF44336F44336F44336F44336F44336F44336F44336F44336F44336F4
              4336F44336F44336F44336F44336F44336F44336F44336F443368FC9F9F44336
              F443368FC8F9F44336C38393F44336F44336F44336F44336FBC1BC9CB9E0F99F
              99A2B0D4F7837AD17179FAB0AAF0473CFCD0CDB29BB5FEF5F4FAB3AEC97C88DC
              6263FAB7B2FDE8E6FAB8B4F44B3FFEFAFAFDE9E8FCD9D6FBC4BFFDE7E5FAB0AB
              F44B3EFDE5E4FCD8D6FAB2ADF4493DFDE3E1FBC4C0FAB1ACFAB4AFF4473AFDE2
              E0F8948DFABAB5FAB6B0F44539FDE0DEFBBDB8FAB8B3F44437FDDEDCFBC0BCFA
              B9B4FDDDDAFFFFFFF9A49EF9A29CF24539CE757F9ABBE3EF493FCC7782A1B2D7
              F44336E7534EDA6466C87E8BADA1BE94C3EF546E7A90CAF95811647500000045
              74524E530000023C748F99723A62E15E08A9A9A7608FEFBB97C3E1EF9BF1A540
              442C7076060EA1AB0AA35CEFF98B9BA38F1CF3209FA7300C4CBFDFC39358F760
              34AF5E28C1649704ABFC0DB119000000097048597300000EC400000EC401952B
              0E1B000002B8494441545885EDD96977D2401406E04C4A05696D6D6DDDF7056D
              AD08A26C8214A956ABB85BC5BAD45DEBAEB154E0B2991F6E42266412120F9999
              0FD5E6FD42E6E6E439732E33706004E1DF0C52230EF806373165D01F1011198D
              163607650E090E09567A780B0F58CDC8B099164678C9B23C2A98E8ADFC64591E
              2269914B9FF50445821EE029CB7280A07D7C693F418FE1DAF836A68C63668CA0
              27706D1231651233131EEDD1EB92DEBEA3AFECA4A077FDEE2BBB370CBD676F5F
              D94741D3C5A3D719BDFF80430E32D38EEBFAD006A50F1F71C851669A2E1EED9E
              A6FC31E4D16E684EF97F68BB5E2B659BE65AAA746FA3477B34F3BA6EB79A8D3A
              00D41BCD569B275DAB56C048A55AE345FF5A2B8339E5B5635C7A1D3A0EBD3911
              E2404FD9C06AA698E9690719E02423ED346735334C74082BAB26F3277E0D31D0
              A7F03BB82AFD20E4EFD237ED227C9A9E8EE8B2247DFDA2CB9F95D127ED324ABD
              AE6BE5AE2C491F3F68DC4A67F45E1B9CA1A5AB9DC7DF495ADEBE5147AFF1E855
              E7DE3425DDC6BBFB25D65E3C0758C6D7CF70B76374BD6EE9DDD5EDA74F1E9B65
              80B3747413ACF6925586193ABA013DB6558673BDB4294AD9AE5A27D6F223422E
              11F5381D0D606B974C750E343CC4F28345DEF4FDEEACEF2DB2D364AFEF12BD5E
              226CB5D77FFB935929DB55EF18C28A6985107642A17DEE77E3ED2E700B9B377B
              ECA44207DCD337F4E7F5DD5D82A2D54E0954C710EDEBDAE3D7885567B1D3EA67
              083AEF7EDA0B9DC7AF9AD6B36E6BDF0651EDC867D4357D459BF5BC69A7140919
              32F8A0CAFD71D282611B7BB068C8D9EEF1DA05B7FDBE5CD16D727717A54BDA45
              38A7D3088901BFBB43C159ACCD039965FC9A4706ED3E17C13911C44417E61CE5
              B9021B8D0A11A7397764161AA17CD8060EE7F15D261AE5B23D7236A7DF64A311
              CA44D3849B8E668C5BAC3442B154321157D87822998A91376CBEAFB9E50FCDE2
              0A28DF641B770000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-close-button-small-centered'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000078000000780806000000396436
              D20000000467414D410000B18F0BFC6105000000097048597300000EC200000E
              C20115284A800000001874455874536F667477617265007061696E742E6E6574
              20342E312E35644758520000049049444154785EED9D516A1B6910067302B3B2
              F51072FFDB8410F2B8A771DC426D646D591ECDFC359AE9ED8222F833119E2E62
              6C429C6FAFAFAF6D61716CEB88635B471CDB3AE2D8D611C7B68E38B675C4B1AD
              238E6D1D716CEB88635B471CDB3AE2D8D611C7B68E38B675C4B1AD238E6D1D71
              6CEB88635B471CDB3AE2D8D611C7B68E38B675C4B1AD238E6D1D716CEB88635B
              471C2D6F713C1E7FBCBCBC3C9FDFDC2D4F4F4FFFBC3DCBF7F39B08DDC61247CB
              CF88B8CFCFCFFFBEF96BCF91236E3C433CCBADC8741B4B1C2D898BB8AF677719
              F9226E3E4744FE717EF707E83696385A5E0371D35D4586B82946A6DB58E26879
              C98DB8E92E22DF889BFE2732DDC61247CB6442DC74D39127C44D3F44A6DB58E2
              6819DC1137DD64E43BE2A6EF91E93696385ACE889BFE8A839E2EBB0166C44D4F
              91E93696385A9E0FF3F3EAA1A7BA89C80BE286A7CF46741B4B1C2D2F0EB4CBC8
              23E2C6EBD06D2C71B44CF6187954DC806E6389A3E5257B8A3C326E40B7B1C4D1
              F29A3D441E1D37A0DB58E268492C3DA019D9881BD06D2C71B4FC8C2D46B6E206
              741B4B1C2D6FB1A5C866DC806E6389A3E5576C21B21D37A0DB58E26839854746
              5E236E40B7B1C4D1722A8F88BC56DC806E6389A3E53DAC1979CDB801DDC61247
              CB7B5923F2DA7103BA8D258E967330233F226E40B7B1C4D1722E46E447C50DE8
              3696385A2E6164E447C60DE83696385A2E6544E447C70DE83696385A8E6061A0
              DF67E97D5F39246E40B7B1C4D172140B23CF71D257E453A1DB58E26839921523
              0F8D1BD06D2C71B41CCD0A9187C70DE83696385A1A889195B801DDC612474B0B
              21B21637A0DB58E268693230B21A37A0DB58E26869738E3CF7DBA0F08F1D37A0
              DB58E268693320F0EF0EBC409373DCFE147D258E961603E3A6FD45D61C0D84B8
              697F9B74AFA311E3A64A64BA8D258E962359216E3A3C32DDC61247CB51AC1837
              1D1A996E6389A3E50896C43D1C0E7FDE7E9DFDD785A322D36D2C71B45CCAC23F
              B9A740235EE3FCE1CC866E6389A3E512468659F85A3F9746A6DB58E268399791
              71934746A6DB58E2683907236EF2A8C8741B4B1C2DEFC58C9B3C2232DDC61247
              CB7B58236EB27664BA8D258E965359336EB26664BA8D258E96537844DC64ADC8
              741B4B1C2DBFE29171933522D36D2C71B4BCC516E2267664BA8D258E969FB1A5
              B88919996E6389A325B1C5B88915996E6389A3E5355B8E9B2C8D7C381C9ECE2F
              F50EDDC61247CB4BF61037191D996E6389A365B2A7B8C9C8C8741B4B1C2D833D
              C64D4645A6DB58E268B9E7B849FC1BE1F8582E3EAE7B3C45A6DB58E268793C1E
              BFBF3DE4EE7FA4FF82C8F1EC757FA47F3023F2A6E22633229FE2C6EFA5DB58E2
              6899DC11799371933B22BFC70DE83696385A5E3221F2A6E32613227F881BD06D
              2C71B4BCE646E45DC44D6E44FEFFFED7760944DE55DC042263DC806E6389A3E5
              675C44DE65DCE422F2A77103BA8D258E96B788C87B8E9B44E45B7103BA8D258E
              6D1D716CEB88635B471CDB3AE2D8D611C7B68E38B675C4B1AD238E6D1D716CEB
              88635B471CDB3AE2D8D611C7B68E38B675C4B1AD238E6D1D716CEB88635B471C
              DB3AE2D8D611C7B68E38B675C4B1AD238E6D1D716CEB88635BC5D76F7F01F0B4
              EE45E8B496E70000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-server-edit'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C5000001D7504C5445FFFFFF2195F22196F30000002095F3E67474E57373E674
              74FF7F7FE37373E57272E47272E57272AFBCC3B8B2B9DF7A7BE37474AFBDC4B0
              BDC5B8B2B9E27777E37474F89C10BDB6A3B7B3B9E47373FB9600FD9700FA9A09
              BCB7A2E27778E47272E67070FE9600F89B0FBDB7A4B8B2B8E37373BDB6A3AFBE
              C4B0BEC2BDB7A1B1C1C5FD9600FA9B0EFE9600FE94002195F22996E7318AC93F
              7490457181459BCB8CAA7FC2B445E1B71F69663D3A708FEB9714F4BB0B62613F
              3183BCEAB8143195DCF89805EEB315FFC107D7B9302196F2F99704EFB31393AB
              772D9CF44EABF54BA9F5F1970D489BC92397F36FBBF7B3DAFA60B3F65A96B46C
              B9F755AEF65095BEA1D2FAF0960E6295A942A5F5289AF46096ADB9DDFB2497F3
              2297F3A6D4FA8FCAF94AA9F5B8DDFBBBDEFB3BA2F442A6F591CAF9B5DBFBB1D9
              FA88C6F837A0F4F696076296AA5F96ADFF9800B0BEC5E47373E573732780C628
              7CBC2782C9436B41384C4D42674271F1096DE50E3B54495CB42252952F56A329
              4C85353A504B60BD1E6DE60E5AAD2538484E2F62873357702F658E37494E559E
              2B63C71A4F8D3252962E47783B5DB82153982D47763C75FC0476FF0373F50740
              60444165424E8A333D5A4733546C37474F3259752977B42C71A72979B82196F3
              D22F802B0000002F74524E5300A1AB00F148C7660248F7FB6C4CE7F7704AF7F1
              F7644AE9EFC348F7FBEFF7F1344CF9EFE142EDF136E342F136423655D108F500
              0000097048597300000EC400000EC401952B0E1B0000020E4944415458856360
              A0356064220D306300ACC6B2CC210D0C5B6367CF220ACC24D1D819D38902D3A8
              6CECD429936960ECA48913FAFBA86F6CEF8409137AA86F6C37D0D82E1A846D67
              477B1B0D8C8502528D6D6D210A340F8E5C366AEC9C012B1368636C5363437D1D
              F58DAD0566DE1AEA1B5B0D34B68AFAC656564C282FA3BEB1D34B4B40413B5852
              42711151A07070E4B2A165EC68F383B0B1A3CD0F10186D7E0CBACC3BB48C1D6D
              7E103676B4F90102746E7EB0B2B17350BFF9C1C955C0CD43F55CC6CBC75F5090
              2FC0415D630585F284450A0AB845A96AAC98785E5E9E04D0BD92D434564A5A46
              1668AEB09CBC02158D5594CECD5552069AABA24AC52893029A9A9B2BA396A7AE
              41C594A0083615E85E4D2D7CD9814463A5A0A6E66AEBE0CD65A419AB08375517
              7FE625C958845BF5089409A40074B752C7D81C74B752C5D8EC2C74B752C3D89C
              2C0CB752C1586C6EA5DC58AC6E25C9D8CC8CF4B4D41462DC4A8AB1C9E9494090
              9840845B4931363E090CE26209BB95046363A221C62625C385A270B995046323
              A1A62645C044C261A686A1BB9594400885989A1689EED6B0100C534930361862
              6C10865B03296B3607F80313829F2F84E3E30D772BA5ADF1482F4F0F18DBDDCD
              15E6562A36F25D9C9D1C1DA06EA5A2B1F6764E4E40F782DD4A45636D6DAC9D9C
              1CAD42E650D758CBE916E666A62673A86CACB191A1813E9C47356351C1C01A4B
              A349436A020075150CD8D21BE80B0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-data-grid-relation'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000660000006608030000000E0114
              5000000294504C5445FFFFFF00000080808064B3F663B5F663B4F662B6F464B5
              F564B5F66ABFFF63B5F663B5F563B4F663B3F762B6F763B4F563B3F663B5F764
              B5F562B4F764B5F763B5F666B2FF5CB9FE64B5F663B4F663B4F500FFFF61B3F4
              64B6F662B4F664B5F563B4F60097A71FA0C00097A70097A70097A70097A70097
              A70097A70097A70097A70097A70097A70097A70097A70097A70097A725A1C400
              97A70097A70097A70097A70097A70097A70097A70097A70097A70097A70097A7
              0097A70097A70097A70097A70097A70097A70097A70097A70097A70097A70097
              A70097A70097A70097A70097A70097A70097A70097A70097A70097A70097A734
              A6CF0097A70097A70097A70097A70097A70097A739A8D363B5F663B6F364B4F4
              63B5F563B5F663B4F664B5F662B4F664B3F671A9FE63B5F56AB7F6B9DEFB62B4
              F457B1EC6ABAED30A5CD199EBA18A0B031AAB94AB4C363BECCADDCE8CAE8F307
              99A923A5B443B2C00698AB0C9AB00F9CB10E9CAC0F9BB351AFE7D8EDF8BFE3EF
              A6D9E6AADBE7DFF0FD9DD0F99FD2F987C5F7D6EBFCB8DDFB72BCF7A7D5FA9BCF
              F9CBE6FB68B8F68AC7F88BC7F868B7F687C6F88FCAF8C1E2FBB7DDFAA1D2F978
              BFF771BCF79CD0F9A8D5FA6CB9F789C7F834A6D0C9E6FBE0F0FD79BFF76BB8F7
              D7ECFCC1E1FB84C4F85DB3F125A2C475BDF79ED1F98AC8F85CB2EF39A8D40799
              AD7FCAD778C7D48DCFDC45AFCF22A1C2149DB70197A81CA2B1159FAF0498AAB1
              DEEA0097A70397A91A9FBC3FAAD960B4F3C6E6F271C4D160BDCB55B9C73FADCC
              3BA8D549ADE059B1EDC7E4FC8CC9F97AC0F8A0D2F991CAF8B6DDFA98CEF983C4
              F865B6F672BBF6DEF0FCC5E4FCA6D4FAE2F2FDCAE6FB6BB8F6BADEFBE3F2FD66
              B5F686C5F891CAF979BFF86FBAF776BEF765B5F673BCF77DC1F864B5F6B595C5
              5D0000006574524E5300000076725C30E17A0C7CE1E74042FB5E60F94042E50A
              0AE97ADF002E5A7487780CBD64E7049F18C310D7AF7830FB088FB38BC76CF320
              14EF6093BB28F724B37C40DBCF543881A79B2CB750DF87BF3468CBAFE35C83AB
              A3EBA95A2E30DF78E3E53E3C08898A00BDFE000000097048597300000EC40000
              0EC401952B0E1B00000474494441546881EDD9F95B16451C0070DD78095083F0
              360FDE6A054CC04C14B5F222B5B434CF3C288F523AB41BEDF2C0032320954B52
              2A913CF0285D2FD48A50014D8EB54470FE99E67DDF9DD9D979777786777778AA
              E7FDFEF4BEDF67663ECFBCEFEE7CE799E9D1A39BA267374498093361461C2359
              C5BF8D79C82A223C915D62223D1156434106D8C4C351D19C4C744C2F9B71180C
              00BDFB70318FF4B61D85C980D8380EE6D158FB41D80C88EFCB64FA31141E06F4
              1FC060060E620DC1C380C10C268639021733C49E79CCEE19C3CC03189D816F1D
              F71F10D18E5B0DB5652271BB7B7F13F1D7DD40B2130E0519D5176D1D30D1DAA2
              92D17C07751F66CB7850B33F0DDDD5DBB760AEA9CDF711316A234C35189BA9CD
              683EC36D99083417AABB7A13261B55037303A6AED3EDEAB50146D832095AAB3F
              E8EE753079E33FC9FCFEDBAFD7AE5EA9ADADBD2C8CB974F1C27905C539418CF7
              F1B30A118266F3C4938A229C91472A54A80298C4245A11C1248F0A527E719FF1
              06CF45F9D975467E8A18FECCE953276B6A4ED41E779D19AD23C78EFEC4B70A54
              C3D411BA5D951D93928A95C33FFA5AFD4077FF1E26AB0D4CE521983AF89DB159
              45870D93A6FFFD0702ADEEDEA69872982CABD498521825C5FE86FBF79512D1D0
              0A6C983158791A35BBB5B78E886FCBFDC9E212381457913663F49F6C6C027B80
              5019F919A424C902997148491FDF938F29825158E0FF56F64D11118D4D96CC84
              0CC44CD4CB1A686A24BBE797F9935F17C2CFE849DBE3738A2B8D4F4A9B253309
              299389EA09DA8CDD2B7DCF55C11EC37B53085379F483DF69C13C8BFEFFE79E27
              984EBA7B094C161ADE9BAEAD0253D064A6927B817ABAFB6EE068B1998694E9B2
              40469E81984C49203311BF329240260D17FF1744323391324B12C824A6E38759
              24331B2F999240E645F46666248B645E429319270964E6106FA638C63B173173
              A49018D3A57317CDBC8C9457A4608663E96C312B043B01C5E895799E09431782
              1DFE42D0A231BE1294AB95B57C4359EBA0187D319B2D9931A665AD203750D600
              3B3406BFFF19134C19EBE80AA3FF64F325718C17EFFF5E954360B6C3C80B6C07
              EF6DDB4E84713B28E392999A229933AD0D64F76DFBFDC9E23CF8997F73ABEF32
              674AE64C93F19044DD7A10109BDB408EB555D79519B205534577DF07E8AD3A63
              15F0E2755949277F3277179B050BB1A22C925C64B6D47CF5E51701E6F3039FE9
              88B2587293B9E21B72F3A69C9C9C4F1532A6C8AE329F28A691E4955C653E3655
              96D07371CA7C64A62C0D569C311F9A20AF6506230E990F829591C9668A33A686
              9EC9D8F1A6884366CBFB1B37BCA71167DF7D67599A05E2CA2A70F9EDECECECF5
              80F7AC938771E180B8BD99EADF00E803E275FEE3EE0AA3828FBB97F31D77DF31
              3A156F01E2B89BE3F07E852DB312B76B27BBDFD7AA9576780F9891C5B8F1E0BA
              8A6033AF3398C1AE306F30AF8956B9C0C4AF665F7AC53B66623D1C5778714EAF
              F0FAAFE1BA90ECE3E842322B6A2DE7F5EA80A821F6CC9B5611316C05BE086632
              30867A865B0DF5BFBB61EF6EC672A8102384D9388C301366C24C484CB7C43F68
              813A27E5A6FEBA0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-settings'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A08030000000F76B1
              3000000300504C5445FFFFFF000000607D8C5F7C8B607C8B617E8B6A7F94607D
              8B607D8A5555AA5F7C8A5F7D8A5F7C8A607E89557F7F5F7D8A607B8C5F7D8A62
              7A895F7C8A5F7D8B5F7D8B607C895F7D8B607D8C607D8A5F7D8A607C8B607D8A
              667F8C607C8B5D7C88607D8B5F7E8B5F7F8F0000FF5F7C8A5E7B8A607C8A607D
              8B667F7F5F7D8B5F7D8B607D8A7F7F7F617C8B5F7D8A607D8B5D788666669961
              7C8A607C8B607D8A607C8A5F7D8A5F7C8A607C8D607C8A607D8B5F7D8A607C8B
              5D7F885F7C8B607C8A5F7B8B5F7D8C5F7D8B5C7F8B5F7C8A607C8B607D8B607D
              8B607D8A607C8B637990607C89607C8A607C8B5F7D8A5E7B8B5F7D8A607D8B5F
              7D8B5F7C8B5E7C8C617B8A607D8A5F7F7F5F7C8A5F7F87627F8B5F7C8B607D8A
              607D8B5F7C8C607C8A6D6D915F7D8A5F7C8A5E7A8D5F7C8A5F7D8B5E7D896179
              855F7C8A5F7C8B607D8B607E8B607C8A445964445964455A64455A645F7C8A5D
              7F8C617F8E4559634459633F5F5F435862607C8B7F7F7F607C8A455A63465765
              455A63455964617D89607B8C5F7C8A455A63435D5D3F59665B7F91607C8A4459
              644654635F7C8B607C8A445963475B65435B65607C8B455964445964607C8B44
              5966607D8B445963555555445A645F7C8B4559634559645F7D8C455964445A64
              455A64617D8B455A63445A64607D8B627C89455963425863607D8A5C738B5F7D
              8B445964455A64607C8B617B8C607D8B445A63455C64415765445A645F7C8A45
              5A64555555445A635F7C8A445A63425E674657604459645F7D8A526C785D7887
              556F7C5069745168744D636E4C636E485E69465C66465A65475D67475C674960
              6A4D646F4C646F516A7557717E56717D4A616C546E7A546E795E7A885068734F
              68735C78855C7886526A76485D685F7B885A7481597480536B774E67724D6570
              4D6571607C8A5F7C8B536D79455A655A7582485F68495E695A7581526B77455B
              65526B765F7C8A5D7A87516975465B655069755D7987556F7B4B636E455A6446
              5B644C626E566F7B5973804F6672485E68495F6A4B616D4F6772536C78587380
              5E7B89607D8A607D8B89D87B6C000000BB74524E530000447476600C7CCD02D3
              3AED5606701C87349F4AB562CB7AE591F9A914BF286A621000DB46914C0ADBF3
              8D0254D18512045CCF4E7EFBA12C5AD5E1E11EF5B54032EB1685ABC983FDAD16
              2499F7F93EC5EDB3FD4E68DF087C202CFBAFB950D70678F31AA7A34014B38B34
              5EF1F5D1B5D1CB2622B14A084A870481DD3A3ADD3E3ADDC312140EA3DB1258EF
              FD3234C7A5A9AF3CA1E902EBC1BBBD42A3A39F36B9BBD726E12EA70AF191939B
              3CDDF92022F993C706C9D5A71A1CC589E3CEB9DF000000097048597300000EC4
              00000EC401952B0E1B000005B7494441545885B5D87D5C1445180770D7483C13
              10B30812BB08881452A4D4E2450F22309140541441110A121153CCC2320D23CB
              ECFDC5DEB4D252B2B088A2572BCA880AE805B31750835242085B2CC12318EFF6
              66F776669EB9BD62FDFD7737CFF3E53ECBCEECCE0C1A7426236865F0592E74CE
              1EA2D5E414ED8A800C35E8410F8368748E1EF4709076D381760765E4A1033D02
              A63D75A047C2F4B93AD0A360FA3C1DE8F361DA4B07FA0298F6D681F681E90B75
              A047C334F21D383D86435FF49F685FE3C57E74C925FE1C3A80A90C08BC944707
              5D86D0D87123D4E5C1219773643476FC047565E8C43084FAAFE0D0574A2D9326
              4F51E0ABAEE6C1143EC4235CFA2A2208A423A3704BFFD469D217262F47B035D1
              B6452AE61A6509F304E95855CFB521C186B8782DD992E9D709331266DA3F27CE
              00E8EBC91EFF2427604B9267A5109FA7B2B421CC11D0F76FAFF9544F7777CFA9
              93BDFFF439FC5BB3197A8E03F7EF135DA22A5D7F1D77A0CF4DA568BF685E69E7
              9F1D22938EF6635C7B1E450772EADAFE6865616B5A8FB6715AA2E61374DA02B8
              ECC8EF306CCD6F2D1C3B9DA033C09AFEDE66BE6CB9E6BFF6C376808A5E08561C
              363B82AD311F061B17652A74E65CA8E0D0412D59149B607BB1422F06AF46A3B6
              2C8A8DE035C9CAC674761634FC8B33B228F6823FFB064CDF080DFEECF03F684F
              F34FA09D23D1B9D032F4E301E764513C00CECC7489F64D0186DA9D9545F10788
              BEC9764196B023FBBBB449395D0D6C7F561EBE4396E6D343DF03C4B282E5CB6F
              5E060C7CC7C82B562A53A6905A9C8FB10BC7AA5B565BA7EDEA5B573143ADDF92
              DD29B785AA267AD11A6211F986EEBEFD0EFB0376ED9DF4683D2147ACA3D6EBF5
              77A946EBA8DEE20D822A771753C3756A79B41FF3002BB94719EDA45A37DE2B10
              D9B0911C6FB65F91FCA5D06357B86F131EAF253BEFDF2C507980FADB5FCBF283
              8502480B91F84EA16EEA876859101E262BBEC2F2234502870EC5F3F24BB2712D
              4B3F4A56D460FA31814717E28A1EA2EFF160967EE249A2E40BDCB8854BE7E18A
              6AA2EF29561684A78992CF71E3302EFD0CAE201FE1CF42F4734449877C4B73E9
              C1B8621FD1B715A2B71225FB70A36A1742D1DB70C56744DFF310FD0278415EE4
              D2DB71C5A744DF0E88DE4194F4E0C6242E9D891F7455449FF8122B6F262B3EC1
              F4CB5C7AE72E5BC5C76463294BBF42567C84E9DD3CFAD5D770C55EB2B16C0F2D
              BFFE0659B1579EE8E599109DBA44799035908DE29B15A45CF11655F0A1DC89BC
              22597AE4DBC89E1EAAB592B02BA81544998CD6248FA2E850F2517094EA158BDF
              B1CBEFBE478F7EA0EEED7FBF484DA70D45441A989790B2527CC1F79496D163CD
              FBC9EE31310A6D704944549AE8764B0A2A4B4B2B0B80818374B7770EA683B6D0
              4308B500022FCDEC7B76BCD1467BB03242279DA71B81F69925123D1EA23BABB5
              4D5BAA3BA1FE6C895E096E366AB5515B6AA1EE0CFC6F84B7489A5B025BD85727
              4B16A4611ADED8B55569BBA2587508EA0D54EE6B783BDA47BFE800A903DF8093
              FD149AB389EE3BA1F99BE15DEF1CD56C5C07EFD2DA34B6336678571A6650AF21
              B1600D42C71DDC83D5E0BD6109F93AA91CB3D0E984A6BC9426F07EB624965A54
              E771EA2C73BE06826B78BB68141549D141115C1B35B477936E773BB0C790B386
              7914B8F18BAD3FBDDE5C275DF6EA3A737D0B676B2E453ED8523FC0A8A3427F60
              FAF701F79A37F55F924FE3D5B449BD7D4C9A1D9CE7F0C4484E6CAEAFABFAC45F
              79A1249EE809F2704AFA7AEB67F7B8495AB0B7F41B838CCA6625DE04D21392A5
              D1C4DDDBE56FA6A43BBAAA68579C7C4C6A70C34FC00401A4A5A56493678CA08A
              6916171FEE9AABAECCC9B05446DBBFA2DE9E5C328C3B052A211C39BC84AE34F9
              94A7D93F51341413874E72DCE60C1DC3A1A70F9C0EE69CAC960F9C1638678BAE
              3AD09C9963D481868F00D1421DE8C930BD4D071A38E3B1265B071A7C6F438899
              5BFF839E08CAF91A5D4ED1D3407A911E746A3844FBE8410BF3C7253031BA3B45
              9FA99C068453248B755D26110000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-invert-selection'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F000001A7504C5445FFFFFF000000778E9681959D80939D80949E8497A190A1
              ABCCCCCC7E969E687F896077848699A29F9F9F788D976F8690AABFBF788D96D6
              DEE17C949CD5DEE1687E8AD6DEE1FFFFFF798D98D5DEE2D5DFE180939CD5DDE1
              80949CD5DEE08498A190A3A8D4DDE1D5DEE0D6DEE0DDDDDDBFBFFFD4DEE0D5DD
              E1B8C5CAA0B0B6A7B6BCB7C4C9CBD4D982959E637B867F939CA5B4B97C919A56
              6F7C708691B5C2C8CDD6DACCD6D9B6C3C8B5C1C7A5B3BAA1B0B6AAB8BEC1CCD1
              59737FCFD9DC677E896C838DBCC8CD56707C9EADB490A2AA97A7AF9DACB45C76
              81B3C0C6B9C5CA667D89CBD5D8A2B0B78B9DA58699A2899CA48FA2A9CED7DB99
              A9B1C4CFD2ACBAC0B2BEC3BFCBCF9EADB55C7580788E989FAFB6BBC6CBC9D3D7
              798D97D5DDE06E848EBDC8CD58717DCCD5D9B4C1C795A6AE7B909AA8B6BD96A6
              AE899CA5889BA395A6AD7D929ABEC9CE687F8994A6ADD0D9DC57707C627A85D1
              D9DC627A8694A5AC5E7782BAC6CA8C9FA75E768261798480949DB1BFC4C4CFD3
              D4DCDFCED6DAC5CFD4B2BFC49FAEB581959E617A8593A5AC92A4AC92A3AC92A3
              AB91A2ABD6DEE191A3AA556F7B546E7AE64399950000002874524E530000429B
              B5B7A768045EF1FDAB08ADED18ABBD606EEFE902403E68B581B987A76A3C6EBB
              0E046C895232A9CB000000097048597300000EC400000EC401952B0E1B000002
              C7494441545885ADD8E95F1241180770C90E4A4D2383223AA8AC34BBCC4ABAB3
              CB0E3BE8B24BCBB22C25484D44C344527CF4F9A35B1610D8399E19767E2FD9D9
              EF67869D9D9D79EAEA0CC7636743FDC64DB567F316AFAD14B9ADDBD0651A1A9B
              D6B9ED6B6E352BCD2D456E87010C71D5E7B5B99D26FA86AB00AD36B7CB84B602
              00FE80C5ED36A501ECB1B87A035ACED62068717B8D6910B2B87DAEB5E5A206FB
              4D70EB9A116E094C72159A01EE1FE871D9C5CCC2DFF9747AFECF5C663625D548
              6E26395DD51EA693BF2BAF4F8106379999002613995F224DCA25727116CB279E
              4B145AFC745E9170B1713E96CF788CAB49B83141D78A1D1C43FCC1FE2CE4BEA7
              651A407A94A309B9513966E5DB57756E84E81BC0174C7C56E562D2FFADA021A6
              86D5B84F1F5534C459356E454D436486CBE3B2D4504B1A0E0D2A7019550D718E
              E66688CE5568F881E692EA1AAEBD27B977EA1AE25B8ACBEA68F886E2D8C924D1
              70A0FAD9B2DC6B1D0DF115C1BDD4D2F005C13DD7D2304A70CFB4347C4A70A2A5
              89AFE193DA3881868F6B1AAC48C37E82E33E0AA146EE02781345ACE12382E34C
              6389860B04C7BE64320D1F125CCAB9C24AB5074070785F43734C3B1ED7AFA161
              1FC9DD8BAB6BA934C9E15D650DEF00CD953F8C9436E07C85B89FEDDB8A1ADE02
              15AEF7A69A7683592EF85B9EEBD754B4AB579C9A6443466ABD97194DBC5D2435
              BCC46A426E2AD22BC712118E26E2ACF3420F73C0A94CEA224F1370F6E9E3C2AC
              585B3CCFD5F85C6985ED1EE263E7BAF9189F2BAFD7837D235D4EABEB6C8F08E3
              724B550D86CF9C9E2C5F3B7532C2EEAFA5DC12DBA8F344477B34DADE71BC5346
              71398EA61127B74CDFA2C1B9D41C5C8EBE418373AD5571EE35BB6874A0A09147
              2785E44B5A078D6910B6386F03DAB541F7B1CB819E46431A1CB28B954DCD6634
              5FA050996DF199D00E1F29D58DDB5AFD6E31FFD1B67255DB13080743C76A4E28
              180E948AE446F31FDBA071A076D505010000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-alphabetical-sorting-delete'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005900000059080300000062D578
              9D0000027C504C5445FFFFFF0000002195F32195F32196F254717A536D792096
              F12096F3546B7C2095F32096F2219BF3007FFF2096F22195F32096F42096F221
              95F21E93F42299EE2195F22196F22097F22196F32AAAFF2195F32096F32295F2
              2096F32196F32196F22195F200AAFF2195F21C8DFE2297F22096F21F8FEF2095
              F32294F21F95F21F9FFF2296F31F96F42096F22095F31F96F41E96F01F95F21F
              97F22196F32195F22095F21F96F32194F22096F32095F22095F32094F22498F0
              2196F22195F300FFFF1999FF2A94E93F7FFFF44336F44336F44336F44336F443
              362195F2F44336F44336F443362096F2F44336E4463CF44336F443361C9BF01E
              96F01F94F42195F3F44336F443362195F22197F0F443362095F3F443362395F6
              2195F32096F22491FE2095F22396F5576B78526C7B845F65F14337F443362195
              F32096F22096F2547178536E7AF443362095F22095F2526F7A536E7AF4433621
              96F22095F2536D7A2197F33399FF5F6A742193F3E5453C2096F32196F21F94F1
              2095F32095F42195F22195F52095F22196F22297F1178BE71F96F32095F3F443
              362096F12196F3F443362096F32196F3F443362095F32196F32195F2F4433620
              96F42095F2F44336F44336F44336F44336F44336F44336F44336FBC1BCF99F99
              F7837AFAB0AAFCD0CDFEF5F4FAB3AEFAB7B2FDE8E6FAB8B4F44B3FFEFAFAFDE9
              E8FCD9D6FBC4BFFDE7E5FAB0ABF44B3EFDE5E4FCD8D6FAB2ADF4493DFDE3E1FB
              C4C0FAB1ACFAB4AFF4473AFDE2E0F8948DFABAB5FAB6B0F44539FDE0DEFBBDB8
              FAB8B3F44437FDDEDCB7534FFBC0BCFAB9B4FDDDDAFFFFFFF9A49EF9A29CF143
              37EC4539B553506F666EF44336DF483ECB4D47AD55538361655B6B762195F254
              6E7A2196F3FC399A5C0000009B74524E53000083993C1A9926B32C87FB1602E3
              7246D3A7320EF79366ED06C7D952F344A9E50291083AA710F33C28081648CDF1
              3010685089B7BB5854F1E99B3E2268DF000A0C04DFBF8F4C0CFDF39B2C8D1CB1
              FB9F122230D75CEFA3368B56A31CEFD506BD32264458F3202EF9D124EFA7D3F9
              46FD30917E764404AF2C52AB7A60C9747A34FBF7240A70C3C34EF593EB6A58B3
              9B62F75EA534AF28649704ABA5BD0616000000097048597300000EC400000EC4
              01952B0E1B0000042D494441545885EDD8F97BD444180770A6CBD90B518BB41C
              3D965A2896A358E52816D896B2D56201174111EF82BAA2E5F6001485EA6A8542
              0F8A48F1402B0A2878710828ABD80E7234FF90BBF34E929964921948FA033EFD
              FED02699279F27CFDB6FF2241D30A02F8398A40492198854326830CD20FB9A4D
              1EA2910C559287F5D20C539053414E4BF75BCEC804591BEEB77C0785B5117ECB
              77EAB27697BFF2DD59863CD25FF91E03D64665FB2AE7107434F939C64F19CA3C
              769C6AA5D56528736E469E62A595E5FC3C3A8602C54A2BCB50E6B141345EB1D2
              CA3294B9307127E6A9555A55BE37CBE844815AA5556528735130B13941ADD2AA
              728E3E0C631CB24A2BCA1335462B50AAB4A20C652E2A263B03E1293DC90F9996
              B9108ED371482AAD26DF07C3C82C814C56A9B49A6C3E99D94CF12E4FCD12CAEE
              955692A7096149A595E41CB1AC957A956999D34ACCDC90575A459E0EF2FDCC52
              99BCD20A322DB3F600B3F4A026ADB4824CCB3C23C82C65CF94565A41CE057916
              B7365D5A69B9AC977936B7567E435669B93C07E0872AF8C53259A5E5F2DCA924
              F32C8B41389CE141763C55927EB95FEE97FBE5DB4CA64F4C5BE67B96531DDE37
              26FC0FE5EBD7AEFE7B05631CAAAC5A507D33F2C221AE724FF73FD84CB8E66175
              F91137B876D165CCE7D1BA5A9BBC780997A5A308FC58B10B1C5986ED5916B1CA
              963C0EB358EE02AF10B8C9AC70959F8059A4BAC0350E30C64FBAC82B9F22F0AA
              A76FFE8A93A972942B9E2170DAB3CE7084227F73E45FF477C4491E0EB348119A
              CF3D9FC80B2F52387E8981FF8CFF011BE17AB1BC7A0D815F12BFCFBDFC4AE29E
              BBA8C3F1F885F33AFC7B62EF1C6C468572F1AB045EBBD46110AFBDDEDB73D980
              E3F1B367403B4DF67E839D0691BC0E66B1DE014668436F3739FBD738E4979F93
              7B3FD1BD5364AD46206F84B7E6924D8E32DA4C6FE99314FBF1078C4FD0EDE374
              D2D53679317CB1ACD9E20CA337F4C9EAF4B1EFBFE3618C17D8E43761166FB9C0
              A80A5BE9A356185759E5B701DE9AEF2657621B6D8571A5455E5244E0AC896E30
              0A311DFE9681BB98E3215ECEA7DFC8DB5C6184B190EEE28EF3F27680735C6761
              91F13714FEFA88B3FCCEBB04DEF19E3BCCCB5F19D7FCE51127F97DF81FAEB653
              027373FE8299F35186E6E61C007897F3571A4DA3099CE6BAC1D08D8CFC01C01F
              96CB601433CEFF9C92876D74CC94D33F02F963298C9AF4D3F55BBA0B775AE926
              43AEF804E0B5BB035CF608E4EA6638FB1053370BDD6C3E37F68ADF0AB47DA28B
              8E92B33FE37AACD3F0F08FCADF918472035CF341EE06E96460DC728B32BD6842
              9B775EA709B72ABCD789E5FAB04EB3B77467FC53D808B7317269401CD15F3091
              768A1DC46C4ED0DFEDC8C33BFF7EEC9C3AE445EE38E0081FE8F024A38E3AA72B
              26B0A72FA0F6B0C00DB7D3552F326A6BB5C1AD6DFAA22719A1966833C336475B
              CC258F72E219D2146B4C3EAF438DB126C1774ADFE43FB76B17A56239E2040000
              000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-broom'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000300504C5445FFFFFF000000AAD4FFB2E5FBB3E5FCB2E5FCB1E8FE3C4B
              B43F52B43E51B33F50B53E52B3B6E1FEB3E5FBB2E4FBB3E5FC404FB53E50B43F
              51B53D4FB8CCCCFFB3E4FBB3E4FBB3E2FA4150B43E51B43F50B43F52B2B1E5FB
              B2E4FB2A55AA3F51B43F50B43F3FBFB3E4FC7FFFFFB0E4F9B4E4FBAFDFFF3F51
              B53E52B6B2E4FCBBDDFFB3E4FCB2E5FBB3E3FB3F4FB43F50B43F50B4B3E4FBB3
              E3FCB3E5FBB2E5FB3D4FB4B2E5FCB2E4FBB3E5FBB2E4FB3F50B53F4CB2B3E4FB
              B2E4FCB2E4FCB3E4FCB3E5FCB4E4F93E50B5B2E4FCB3E5FC3366CC3E51B53F4F
              B7B1E4FCB2E5FCB2E5FBB2E4FB3E50B43F50B43E4FB53F50B53E51B53E50B53F
              51B53E52B4B4E4FCB2E5FCB3E5FBB2E4FBB3E4FCB2E4FC3F51B6B6E6FEB2E4FC
              B5E4FE3E51B53E51B4007F7FBFDFFFB2E5FCB2E5FBB4E9FF4153B73E51B43F50
              B5B2E5FCB3E5FB5555AA3F51B53F50B43F5FBFB2E4FBB2E5FBB0EBFE3E4FB53F
              50B4ADE7FEB2E6FA3E50B43F51B43F4FAFB1E2FEB2E4FB3E50B5AAE9FF3D51B7
              B2E4FCB2E4FB3C52B43E51B63F51B5B3E5FBB2E5FC3E51B43F50B43E50B53F51
              B63F51B53F50B5B2E4FBB3E4FC3F55B43E50B53E51B4B2E4FCB3E5FBB3E5FBBF
              FFFF3F50B43F51B6B1E5FCB3E5FBB3E5FBB1E5FC3F4DB83E51B43854A93F51B4
              3F51B40000FF404EB43E50B53F50B5D286264F55A43F51B4424DB1F89303B776
              3F4451B13F50B54150B6F89103F2830588666B3E50B53C50B5FF0000F89101E7
              8311655B8E3F50B5FFD400F88E01D37E23FFC307FEC1063E51B5FEBF07FEC007
              F18204926863FFBF0CFEC007EB830C6C5D863E51B5FFBF00FEC007FEC007D97F
              1E5357A03E51B5FFFF00FEC105FEC107BE78384651AF3F51B4FEB900FEC107FE
              C007F281039C6C5A3F51B5FFAA00FEC207FEC006FFC107EC830A735F823F51B4
              FFFF00FEC400FEBF04FEC106FFC107FEC1064455BBFEC006FEC006FEC106FA9E
              03F57F00FEBC074051B3F68201F68101F78801F89402FBA804FFBE07F47E01F6
              8301FBA704F99603FFC007FA9F04FEB606FFC107F89302F57D00F47F01F57C00
              3F51B43F51B5B3E5FCB971470E000000E774524E5300000650766416105C7668
              2422D9F55A52F1AD1C04D7FD3632FBE9284EA506D3CB04CD02304410814AB70E
              C1EF4A30FB74F55E95ED625AFBA942F714A3CBB95EC7309356BD04CF2056C5D9
              937EA52CF9CDB97C4054B1DBE1BB685414C3267ADB0208C9E3182AF964789F02
              C9E708DDF90C7678163EF7F110244C8B0C18C1E722349D466EB3BD721CC7FD87
              AF18BBAF6AEFF904EB3858858B6224C108D98D0036FDE18BEFD1169DDDF9DD22
              A3F9D9E72600C1F1E3CD06DDE522C7EB60F3FBD914ABF3DF83046AEFE9EBA302
              56D7DFF79D0A66D5FDD985024297F1F7E154000C3470ABEB0EC5E1BBF10A3CBA
              000000097048597300000EC400000EC401952B0E1B0000049D494441545885AD
              D8776013551C07F0FE1010072E042C5568AD4AAD4ADD7BE1C00D629DB8700FC4
              BD170E5C80B8B7E28E7B54055B536DD5C655541AB589A343D49C118E44EE92BB
              0BC79DF77249EEDEBDF76EA47EFF4A6E7CFAFBBDDC7B794D45C5FF1C80416B0C
              1E321406903587ADB5F63AE805E2D61DAEEBFA7AEB97AF6DB0A1A669AB371A91
              E7361EA9A38C1A5DAEB649A596CF982AC46DAA9BD9AC4C6DEC38AD90EA1A831B
              5CE0362F9CAEDD62CBAD8270E3B552EA0C6E4881DBDA3C5BBF8DAE6FBB9D7F6D
              4283C56D6F70437730B91DCDD33BA1D73BFBAECF6AD5C82EE893DD753724EC5E
              619E1F9EB7F728A3556DCFBDF2CFDDE8BDF7D977BF8206FBE7B98965B4AA1D90
              7FEEF01C88B4839C47193978924DAB3C84C2C1A1871D7E44BDCFE28EB469DA51
              40E30264F2149BB67AC200B99AA3EDC54D850172C7D835AD71801CD6AA560D04
              577BEC71C79F70E249837C6978ABDA34823BF914737E8C3CD50F771AA69D3EDD
              C99D716661F6EA679DEDAD9D732EC69D074EEE7CBD940B3CB50B6760DA453309
              EE628BBBE4522FEE324CD32E072777856ECB955EAD5E8569575F4370D7DAB9EB
              02B5AA5D0F0477C3281B373150AB536E2439B8C9D26EAEA51735EB961168CCAB
              F056B55B8B17D8B9DB2CEE768A35BD6E369A069577DC79D7DDB8764F158D8339
              456D2EA5B879F7966E6FC0356D3E5039B8EF7E843D30E741529BFC90C6CCC30C
              0EEA1F79F4B1C769FB8B27C6B0B527ADCB7CAE284F3DCDD6B4BAC0DC332EDAB8
              0541B9679F73E186D92EF4C52DA876D19EAF09CABDF0A20BF7D2CB01B990BAEA
              9557D9DE6BAF07E2DEC8A9AAFAE65B6CEFED77FC73EF36A966DE7B9FE97D30D6
              2FB770915A4CEE43E6108EF7C935B728AA15E6107E34D317176E95A59CCD533F
              FE84EE4DF3C1B5B5CB46B22A964F3FA3719F7B721D912F90266744DC53BFFC8A
              E4BEF6E0BEE95C2C17921156E2DEBFDF7EE7E4BE77E5967445655BD2A915FCF2
              6536F4871FFFC1B99FD85C772CFEB34C49F26F5B85BFFC8A71BF615C4F91EAED
              EBFF7D29CD42E19843D8F007CEFDF9574B2291883225B3679E35845301E32096
              71858AEDE29E35848D0E0EDAFD707272450E07CD219C014EAEB9D597274BE232
              CCCBA1216C2438E87733F0122549C2867036905C479461C9722A491CB22F0C6A
              88C2411FA3DD24279107A5E596B608681C44685826A55034A362EB990ED3B99E
              045999A0F054CDA86F25A5386C92B5A5A4B48D920491E7E9B5A1A4051E3D35AB
              BA591C84155E11B96C36CB71A2C2A370699666FEC5542A044C0E423C1691595A
              298B97B87098C749D49987D7DB096E1C34999422521EB67C248C4B803B072141
              4849F4BA5004ACFFD6662F0E222E8B4B924B61EFFBC1938330539314017B1F5D
              E88383187D154D723C871FE9236EA57EF5345396836456E1397C1CE2E49DF46F
              B25EC76A9A910CCCA9B510ADB2BF673BAD86D392909F22F8B8919FAA1B67EC28
              326963A14C65C5C293887FA6B2DC45BBCB658F1252DCE65B3BF51EB72D4F7753
              11244A93A3BD81B912982526DC52DAC07972081405CAEC8D312EF7DE6AF746C8
              A730C2BAD8D7FF15B1383E4F88A91A8C3376DCB1B85523653604E450DAC2F1FC
              1632DEC3BE26E04F5A1D7DE12E170DCAFC9D9E99FF00DB42A13FB80FD56F0000
              000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-data'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000052000000520803000000F0F273
              A9000002A6504C5445FFFFFF0000007F1248870E4F870D4E8D00548C0C4C870C
              4F880E4E870E4F88115583114F870E4F870E4E870E4EFF0000890E4E890E4E87
              0D4E870D4F870D4E890C4FAA0055860D50860E4F880D4F880D4F870D4E870E4F
              870D4E8B0F4D880D4F880E4E880D4E870D4E880E4E870B4F880E4E880E4E880E
              4F880E4F8D0E54880D4D870D4F860E4D8A104D7F003F910048880D4F880D4F8A
              0A4A880D4E880D4E881251870E4E880E4F880E4E870D4F880E4F890F4C880D4F
              880D4F880E4D870E50880E4F870E4F870E4F870D4E880D4F7F003F880D4F870E
              4E870D4E89094E870E4F88114C870F52850C547F1555870D4E870E4F890C4F87
              0C4E890D4B870E4E870E4F860D4F870E4E880E4E870D4F7F007F880E4F880D4F
              990066880D4E870D4F870F4D890F4E8B0B51871051880D4F880D50880E4E880C
              50870F4F870D4F870D4E880D4E870D4E880C4F870F4E870D4F870D4E880D4E87
              0D4F870E4F880D4E880E4E8A0F4F870D4F870D4E880C50880E4F880D4F880E4F
              870E4E880B4D870E4E870F4E880E4E860E4D89134E860D508F0F4F880E4F870E
              4F870E4E870D4F870D4E870D4E880D4F870E4E870E4E860E4C870D4F880E4F88
              0D4D870E4F870D4F8B1745880D4E870D4F880D4E850B51870F4F880D4F880D4F
              870E4F870E4E880E4F870E4F850C4E870D4F880D4E880D4E880D4F7F194C850B
              4D870D4E880F4E870D4F860E4E870F50870E4E870C4D870E4E840A51890D4E88
              0E4D890D50860D50860E50880E4E890D4F870E4F870E4E880E4E870E4F870E4E
              870D4F880E4E880D4E880D4E860E50880E4E870D4E890C50880E4F870D4F870D
              50870E4F880E4E880D4E880E4F7F0055870F50880E4E8A0E50870E4E880D4E87
              0D4F880E4F880E4E870D4E870C4E880E4E870E4E880E4D8B1052880D4E890D4E
              880E50850C4D870D4F870E4F880E4F3B7465EF000000E074524E5300000E5A97
              081464B5F90E1C6CC1FD00345A70725E3C022676CB83E3EB952081D3DD4A782C
              EBF946FB12384C482E0806DBF118F1AD1CC3C5FDF5AF32EF956C688BE5A1833A
              04BD8BDD1AC71E22140CC991503E24FB8D4AA3A3A702D5740485CB4240162EF5
              489B2852ADEDD1CF6244BBEF60E1B56E7E30816E3CE970F77E2AE9548D240C38
              10B1DB9DDFE1A997D3AF34F3A15E9F600AF3CDA92C40B7BBB18F7CE72AD189A7
              AB0A166254876866B74E891826784C1246ED5C7A7CC7D96ABFB3B9CD58E7B93E
              D7AB5CD5D972E506327A22B3E3A5665899509FF7441E994E363A85A22FC7E200
              0000097048597300000EC400000EC401952B0E1B0000058C494441545885ED98
              F94315451CC0595010F57148611C665C0F0810434150120D5EA0088A0A2987C8
              8394480B1295AB4481C4DBC791D2A190A97984116466A6DD696587DDD9C1FE27
              EDF7BB3B3B33BB8BFB5EE96FCC4FF399EF7C3F6FDFCECCCECEBAB9DD932230C5
              DD63C244E17F14ADD2D36B92B7284EBE6BCA29532D3E2214D794BE7EFED302EE
              BB3F50A79CFE40D0A8A8145794138343E4A4D0199EACF2C1990F894C7141E917
              46D342C319658428FE376564149B678D3650C6182B631F8E8B4F98A53726CEE6
              AFE591245E3967AE57728A81D2D7635E2AB4A6CD5FA055CA9792FEE8C28C458B
              B1FA1855A6066566D9A43E06CAC98FAB17919AEDCB5F643AB4E62C81BAFB52EC
              914B94CBF2944E7A65FE72F69FADE09405D8B6528655AB012274535DAF2CC416
              EFB010FCF36211AB7C025A96135A031464AE9C0E03E613202DD1A4B5109A5DCC
              284BA0A594BB66EF3253E53AE075580D2C87FA7AE656E2FCA82068C7DC4A5365
              988455EE72FD49886DA0B18DD83956659CA3D5664A4FC0A71428AB91E069AACC
              82A00FE54DC09BCD94CFC8A3A89467613124AAC16808D652A50538C04C590758
              40680550AE1AAC067C8E2AB700079B29EBB911D90AB44D0D7A68949380B79B29
              71C5F9116A006A548345804D029FDCEC94329223AAC4E169A14AE786A714308B
              D0F340F4D9F182A6F30EC05633A517B7087702ED52836DB846DB097660EE3633
              252EB285845ED4AC83DD78F308E19C8A4934532E03EC24B44782BDD428EC83A8
              85D07EA003E68F0D58304DCAE61709B1838C1267D1E82119EC878132CD950EE0
              2EB9DE0DF51E46D9FB12B41CE9857AF1514CED3357BE0C1CDA07D556188DB436
              46298F97B8BBA1A2B16B1E565FD1BF6DE81FC1AF4283F76B3B8FE10A168FB346
              C1BD5FE44ACC8033CA5D73D89CD735DB644515A7CC109C510A876A694A895DD0
              9470E617631A04E794C2947DF2B623B69CE8D51A0561C91B56393A6AA9148C94
              9927A19CD2A49D7E33DBD11D7C265F2F84D2E19FD9E9387B2E5941ADF22E9471
              E5B8725C39AE1C5762E9F07034DEB1838B4AFBF9B7A46DC1C325E5A9C1E60B27
              9AE30C3F1BE4362BC77557946F3B943D34AD3B49D371E89D72F5B8EE82B280D9
              5E6B87995E23C125EC6EEDBC32DACAE659DFA5BD1AF9770AA79579B57CE2C511
              9D7234DD58793AFEBDBAE1557AE506EC9E73A9BAF5FD3D58DDCF2B6B8EF62445
              18298B2ECBAF0E1F5CB1F1CA241C4D0BBE15C807E6D59EAA523AAEB7C34BA681
              D2B686FEB123764EB9106FA072F57D78E0CC2069EEE49C68A05CCBDEAC920E56
              F92134CD251DAF025DD3DD7ABDD25F9E741F2DBD486E1655E21BD8C7A4671750
              A8B9B2EC136828949646601D4C98D401AACCC5CE43A4EB1062B2A9320EF853B9
              9E09F56CAAC4236D8BFA49C08673F43353257E8A501E23F969221C3854251E70
              16D3BEF8D56BD054F9B984FDE4B3CC1710B4ABCA2F7166D1BED781BBCC94BD30
              F3B670D168559901584E933771B3682C259EB48E11C27FDAC32B2FD3E403C0E7
              CC949580DB09AD04A287679C35D769F20D8395A757E24AFD8A5002D04C7E7842
              68F2D7C0C382A6182AD553EB02A0ADAA124F61561B897E13C3CC8EB1953701BF
              E5FEF83455998C9D3792E800A2F6D1AE537E07B888D02010F3D52014B88E4437
              0345698D3A651B6C1EF3090540309C2AAF017F4FA25799857607A59023E10F04
              6EE122A6CA1F817D12E4601F3E3CCF9B2BF1907F53AE97A5E33FA3CA585CD541
              F879AD57F3081E5BF913F049B97E05EA3FB31BC504ECBEF7F8995F2EE5607586
              CEA857CEC2DD083F6FB4E3E3318B558EE000D1529BE78452988A2D376EFD9A82
              F7EA20BFE9AEFF8D355A7FD71B0D9481163629EA0FCDAB41510D738DBA079BB1
              52684BA149FDF0DD8B530AF6CEC372ACCAA19BE56329055B7D939CD4721B777E
              5E29DDEEF086B3179AFFD41EC84989BF0DE52F4D6BF1DFF5FF14961628E77FB7
              7B52FE05FF235736810124570000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-search-more'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000300504C5445FFFFFF0000006666665F5F5F6161616060606060606161
              616161616060606060606161616060605F5F5F6464647F7F7F65656561616161
              6161616161606060606060616161616161545454626262616161616161606060
              6060605E5E5E6666666161616060606060606161616363635555556060606060
              606161615D5D5D6060606161616161615F5F5F60606060606063636360606061
              6161616161606060626262616161616161606060616161626262616161606060
              5D5D5D5F5F5F6060606060606262626161615B5B5B6D6D6D6262625F5F5F6060
              606060606161616161616060606161616363635F5F5F61616161616155555560
              6060616161626262616161616161616161616161616161616161616161626262
              6060606262626060606161616060606060606289A864ABE3638FB364ADE86391
              B764A8DE61696F6286A378BFF7C1E1FC9ACEF994CCF8C0E1FB70BBF7ABD7FAC7
              E5FBC5E3FBA2D3F96BB8F76292B8DFF0FDB8DDFB79BFF86FBAF76278896398C2
              6AB7F6D8EDFC93CBF8DEF0FDC8E5FBB4DCFB627D92649DCB8BC7F8CBE6FBBFE1
              FBDFEFFD628099639ECED5EBFCCAE6FB80C2F86BB8F662849EC1E2FCB6DDFB8B
              C8F86DB9F7D6EBFC6397C0C6E4FB7FC2F8E1F1FDCFE8FC66B6F6B2DAFB627B8F
              638FB271BCF7C9E6FBE0F0FD91CAF8DDF0FDCFE9FC75BDF769B7F6BDDFFBE3F2
              FDE2F2FDADD8FA65B5F661738265B6F688C6F89FD1F998CEF973BCF76FBBF796
              CDF99FD2F98CC8F867B7F681C3F89DD0F99BCFF97AC0F862758564B3F2638AA9
              616E79616B7463A5D964B0ED61666963A6DD628CAE627C9161676B639DCC616D
              7664B1EF63A1D2627F976392B9639CC962839D61646764A0D06287A461636563
              99C564B4F462829B638EB064B4F5627A8C62798B64A1D2626B736393BA64AFEB
              63839C61616261707C6399C464B5F564B0EE628CAD61676C626E796390B464AD
              E763A4D86285A161666A616263627788638DAE63A2D464B2F064B5F663ADE963
              9BC86386A2616F7A616262616B73617687627D9362819A62829C627F96627C90
              62748262676B6161617C7805840000006374524E530000143A62858F9BAB9F95
              896E482002185EA1E1F3B5722E085AB5FDD7761A0E7AEBFBA32806F1FDA71E44
              D9760897CB2424CFF15438EF4CF5934E36872664CFF930DB0E063410527ACD58
              ADB7121866B10234146883D5E3A5F5E7C374460C74C581D5537EA62800000009
              7048597300000EC400000EC401952B0E1B00000540494441545885B5D9795C14
              7514007037850D1248C33492383C562C21CBE812DDD052335BA5C3D04A4B4AED
              BE4FB3B2B4A2FB300931B2AC350B4BCC34345123B53052530E41C8CC4C281D50
              B4B49C76DFFBFD666777DF6F8E657A7FF978EF7D3FB3BFB9C776EDFEA7B089E3
              84F61DC2C2ED2746449ED4312A3A46A33130C4ECC99D3A9F22AB23B6CBA95DDB
              C8763B2DEE749988EEF16784CE262426512644728F9EA1B1BD127B0B516F38FA
              A484C0F63D531385553EAB9749B65FAABF70FCDF7F8E1DFDFBAF23875BFDFE9C
              76B629B6FF39AAD943075B9A251E07F6FFF94793AF76EE0013EC79E9CA5CE3BE
              DFA5C0D8FBDB1E1F9C68983DFF023EF3EBEE5F82506FECFAB941712FD4383FD4
              EC45C96CA07E671D89025CDBC8DD5443ECC57C5B77D408516F34577377A00136
              83AF6B957853312AB7F37D374897ED3798B56EFB4947F5C4D62DD8EBBC448FE5
              C7EBE64A7D55927EACC0EECC21DA6C5FA6FE604895A44D4D9ABB8DB143D9195B
              65600530CA71C071A9169BC88E01BDBDA58AEFD9694C1EBDC85E864741FD77C6
              5569E306748789D9E1D871D4842A49EB71688490ED8657ED6F4D2C8137CAD08D
              12B19763FD1B73AAB4AE1EC6468AD82BA0BC768D49966DAE7314CD5E8977C37D
              6655A9067FA58B663B61B5D4345BB91A0647D36C67287E6D5A95A45530993E86
              64F129E360082C5B852C8ABD0A6B2D21B02BF18A7335C5B647B6595F098E1218
              0DA7D80E503AEEEBFD6AC5F22F7DD9B22F96162FF1A59F7FB6B8E85325DB09B3
              71147B0D943EE19D8B3E5EE876BB3FFA90A50B3EF064EFCFE7D515EF79D2C277
              793A0F66AFA5D8702815F0CEE56E88B998E5BF0359DE1C4C8B1642FAF622D63C
              1B66C752AC1D4AC738FB16B2796F42F60666EED7B1F81A4BF922B5C06C6F8ABD
              0E4AAFB2C657D8A0FB654897B2EC25ACBEC8D262D69D8BBB9B62F16C788135E6
              3FCF2617405ACCB2E7B03A8BA53359F7B3309B4DB191507A862FC20C1C7C1AB3
              254F61FA24A68B319BFE046B9E06B3E3287620941EE7EC63B093A63FCAD2F979
              DEF411B68F96C1E23E5CC49B1F82D94C8AED08A51DBC537AF081FBEFBBF71E25
              9D33A3F0EEBBF89E97F2EFBCA370EEED4AF136981D4FB151506A3D2085105530
              6BA7D868DC9BFB4361A7C2E8F5141B131BD22DC71B53708B6EA0585B1CD48E84
              C04E86C9E41B497602149B6E35CFE2056C62900A6C57FC29B7985673F03DE526
              9AB5DD0CD53DBBCCB293707B88F73F60E3B1BCD5A4BA662D8C518F35C046E34B
              4383C9CDC51B24753F67CF603DB0A1DC949A8337B224EAC919D99E0EBCF198BA
              9F15E0B6C4132A7FBEED832DD5069FC5BD518B23E9091A6C0A9E69F276C36A29
              7B7BA05F76F8BB033B189A8C3E2DEC3D2C8B4E05359B3002DBB6E41A52EB1AB0
              3D5BF0994579814A61DF262A361950730EC9E283CB8FB50D609D4DB5BA6A295B
              01232C7FDBF1DCDB376AABB515B2ACE3AADFD0950F1F1BB41638A7405607EDAA
              D918BBD25CB64E80D6EDAE90657DD7FFEB4798D25C5F56439C1A39931AE5A010
              5F13947065FBDA57AFAA59A936A74C2E690D4665F2F40DFCB29495A91EA828D9
              366F764BEEFA69E59BABA7AA0BD92E97F26F87234297B50D4975909BE417699E
              B380BB0E07E1125FEDB2D274D0A441F0FAEC52D46097FAC618336CB0163A9C5F
              605D8A1AE40ABE88468D740A7EBE4B75D576296AA02BFC7E3BCA353A3D804C9E
              18D6DFBF29DE2170B5BE368FC9728577E93E365D8E1D9739DE3E216A68704B84
              C0D5FE88AD1F02B7ADACC06D334BBB6D6749D7029672AD6009D71236D8B5860D
              722D62035DABD800D732D6CF8DB48E55B9CE0C0B59C5756658B8088AEB51AD65
              C1F5AA16B31E1754AB595B2AA83693FF6F6938FE0386CDC09EBBC9967C000000
              0049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-sort'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C50000006C504C5445FFFFFF0000002094F12193F32095F32394F02196F22491
              F52196F32491F22196F32299EE2196F21999FF2096F32AAAFF2195F200AAFF20
              95F300FFFF2196F32195F22195F32196F32094F21F96F32195F22196F12095F2
              1F95F32195F22095F32195F22095F22195F22196F36582F29E0000002274524E
              530000362CEB24E51CDF14D70ECD0AC306B902AD009F9183726458FD4CF940F5
              F1A7BB0BA174BE000000097048597300000EC400000EC401952B0E1B00000194
              494441545885ED99C772834010056540116509504EEFFFFFD14AB608BBFB5CB0
              EFE2A2CFAA3EA99A9D994E47CC172308E84F6A68C3280AFD6BBB3DA0D7F5ADED
              0F7067D0F7AB1D8EF06434F4A98DC778338EFD692753FC329DF8D2CEE6C8319F
              F9D12E9628B05CF8D0AED628B15E79D026652B9034D7A6552B9036D566262B90
              35D36E6E66ED6DD344BBDD99ADC06E5B5FBB3FD8ACC0615F577B3CD9ADC0E958
              4F1B9C5D56E05CCDFA1FB461E4B602D5AC73ED23DB8C4AD6A9F6956D4639EB4C
              FB936D4629EB44FBC936A39875B7369F6D4621EB4E6D31DB8C7CD65DDA72B619
              B9AC3BB4D56C333E5977680DD966245C6BCC3623655A4BB619995B6BCB36E39D
              758BD69E6DC62BEB66AD2BDB8C67D68D5A77B6198FAC9BB42CDB8C7BD60DDAF8
              726DC825B6FEC19AD16A5B6DABFD3F5A556A346154655CF5D1517D22551F74D5
              F343F558523DED540F51D1B359F5C8578D24AA014A35EEA98653D528AD1AFC55
              6B0AD55245B502522DAC54EB35D53250B5BA542D5A556B61D1125BB572571D08
              54E70CD5F145752A521DB65467B8BA4743AF7C03BB3352482341768C00000000
              49454E44AE426082}
          end>
      end
      item
        Name = 'icons8-secure'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C5000001E0504C5445FFFFFF0000004242424141414141414242424242424141
              414242424242424242427F7F7F41414142424241414142424243434341414141
              41413F3F3F424242424242414141555555414141414141414141555555424242
              4141414242424242424242424141414242424343434141413333334141413F3F
              3F41414142424241414143434342424242424242424242424244444441414141
              41414444444343434141414242423F3F3F383838454545424242424242434343
              4444444242424141414242424141414242424141414242424141414242424242
              42FE8B00FC8C00FA8B00FA8B00BC7115B46F19CE7910D17B0EFE9100F88B00FA
              8C00FA8B00FA8B00F98C00FA8B00FC8D00FC8C00FC8B00FF8800FA8C00FE8C00
              FB8C00FB8B00FF9900FA8C00FA8B00F98900F98C00FB8B00FB8C00FC8A00FB8A
              00FA8D00FA8B00FE8B00FA8B00FF7F00FA8B00FA8C00F98D00FA8C00F98E00FA
              8B00FFFF00FB8C00FB8B00FB8B00FB8C00FF7F00FA8C00FA8C00FB8C00FA8B00
              FA8A00DA7900D37500D37400EC8300D67700D67600F78A00D27500D17500F98B
              00E27D00E17D00CC7100F48700EF8500F58800CE7200CD7200E78000E68000FB
              8B00D87700D77700C76E00C86E00DD7B00FA8C00E47E00DA7A00E37E00F48800
              FA8B00FB8C00424242793C8A200000007E74524E5300002A588199A53E9FE79B
              025AD3D35830C9C73072FB7006A7A5B702AB7CEF7A3CFD8B383A04D7108D6EED
              40406AE3EB24E3F93C5678B50C080A4870481ED1A3C1ABADBFCD91CB87165670
              76B3C19D99142AB3FDB160F95E5A581EF51C9B9904F1EF32304C4C5A5036340A
              F70AADAB2CFD2A78008987D7D5023C7E9FAB3A058BCFC4000000097048597300
              000EC400000EC401952B0E1B0000027B494441545885EDD8F953133114077042
              39C4CA7A42A52A4805513C806A150FF04484E281553C50F1A8A0E28D20828A28
              8A22281E05AD34FBAFDA4AB2BB6D5F02D9C41966DCEF6FDDBCF799349BDD4E93
              91F18F8378C9746565E7E46467B932B965426CEEA23CDD48DEE25C15AC7B49BE
              9E126DA95B965DB63C154D64C54A39765501A4EA7A41A104EB590DA3891479EC
              B21E2F5BD5752FE0CE875DB396A7C6E79B7EE3E6C3AE4B428A35AF572B4EBA54
              62875D5F6A317D1BFE4ECD5DE6B3C8A565E26CF946F3B6FB2ACCEB159BCCCD91
              5F2ECC6E369A2BB7248F6CAD3486B689B29EEDB4B5AA3AF5AB5657D1B19A94DD
              3027EBA29DFEB4054468879F8EEE14648D2D1B4857110AD0D15D62EC6E7A5F6A
              6A21B6962E917F8F10BB974E671FA4225448C7F70BB1C6A35007B375F0233117
              5B44BAEA6115A17A527040883D48BA0EB1D8C3A4E088107B947435B0D8065270
              4C88D54857238B2D21059A5A36E0B00E6B873DDED41C8CA7E5C46C4E06193945
              0A5A121F9A9B4E73D9D633216C2BA1B3AD6CF65C9B3D3491B6F32CF642CCBE8A
              71EC22CC5E6A9751316EBF0CB257E4548CAF426CC73559F67A07C0DE905531BE
              09B06179F616C076CAB39D0EEBB00EFBDFB033BFA3D15F338AD99FD3539178A6
              A6B9BF4BA26CEC4784E4FB3785ECD788914985EC1793FDAC8E9D885832A18C1D
              B7B2E3CAD84F5696B3C944D776CC54C73865A2EC4793FDA0901D7D4FD577A30A
              593CF276567D33C2ABB2F14E188EBE1E7A35CCAF59386F30877558875DA86C97
              3CDB05B0B7E5D93B007BB75B56EDBE07B0E8BE2CFB00FC2BFDF0919C1A7A0C9F
              273C9163838C638A9EA71268ACB787795613EEB3AB3E0BF34E96FA9F0F0CBE10
              CEE0C0CB7ED6C992D2FC01B82CE69ADDCF231A0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-bar-chart'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000033504C5445FFFFFF00000000BCD400BCD400BAD200BAD400BCD300BB
              D400B6CE00BED200BAD300BBD300BBD300B9D400BAD600BBD400BCD470CC68ED
              0000001074524E5300002A763E5A87781432684089303848933B1A6200000009
              7048597300000EC400000EC401952B0E1B00000063494441545885EDD84B0E80
              20100451541044F9DCFFB426ACDB844C6457B5EDCC3BC038F7739BA9FD107933
              17BAE88483835BCF4535043838383838B8292E5DA264E6B29A321C1C1C1C1C1C
              1C1C1C1C1CDC5AEE7E4465DC5435D531153535E39FFEB3175ED7F19D34746854
              0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-find-other'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000300504C5445FFFFFF0000006666665F5F5F6161616060606060606161
              616161616060606060606161616060605F5F5F6464647F7F7F65656561616161
              6161616161606060606060616161616161545454626262616161616161606060
              6060605E5E5E6666666161616060606060606161616363635555556060606060
              606161615D5D5D6060606161616161615F5F5F60606060606063636360606061
              6161616161606060626262616161616161606060616161626262616161606060
              5D5D5D5F5F5F6060606060606262626161615B5B5B6D6D6D6262625F5F5F6060
              606060606161616161616060606161616363635F5F5F61616161616155555560
              6060616161626262616161616161616161616161616161616161616161626262
              6060606262626060606161616060606060606161616464646161616060605C5C
              5C628AAB6289A864ABE3638FB364ADE86391B764A8DE61696F6286A36292B862
              78896398C2627D92649DCB628099639ECE62849E6397C0627B8F638FB2617382
              62758564B3F2638AA9616E79616B74ADD8FBA1D2F978BEF7AFD8FBB6DCFB8AC7
              F863A5D987C6F878BFF76FBAF77FC3F864B0ED61666963A6DD69B7F7AFD9FBB6
              DBFA68B6F696CCF997CDF9628CAE627C916EBAF6B1DAFAA9D5FA6AB8F78BC7F8
              B3DAFA65B6F661676B639DCC6EBAF7ACD7FAB2D9FA99CEF984C4F870BBF66CB9
              F77ABFF789C7F8A0D1F9B8DCFB98CDF9616D7664B1EF69B7F69ACEF9B7DDFB86
              C5F863A1D2627F977EC1F8ADD7FBA0D0F970BAF66392B983C4F8A7D4FAB9DDFB
              9CD0F976BDF7639CC972BBF689C6F89FD1F9AED8FBBADEFBBBDEFBB7DCFBA9D6
              FA99CEFA82C3F862839D61646764A0D067B7F669B8F765B5F66287A461636563
              99C564B4F462829B638EB064B4F5627A8C62798B64A1D2626B736393BA64AFEB
              63839C61616261707C6399C464B5F564B0EE628CAD61676C626E796390B464AD
              E763A4D86285A161666A616263627788638DAE63A2D464B2F064B5F663ADE963
              9BC86386A2616F7A616262616B73617687627D9362819A62829C627F96627C90
              62748262676B6161612B4F12C50000006874524E530000143A62858F9BAB9F95
              896E482002185EA1E1F3B5722E085AB5FDD7761A0E7AEBFBA32806F1FDA71E44
              D9760897CB2424CFF15438EF4CF5934E36872664CFF930DB0E063410527ACD58
              ADB7121866B10234146883D5E3A5F5E7C374460C74C581D5CB1C6AA30A34DFE7
              E3000000097048597300000EC400000EC401952B0E1B00000525494441545885
              B5D9795C14751400703765370C240CD250023675C412B28C2E51424B8D0CA5C3
              D00A3BACA4D4CA8AC4D0EC503A3C3AA92C534B3BB5B22CE9D03216AB2D50530E
              41C8CC4C285D50B4B41C77DF9B999DE3FD667686E9FDC7BCF7BE9FDFCECC6F66
              7E3F3A74F89FC2C18E133A760A73BA4E0CEF7C52446497289D4275B0D993A3BB
              9EC2CB2326F6D46EED64BB9F16D78327A267FCE9D6D984C424CA84709FD1CB1A
              DB3BB10F130D04D737D902DBEF4C5D14CEF259BD4DB2FD5394C2B1FFFE3D7AE4
              9FBF0F1F6A531C4E3DDB143BE01C59EFC103AD2D3E31F6EFFBEBCFE660EEDC81
              26D8F3D2A4BEA6BD7FF8D4B1E7F7DD41383164F6FC0BC49EDF76FDAA4103B1F3
              9746C9BD50677EC8D98BDC4243C38E7A1205B8AE49745342622F16C7BABD9689
              06A2A546740785C0A68BE7B59A3D548CAA6DE2B51B6CC8F61F22946EFDD940F5
              C796CD589B7189112BDEAF9BAAD44665C54F1AF7472F56670ED567FB09EA0F0A
              B5E2FBEF36967B3C9EB26F377CF3B5C25DDFAC7BD90476983063ABE56760DD57
              5F7A64F1C5E795B26429367097EAB189C23D20BB5A6B3F2BF3A8E2D33532F713
              611A93772FB297E15DD0F071B06BF5476A34101F7E2015AC5A89EE70363B022B
              8E042FD3FBC8BCF7EE3B6FAF7D6BC5BAE56FBE8107962D956A9660D34826DB1D
              9FDAAF4BA760F106305E7B7591842C5EF30A1C7BF925E95009BA912CF672CCBF
              2835BC1000CA9E7F4E71F12B973F1B38FCCC42F1C0820668CB62B157407AFE3C
              B17E45A0BDFC699F3A9E5A1648AC560D376314CD5E896FC3BD52F952FF3D50FE
              A446F5F9166EF4B34F487FD6E2AFCCA6D968CC1607DBE7CE79FC3142F5F9163D
              5AF64885F457D56C681C4DB35D21F930E968072C9F13B3A0336D0CC9E257C681
              D058450867218762AFC25CAB0576263E71AEA6D88EC8B6182BDA28825627C576
              82D4312BAA6F07F4C651EC35907AC8123B037AAFA55827A40A2DB1D3A1772CC5
              BA2075D412DB0ABD7D28F63A483D68892DC0CB4DB1381B1EB0C4DE0FBDB914DB
              1952F75962A741EF388A1D04A97B2DB1F7406F26C546406ABB25F66EE81D4FB1
              91906ADB6F85AD865E17C576C1ABB9CF0A3B155AAFA7D8A818D52B27F4988223
              BA81621D71903B6C819D0C9DEE1B49360F92CD779967F1013641A302DB0D7FCA
              9DA6D57C5CA7DC44B38E9B21BB7BA75976128E8758FF011B8FE92D26D579F3A1
              ED16AD8AECADB868683439DC3B70341359ACE3362C2835A5E6E38B2CE97626DB
              8BC3178FA9F759218E259E50C5EFDBBE5852A3F9C267471DB6A425E8B0C938D3
              F86D21ABC5C2EA815EEC886B07E166680EF56B61CF219E3515E46CC2482CDB5C
              10925ADF88E5B98C6D166901952CEC4D78D787A0E61FC462EA6351C93A060A95
              CD75866AB17006783EC29015573BFE77FB2A7DB5CECBF306AE7C852E6D7CACD4
              3BC1F985BC3C6857CE46B9A4E292050CB47E9797E78D5DE5EE479854DC50524B
              4C8DFC494DBC262857B557939D1B2C9F3DAB76A6DC9C32B9A84D8BF2E4F455EF
              2CE564CA1BBC455B674C6F2D5832AD7453CD547922373B5ADAD5E3B87043D631
              34852387A48854FF2C105D8E235C62D72E27D5004D1A0CCB6774398E72A93DC6
              A8E143F4D011E2D644C0E538D265EC88466665307EFE44D9533BBA07C7D12E73
              FF7654F6E83415E99E1036405994C7315CBDDDE63139D9CED89E63D3F8987199
              E35D7991C3B425590C577F13DB38186E7B5986DB6E9676DBCF92AE0DACC24DB1
              8F255C5B58AD6B0FAB716D621DB14AD72E56E5DAC62A5CA77DACCC75A7DBC84A
              AE3BDDC69320B97ED55E16DC806A33EB7741B59B758483EA30F97FCB90E338BC
              F8D12A837043150000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-lock'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A08030000000F76B1
              3000000300504C5445FFFFFF0000004141414141414141414242424242424242
              427F7F7F43434342424241414141414142424241414142424241414142424242
              42424141413F3F3F4141414242424242424848484242424141415555554C4C4C
              4141414242425555554242424141414141414141414141414242424141414141
              414141414343434242424141414141413F3F3F42424233333341414142424242
              42424040403F3F3F424242454545434343414141404040484848414141383838
              4141413F3F3F4040404141414242424242424242423F3F3F4444444242424141
              41424242424242424242414141414141424242424242AAAAD4AEC0C7B0BCC6AF
              BEC5B0BDC5B0BDC4B0BEC4AFBFC5B2BFC599CCCCB0C0C5B1BDC3AFBDC4AFBEC4
              AFBEC5B0BDC5535557B0BDC4B0BDC4535456ADBAC2ADBBC14E51514E4F51AEBB
              C2A8B4BBA7B4BBB1BFC6AFC0C6B0BDC5AFBEC4AEBDC4B0BDC4ADBFC8B2BFBFAF
              BDC4A9B8C6B0BEC5B0BDC4AFBDC5B1BCC7AFBDC5B0BEC4B0BCC2B0BDC5B0BDC4
              B1BEC3AFBDC6BFBFBFB0BEC5AAAAAAAEBFC4B0BDC5B2BCC6AFBFC4AFBDC4AFBD
              C5B0BDC5AFBEC4B0BDC4B0BEC5AEBDC4AFBDC5B0BEC5B0BDC5AFBDC5ADC1C1B4
              BFC9AEBFC3B0BFC4B3BCC6B0BAC481B0D43BA1F43AA2F469AADC57A5E12497F3
              41A5F52498F355A4E22999F4299AF446A1E72B9AF446A0E74DA2E54BA2E658A5
              E22397F357A6E26DACDA38A1F539A1F56CABDB87B2D2289AF42899F486B2D233
              9EF4349EF44AA2E6369FF536A0F548A1E63FA3F542A5F53FA4F52F9CF47DB0D6
              AEBDC6339BEE359FF438A1F4349FF42C9BF42396F3ADBEC679AED7419EE93F9E
              E9AFBEC59BB8CC2898F199B8CC82B1D42396F27EB0D52296F376AED77CB0D67A
              AED690B5CF329AED319BED8EB5D0A8BCC75FA7DF2397F25EA7DFA7BBC85BA6E1
              2798F1ABBCC780B1D55AA6E12597F12196F32496F2399DEB59A6E17FB0D5AABC
              C79DB9CBA2BAC9AEBEC699A5AA99A4AA4445457F878BAFBDC4454545636769A3
              B0B6A4B0B764686A4747477C8487AEBCC27D85894748484E505181898D818A8E
              4F5051B0BEC5424242A9D59E1E0000009774524E5300002A588199A52A02409F
              E93E5CD5D55A36CDCB3478FB7606ADAB060ABBB902B185EDD3B7EF42FD89388B
              D9F910D70470EB3C6E08E72022E5360EE108E30C4A6C70487E1C1E7AA5CFD1C1
              BF91CB87062850768999A55028043078BBF5BB7893D37485FBFBD7D726F1F124
              2CEBE922E31C14DB12B7B3742EFBF92AC3C15E5A04DD025CCF3230918DE7E526
              6A68A5CDF3F318183C341A1A5B6B89FC000000097048597300000EC400000EC4
              01952B0E1B0000052B494441545885E5D8795C14651807F09D40C3AB1B322BB5
              A014D3CAD2EEFBD00E6B0377156223E8B21441B1C5304249B1D45CA125138A2E
              C9CC0AA12C21D4108B90A2D50E8408928964B5C36E3BECDD766D67E679DF79E7
              9DF75DF8F44FCF9FF3FE9E2FC3CC3BEFCCBB16CB7F5492711D1616DEA76FDF3E
              E161873342E27444BFFE037C6A0DE83F30A297E8884147F8883AF2283A2E481F
              7D0C0907EAD8E37A4C474446D1649F2FEAF81ED2834FA0C3811A72624FE8934E
              36967DBEA13A9B9F1E369C25FB7CC387854C9F8241A746C7C4449F861D0A0F95
              3E7D047047C61E9A6F11B1A3803E626068F4E0335462F4C831DAF131A3B44973
              E65921D167ABC0D873F093EB37561D3A37147ADC78A57DFC79C42595CE57ED0B
              B059C2490F52AFC685A42C49B1A395D1B010E8A14A33EDB1932295D11871FA22
              E55E5D3C8E465F72697038EA3261FA72E5B4AEA0C99274A5327E95307DB5D27A
              0D9DBE56199F204C4F0C765E479725E9FA6060A2307D43B0738811ADAC89370A
              D3CA0B6092113D2918B849988E0E76DE6C444F0806A27B9F8EFC5FD3D65BE2E2
              27DBEC76DBE4F82953137A8F4EBC35C98140396E4B4EEC0DFAF6F81444A994D4
              3B7A48FF7DF04E1A1CA8BBFEFAB307F41FBF1F30820375E0B75F43A57FF99905
              07EAA71F43A27F386806FB6BFFF7DF89D3777FCB21FBEB9B7B44E969F7F2C908
              DD375D8C9E91C62B23347386089D9EC12F2394318B9F9E9D29222394398797B6
              DC4F05F6EDF57AF7EEA30E392D9C74B2BEB77BCFD75D5FC9FEEAECDAFD65877E
              3C8B8F9EFB00D9E8DDDD2E836AFFC24B26B2E7F1D0960789B6B6CF5B65A25A5B
              7611A11C0B07FD10D1D4FC190907EAD34F8858AE393D7F01DEF2B1EE948327BE
              13CF65E699D20FE31D3B3C7459963D3BF4A7CDA6F185FF234359969B3EC4A20B
              CDE84558FC83466359961BB763E17C137A310C37BCCF9265B9BE01A61F31A11F
              C52E345B96E5F7607A099B9E07B3EF62D36E5BDDD6DADA77EAB6C1635B36C3FC
              5226BD0C463741A5E6EDEA435555038FEE81F9C798B41D46376A84E7AD6AB5DE
              04B36603CC2F67D20B4172579346BC510DEA75ED786B376870B168CB0A90ACD4
              848A6AACD66B23E5A0A1804517C2FFEF350D7815A75FD146D6C18EC719F43418
              7C59ED5F5B4DD45A75E825D8319D4163CFE21AB57F3D4957A8432FC28E4406ED
              86C132B57F3549AF56875E801D6E065D443FEBE749FA3975680DEC2862D05361
              F059B5FF99525C2E7D5A1D7A0A762C65D04FC06089360F8A717A953652023B56
              32E8BC6C107C5203EA70BA4E1B816BB6C3CAA0B117411B78A06BA15CAB1DF7B4
              818614E683EE84FF1F58AD3DE092AC027FB21EE6D96B483C8CC2E5DAA3AC22A5
              5BE13B0D7B3F6631E97C18EDC65E5F1535C55555C53515F058235C9D502293CE
              2B309823F4C25690342BFB05862DD81D5BD87257074CDB4CDE8DD8A38E9A9B58
              722BFE05E536A1ADF847FB3AEECB811658CC3E71B2B03C6A31965BF0E432D3AF
              A739F82EA6C1F05696601F216866A1F9976A2A7E3268673B0D6EDF44C452393E
              8213C88D8C77A35EDE407EBCA724F0EC0ADC88ACF2321C2E2B2713FBDD7C7B19
              9BCE46DB4BEA3BFF653BCB4A74DB0D8416736E9366BBF4BD086DF6365756367B
              A95B30979577DF982EB0D70D545A21FF6EB7C861EE69E52812D8484B53741B3C
              86EC964468C95D606E06AF862673FE1E92BF844FCE982B89D252217DA74E9473
              96244E4BD6AC6C33D89185B7F0D2FE49E864CBCE9544033FEDBF9B49C670925B
              1717A1FD53DC469D2B2BEC8B286131DA7F3F73EDC4EF4519CB730BA951513A50
              E971C976678ECB95E3B4C7C7A51BC61874AFD63F11972F83B9F4129000000000
              49454E44AE426082}
          end>
      end
      item
        Name = 'icons8-paper-money'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000058000000580803000000464BC0
              0600000300504C5445FFFFFF000000509150438949468C4C3579394A8B4A7F7F
              7F3479392164263D82424F8F4F4285452165265594554993503C804123662732
              76384A8A4D387B3C1E6023488B4A3276364185476699664486462C6F302E7332
              4B8D543E8444256829488E4C4A8C4F3A7E3F367A3B468B4C3579394F8F4F3FBF
              3F4489482E72333C80404C994C408444276B2B226527548D544D904D3B80403F
              84434A8F4D377B3B458A4B3075354185462A6D2E2E72344891483D8241236729
              478C4C488C4F397D3D357838458A4A337738488D51557F554486472C6F313B7E
              3E518E5B40834426692B4A8F4E3A7E4025692A3F7F5F458B492F73344186462A
              6C2E2B6E3048914E468A4B337637377A3B27692C4A8E4E3D813F1F6224377C3C
              3C81424E914E50865036793A307334478C4A1F622320632545894A387B3D2466
              284F9454529F5754A1584D9150418545388E3C6FB77270B67377BC7B27692B26
              682A6DB1707DC280408443599D5D5DA2604E92515599597CC28065AA69286B2D
              60A5631E60226FB57369AE6D1E622343864743874770B5736DB2705EA3626AB0
              6D61A564377B3C589D5C498D4D76BB7A2D70315BA05F2E72321B5E217AC07D25
              682A61A6652F743467AB6A74B976468B4A20632534783964A8671D60225A9F5E
              3B80401D5F222C6F306AAF6D66AC695FA4633275373E81425095542A6E2F5DA3
              612A6D2E5398577BC27F569A5A75BB787FC4826CB27072B876559B5A3E824239
              7D3E468A4A5296556DB37177BD7A4A8F4F2164264A8E4D5CA1603C8140387C3D
              4C915177BC7A4084447BC17E367A3A7EC481599E5D2C7031276A2C7FC58379BE
              7D4E93532467285EA46271B7754488482F723367AC6A3A7E3E68AD6B5DA26130
              73343B7F3F7BC17F529757276A2B1D602372B77574BA78488C4C216425226527
              4388477FC68266AB6A5196544F945463A8667FC5826CB16F2D7132286C2E6BB0
              6E80C68362A7663478381D61221F62246EB4717DC380579C5B296D2E1D602135
              793A81C78478BD7B4C90502367271B5F203F83431E60231C5F211E61231F6326
              1B5E202063241C6022E8BE0D410000006B74524E530000328556DF1E029FF9BD
              10A3FD0C26BFFDB548D7FD70E9810A95F5ED1AB3FD4C3ACFDB60E1300487F1C3
              14A7FBFD122EC5A952D976EB9BF7EF22BBFD6442D1E366E538068FF5CB18AFFB
              36C7FB0881EFA3F9F72A70E78FF34AA1FDD7BD3012DDC358FDFB7C95FB66F1DF
              1A7B7256000000097048597300000EC400000EC401952B0E1B000004F4494441
              545885EDD967781445180770CE925340A262236A041B5810BB6247502C8005C1
              86BD41E229CAA9D1A88806D1886789B8A8275E6289515643204254102126314A
              8C0A1A8CC27A110C0987E048C0C38DCEDECC6C9B996DB7F9E0F3F07EDAD9F9EF
              EFF6E66666374FBA75DB5E5D5F81F46B871DA9537EC03BEDFC6F6786EF707097
              5D6558DD7D867BF4DC4D4ED53FBDFC843377DF4326B5A77F70EFBDB6C95AED1D
              F409DE67DFA46CA8FDFC80FB64ED2F9BEB80F4E103B30FC2D8DF5BB7A870B26F
              9A70BF833B31D5B1F92FF0A776CB87A4051F7AD826EC6CFC63030020B15E85DB
              0FF70CF71F700451DAD6B58254FDBE5669AE5126C8911EE1A38E1E88D54D5B7F
              036AB5C47F9556AFFA059E3E669017F8D8E37EC66CF34F2B01554DCAE43BDE3D
              7CC2893F62F68715CB6916D6F7B06F607F7770F0A493C962F8EEDB16260B40A3
              D23DC00DDCEB9453C94CFDA681A32AB50C26063B874F3BFD0CCCAEFFFA2B0B16
              807A2574A643F8ACB3C934FDB2AED69205A0E60B183BC7113CE45C32B4D54B97
              D8B0B056281371A82D3CECBCF3C962F83CDE6ACF02B0B8196687DBC0175C7811
              59A89F25ACB4450B3FFDE463FCB95530AE3EFC98F0C523166076C1FC8F085139
              6F6EC59CB9E51F1ADC0F52ABA6424C35662BDB48361F860F5DCCAE7DFF3D0C88
              65EF9281A92ED506A6E61D74EE6DD47C0B1E8E1CC58683975C4A84374B5611A0
              78A3ACAB65EA5DC7F09937F0FD2BC7592CB8C76597E3E8ACD763DA178EBE261B
              AAF955DC5142460CB75F81C7A369F80AF5A13B53785937904B4D4F37F88BCE40
              3D09DC7E09278B94C61813AC3D745F9CF782FE07AADC6676E12DCE467D6DA819
              C5D15665C8C61AE02BAF7A1E5FF35C4434FCF0ADCFD2AE2CCF419DD3ABE171F2
              19355CA834AF56E13ED75C8BF3C9A75703533DC572E5E434D4DBF26455DD542D
              BCA103F68DC37086FAD0952B0ACCACFA6DCDF5049D54BEDEE3B06B4A26824768
              E9357474F12C36DC51C3701FAB4EF55D87E0EBDBB5F8642ABB8EEDB2A2A0014B
              8FDE80C6F8462DFD08152EE7C1712ADAF230E9BB09C1376BE91954BA8E071752
              D17CB5EF96209A15B79213331FA2D2120FAEA7A20F6A9DB721F876D2CEA3C7ED
              011E4CCD4B70BFD63918C1C13B50F3BEF012AA26DDCBAE7B2652D1BB75DDE3D1
              CAEB09D52D6D2577857CAB09081EA4EC3E77021FE11CBC57748770FBA22E8033
              A74039B70BE0C038087724B40E7A7A38A9521AEEAD6CE6A5E9C2511A0E8C85F0
              66F5FC7C6F708C018F81B0A09E676C9F8E8A010746EBE032EE954DC59168BC92
              DB5DC080B334B89873595822D7099338915A8182478D4CC1B9FCEF59A69F4F82
              C88B89C54638909D8225AE2B848CC51D9002139CD169099B974028C47B5B34C3
              81E156B0F97E95E28C06050FB580E30C3724388403121F66B9BCE94EC3390658
              D4FDD51163C3BA05BABCD6021EAF83C3CA85EA0333970DAB5B4A4269C41DC1E8
              C242438B2EFCC7EF44D46A7400937DCA06C62FD15586B4254CA268E46A787091
              F1731DC075382A5ADF71BE6BB8D2D950E0C5879F10794E7E3CB491856D60B2F6
              04FD5D58C320210911720C221C580D342CAC525F286D6043D5B2DD0833EC06E6
              AC1076D6152CB25CFA6DDA3D0C1A6997F16EEA01A67F3FCEA6E91A36EF70FC20
              1B16CA27C47857483AB78993595928494C385561CE5562115A09E5D3799F4D66
              0F07F6F8EA06405EC8068EDA1BACD2D6110FF678CBF55D05B35E634D70BEA792
              ECE174EB7F0FE7F8571EFEFFB7BDDCD67F17801A3B66568F750000000049454E
              44AE426082}
          end>
      end
      item
        Name = 'icons8-clock-outline'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C5000002DF504C5445FFFFFF00000000FFFF00AAC300ACBF00ABC100ACC000AB
              C100ABC100ABC100AAC000AABF00ADBF00ABC000ABC100ACC100ACC000A2B900
              AABB00AAC100ABC100ACC000ABC000ADC100ACC100ACC000ACC000ACC000ABC2
              00ABC100ACC100ADC100ABC000ACC100ABBF00ADC100ACC100ACC000ACC000AC
              C000ABC100ABBF00A3C800ACC100ACC000B0C400ADC100ABC100ADC300ACC100
              ABC000ABC200ACC000ACC000ACC100ACBF00ACC000AAC100ACC100ABC100ABC0
              00ACC100ACC100ACC000ABC000AAC100ACC100B1BC00ABC100A9C200ACC000AC
              C000ABC000ACC100ACC100B2CC00ABC000ACC100ACC100AFC100ADBF00ADC000
              ACC100ABC100A9BC00ABC000ACC000AABF00ACC100ACC000ACC100ABC000ACC0
              00AABF00ACC000A9C200ABC100ABC100AABF00ABC300ABC000ABC100ADC200AC
              C100AAC000ACC100ACC100ACC000ABC11FB5C74EB1C058B2BF4EB2C020B5C7A1
              D8DFC9E4E72FB9CA3ABCCC74CCD74FC2D014B2C5A8DBE169C9D5E7E8E982D0DA
              7FCFD9ABDCE150C2D08E8E8E7070707171712DB9CA6BC9D5E4E4E4393939D7D7
              D7BFBFBF4949498C8C8C010101C4C4C42B2B2B003E46E1E1E100A4B857B1C0BE
              BEBEBDBDBD58B1C04CB2C1E2E2E200404800A5B9004149050505DFDFDF78909C
              4DB2C132B9CA474747000303E6E8E832B8C921B5C8C5C5C5090909C3C3C3E8EC
              EDA1A1A10707079F9F9FC7E3E7464646020202434343C2C2C2A2D9DF2EB9CA93
              D5DD95D5DD3BBDCCD1E6E8DCE9EA75CDD777CDD7D3E7E9D5E7E94DC1CF15B1C5
              D7E8EAD9E9EA70CBD67ECFD992D5DD93D4DC81D0DA83D1DA01ACC16AC9D5EBED
              EDECEDEE6ECAD63DBDCD000000E0E0E0D8E8EA40BDCDA9DBE1DEDEDEEDEDEDAD
              DCE216B2C54EC1CFD4E7E9D6E8EA51C2D00BAFC376CDD8DDE9EB78CDD76CCAD5
              D2E6E96FCBD60CAFC33CBDCDDEE9EBDFEAEB94D5DD3FBECD02ADC1EEEEEEE9EC
              EDCAE4E8A3D9E06DCAD531BACB03ADC204ADC24AC1CF3FBDCD30BACA23B6C805
              AEC200ABC000ACC1E2A05B4E0000006D74524E530000001E446A7E8999A56A0C
              488BCBF5C90A0E64BFFB6242A9F7A7404CC7C74AD1CF4018A7A366F1EF640EAB
              A50C32DB2E46F3425AF95668FD5AFD46F5F1DBD9A9666216A33ECD4AC5F7BF0A
              4889F31C1C447C971A87BD603EC5C33CA118EF145ED7302A54F954A15ECB6099
              68073386B6000000097048597300000EC400000EC401952B0E1B0000058E4944
              41545885B5D9F95F146518007067459605448ED5CD834CB0045A942344403315
              EC508CB0C3AB8CECB4C3EECBCA0EECB2922C8BECD04A4352530BE9B00B0D4956
              3323130944C31D0E419676FE806677DF6B66DEF79D77E1D3F303ECBCF33E5F86
              7767DE798F4183FEA7904CC332386448A835CC660BB38686870C364F904CD988
              C8A151C3144D0C8BB646C60C848D8DB30F57A831DC3E22B69FACE3BC91743310
              23478D0E9EB58C89E79981387FAC2538D6718139EA8B710941B089E3C55035BC
              17268AB2174D1056D5484A1662532EA6E4FEDBE7E93D77AED7D3D74339E94C35
              67274ED225759FEDEAEC689741B477747679BA755526A599B1E9DA7BDF7DA6ED
              1FD910A7DB4EB935D53232F9EC255964EDD6932D4633102DCDAD64CDACC93C36
              DB4BA27F9F66A1BE683AD148549E92CC667348F5F85F3CD417C7FE24AAE7E6B0
              D83CA2051AFED019477F57E3A8AEF04803D10E0E3A3B712AAEF3DB61FDA51D72
              A971485F7AB81EE74C4BA3B12997E21A077F35FCC77456AE3B80B3A64750D8CB
              D0E9DA5F280DC96065797F2D4AB419D91958DD474966B3720D7667EAD944DC0F
              ECA7E57258F967949A344BC7E23EEB276A2A8F959B5172BE9675A013BD75C1B3
              75E87EF01690AC05F5DA0D3FD233B9ACFCC3F7307FB68560C7A08BD53F0562AC
              7C040197132C7A6F1D67E599B0F25E285C8159D4B2ADDFF597FD16F53B058845
              4FC237CC343356FE1A1AE3211B7B25BC584E4F68C656C3CB9D9A02D838F8874E
              B2B34C59B90B2A23007B15387633DF0522EC1EF81EB207D80838CEAAE72499B3
              721560B2E6F8D9B9F0EABF1A18FB2574D2FDEC5070D44D79C706C356C35628F4
              B351E0E82C2F478095770328DEC75AE0C8E0E04059D891CDF3B157C326E91C28
              BB0B4A452A7B0D3CE8E0A5ECFC6287CBB563FB4E5E9D6D5072A8EC10F0B9A79D
              93F179A5CB1F955B39952AE0B82F5C6543C1E73E4EC2674075B9B66CE654FB14
              50C52A0BEFAF4F3E0641A9BFDD276EDAE4FBB991721A667E0428ABCACE079F3F
              FC008431EDFD0DAAF75E79F9BBEAAF0DEF18CFC3CCF5809AAFB236F0F96D36FB
              96EF5ACB15A5DC77BDEBD8EC9B80B205C79605C1C24658CF66D7FA1BA1ACEC8D
              201A41E42BDB88BFB2D729A7695F99C80DF6DA167883B9D6BCCAAE46DE60E122
              8FC3D64A01173D0ED92A1B22F4F06E7E456DDF357C57F3F00A7635F2DA752FBF
              F422D7455DCDB5E21DA33F5673DD5200F93B46291A1C79CC59BEFB0280FCDDB8
              640547DDDCF992B98B5E3AD7F9D948D8246D022CC7AD814E9E9F8D117AA19BBB
              5580012F74C90E8EB9C30F53770F9C425C0F463533E1D5F3064B46F7796D291A
              E9DF00D814B8D4C31BDA19DCE7B4657868970A07A2A3E01FE20C44F5AE4EA50C
              44A5D1B0A8913D6CD6B9CFEA0AF0B079011EE42F8465AB045943A041FE2262EE
              3016162ACFF44FC55392487202350E963618A6E622812750519AE95E025AA038
              C398EEF1A2EE14CCF62ED64E4E9DE8BF604C4E798127FF4B7473DE1BA7A1534F
              07ABE2A9F44D4BF5137F342F614CFCD9B10F4FFC6F362E53D8B04B5BA660C653
              58CDA7AC7EA44E47A79503C6EF6DA56F20B0D2505CF724CE2A89A1B0D22DC48A
              65BDE13EA3B39A25A065128D951CE48295FEB9A0B24F3C8E33580B5692943305
              D7521E3B66C6B6EC25AAE7DE2AB1582999741B4F34F1D8EA47C9C5C0DC3889CD
              4A93B54B975D2D2CB6A5994495DB6E9778AC949941D656DC556D4D46B6BAE691
              5A4DB509BA457DE3B2705A89A20DF7C3A5BB1EAA806CC5B6074B77BB75554A96
              4966AC14E1548CD1F380E7FE152BEEF3DC4B5BC4BE23426F5097DCE39228B9CC
              48BAD328D0370866E57BCDB94078972CA500ACED8C82D962EA5D8BA9E9EC3D9D
              B90BCDD145918C64DE5651828DBF55E45CC04C35D9D85A6ECFA29B59F6E5299C
              44D36DB898F4C2E8795A3223BE306F0E3F4B68D3502ACACC2E2E0C733AEF2E2C
              BEC751249010DCB6A578FC078923A3C2F9DA402B0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-hourglass'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000270504C5445FFFFFF8C6C668D6D638C6E61805F547F5F540000006D4C
              40CFD7DBCED7DCCFD8DBCED7DBCFD7DCCED7DCCED7DCCDD7DCCFD9D9CED8DCD0
              D6DCCED8DCCCD8DFCED7DCCED8DACFD7DCCED8DBAAFFFFCFD8DCCED7DCD4D4D4
              CCCCCCCFD7DBCED7DBCED8DCCFD6DACFD8DBCED9DDD2D2DDCFD7DBCEDADACED8
              DCCDD7DBCDD7D7CFD8DBCBD6E0D0D8DCCFD7DCCED8DCCFD7DBFFFFFFCED6DCCE
              D8DBCED7DCCDD8DBCED8DCBFBFBFCDD9DCCED7DCCFD6DBCFD7DCCFD9D9CFD7DB
              CFD8DCC9D4DFCFD7DCCDD8DBCED7DBCED8DBCFD7DBCED8DBCED8DBCFD8DBCFD8
              DCCEDADACFD7DBD0DADACFD8DBE4A767E4A563DDB588DEB383D4CDC0EF891EDD
              B587E0AE78F0881DD1D2CDDBBB98E79E51EB9335D0D6D9D1D4D3EF8C27D3CEC4
              F18719F37F09DABD9DD3CDC3D8C4ACD1D2CCEC9031E4A460EA9740D2D0C9DABC
              9BF28412F37F07DFB27FD3D0C7D5C9B7D9BFA1F0861ADDB88FDEB487F18618DF
              B180D1D5D5D3CEC5E5A15AED8E2CE99947D6C7B4D2D1CBE4A662F38008F57D02
              E89D4FD4CCBFD1D3D0E5A35CD3CFC6DDB68BF18516F3810CE0AF79D5C8B6EC91
              32EF8C24D8C1A5CED7DBD0D7D9F47E05E5A25BD0D3D1D5CBBCEE8E2AF0871CDA
              BC9AF3820DF47D03E0AF7BCFD7DBE1AB71E89A48E3A869EB953CD1D5D3F3820E
              ED8F2DEB943CE89B49E79F55E6A058E79C4CEA9742F0871BF47E03EB9236D0D5
              D6DABD9AEF8B23E79E52DFB281D7C4ADD2D1CCD4CABADBBB95E4A766EC9337F3
              800AE6A056F0881CF28310E79E53DCB88ED2D0C8D8C2A7E2AA6DEE8E2BF57D01
              D9C2A6DBBC99F3820FE79F54DABE9ED0D6D8D5CBBEE1AC73EE8D29F57C00E998
              43DBBB97DCB993D0D6D7D5C9B9E2AB70CFD8DC6D4C418D6E63C30E4DAB000000
              4C74524E530028AB3CC5C700F1F1E3E1C3C18F8D3230B92CF9286E6AA19F02AB
              A9060483FD7E46E74416B714F36C1AA71842D5D540025EDFDF5C680458CF6C60
              1AA77018B748E98381A5ADA1FB2ABB3091827AA83A000000097048597300000E
              C400000EC401952B0E1B00000316494441545885EDD9F757D3401C00F0227840
              AB62C1164BEBA0A0150505D48203F7DE7BE25EB8C5817B2F2CB8B5B807221541
              1414945215514F2DA2FF929997DAA6E95D0A4FD17C7FE84BEEBEDFCFCB4B2E77
              49AA52B57A84B40B2A42FCB0A13F838A5085555849168DDBB0F604111668DC02
              3EC27F1044382A535885FDA36C4433414428ECBFCB4652D9DF9B0282EE6F5FA9
              5F3536ABA1B2BFC0CF9F3E4A988D1F1ADEC377D446076CB62395FDD60521AC77
              D6358A996F5ED7D650DDAFDCD476276C368A2E7D0999A8AE7AF1BCD22D88CF2A
              CA9F96B9982ED713BAA133360BB454BAA314A2785C52FAA8F8E183FBF7EEDE11
              1AA19356B5009F8D8EA10A6EDF829271935663BA10B0404797386E48A0AE22E6
              9CE801090B62E91AFBF56BFED4AB5718B52B20630D714C59DD6571F5D245A6DB
              682064818939DEE60BE75DBE686151017BACDD00290B54DD6D4CEDB97C6FF5EC
              19A6A3474FEF0A1C168078337B3F9D3EE5899E3C61679ACD09DEF9982C48D4B2
              B7C0F163853C5AED3CCAB6F5EAED938ECB0295CEC222470E1FA2D18307F6B3FB
              963E62D9B82C004946EEA6DDB7372F6FCF6E6EA76F3FB15C021680E414EF89A6
              FF00F14C2216A4A6A57BA20307A5FA492463A931AC572374B0C96F1A290B8035
              2393463333AC12497F096B1A824E825ADF5227C13A54ED79C9D2D35AE49225F8
              0CB094E4A0D961466F948EE14941B1AA2C8B60B93D164A8B2E889B7784568076
              EDCC2DD95120EC8F4C94CB8E1A2D28DBB7D1534DD956A1C51C2F8B558DB12162
              4B153F31166F468DB6B132A671D338546FDFB45198C5733608071C6B22650DE3
              51F1FA75BF2D39AEB50ED41547BA440AC75AE9B3F8AE598D3A2790B159A87055
              8DEFCA9BBF1275EB48D8E8897CD98AE5BE2A84CBD0C36FCC240276325F5521AA
              42989BCD67103CDA45F135D939E22A844B97F03953B0D9A95CC5E245FE540817
              F22CFE63B386AB28F7AF42B8804BD260B3916CC17C914120C43C6EF84662B3DC
              0BD45C2915C2396C16F17BD96C69B65E1EDB24AD42384B163B33103B43163B3D
              103B4D165B1B886D2064DBD6B71A85FDCFD956FA88DDB6BEE42B6C9B635BE94F
              C3168C5F4FCF38EE4AEAB4B40000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-active-state'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000216504C5445FFFFFF0000009E23AF9D25B09C26AF9B26B09C27B09C26
              B09C26B09B26AF9C26AF9A24AD9933B29C28AE9B27B09C26AF9C26B09B26AF9C
              27AF942AAA9C27AF9C27AF9B26B09C27AF9B26B09B28B19927AF9C27B09B27AF
              9C26B09B26AF9C27B09C28AE9C26B09B25AEA128AE9B27AF9C27B09B2AA99A28
              AE9C27AF9D26AE9F1FBF9C26AF9B26AF9C26B09B27AF9C27AF9926B29B26B09B
              26AF9C26B09B28B1993399AA2AAA9B27AF9C27B09E29B39C26AF9B27AF9C27B0
              9C25B09C26B09A28AE9C26AF9B26AF9C27AF9824AE9B27B09D26AE9C25B09B26
              B09D24A99622AD9C26AF9B27B09C26B09B26AF9C27B09B26AF9C29AC9A26B19C
              26B09B27AF9D25B09B26B09C26AF9D25B09C27B09C27B0992AB29B27B0A91CA9
              9C27AF9C27B07F3FBF9B27AF9C27AF9B26AF9C27B09B26AF962DB49A28B19B27
              B09B26B09B27AF9C27AF9A26B19A27B09A26B19C27B09D25AC9B27AF9B27B09B
              26AF9C27B09926B29B2CB1A22EB99C26AF9C26AF9B27B09D26AF9B28AF9B27B0
              9B26B09C27AFA025B39B25AE9A29B19B27B09B26AE9C26AF9C27B09C27B09C27
              AF9B26AF9B27B09C27B09D24B09C28AD9B27AF9B28B19B2AB19C27AF9D25B09B
              26B09B26AE9F2AB49C26AF9B27AF9F27AF9C27B09C27B0FF00FF9C27B09C26AF
              9C27B09F1FAF9B26B09C27AF9B27B09124B69B27B09B27AF9B26AF9C27AF9C26
              AF9C26AF9B27B09D28AE9B26B09C27B09B27B09B26AF9C27B09B27AF9C27B047
              987926000000B074524E5300001C446A7E8999A57C421C0A4689C7F3F3870C60
              BDF9F9B95E3AA3A1BFBF4038C536129BFD1258EB5608FBDBCDBBB128D3CD8D52
              04068DCF24EFC16264ED4CF5F58F228F485885141687F7FB564EB11E20B34C36
              ED5050F1C31EEB08D19704CF81976E831038C3C7C9C54E5442B522F7A38B0C14
              160A915CBD6266D18B521A282AFD68DBDD7CCBCBDD682A2CF14424B75E935C18
              A14020C934009B85E91070959D06EF6691DF93E9953E9F5A7AA51A932BE64D00
              0000097048597300000EC400000EC401952B0E1B000004A9494441545885B5D9
              FB4314451C0070BF1C7084C871D00112F246797840E69D4724DD01768292A247
              862069A65E044A0F4C5330E9A1620551969A5959D953BBFD0FBBBD9BEFCCEC32
              FB1CF8FE74BB33DFCFDDCECECECECD6CDAB44101D691E3C9CDCBF7161478F39F
              C92DDC6C23C1922DDA52EC2B5134E1F7957A8A64D8B26703E58A302A2AB796B9
              64AB9E2B119BD928A9AE72C17AB69999D9A8A975C8D6F9AC5135EA1B1CB08D4D
              CDF6544569F66EB7CBEE68B18BAAD1D26A8B6DF30A72DB77063B3A3B3B823BDB
              0585DE366BB6EB79FD65EE7A617757088BC35DBBF744F44D14E9B662AB5ED424
              A47A5E12B45DE3DE9E94A65A6F9D39FB7294AF1DEBEB5F6B66A37F405333BACF
              8C7D856FBA687CBF11AAC6E0D001AEF2C16163F6555E3D74D80C5563E40857BD
              FCA8119BE0AE6BF4352B548D63A3DCC525C46CD7EBACCE989DE12F1DC7B9A771
              9CF5078E9D38C16A4CBE614F050835B1AC93B4FF722C579E671755E314CB7B73
              2DBB83959E76A2029C6699F81C53B6B1C5DD6F55E32DD6BC67742C6B8249A72A
              C0A4BE19903D4B1FC673B6EF168B5012B39B1B34ECDB78BE25C7B90A70B817F3
              A778D643AFE21D372AC03405663896BEB70EB95301CEA310606C159E8B5A8E03
              467161168D3ACABE8BA7E26E5580F7D0A846F6FD183913FBC03D3B87C364C945
              C26EC52FEA73AF027C88CA25C25E26C7A91119B61FBB7E65962DC279568F8C0A
              3045988A890CBB057FFD4772EC15743C19B6141F3CD1FCC441ECC75618CAB038
              C09F945301AE1228996171BA392FCBF611C8AFB239D824B65E8A66B180D2B534
              5B88071FCBB2D7519A49B3B9E4737BC83AD13CC28B84FA24CDE691CF9FCAAA00
              9F11EAF3348B63C40D79F626A1F2D32CBE886AE4D91A424DA6D902F2D9F508CE
              02E764051BC7AE63236CE31A611D6F5990BB65EBD8C16E711D6C031E8725FEE1
              BD2DCB7E81526D9ADD8C07C76459CD504307C63DB2EC0081BECC8CB7382F8BC8
              B2389D4F6A5F3A8D72EA20BE74E219F62B6C92BD72EC123A851976A2821C8EC9
              B1F584996DCB4E3F3AC871EA828CBA8C6DB04266355FE3AF1F90615751F986B0
              65D8C5A2A67F72CDE35B9CDAF9716A07D5F84543EE593A11BD03C8D6E1A9A8EB
              C9DD329D3627280B013C77C42DBB82C265602C1D6EDC0E0CAD14F88E63699F53
              7A8FBB51BFA74B31E7806713745527E962D80DDFC5ECC57B1A16D82A95F33FA7
              F77FD0275376FB382D7AE0942DA5A93F3ED4B1304CCB9CFEF1FF89652E809EE5
              9A4139E500BDFF80E5FD8C2739B62DC2CA9B6CDFB7D02F2C6BD723010BDDAC79
              159FCD7E367297E58CB301D078C16ADA8EDAFA2BCB305AB00238CAAF849F375C
              08C4585EE1AA97F3CB81BAC5C0E1835CC503F37366E8DCBCDDC540807D318587
              578D972E57795489992E5D029CEDE56B2BA9FA2B82A17DF0B7A4A696329AD056
              58BB2CDC1DD16628A9AB030BB7C3581CBEBEF0FB8994AECACD65B062C58BD88B
              8F8381CECE40F0F1A2A0F08F477A43B8E43E3D2EC8358C3F055D51BC4170C66B
              7F83E0AF8702C0683BA361CA5A5463EC9E30DD78F3A5B6C61AEDF8DB20D974AB
              E88EF956D13F09C3548B8DAD4B95B36273B6F2DF8B268996DB70139EB8CFAF25
              FDF5F1C235FB220ED94C5C9B597A52EC7DFAD45BFC6469E63F1B090EF72D6DC7
              FFF3273204083389A00000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-image-other'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C50000020D504C5445FFFFFF000000F57F00F57A00F47B00F57D00F37B00F47C
              00F47B00F37B00FF7F00F47C00F47B00FF5500F57B00F57C00F47C00F37B00FF
              6600F47C00F47C00F37D00F37D00F57C00F57C00F57B00F57C00F57B00F57B00
              F37B00F47B00F37C00F67B00F57B00F47C00F57B00F47C00F57C00F67D00F47A
              00F47C00F37900F27900D45107D14D08C94709BB3B0ABB3D09B54506B74806BE
              360C9C2C09A32F0AAC310BB3330B942B09BA340B972B09C1390CA83608E26404
              DF6A02C1390BC63F0AE36504C2390CEB6F02D95906E26304AA3C07CA5804CF4A
              09D85507E77101992E09AC3E07F27801C7400ABF360CCD4909CE5B04982E09E9
              7101EC7002C8420AF17601AF4106D05C03F37A00EB73019B3008B14206D35F03
              9C3108EC7401B64606D66203EE76019E3308B74906DA65039F3308EF7701BB4B
              05DB6602F8A744FABD65FAC06AF9AD4CF68813F07800A23508BE4D05F9AF50FE
              F1B8FFF6BFFABE68F57E03DE6902952B09A23708F17900FABE67F57E02C15005
              962B09E06B02F89C33F9B458F27A00A53807C35205FCDA93FEEEB2F57D02E46E
              02972C09942A09A73A07F37B00F58108FFF7C2F79527C85604972D09E56E02F6
              8D1CF8A23BF47B00D86403F89B31FEE8A9FFF5BFF6840CFAB559FBCB7CF58006
              FDDE9AFEECAEF68814F6860FFDDA94FFF9C4FDE6A6F78F1EF57D01F8A641FCD2
              87FEE8A8FEEAACFCD88FF9B051F57F05F57C00F47C00AD2FC8B40000002A7452
              4E5300001A4C626642C3FD40049391029D9B5E5A04E3E1444285839F9FA58544
              DF5C569B998DC1BF3E184C1630E0CCB1000000097048597300000EC400000EC4
              01952B0E1B0000029D494441545885EDD9E75313611006700208018905B1A262
              177BEFBDF7B3622F28166C88150B56B0AC15140B7663C176FC8DDEE5BDF2967D
              2F1C6EBEDDF3F136F3CB4C9ECC4E66939515254A46134B253B27B7CB7F273727
              9B690E9B97DF6E92249E5FE0B1855D694C96A284C376A3544DB33B637BD0AAA6
              D9D3668B7B51B325C516DB9B5A35CD3E16DB979EED67B1FDE9D901165B4ACF96
              462C01FBF7CFEF5F3FDB7E7CA765BF7D4DA6F2E53325FBE963D2C987F784ECBB
              A497B7746CEB1B9F7D4DC7BE4A72E13FDD0EB12F5B3483173CFB3C24DBDCF44C
              3379CAA94F1E87631F3D8407F7F1D1BDBB3EDBC80F3AC03600C09DDBF8EC96CF
              DE0CC7DEB86EB1508F0FAFB5B9EA55E1795AF6CA655B85BA4BF8F8E285F3367A
              EEACF8382D5B0B2C676A342F387DEAE489E3ADD2C3746C35B83916F4E672D2B0
              478F782C1CA663AB7C150E1DA4622B81CF012276FF3E8185BD34EC1E5185DDBB
              84F1CECEB13B40CE767E5CB16D6B67D82D9B151636F9E3F68DC686F5E1D99675
              AA0A6BD778F3D58661ACD2FDD6D6B32B11156085BB7A971B769685659B9B5016
              9CD5BB74498A35168763AD258B87ADDE8A454C3516E2B5E9D8068DCA56AF5597
              1BBC360DCB962C9E7A56971BB4369C75962C9EBA05F30D3E586D385B1BA002CC
              9B2BB0586D285B1DA8CE992DAA586D18CB2F5935B3661A72D4DA30B62A488519
              8A8AD486B09581EA7444556B535979C98A99361565E5DA54565EB24294BA34B5
              29ACBA64B92075E1B5C92CB664FD6075A1B5492CBA64BDE07561B5492CBE649D
              E8EA426A13D99A2993033269A29809E3C58C1B1BF04D2049C4466CC40A6C860E
              5603E959FBBC36889ECDB34F9725D4EAE042FBD05A46CD0E6167E1A1B4EA30E7
              DA9C28A2548727BC937BC188388D191F398ABBE4C762A3CB29FE20281FE3FD41
              10254A06F30F4F56FFC1AEB4CBE60000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-latex'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000CA000000CA0803000000D3BB2F
              9A00000300504C5445FFFFFF3C3C3C2020201919193F3F3F2626262D2D2D3A3A
              3A1E1E1E2929293030303333333B3B3B3D3D3D4545454A4A4A48484842424238
              38383636362B2B2B2929293434343333332626263434341E1E1E232323D4D4D4
              9C9C9C9494949A9A9A3535351414142929293C3C3C2E2E2E4040403E3E3E2F2F
              2F2323233333331010102D2D2D1717172727271D1D1D2121212222221B1B1B28
              28281515152F2F2F0E0E0E0909092D2D2D4949492A2A2A6161610404040D0D0D
              A3A3A36565650E0E0E1313131E1E1E1212122C2C2C3B3B3B2727272D2D2D3232
              322727272D2D2D2222223D3D3DDFDFDF7777773030301212121A1A1A26262644
              4444BCBCBC7F7F7F1010101A1A1A2929290F0F0F222222272727202020313131
              2929291A1A1A1212123232323939392424241F1F1F0909092424242C2C2C3E3E
              3E2424242F2F2F2E2E2E2323232323232121210E0E0ECACACACCCCCC85858530
              30301818180505052323233E3E3EB0B0B0000000A5A5A53333331A1A1A151515
              2626263131315F5F5FCECECE5F5F5F161616BFBFBF4141415D5D5D2F2F2F0E0E
              0E3838387474743434344B4B4BAAAAAA6161612222220B0B0B8A8A8A3C3C3C06
              0606404040FFFFFF2727271616164A4A4A1414142E2E2E2424241C1C1C232323
              2B2B2BB6B6B65252526868681C1C1C5D5D5D2727271616169999991111112C2C
              2C1414144141416767670808081F1F1F1010109F9F9F24242458585855555519
              19192121217F7F7F1414144242421A1A1A4747474747472E2E2E1818184A4A4A
              3636362828281717175353530D0D0D2A2A2A4C4C4C8787871B1B1B1515154343
              431515152A2A2AFFFFFF1616161C1C1C1818184848482121212929292626262F
              2F2F1515156666665252520909098484842C2C2C5C5C5C2020200E0E0E5C5C5C
              1717174646466A6A6A0D0D0D2121212626267272720707072424240D0D0D2222
              221010102121213A3A3A0E0E0E8888881C1C1C0C0C0C02020211111104040406
              06060505050A0A0A1414141313130D0D0D0303030707071212121515151F1F1F
              0101010B0B0B000000B7DB4361000000EE74524E530044F7E92C8B877E626262
              62626262626262626262687487875CC1A3061E1E1C2687877E6C62878156A78B
              A18F9D959799939D8FA38987A364AF22FDF50E34E540F59BA7AF87664240F59B
              A7183068DFD36A341A02E3CD56E5C9AF8F8F7C726C838F93C1F1A78F8F76838F
              97B3D5F11C042E5EBBFBA74E1A001054C7E79F60322420CB044E3070D77A227E
              4402368BF1306CF93E0295CF52E385B7918389063E16BD4A81D704E77ED7851A
              FDD3EF089B3402BF4C04CF50AB6E857CDB405CB7CD34FB6C3410D7D785DB7204
              DDC5BD549989A560D30444FB187C24E1EB42DD4C1EF3A7B51CFD8BE5ADEDB138
              DF0EBBE419A143000000097048597300000EC400000EC401952B0E1B00000B37
              49444154789CED9B795C16C719C797504F90785445A2588CB6A5D258AD343522
              4D4C1B1B1BA322B65A148D124B526F52A20DB1553C62A5521153536FE3918A12
              B5AFBEAD27C460B56A130F5E62628288B5C14A5F3945C8FA648FD9F7DD6366DE
              05F201FE78BEEF1FECCE33333BCFFE66679E995D040141100441100441100441
              1004411004411004411004411004411004411004411004411004415A007E0FF9
              7FADB9DBE08B56ADDBB46DD73E20B04350D0C3411D833A75E8DCA5FDD7BB76EB
              1EDCC3902D04E01163C19EBD427B29847A7EFCD3DEB6DAF38DB03EDD1FEDDBAE
              7DE70E9D3A760CEA171810D0AEED375B7FCB9BE1DBE1DFE91FF1DDC7067C6FE0
              A0EF0F8E0CFF4178E4E33F542D0F80C110FD059E180A1035CC70CD68915592C1
              8F6CB9F224B5EC53DE0CC3ADD6A755CB177575B5F78D969A7BD57555753FD65F
              E02772FA33866B8EA8A7275065CB959F56D5D5569A8B563CEBCD30B2DC642CBB
              FB33AFF5B951CF8FD60C63C6C68CB3D41F3B5E36FDDC90F60BADA609137F1937
              6972FC94A92F4C9B5E4112135E9CF1ABC429535E7AF9D73367CD76AB69E5736C
              F9223177DEFC24AFE6AFFC26F9559D71C1C2DFBEA619C594D717FDEEF7A6D28B
              89324B5269752F551BBD4C9FB65C495BF1C64A7DE21FC82556E9D2D2FEB83A5D
              49FC935D5764D668373F63ADC596B94E35BDF9676AD1F5AAF52DAAF12FAA7183
              3E6DA3ECDCA6CDC68C5BD4FBF5FF05C6E4ADDBE4D4EDF5F04410DE26AEECA0D8
              76EE9255DE9D492FF98E5AF0AF34DB9E2CF75ED9B82F5B97F8AE9430D59C73BF
              EA4AB5C915E1C04129F56FF67C20380EA92D721FA6189DD26DFC3BAB2471E51F
              34DB11387A4C69E3715DE2098093E6160B39AA2BB516C3E25C80F7EC78E0E554
              96DAA409EF5B4C997900AD98054FABE5FE49B39D81B3FF3A275BCFEB122F80F8
              6F4B4E962A82F001401F1BEDD7F321E962172D964B225CBEC22CC751255F7415
              081F2983D0556FEAC7F0499A252B5315E19A08036D39E025FB5332467E663214
              5E07570EBB1C479522B82108C53765F37FBCA9B7E0BFD6AC6C55523F87123BED
              D7739B8CEDFFBB634C2F05D8CD29C656E54AAE283F79CA2896E21122AD1ABA59
              F3B255119260BA3D07749041173E30A4AE1161492CA7D469A62BDD20452E98AC
              D8976AA90B2BE098352F5B15A9E7E7D974C04BDA78B555157EBAC4982870EDE7
              9562AB320636CA7F7A2A334FA996BA47AC78D59A97A3CA7C7D20659711656AB3
              463B3C49B152647B845B88E9CAA99A9BEA84DE4AB6676893FB3591D6B21CB62A
              C7C0651D267C328874B1759E94E745D8CB2FC374652424A90785CA1DD246D464
              91D65F38AA14B8CBAD13844F8A77912EA6F5E69804705DE51661BAE248874072
              3851CEB09EDCDA406F5FD3C17125F59E5868DB032F876BD4869D09554ED34240
              A40C3706588F7D07D8D5931CF690338864906F0311945A388FBDE02F5A03431B
              0C215D2C4E3993BA570823F4F2C052E5BCB7C99B67CB39C8ECB01AE229B5D055
              99334EFEE5C1F6711273C88F60393505A842C1276ACB86C64827577321DD47F7
              62AA125D51E1ED1671728EAC02E5B8387A14A516BA2AC3CB6444A829B341A2B9
              CEE364BD337AAB103B1DC4CEBE3C61A9B21A4E7A4F9629FDF62CA716BA2A9435
              2C9BC72C953A89659234C56963100F7AE092ED0FFABB7052CE729A530B5D9527
              5F889FB4C199E759774F88D814BF3B3E313E3E714AEB29DD5FDA1451F4DA7A6D
              FD49696B71826AB9F970065CB73174D0554916AFEB3727BACA59DC31EC5A3823
              98B42E8B52AF917B80622CE83B4BED4847ADB600B2002E03B7EFEEC552A5D4A8
              77AF5C398F6917490F6F0493E35285598CC2F9CA0643DD5C8B21B354936C26D7
              07025595795930245C4F8A9C27CAC1A8C3872A423CDF1575DD9C156A359C225D
              CCBDC58E2B545536D29F4CF61CC5578554F72CD528E3905BB18C62E846BAD879
              7AC54668AA64FAC3F4A7651E577E324A1CC10E71F9AA6CF4A18ABA08EE47494F
              3BAF1615DFB0E10A6D5EF1131F149BB28D9533D5E4B06A69A42ACAC0FB112D3D
              C7A5964D58CC294CA0A9520245E66C054A952359B5D85285E7CA3111FAD3D2D3
              F248E72EF515B6505D59F9C06D5E5593F92ADD1C5D6834DA95B4146A982A1CD1
              9E53319066364071652C9CB1DE82C34A63BB306A69B42BC2455841ABD70509A4
              8BA5EFE11597A1B89247EBB6A9CA1A95B5F869BC2B97609F35D17112C42ECB89
              2E3E773BAC8FFD7E91448E94F694D1464CE12B78EC855162D6304B627779251E
              BB8474B11E94627AACAA14D1B7480A957DE9753453E3076341987B57B484DCA7
              5C902EC55E3164BB72DF565E059429F2895CE36653E876B27D1D22E7FB9CBAE3
              DF3055562DCFD79DE5897E26FBDC25E00E900FA6922EF622DF15B32A770E8271
              28F6834FD583458ACA41D45A1AA44A1C0CD69D25415B933D51DBE871BCA95650
              93CC75C5A88A63E951E9A4BCCD4E6F860038A4FC0D5583C215D4B9AA41AAF4D7
              DEC0290C30AF58A47EA5AD1C734817BBC5DE30160CAA143B67551329F74DF4CC
              2C6FCB226D38B1F72E31B9F24E38879B03CB06A9E234A832EA9AE1E59370608C
              2EB40F2617376E579AD0A9B290AC4015DA68191E811982B0020CDC37BBD22055
              2E185431F3966E1F51D84CEE7899F979D2A353C5D127D8FBF33C911361B914A1
              0607EB6C7D5AEF34D5D2105562530CAA986BCC8204DD17035B86AA758CCF6617
              61EF19AB6456C12576698D86A8B2BF86A3CACE31A650457BE9C2980D64786FBD
              640ADDB08A65F3D280D93EB60438AEB406D3ECB6F39C5AC950F6A69A2F553A83
              7B25CBE6A5FEAA84AE1339AEC4DC84EBA6986B2DD9D038CDDC81F6A5CA4CB8C7
              0A8775D85365CEE63932C3B616FA7DA884742C57422F83DB12A6C4912E16CC6A
              840F574273C1DFC662D4962B35958472ED5302962B7DA87B49E4A5CB2B8C38D0
              972B7DE92FD0CD705E4A08CCAD02A62BF2E448D9685A4B5EBA5C667413BE2B8E
              14806DF65DE1AB92E254195EB224A586E3CA951DE0EE40330C207780F1C688FF
              D84B4ADB7AC15BDFC77EC1A869594C5736017D452938481763BCC7E3AA32421E
              35E2382E6834608A1C91C170E5F67DC88AA65F66298947E86F57892BD44F1046
              283B6A5DD91E78B0F5AC98A6C844BA2B31B700BE605DE722E962D41D39F21515
              E51B97D4F79455B548FFCCC748BEEA4AA575B354861EB81454D202173FC91328
              63A8221493C92581D2C50AC9E76433CC86D4E3E4B3199155AD9E69E46E519F56
              563879CEAACA9E916A5B0FDD315B54D66863DF8A1C53730BFB6921EFAD6BDE49
              74AE237AD1C05D5AA19A857C2F7A3A0A3B956A3175C6BB878BB32D0B4D46909F
              6450A56771FED90B9EEFF446075AB790DF4F2EF5C6EE51C1D7B41C0FD5D545B9
              7451BD78B3B64EA5D655A1FF3CB296E9C409297375549621B7545179D6EC2AC9
              126E71C5AC4A914E95E86A5799B19E0A7F63EE9CA832305DC8555D27D7C9FC0C
              D4CC7AA62B3BB8E574AB6A862AE13A55B65B2B4830E6BE4DFDFCB44EB2DC0891
              D8E6F985304FA9FB9F6A539CCE41832322C3C2E225364AC87FC3C222235BF57F
              DDE97CD4A72AE17A55A44BA5C319FD956F985439E17C7D867A31F94A619111FD
              473A4BC285A685E14AEFDEBD0CE74781BE07D292B0B3A527ADC72BC5794DD39E
              4660CF957CC87DAE69DAD308ECB93219DE699AE634067BAE4CAFFFE77C4D8F2D
              57421FC0A6266A4F23B0E54A20809D97F3CD8C9D9D7C298C11739AA6398DC18E
              2ACB2AC065633FA4B9B1A1CA8224007F8EBDA56043952EA2790FAF65E25B95CF
              E455DEB4A66B518309F3E5CA7C65BDFA0CD3DE7228515DF99861CE2955E27791
              FB3D748B207B5186EA4A658ED5382C7FF22CF2EDEA7DCEFB8666E76C89D3393C
              4F7B5D06907528C9594270CAB6934FE9FE732EA5B99BCBA35EDF4EC2C1E66E2E
              8FA2AAEAAA6A0F55D5FCD3979BBBB90882200882200882200882200882200882
              20088220088220088220088220088220088220C857C6979FF3E31096DE890C00
              00000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-textile'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000060000000600803000000D54687
              0A000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              0300504C5445000000FFE6AD84E610CEE610E6E69CB5EFE6B5A5EF84EFE684A5
              EF52BD6B526BEF52BD29526BAD19BD6B196BEF19BD29196BADB5CEE6B5A5CE84
              CEE684A5CE52BD4A526BCE52BD08526B8C19BD4A196BCE19BD08196B8CB594A5
              8494A54210194210B50810B552634ACE311984319C84A531CEA531CE73DECEEF
              63CE735A8473DE84EF63847319CE739CCE731984739CA5525AA5105AEF10DEEF
              105AA510DEA51019EF109CEF1019A5109CA5A510EFA510CE52DECECE63CE525A
              8452DE84CE63845219CE529CCE521984529CE6EFBD423A19A59C734242421008
              007B735AE6EFEF849C52E6C594193A0842104A4210E642107B0810E608107B08
              104AB5B59C5A421952EFEF52EF6B52946B529CEF52EF29529CAD52942952EFAD
              19EF6B199CEF19EF29199CADEFA57319946B19EFEF19942919EFAD526B6B52C5
              EF526B2952C5AD196B6B19C5EF196B2919C5AD84E631CEE63184A573A5E610EF
              E61052EFCE52EF4A52944A529CCE52EF08529C8C52940852EF8C19EF4A199CCE
              19EF08199C8CEFA55219944A19EFCE19940819EF8C52C5CE526B0852C58C196B
              4A19C5CE196B0819C58C4242B50842B5C5A573EF73DEEFEF63EF735AA573DEA5
              EF63A5315AEF31DEEF315AA531DEA53119EF319CEF3119A5319CA57319EF739C
              EF7319A5739CA5A531EFA5317B525AEF52DEEFCE63EF525AA552DEA5CE63A552
              19EF529CEF5219A5529C84B5A56310196310B52910B5193A21191021E6C5ADE6
              C5EFE69CEFE6C5CEE69CCE4242E642427B0842E608427B08424AE69C945A424A
              A59C52A5E631EFE631C5A55263104A6310E663107B2910E629107B29104A6342
              B52942B584106BCE10EFCE106B8410EF841029CE10ADCE10298410AD84B510CE
              B51084104ACE10CECE104A8410CE841008CE108CCE100884108C849410CE9410
              B5EFB584EFB5B5CEB584CEB5B5EF9484EF94B5CE9484CE949C736B6342E66342
              7B2942E629427B29424AE69CB584316BCE31EFCE316B8431EF843129CE31ADA5
              734A84314ACE31CECE314A8431CE843108CE318C002919FFF79CFFDE94000019
              FFDEAD000000F264CAE80000010074524E53FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0053F7072500000009704859730000
              0EC300000EC301C76FA86400000289494441546843ED97DDADE3201046417225
              F4626C241EB72E6A5917E0765C86B3DF3703896F1C7922DDF51BE7612180E7C0
              F0B3BAEE71335D60D205265D60D205265D60D205265D60D205265D60D20526EE
              E16FE5E16AE536BAC0E47F09F6BD56DEF995609B4246EC18C6C54DB5ED9DDF08
              36E7DCE87D41E16E1104064639C4AF0425855ABB668F296A8D535F59C9DF0846
              E7E65ABDA4CCCEB599E458B4FC4680EFBE12301DEF4BFD46C089CD39E7417E0D
              71DB220E08128236B0FB81C5E0F7C4BC480B02974DB27514E4E7A78A0A062448
              49FC15600323C6311E885A499C87527C585048DC9720D740E1792D5490D795CD
              EBBA6246C35FC42E1C3A673F6860B462441AE2CA080B06661F58FD29900DCAFC
              17C757F9B0077461EEFC8AC9A601C3F7D16DEC3DECC19F16B70906AC6941C94F
              EA49FB20E0688EF228D982C80EB1530D7B25E0CD631FC7C8F9056741BD9FD2E2
              B8E719F39AA31B35AD5782092597C90BD2727416F07E8E1B4029027D0BB01FC2
              9580BB1EF0A5846007380B64BB2BDA22396D4BBE1270CD0DE9009F5710F68AB4
              C8D2DBAE598258BF6CE7F42CE0749B5E496EE536688EAE047A1C7E721630E32D
              E14271CBCEB0BACBACD5749D04C7DC378E029E7E1C4B6E550DC19079C6ADD5C4
              B1E970424E029635952D432F815CCB52E22E7374632C651B7183710D18987748
              BE95200903D5F5148894D370019FA645DFD983409E045C31AC420E289960C3CA
              3858BB198E3301C1EB8B35E2516A15BF3F8F20DF34E129F06971F38405809C96
              D92D1327BCE1D9E1031558AE2BBAF384BE8068DA82CE6705947599E785FF5557
              5E8243DEC88F1F6F5CF5BD7314DC421798DCFFF741FD43E436BAC0A40B4CBAC0
              A40B4CBAC0A40B4CBAC0A40B4CBAC0A40B4C6E163C1EFF0089F464836E63FC71
              0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-copy-rows'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000064000000640803000000473C65
              66000000F9504C5445FFFFFF0000008CCCFF90CAF991C8FA8ECBF98DC6F57FBF
              FF91C8F890CAF88FC9F88FC9F88FCAF98FC8F87FFFFF8FC9F990CAF890CAF88B
              C5F38FC9F88FC9F994C9F491CAF890C9F88FCAF88EC9F98FCAF890CAF990C9F8
              8FCFFF90CAF992C8F98FCAF88FCAF991CAFA90CCFA90C9F88FC9FA88CCFF96C3
              FF90CAF88FC9F88EC8F88FCAF990C9FAAAAAFF8DCDF790C9F890C9F88FCAF88D
              C6FE8FC9F890CAF88CCAF68FC9F78FCAF890C9F98DC6FE90CAF88FC9F890C9F9
              8FC9F98FCAF990CCF690CAF88DCBFA8FCAF88FC9FA90CBF98FCAF88FC9F991CA
              F990C9F890C9F990CAF990CAFA91C8FA90CAF98FCAF98FC9F990C9F88FC9F890
              CAF99F8458910000005074524E530000142C32321A042A9BEBF9B7500285FBC1
              16A3E11874C5F15A70B9FD10D92EEF873E3CF1680E1052767E97680224A7EB78
              08F3CF1C46FDDB12EDA78730891EC736CDA7D9C78B30A98189A55CDFBFB5CDE9
              0391000000097048597300000EC400000EC401952B0E1B000001A94944415468
              81EDD8694FC2401080E12E887248C172DF502E0F504054F0C2FBBED8FFFF6344
              69099AD916EDB02161DE8FDDA44FDA74DA6C1585A2A8658A8D73B9579CE4595D
              63A20CC4EBF373A705D6838A05A286C28E89EF363421A244708851D1980889A3
              199C275418D19288084FC1481AD3E00918C9A022D91C88E451115E0091A2B15A
              72348CBA899441A462AC56A1A76FE66A8410B258487D33BDF597B64D64C73CD2
              D09BD6C8EE1EC617A6D5EE5820C17D04E2ABEE8110393C423238EFE50448FF18
              CDE0FC44809C221A7C780623514C849F83C800D5E0172072692E77AF9C64DE8F
              2888944DA4663FE716558DB35408592EE45A26F2210F994C8D314537F3406EB9
              204CE44E06723FFC1762B7DF9D3CC2E3DDEF830CA4DF9380B0415702C23AEDD6
              FC11C69A7AE3F169DCF3DC90A9669C7842085978449FFE19F0F23BBBBF0725E3
              2C45102900C3EFA03C88D4B3A848064458021549C3480AD3486A30A2625E4A5C
              8111167B4533228A0861DA1B0E110EA96264B4C97E0F3826FC3EEF64344164F4
              195BF5588CA2FD30BA5DD3F32F40ECB27BADFC8C1042082184104208918E5014
              B53C7D0211EC6DFBAFCBDB870000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-paste-rows'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000620000006208030000009C7BF6
              3C000002E8504C5445FFFFFF0000008FA1AE90A3AD90A4AE90A4AE90A4AD90A3
              AD90A5AE7FAAAA8DA9A98FA4AD90A4AE8FA3AE91A4AE8EA5AC8FA3AE90A3AD89
              9CB090A3AD8FA2AD8FA4AE90A3AE90A4AD90A3AE90A2AE90A4AE90A3AE93A1AE
              8BA2B990A4AD8FA3AE8BA2AD90A4AE90A3AE91A7AE8FA4AE90A3AD8FA4AE8FA4
              AD91A2AF435A61445A62445A62445964758A94859AA48FA3AC8FA7B4778D9663
              7981445963435A6548486D455864445A648FA4AD8EA4AE445964445964445566
              455A648CA3AF90A4AF455A63425B6190A4AD92A2A88FA4AE445963485B648FA3
              AD8EA3AD90A3AD455A63455963445964415765445964435964455A6345596445
              59644459638FC8F88FC9F88FC9F990C9F990CAF98FCAF990C9F990C9FA92C8F9
              90C9F88FC9F78FC9F98FCAF88FC9FA90CAF98ECAF88FC9FA8FC9F98ECAFB90C8
              F790C9F990CAFA8FC8F78FC8F88FC8FB90C9F78FC9F990C9F98FCAF890C9F98F
              CAF88EC6F490CAF890CAF88FCAF88FCAF791C9FA91CAF78EC8F890C7F8465B62
              465C61455A63445864445A634C6666445A64455965455A633F5F5F465A64455A
              63455964455A644559648F9CA28593994C606ADBDFE1495D676A7B83D0E8FCCE
              E7FCDDEEFCECF5FD8FC9F8B8DDFAB3DAFAD8ECFCB0D8FABADDFBBFE0FB9BCFF9
              C9E5FCCBE6FBCCE6FBDAEDFE93CAF8BADEFAAFD8FADAEDFCB0D9FA98CDF8BADE
              F9BCDFF9B0D9F99ED0F9678FAAB1D1E8C8E5FBC2E2FAA6D4F9ACD7F9D0E8FBAD
              D8F992CAF8ABD7F975A2C46D96B4AECFEBC2E1FBCAE7FBE6F2FD567488E2F1FD
              9CCEF86E97B66487A1B7D1E7D1E8FCC0E1FB9DD1F8ADD7FA90C9F8D5EBFB78A6
              C98FC9F6AAD6F977A4C68DC6F490CAF991CAF8AED8FA5572846287A16A93AF6B
              93B1AFD0EAC4E2FBC6E3FBCEE7FBE2F0FCD8DFE3A6B6BE93A6B099ABB5BAC7CD
              C9D2D79DAEB7F4F6F7F0F3F492A5AFB9C6CCD3D8DBD1D9DD99ABB4718188C6D0
              D5708088F5F6F6C4CFD4FFFFFFC4CBCE51656E74838B84969E77868D67788046
              5B658FA4AD6C818B455A648FA3AD90A4AEDE48B9400000008B74524E53000028
              7CB5CBC39F540612A3FDE14E22DB7A0CD35E85ED8B5C6CBDF1120AF5D11668F9
              229FCF7CB93A225C7476B7DFB728BB996C440642C9ED68F3870E8742DDDD2AF7
              2EA7E91C97ADEFC1C74622A15EDB74F778509FB1B1DB8D8B722EF5ADABFD3E97
              7AA3BB4CC15E7ACBCB50C385ABB98FFB329FFDE78D68664A24622ED958A70AAF
              6AEB084C89A3ABE186E33A54000000097048597300000EC400000EC401952B0E
              1B00000319494441546881EDDA6574D3501806E096319CE1EE6EC36138C3DDDD
              DDDD9DB92013DC293E8A33DCDDC970B7E1962103B2FC25F7A6ABAC49FADDDBA5
              1CCEC9FBEB9EEEFDEEB36EC949B24EA77361F40A49E196D23D55EA3469953A76
              2121D2A5CFC0E364F45089C894994F4C42165588ACD978AB645783C88176CE99
              2B779EBC68912F7FF213050A0A1B172A8C96451284A55BF2131EC2B6458B89EB
              E2C2BA44F21325856D4B99D6A511E73451A66C394F21E5CDA9206C5BD1345409
              FD362A9BBF540535AB56AB4E4478D5E0C4F036A9691AAA65FBF21FB15BBB4E5D
              38518FE32409BEBE38E42D49705C838650C22224251A3546334D7819826BDA0C
              467871B204FFDBBD798B96495FB4105C2B18D15A81908C15C1B581106DC5EEAF
              F89F4240C40FA1F8FD9B38D60E42B41785381605447C45CD2F9FF15C0708D111
              57E35938F10957E3F05C2708D119573F8AC40708F11E57DF893F2962E22D4078
              F3DA2922F69563E225EB14C1C6BE78AEB8FFB3A74F58270978344223344296B0
              DF50233442233442231C138F1F3D7CE030F7EFDDBD739B96B815C30073F3061D
              711D0A08B9769586B872998060982E14C4252281E94A415C448317CE3BCCB9B3
              6750B31B05711A0D9E821CB42751B3BB46B8883871FC985C8E1E398C9A3D7AF6
              12D2BB0F2D71E820F4D8EDDB8F8E38407282F4A721A289CEF301032988FD2402
              C30CA220F6A1D5DE3D32D9BD0B6730CA10D41C4A4B281CB4964BD230D41CFEBF
              1323D42746A2E62830B113D577188DC6ED5164C46830B1CDF6505483D81A434E
              8C41CDB16082DD424E101E512CBB7993EA04CB6EDC603018D6AF539310A3DAA9
              A71174C45AD38DF81A73CC77E638E350C6A3E6040A62B5FD6547291329885544
              C2A4C91404BB92E4E23D4556507C105B11B51CB6FFD469D3E505E567BD654BA3
              F16DF812AB27B0C58977E638335066CE9AAD20E83C31B1489A5008C1E3E41CDC
              8C8C20252222C1C45CF1BB090F5B4894B070F8BBD0FB704EC40744F83A43F882
              08BD1FBDE027F1575929C23F805608F08708F863DCC0201A202810F41E4C1F46
              078784CE9B4F9405A121C13040F9FF409402DDFF1F1104B31AA1112ECC5F26DB
              C16ACF4B3BE70000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-checked-small'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000008C0000008C0806000000AEC041
              3E000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E3564475852000008A54944415478
              5EED9DEFAB145518C77B1D21BD8A08E90F885E487F40848488586494A5148888
              884465BD8932BBFE88B8F807842FFA455CFC5D6A5EED4DDECA7BEF9CB3F7C655
              0AD44C85DAD9CD92E422729190ED7966CFDAFDF13C777766677667E67C1FF8A0
              3C777776CF339F9D3973E6CCCC7D03030300748C980440434C02A0212601D010
              93006888490034C424001A6212000D31098086980440434C02A0212601D01093
              006888490034C424001A6212000D31098086980440434C02A0212601D0109300
              6888490034C424001A6212000D31098086980440434C02A0212601D010930068
              88490034C424001A6212000D31098086980440434C02A0212601D01093006888
              490034C424001A6212000D31098086980440434C02A0212601D0109300688849
              0034C424001A6212000D31098086980440434C02A0212601D010930068884900
              34C4641968341A2003C4629781A8713909FE2E93E1E4A3E3D5CAD3A66EB69A9A
              D911D4EC6010DA7D41CD0C4544FFB783CDBF55B6F26BF93D6E11B9080893518C
              5C1F798056FA4A92606F109A09E2B6A9D94612F8BDCD65D8BDE335BB9297ED3E
              A6E70161528CC97F2697D0D661B309CD0F26B4FF4A2B3F1568D924CF08B1893F
              D37D7C4F02C2A410B66A97D3CA3B4C2B7366C1CACD9E19FE6CFE0EEEEB641A10
              2661F0B2836AF02CFDDAADB012FB028913D8BA5D9D75BBC5629781AC0A17755C
              6BF6FCFC159617A8E37C9E3AD6996C71204C8C98F86BE261EAA31C9456521EE1
              232FFECEEEEBA71210A6C3A05FED16DAFDDC92564C9EA1A3AB69EE1CBB66741D
              10A64D981B6689EBD08A2BA438D09691DAE29A953820CC2241457E827EA157E4
              1550482ED3D1D432D7BC44016194680EBA251F6CCB2DBC5B0DCD0AD7CCD80161
              84180FED7A9225BB81B73E439DE13B96DAE89A1B2B20CCBC20595E2359C44297
              096E2377E45DB33B0E08332BDC96452C7019E1B6729B5DF33B0A08E322A805AB
              78532D15B6CC446D8E31C8076128A2A3A15A093BB81D425B9ADB63D54A47474F
              DE0BC3677BA960653A744E04FD602E8DFE3DDA76DA84F7C29463502E1DA813BC
              DF95450DAF858986FB85C2F90C7582173D8DE0AD30E3BF8F3F425B9769A9683E
              43BBE7697BDDAA272CBD15868AB37F7EB1400B33E4CAB420BC14C6CD67110A05
              181E9F09EAC153AE5C73C23B61384745C9EDE4A73419BE72AA71E4D7AFC4BFB5
              C74C69F5138B5D06A406D3D665B55CA072C1B2AC1B7EA5F1C2372F913447C5D7
              B4A56E56B9B2DD0BEF8431A1C9CD1CDCAC18BEDA9465F5D7CF4534A549B2A531
              63AE6CF7C22B617CE8BBCC97A56B69EA664E5FC62B6168EB5298F9B849D06469
              91509A398379DE0833756DEA416A7C3FAE1BEA09ED646991409A99D9533BBD11
              86F6C79B8562940296E5E593ED6569F1CE8FEF89CB5109CD4657468F84E1CB57
              A562149CB8B26CFBFEEDC658382E2E4B2308ED882BA31FC2F059D8A084532E7B
              210BC37366CED5CFDDEF8D303CA15B2A449119BE7ABA27B2B4B0A18D268EFB21
              4C68F74A45282A71657973A43B599A98418F84311372118A477F6489FA318117
              C230244C29A65FF64B9688D0DEF242984AB5B2542C40C16059D69D7C55144322
              55595AFC6196965E98200C0A7F3A20AE2C6F64210B5337CB4B2F0C3572ABD8F8
              82901B5908BE5163F985A9991D52E38BC0A9ABDFE6461626A8D9EDA51726CB43
              EA4F7EFEBCB1C77C24FEAD5BF2260B43C20C967F0B139A8FA5C6770BCBF2CCB1
              35D1CADA1D7CC8A3A1E2EB92904C96317159A942B52CFF16A66686C4C677C16C
              595AA4254D6E6521B896102626922C2D76057BBA928665593F9C4F59182F8449
              7397B4982C2D76269426BE2C6FF55496082F764929757A3FFDE5B3B6B2B4882B
              4D216421FCE8F4A674587DE0C2A1C69AE32F8A2B5062E77867D29CBE560C5918
              3F0EAB6B95D406EEE24BB37B51698A240BC3D7A2975E98B4AF14484B9A24B28C
              56B31D67698B0FA706B238F978E0623C6906825D73A429A42C04DFC0A0F4C230
              594C6F3878F1702C693E705B9AD3093AB87990C59BE90D1C594DA08A2BCDBB67
              DF8F27CB999CC8427833812A12267A2C9E5C886E892B4DA7E44996263E4DD1CC
              7812F8A194A5C99F2C9E4D028F9EBF98F16526072FA5234D5396FE1D3A4B50DF
              EBCE6438E9CF65261CD4691B918A9126DD4A93475918EABF7CE7CAE88F30D4E8
              4D5231D286A579FEF85A5188C5C8AB2C11550F2F956D3EF1B53717E3C795E6F5
              33DB722B0BED8E6E7B79313E07F5F47B76BB8F43978E74244D9E6571F879BB0F
              0E7E54AF5090CC68274D016459707344AF84E1E00128A93059C1D2AC39B1B023
              5C0459688BECF72DCB38F8B9CE7271B263BE342CCBD9EAA8F8DA3CC14F787165
              BB17DE09C3B9A00FB75D3D7CE968244D5164217E72259B13DE09C3C137FA130A
              9439C77E3B518C2D4B681AB6669F74E59A135E0AC341878BA95F4D5016A89FF7
              A52BD382F056187E623C15060FA79807FD906E8ED5C71E72655A10DE0AC3D1AB
              D1DF42316B54570AAF85E1A022E1A9262D42A3EE8A5A01616E183E65707941F1
              BCC35CE0B3FAAE2C6A782F0C073F20333A672216B2FCD051D1B4ADDBC75C3916
              0D08E38267C4F3BC0FA9A065266A331E43DC248E301CBE3DE8DC84F6AEC583CE
              FF27AE301CB666B7F8200DB5F12E1F25BA66771C104608FED59579F7C46D0BAA
              95B5AEB9B102C2284187982BF85A1CA9E08586DAC4D33C5C336307845924A8B0
              CBA8C8253AE436172AF5CAE3AE798902C2B4091EA7A14D7809CE3B99A14EC659
              DA0584E930B88348E2DC9457467EE1EF1C54830DAE195D078489117CC29287CF
              8B7014C5DF9124FF22F833504F242609089320789E2B6DE2A7A4159507489609
              6D3E4BB7016112062FDBD4CD2ADAE4F7748EF0E29831BE2CD87DC54C02C2A410
              6E061F9FF5EEC743486702FEEC798F0BCE2A204C8A115D2C57351BA9EF30C283
              63C2CA4D055E76F41975BB813FD37D7C4F02C26414FC8C44BEE301ED26064D68
              6D578380F45E1284767DBC2CB3A275617C3F02C2F430F879433CCACA371724B6
              B30024C23EFA778871FF1FE4BFF16BF82C32BFC7BD3D17517A6140DA34EEFB0F
              1D1619775382A39B0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-close-button-small'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000007D0000007D08060000008F806C
              25000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E3564475852000003FA4944415478
              5EEDDDDD6A135114C5F13E8114AFC49710D486228290167DADBE5F91D2CBBE84
              1652AFE3ECE9EC92A62BF3753E66CE3A6BC1FFA2BB3690FCA4920BC9D9CDCD8D
              AA2C7854DCC1A3E20E1E1577F0A8B88347C51D3C2AEEE05171078F8A3B7854DC
              C1A3E20E1E1577F0A8B88347C51D3C2AEEE05171078F8A3B7854DCC1A3E20E1E
              1577F0A8B88347C51D3C2AEEE05171078F8A3B7854DCC1A3E20E1E1577F0A8B8
              8347C51D3C2AEEE05171078F8A3B7854DCC1A3E20E1E1577F0A8B88347C51D3C
              2AEEE05171078F8A3B7854DCC1A3E20E1E1577F0A8B88347C51D3C2AEEE05171
              078F8A3B7854DCC1A3E20E1E1577F0A8B88347C51D3C2AEEE05171078F8A3B78
              646BBFDFAB83E08BC456FB447BF6EFFADBC7C79F97EFBB2F8BDDE3F7EFE74FBF
              3E7FE8BE84137A33037FDA6E1E765717BF4B8637707B0E4F579B873EF8EAD11D
              BC79A1F656A9F007E0EDF330787B6EDDB75FAD6AF46370AF347800EE41F86AD1
              4F817BA5C0F7807B6FE0AB441F02F7D60E3F02DC7B055F1DFA58706FADF013C0
              9F6B9EB3C357853E15DC6BE19B17B97DB557B0C9E05E075F15FADF1F9FCE77DB
              CD2D7C41065A0BFC6CF0A6F63934BFB5AA42B7950C1F03DC1EA73A745B89F0B1
              C06D55A2DB4A828F096EAB16DD56027C6C705BD5E8B6163EE4454D089F02DC56
              3DBA6D8DF0A9C06D42EFB626F894E036A11F6C0DF0A9C16D423FDA92F039C06D
              42075B023E17B84DE82796133E27B84DE83DCB019F1BDC26F481A5845F02DC26
              F4114B01BF14B84DE82317137E49709BD0272C06FCD2E036A14F5C18FCE66EB7
              DDDCA1EF0D150BDC26F4190B819F530B7EF0CF43E8843E73B9E06383DB841EB0
              907F9FC79402DC26F4C0A5824F056E137A84C5864F096E137AA4C5824F0D6E13
              7AC43DC3CF7B4B66EDAEBEDEA706B7093DE25AF499EFC32DFB0B63EF0ABA874B
              36A1475ACC5FEFA9E1851E61B1C0BDD4F0420F5C6C702F25BCD003960ADC4B05
              2FF4994B0DEEA58017FA8CE502F762C30B7DE242C077DB8BFBB9EFE363C20B7D
              C282C09B9FB39F0F7D8C18F0421FB918E0DD4305FEB6D8DC86C20B7DC46282FB
              968417FAC05280FB9682177ACF5282FB968017FA89E500F7E586173A584E705F
              4E78A11F6D09705F2E78A11F6C49705F0E78A1775B03B82F35BCD09BAD09DC97
              12BE7AF43582FB52C1578DBE66705F28FC9FEB2FEFBA877A59B5E82580FB62C3
              57895E12B82F267C75E82582FB62C157855E32B8CFFE8F7A287C55E8F60175CD
              932FFFE33CE6C2DBC7796C2FEBFA380FDB54F8B581FB26C377E0F6B3D5A1DBC6
              C2AF15DC371AFE00DC5625BA6D087EEDE0BE41F823705BB5E8B653F0A580FB4E
              C2771FC9D5FDB197558D6E3B862F0DDCF706FE04B8AD7A749BC3970AEE7B81EF
              01B709BD9BC1970CEE33F83E705B55E8CADB9FFD07AF5604ACD36485AF000000
              0049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-close-window'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F000000DB504C5445FFFFFF000000F44334F34234F34235F44235E93F3FF443
              35F34236F34335F44236F34435F34236F34337F44137F34335F34336F44335F3
              4136F34236F34236FE452EF44335F34335FF4C33F44235FF0000F34335F44136
              F34335F44136F44435F34236F44535F34237F34235F44336F34235F34335F241
              35F24236FE3838F34336FDC9C8F54D41FDC8C8FFE7E9F7756DFBADAAF8857EFD
              CACAF55046F98D89FED7D7FFEAEEF98E89F54F42FDC9C9F54E42F77870F8857F
              FAA19DFFEAEDF8867FFDCECFFFEBEEFFE9ECF76960F55146FDCDCDF8827CF447
              3AF443368969A1670000002B74524E530000305C72760C7CE1E17A42E74060FB
              FB5E42F9400AE9E50A7A00DF2E5A747887302EDF78E5E33E3C0889BB09651A00
              0000097048597300000EC400000EC401952B0E1B00000216494441545885EDD8
              DB52C2400C0660A41510414154400E2A783E80A068552CD603EEFB3F912DA5C3
              9626D985C60B67C82DF41B3A9BFD33249160AEB569250D737DA9328D6460045C
              2A9D11316A239B92B9CD5C1CCCAB5C7EC66D6DC7D5842814036E874113A2B4EB
              737BFB1C9A10E5CA844BF36842543DEE20C3C5D53C2EC9A509517739838F6BB8
              9CC9C7355DEE908F3B5A717FC1FDB072E3EF2FE2B9CF05B9F187F38E7B23FB6D
              21CED51CDC1BD98E037A0837D150CFD3600FE6A61AE20D6DFF43C003B9D74003
              BD40833C907B7976706FA63976E47CE197253C591BE9FD3AC2A335B451104FA1
              E16D0C7A2A8DB86480276B43F0212202229E5A2303CA0A7B1A1A9D7721EF4943
              53C4A7EC3D6A68AA34963D0D4D19EE518FD2D4B362DE23358DD113F6684D6792
              5903E93C1EE8EF6A7052BFB9FD721F930B692A4FC9CD690A4FC54534DA537080
              467A3427DFFA818E4772A10C09E501E651DC5C22E9780417C9370D0FE780B4B4
              FA2A0FE5C0EC557A188724B9CA4338742E283C9823A60CED815C8F9A32B277A7
              C5753BB8267BB7377A2F1B7870F6065E54C38EC2F7B024F7BDEBA886368AE7E1
              73C1F3200D6FE36E879A32561FD4884BD6EDE19AEB81DAFFFD8BB7E23438E6C5
              07F35AE6988F6B791BB20C97D69E2CDCAA5CDC89BF0E3CE5D1CE2AD365658943
              2B9D07ABD46221BE5630668BDE7CEC456FF9425E4357B2B538583B7B19DA6ABB
              55379A574B95D968494B72D6FA058D36E8B197F86CB80000000049454E44AE42
              6082}
          end>
      end
      item
        Name = 'icons8-close-window-dark'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F000000C9504C5445FFFFFF00000062151C61151C61151D62151D5D19246215
              1C61161D61151C62161E61151C61161D61161E62161F61151C61161D62151C61
              161E61161D61161D66121762151C61151C66141862151D66001161151C62161E
              61151C62161E62151C61161D61161E61151D62161D61151D61151C61151D6116
              1D66162461161D655053665C5F632C32644448655154621C2464373D66565966
              5E6164373C621A21655054621A22632D33643F44633338655256665E60665D60
              63262D621C2365525563323862171E62161D0085A1AD0000002A74524E530000
              305C72760C7CE1E17A42E74060FBFB5E42F9400AE9E50A7A00DF2E5A7478872E
              DF78E5E33E3C088900100C9B000000097048597300000EC400000EC401952B0E
              1B0000020E494441545885EDD8DB52C230140550A4088AA0202A20A082774514
              2D6AA917CCFF7F946D6921A5E712E8F1C119CE6B600D9DA43BC3CE648467239C
              AC95DB5C6972563632222E5FD8522966BB98D7B99D521ACC9F5279CEEDEEA5D5
              94AA54236E5F4053AA7630E50E8F2434A5EA8D802BC8684A357DEE38D59EEAD3
              F2B9AC94A654DBE32C39AEE3713939EEC4E34EE5B8B335F717DC8F2837F9FE22
              BEF7B92437F970C7B8E7B8EF4B719EE6E29EE32D821EC2051AEA39C122E4C15C
              A8219E132E021EC8BD451AE839B3C5A40772AF2317F7E69AEB26F6177E58C2D3
              35C7ECD7111EADA10705F1180D3FC6A0C769C44B0678AC464540C2E33532A0EC
              B867A0D17917F35E0C34263E75EFD940E3D258F70C3436DC018FD0F8BB22E151
              9AC1D5B3E0919AC94D660FB5FD78A23F6BC0E9E7CD1D3FA6E4621AE7B1DC82C6
              781C97D0688FE1008DF4684ED786261EC9C5322496079847710B8964E2115C22
              DF0C3C9C03D2D21E701ECA81D9CB7A18872439E7211C7A2F301ECC11B70CED81
              DC04D7E2DE8311D7BFC735DD1BD9660F3BF3C0EC8DBCA4866D45E821493EF5EE
              921A7A50020FBD177C0FD2F063EC79C42D630F408D78C9FA135CF33C50FBBF7F
              F1D69C01275C7C08D7325939AEEB37646295562F28DC9A52DCF9B40EBC90D12E
              1B61595993D06A5751955AADA4D72AD6BCE82DA72E7AEBD77A0DDD28B6D260BD
              E24DACD5F6A66D9DDCAE34B94E572BC945E717DDA06CCD874C53DF0000000049
              454E44AE426082}
          end>
      end
      item
        Name = 'icons8-error-small'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000C8000000C80806000000AD58AE
              9E000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E35644758520000085B4944415478
              5EEDDD5DA81CF519C7F173D33D41A3B5F1952A3158A9B4B12AB645E8855850AA
              822DB481D60B2D55D0D4A288352954C5D497624585961A04D18A45C15249312A
              BE724E1424822022424BF14610146AB117B974C779F699638F7B7EBBB333F39F
              99759FEF1F3E107E67FFBBF3727E64F36473B2B467CF1E0013C8108093210027
              43004E86009C0C01381902703204E06408C0C910809321002743004E86009C0C
              01381902703204E06408C0C910809321002743004E86009C0C01381902703204
              E06408C0C910809321002743004E86009C0C01381902703204E06408C0C91080
              9321002743004E86009C0C01381902703204E06408C0C910809321002743004E
              86009C0C01381902703204E06408C0C910809321002743004E86009C0C013819
              02703204E06408C0C910809321002743004E86009C0C01381902703204E06408
              C0C910809321002743004E86009C0C01381902703204E06408C0C91080932100
              2743004E86009C0C01381902703204E06408C0C910809321002743004E86009C
              0C01381902703204E06408C0C910809321002743004E86009C0C013819027032
              04E06408C0C910809321002743004E86009C0C01381902703204E06408C0C910
              809321002743004E86009C0C01381902703204E06408C0C91080932100274300
              4E86009C0C01381902703204E06408C0C910809321164F9665A8415E4C2C1E75
              F3514E5E4C2C1E75F3514E5E4C2C1E75F3514E5E4C2C1E75F3514E5E4C2C9ED1
              CD9EB395BDB87464B6B27CFE48FEEB229E9B45410299B7820C5707BB8707960F
              6507963363BFCEB31B8A2FCFC5A22081CC5341F232EC5C2BC638FB5AF1B0DE17
              0509645E0A327CE9F0E386ABCBFF53E530F6357B4CF1F05E170509646E0AB23A
              785015633D7B4CF1F05E170509641E0A92AD7CE9ACFC2DD427AA14EB8D1E933F
              B6D8D6DBA22081CC43418607062BAA108A3DB6D8D6DBA22081F45D90FC6DD38F
              5511A6B13DC5F65E160509A4CF820C9F5D1AE4DFECEFAA124C637B6C6FF1349D
              2F0A1248AF05591DEC56059885ED2D9EA6F3454102E9AB206563DD327D8E7D29
              4820BD156486B16E197B8EE2E93A5D1424903E0A32EB58B74C5F635F0A12481F
              05A932D62DD3C7D8978204D27541F2B74595C7BA65EC398BA7EF64519040BA2C
              48DDB16E197BCE2EC7BE1424904E0BD260AC5BC69EBB7899D6170509A4AB8234
              1DEB96E972EC4B4102E9AC2009C6BA65EC358A976B75519040BA2848AAB16E99
              AEC6BE1424902E0A9272AC5BA68BB12F0509A4ED82E46F7B661EEBEEBF73EB44
              CFDD7592DCA3D86B162FDFCAA22081B45990AA63DDAB7FF09DECB2F3CE91765E
              F46DB947B1D76C73EC4B410269B52015C7BAD75C3CB920D7FFE86CB967127BED
              E230922F0A12485B05A933D6B512A872985D3F394BEE99A4CDB12F0509A4B582
              D418EBEEDE71A62C87F9ED4FCF907BA6B163280E27E9A22081B45190BA635D2B
              812A87F9DD65DF927BA6696BEC4B410269A32075C7BAB75F7EBA2C87B9E3E7A7
              CB3D65DA18FB5290405217247F5B53FBD3BABFFFC576590E73EF55DF907B6661
              C7541C5E92454102495990A69FD6B512A872983FFEF234B96716764C29C7BE14
              2490A40569F869DD3FFDEA34590EB3F7DAAFCB3DB3B2632B0EB3F1A22081A42A
              488A4FEB5A095439CC43BF3E55EE9955CAB12F0509245941127C5AF72FBB4E95
              E5308FECFA9ADC53851D6371B88D160509244541527D5AF7D1DF9C22CB619EB8
              659BDC5345AAB12F0509244541527D5AD74AA0CA619EBCF564B9A7AA14635F0A
              1248D382E46F5B92FD10867DB79D2CCB61F6DFB155EEA9C38EB938FC5A8B8204
              D2A4204DC7BAE3AC04AA1CE6F9BB67FFB87B193BE626635F0A1248A382341CEB
              8E7BE99E1365398C7D4DEDA9CB8EBD388DCA8B820452B72029C6BAE356EEFBAA
              2C8779EDCF27C83D753519FB5290406A1724C158779C954095C3BCBEF778B9A7
              093B87E2742A2D0A12489D82A41AEB8E7BE381E36439CC9B0F1E2BF7345177EC
              4B4102A953905463DD715602550EF3CE2347CB3D4DD519FB529040AA16247F5B
              92FC67EBAEF9E7A35B6439CCBFFEBA45EE49C1CEA938BD99160509A44A41528F
              75C7FDFBB1AFC87298F7FE7694DC93829D5395B12F0509A45241128F75C75909
              5439CCFB7FFFB2DC938A9D5B719AA58B8204326B41DA18EB8EFB60DF91B21CE6
              3F4F6D967B52A932F6A52081CC5C9016C6BAE30E3D7F58F6C4CDDBA4432F1C26
              F7A464E7589CEED445410299A5206D8D75E7CDAC635F0A12C82C05696BAC3B8F
              6619FB529040CA0A92BFED686DAC3BAFEC9C8BD3978B820432AD206D8F75E795
              9DF3B4B12F0509646A415A1EEB2A1F3DB579F487F2BBAED89EFDE1CA6F8EFE11
              D547FBDB9D602976EEC565D8B0284820930AD2C55877DCBB8F6FC9AEBE70E30F
              B0B6CCBEA6F6B465DAD897820432B1201D8C75C7DDF4B3C93F7AF4964BABFFE8
              D1A6EC1A1497E3738B8204A20AD2C758F7BF4F6F96C558EFE3670E977BDB3269
              EC4B41025105E963ACFBE13F8E90A558CF1EA3F6B6498D7D294820E305C9DF56
              F432D6CDDFF367D75D32F9FF07B1AFD963D4DEB6D935292ECF68519040D617A4
              EFB1EEC1FB4FC82EFFFEC6725876706FDA7F725B855D93F5635F0A12C8E70AD2
              C35877DC5B0F1D3BFAAF0EAEBCE0BB23F6EBB71F3E463EB64B766D8ACB444122
              592B481F63DD2F92F5635F0A12C86705E961ACFB4563D788820463377BF8F2A6
              AD113EADDBD4E81ABDBA692B050964549003CBD7A86F086C945FAB9D1424102F
              C8E046F5CD808D86AF0CAEA720817841369DABBE19B0D1F0954DDFA32081D8CD
              B6FB9DFF01F465F50D81FFCB7FA77D913FA40733BAD9F91ABEB6B4257F7FBDAF
              AFBFAD9E67764DF26BF364B6B27414050966AD206B2BFF46D896FF6EF2C36C75
              B003831D762DEC9A149767B428482076B3519DBC98583CEAE6A39CBC98583CEA
              E6A39CBC98583CEAE6A39CBC98583CEAE6A34CB6F429A8FD50DD30EA78530000
              000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-edit-small'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000C8000000C80806000000AD58AE
              9E000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E35644758520000067B4944415478
              5EEDDACF8BD4051CC6F1E9B27BB10ED1B92242E852DDC26ED14193D844A240E8
              3FE820B3AE526E217808F31AF903A13F2024832EDB9ABABA42119DA293A807B5
              024F1D441671A6FDEC335F9DDD7DE6D7CEECEE7C3FDFF7075E9747DC0567DE8C
              C34CEDD8B163003AB02300B12300B12300B12300B12300B12300B12300B12300
              B12300B12300B12300B12300B12300B12300B12300B12300B12300B12300B123
              00B12300B12300B12300B12300B12300B12300B12300B12300B12300B12300B1
              2300B12300B12300B12300B12300B12300B12300B12300B12300B12300B12300
              B12300B12300B12300B12300B12300B12300B12300B12300B12300B12300B123
              00B12300B12300B12300B12300B12300B12300B12300B12300B12300B12300B1
              2300B12300B12300B12300B12300B12300B12300B12300B12300B12300B12300
              B12300B12300B12300B12300B12300B12300B12300B12300B12300B12300B123
              00B12300B12300B12300B12300B12300B12300B12300B12300B12300B12300B1
              2300B12300B12300B12300B12300B12300B12300B12300B12300B12300B12300
              B12300B12300B12300B12300B12300B12300B12300B12300B12300B12300B123
              00B12300B12300B123CAAFD96C6204EC3F2ECA6FE5C1E59EDC9D999957EF4E4F
              CF2EFBF2EECCCCCED6DCF508243102797AF70E1DDA77B75E7F706F7ABAD9F270
              39948F5A7FDCF108243102D1FD3D3DBDFF5EBDBED416C78AE5401EF78A844012
              2390CE71147A45422089553D903B870F778DA3D02D120249ACCA815CB87CFDC3
              1F2F5EBB71EBE8EC3F2E8AB53A4542208955359088E3C22F8B8F2E5CBADE5C8E
              E4F63091104862550CA43D8EC23091104862550BC4C5F12492F9AB1B8A844012
              AB5220DDE2280C12C9B287F161228124569540E6E6CEEFEB154761C057925902
              49AC0A81344ED7F62F9D7DF6FE4FF3737FB9209C7E232190E4B2071271344ED5
              969AA76BCDA5B33BFE1B6524F1B5947F0F1E7C854012CB1C487B1C850D4532FB
              C5FA48EAF5A5F8043E7E0F812496351017C7C822698B238E4012CB1848B7380A
              8AE4E7C1235913471C8124962D907EE2280C1CC9C56B376E1FF97C5FEB573D39
              02492C532083C451E83F92C5A51F2E2DAE7AE5288E4012CB12C846E228F48EA4
              731C7104925886408689A3D03992EE71C4114862650F641471145A91FC39481C
              71049258990319651C85A791F417471C812456D64036238E427C2D657EFEFBA9
              D6AFEA790492581903D9CC38E2E736BEADF5F5CA511C812456B640C62D8E3802
              49AC4C818C631C71049258590219D738E20824B1320432CE71C4114862E31EC8
              B8C7114720898D73206588238E40121BD740CA12471C8124368E8194298E3802
              496CDC02295B1C710492D8380552C638E20824B17109A4AC71C4114862E31048
              99E3882390C4B63B90B2C7114720896D672019E2882390C4B62B902C71C41148
              62DB1148A638E20824B1AD0E245B1C710492D8560692318E3802496CAB02C91A
              471C8124B61581648E238E4012DBEC40B2C7114720896D66205588238E4012DB
              AC40AA12471C8124B6198154298E3802496CD481542D8E3802496C948154318E
              3802496C548154358E3802496C148154398E3802496CD840AA1E471C8124364C
              20F1E4AD7A1C710492D84603218EA74720896D2410E2587D0492D8A08110C7FA
              2390C406098438FC114862FD06421C9D8F4012EB2710E2E87E049258AF4088A3
              F7114862DD02218EFE8E4012EB140871F47F0492980BA471AE36451CFD1F8124
              6603B93C31D7F8EE999BEE093E8C8C71C41148626B0369FC5A7BAEB130F9B871
              65E2FE2823C91A471C8124B62E902B137B9A0B93CD30AA4832C711472089AD0B
              6461F24411C82822C91E471C8124B6FE1564F2B7F6408689A40A71C4114862ED
              8114EF3FD606B29148AA12471C8124B62A908589BD2E8E42BF9154298E380249
              AC3D905BE79F3FE5C268D72B92AAC511472089B50772E093771E5C3CF3920DA3
              5DA748AA18471C81245604F2CDD1D75EDCB567AAF9F67B53CD8D4452D538E208
              24B12290AF0FBF79FCADDD1F34C3A09154398E380249AC08E4D0A7BBFE2802E9
              3792C6C2E4A395AFA59CA94DADFC908A1E81245604F2F181771FB607E22259F9
              0ACAC2E4EF8D2B9327975F3DF636166B3B56FE72C58F40128B07F7ECF19D2FEF
              DA3DB52A8E10EF49E28DFBCDF32F9C6A5C9D783F3E27693D27B8B62390C4E2C1
              3D71E48DAF5682588E245E49E2BF5BF19E24DEB8B79E035C972390C4E2C13DF9
              D9EBF588245E495A8F3937C0114862F1E06258CDDAFF891B7E88E111E4910000
              000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-add-small'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
              540000000467414D410000B18F0BFC6105000000097048597300000EC200000E
              C20115284A800000001874455874536F667477617265007061696E742E6E6574
              20342E312E35644758520000029849444154785EEDDBBD6A145118C6F12D52A4
              C805E402722129534458C1D2C222658ADC826021585858DA085B88044CAE2221
              6E9940400B210A967153AD208CCF2BEFCA38BE337B6672865D9CFF0F1E10333B
              E7F09C389FEB0800000000000000000000000000000000000000000000000000
              000000000000000000000CD4FEC9784739548E954BE556293CF667FB3BFB996D
              B3E31F434E2A764379A49C2B8BF253639FB1CF6EF8EE701F2A7257B1DFFAA8EC
              36B17DECFA6ED196CADB545E7A993963FBDCF4619042856D2B5D0E4FA9B17D6F
              FB7068624529D75E5C9FB1315894262AC80E537DFECBA8C6C6E2F05547E5B43A
              67DCDCDD14B31FB37FF27D3E0BB7AFC92B1F1E652AC6AEA6A2C26AF3E5EE6B11
              99FF9C87DB3764CFA701A342EC3EA3F5A56DC605B1F309F7290B2AC36EDCA2A2
              1A9371412C8F7D3A50199D4EE49917E4DCA7336C2AC29E4D45052D4DE605B1F0
              EC4B25D843C0A89CA5E961410E7D5AC3A512ECC96C54CEEF3C3879589BA60589
              B62F271A4B39F6690D974AA8BDBA7A7BFDCE2BCEEBC3B769389E72E9D31A2E95
              507E9FF15756B020B73EADE10A4AF993152C48E1D31AAEA8944558901550091C
              B2D6894AE0A4BE4E5442ED65EFF38B17C5FB8FA7B569BAEC8DB65FE4CDD5241C
              4FE1B257251C554A494E0F3786473EADE152093C3A59372A625A292629991764
              EAD381CA78522927299917E4C0A70395612FA83E95CA494AC605B1B179B75EA6
              42F64A052525E3828C7D1A285331AF2B453526D3824C7C7854A99C2D25F9DDFA
              D3B367B589B60F62EFD2B77C784454907D51AEF5F9A4433E2B7C512E8515A5F4
              F9ED45BEB5D8960AB3C3D7C40BCC19DB2787A9AE54DE58C97108B37D70359583
              8AB4EFFC1E285DEEE8ED33F659EE33FAA062EDD9973D905CF65FDA6C1B9E4D01
              F8FF8D46BF0002E111C9775789FC0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-mysql-logo'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000009200000092080300000099A563
              BC00000189504C5445FFFFFF0000000073950073950073950073950073950073
              9500739500739500739500739500739500739500739500739500739500739500
              7395007395007395007395007395007395007395007395007395007395007395
              0073950073950073950073950073950073950073950073950073950073950073
              9500739500739500739500739500739500739500739500739500739500739500
              7395007395007395007395007395007395007395007395007395007395007395
              0073950073950073950073950073950073950073950073950073950073950073
              9500739500739500739500739500739500739500739500739500739500739500
              7395007395007395007395007395007395007395007395007395007395007395
              0073950073950073950073950073950073950073950073950073950073950073
              9500739500739500739500739500739500739500739500739500739500739500
              7395007395007395007395007395007395007395007395007395007395007395
              007395007395007395007395EB8A2200739529582B8F0000008274524E530000
              0430464C3C1A249FF5EDB36A56F7B90638FBE5720C00D1EB6C024097A9CBFDC9
              2887480AF164AD08D9A7ABDFDB347AF9817C6E5C2A4A2ED3E18310A35E0E7674
              E73EDDB12C501460687895AF99164489D5F37EE958CF9B4E919DCD8D362270BF
              C1A1D718EF42B5B72054BD8B26621C5AC3BBC51E52C78F3AA512E33266859300
              0CB56AD3000000097048597300000EC400000EC401952B0E1B000008A5494441
              54789CED9BF95FD34814C09D22081429A540AD45290285A2A0DC522A08725F2B
              9780729F2E0AA28B2B82BBABF3976FDECCA44DD23493C9D1EC673FBC9F684CDE
              7CCDCCBC79576EDDBA911BF91F0B528BAFE07661D11DE49D68918A4B4A3188BF
              ECAE57581AA4F200CE484579D07BA4CA10564955758DC748E17B582B91FB514F
              916A012254F6E0615D2C0355FFC84BA406406884BF9A1A4BE23253A0D943A416
              9829F947A2B955867A9CD715A5427A022B3AF3335ADEC698DA9F7A8544264E69
              8E12CF3AE417D5D9D5DDD3D8DB946FA43E18BC4BF5EFCFFBD53B305936509BC8
              23922F220D1A4FA96E48BCC8320C1D158343F942422F61C4079A5B8663595038
              F0A2204F48891118AF5673CFABD16C268CC7C6F3828426C83132A9B9C957DB33
              35353D333BD7AA7C61B1F9DFF281841EC36015390F919AD70B8B19A8A5615F1E
              906ADA61AC65A3477A1B56D2508BAFDC4742CFC15F8ADD367C28F866350DB596
              32BCD50924540E038D68979346C2EB69A7A16ADD7524F416062A0B731E8C0E56
              C950EF9C3D027590821B30CE5DEEA3359BF2FE1BDD721909152F8131DCE63F5C
              20CF5E6887F7526D22A1691866573D4A34A5B3E17D03F28B9A73EE88D1450AEF
              C12813CA4BFB1D78695FC73456CAFECB8189B76A030915834F72A034989510BA
              8C1E66DF9A6A614C47C7AE22A14D18A44F79A507AEBCD7BBB79A4D5E68D055A4
              14ACF0DF5597DEC1B0BAB353EB672F6AC64D24B400365C15EFD624318B15B264
              FB80312DB8897492FDBFFE205DC9E125A53E32A6070E18835C480806D9505D09
              D7E1D15C23061F3AC79413A93B7BE94CA8ED824AC26F19D3A97B4867A07F583D
              AC618CB9C098BA8C6EB285846035D78BA8EA624C9F5C439A07F5E722BA1A987D
              3276B66C201137FCBE90B253CA14EF75092908798A5D2165E17794A9DDD6199C
              1B09AD81B5140B42A2639489EB005A442A129F39D45467FF68314042FDA27B4E
              92C3245DE236522D4648CDA05C34A62DA009D851EBFEB81152024EF879518D9F
              E9D4ADB9828496C107D771DB8C65963269330BCE20A5C00ECC8AAAA4110E6EB3
              9A1E33444203B0528533BA67A5B69C2763A421C8817D113632D374D79DB98184
              EE836EE12473F80FC254E10A920F12CD4BCF45B59ED0A9EBE3DF298E848E41F5
              8A70C26D8620DDB354ECE02191930E4744E3C6204DE3F7B8825443B26E75A27A
              D7A90DB792A5E322A173923CAD14557C4198AC449B7C24F415D6EA0751C56411
              AA8378E790D03D4BC7433D61FAD315A43B52CC1F13F7133F604B8BD01412441E
              DFC435FBA8E754E40252B82D2BA03327D5D4E77501A912145B29D00F2D1126E1
              938E8FB4291CA8C87269CD97E32381599AB2847442726101D14A0B17A958D25A
              6AD191A639C301A791202618B34684BE1324BF6095938B742529DDB188C4CC25
              3FAB2F86D46A21704A4B393D7CC54E151E520D78AC967B3C98B92C7714E9A9A4
              B1DF2A916C2E37F8370A20BD9134B6584762E652284BCF43028F75D33A123397
              4281010F09543EB38144CD2516092878486003A66D20913E168CAF1C441ACB3E
              4EC422CD2D8214FBEA1C525916D2B1A0E5A34EB840028687B4AB45FA7AF4510C
              89C62A0209183313A74C6447BFE0D0B5105298D67C2E1D437AA27129A7C597FB
              20412AE594F9CD234142BE21F373081273176248BE1F84A9817FA739A465B55F
              B82C6C65909CDB899B6DBBE0217D9294EDA57F2522A2DB0724485F53A7434890
              FC5E49FFA2CB022F094675EC3599DC163CA46B5096D6B54B914413F441EAA398
              2CD5715D3888060A653EB951E187603F31299FE30E73594F538EAEEC0A9094F6
              7B8C856B6E51DA09B261AA96C6459A9254AD2AF0AA9AA0A14A347144F3283830
              FB97034887A08A45AC6DE48D91B642D1C451BA15F2A09A6733F9A1E597F4FE9D
              0495DF5102F6745270354DCAED0D922B7F655CF3E123C10E1E21A1D86D78F53E
              B6A4AAC590D0D3369C91BDD7B6908620094722B9BBF2615221FD7124DA0397D8
              51B6675EE4EEEB33915F820E80082C804DD9709354A1B8471E2EBA4C66A0CA72
              A5544C209D43E7D0BEF4C7C3B457F0372C094B0167C172BA2F3374AA5FF83193
              AB244D098574BE589438070BC26201776BAD94412575CB0766908660651EF592
              089F4564D7D02EF8D91A92B4FD3AE5FDB7AF735A9A414245F02DC84811986079
              B6E0F3901531F752294D330C2AF9DD1A12D96B5298811519C269B6C0AC4AAA93
              4E5F6C463BFFE690589946928C852C917ED96AE538BFA22AC73493671209FD4D
              9D808ECC95E09EE411D86B5DFC4E4FE34575D1C82C12AA242DCE11C595EB568C
              5FD84242BE1952C28FA82A34A69124EB2BEDB236E595E288A582844A8A49E419
              28545C328F24793D45339ACF2FE2D82FD44EA4A7741996444891151341CA96A2
              00DEB3FD1956E5086CBC8C91B387848EE3F81FBB48E8F01B30A5FBEC6C22A1AD
              B86026524F48BF6148AEAFD94542E33F02C215CD2C8982D3191F7708091DAEFA
              2D7F41E73B5B1FFE3956DFEE2729CDB649879050D35CD2CAB67BD43CBFAAF98E
              F263D42124149EE9379D16A152F3E66A05674BA0DB292469E3BD173859A27D2D
              010D8B7FF76DF3EB6D767E3A8384AE5F9AAEDD8C1FA868621B97E527AA1B1C42
              129043C57751A33F0BB35F6FFE9158DA19E3D62EFD9DEA015201F37173B9EE1E
              20D1967FBC942B15EE05528A7E7AB491A33CEB05120D2FA48857DF727882449B
              4831EE3FD1FB476F9058F612FBF5E2098F90D034B34E9BD94921AF905023FBEC
              7D312BD9E419122ADE6027CAA9E62CF20E09F906986FD2AEEED7F21009A1DE6F
              EC6C3955AE284F91507890D632F0AAE2B8F316498A047646E8F192F910C86B24
              096A9A15C7E480D07BA434D41367BD4A9B12EC86E9DBA367DE7F03490A101A3A
              30AE274C26917EA9C415A847F512539339A45FBA62FA09D34CBE538C5BC27C24
              7D1ECE60565FE9C411F4B718231901190C677996B757430586483CA09CE35946
              4289928BB084644AB110937524C991AACD8D648A487F483B48642DE93F659648
              EF69FB48F688740675054984C80524734446AC7940321E93CF641BE9466EC419
              F917509BC27FFCA13BFB0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-comments'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F000000E1504C5445FFFFFF000000613CB66538B8673AB76639B66739B7663F
              B25F3FBF673AB6673AB76639B77138A96739B76639B6552AAA673AB7673AB666
              39B76B35BB673BB76639B6673AB76639B76639B66937B4673AB76639B76A38B8
              663AB66937B66639B66639B6673AB76639B66839B6673AB75555AA6639B60000
              FF663AB7663AB7673AB6663AB76839B8663AB7673BB76739B7663AB5663AB767
              37B7673AB76A35B46639B7693CB4673AB65C45B9663AB76D48B66639B6663AB6
              6A39B47C55C16A3FB9B49FDC754BBD9271CB6F44BA8B68C86D43BAD1C4E97A53
              C0BCA9DF764EBE673AB7A4A7E9890000003E74524E530000145A767658140891
              F98F08C3C3068F8DF912787887816628BDEF24DB2ED9CDCBAD6299028900FD68
              FBF74CF140EB34E520D318C710BB0AAF069F911E99E4CF660000000970485973
              00000EC400000EC401952B0E1B00000125494441545885EDD46B57015114C671
              8769D210A5084554882E2ABA5FE4D6E47CFF0F6466A85CCECAB2F7632DE9FC3F
              C0EFCD7ED6F6F9C009277FC058636598EBAEE371C10D4BB2B342C10117DEE463
              6E91A8C76D613429B75DCE6FA1B8D88EC305509A94A6C319386ED7E1E2382EA1
              39CDAD16D7FB24D75370F60739FBCF71DD0EB9EEE22FAB393AD76E916B2BB8E5
              9E31986BBE936B2EFEB29A5B1A6EF6EEEC5FADFFCC35DE66D5988703A439CDAD
              00B787E592582E05E5D202C9ED1F20B94C56A8B9C3DCDCE58F8EA342CD9D1404
              3505572C91350517A763D3DC6999A34D721593A54D7067E73C6D9CBBB8646A63
              5CF58AAB8D72D729B636C2656EF8DA0F57AB03B46FEEF60EA17D71F70F106DC8
              3D3E61B401F74C7F210AEE85F142A6B95718E671D0FA5A13F37C2AEE8F0A0000
              000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-mariadb-logo'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000019C0000019C0803000000DA9FE6
              0B00000063504C5445FFFFFFAC6D5B7A575C654F5D8E605C33395EA2695B7053
              5DB6725A51465D29345F3D3D5EC0765A98655B5B4A5D737E9B657191845C5C47
              425EB9BECD57648749577DF1F2F58F98AF3B4A731F305F2D3D69818BA5E3E5EB
              9DA4B9ABB1C3C7CBD7D5D8E1AE0D70340000000174524E530040E6D866000000
              097048597300000EC400000EC401952B0E1B0000130049444154789CED9D8B96
              A23A1045C737A2F8443188C2FF7FE52441940490A08504FAECB566EEDCEEB605
              8E5539A9BCFEFD03000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000F692C4F75B9C747D15A048740D99E4129CBB
              BE16A0700E1ED2084E50C726EE179607EA5843948F9A94A0EB6B0282E8EEEBCA
              7042844EE7C4C1A94419C1B1EB4BFBD324C7A02C6490D7BA24898F41E0E703E6
              B02F1167D7F575FE19A238BE05C1D6F72F451536DE7ABD2A7ED9EFFA9A074FC4
              35F1FD82157BE22EF7CE9A53123A10A74522DEA454ABB23A1C368BFD5C08E3F1
              C859CF20CECF385E73F9EBB05C2CA69EE7C9182930610BFEF7DC85383FE1B8CB
              1EF06C33AE9024A7CDCA9997A90371E879562F679B698D2E6963E33A1B26FEC5
              FFA370EDFA4E0647B47D3429E379BD30A936F3313BAC47529EF121270EFA39B4
              3CA4712766CAF05CC6B5E17F9CD5E1F995FD627370210E35E7204D677B436564
              3B337566CC5B306E18725F97BF27EEFA7E86C451FAB3835729450167C5F6EB03
              DB8FD86C2E2D5BF675294ED4F50D0D87B37468B306D2ACD74BB6592FF89F039B
              6E58EE959E14A7EB3B1A0E89081BD73CA10916DC084CD98AFF598ED841F9069C
              342137F1383706CE3987C7668EE3BA2367E68E94C0E111053F40C7F64D461B79
              8B14EDEB8ECBE63CA1793C4E166AE0A47E20E9FAA686C15954FF97A561B35FBE
              FAFD9ABDE646603DE63680BB81B51A3853F1D397AEEF6A18486DC665D22C948A
              8C1A590BB6E4BD9CD55A08A305CE12F5012A92903B81B24EE75C1BA351C499F3
              068707CF7C2D8459B069EE5B2318692A8436ABB29436D50B998A382BFEBF22A9
              C98C369BA93105AF4683D0E650A64D710860AE0830E18E6026FA9BC24E4F72DF
              725C94076810EDCDA6449AC723CEE3E63397CB93DA44C4D282DB8289A2DB0681
              4343A536EB8DAE8DF2734BAE4BEA02444653B29A071F4D44A536A382366A79E6
              903636DC174CF8CFE67E87B38255A3615BA50DCF543ACBDC770F6CC4F3DE41FE
              DC9C3739B9AA8F8CB80B267B7ECDAD529B75A1C599E54C83275E3696F65964B4
              45AEC9D923A9D170ACF0D06B91AD7437906FF245E0A40DCD48F8B425D35E77EF
              FACEFA4F14566AC3DD98AA8D62B6E72270E6D23EEF45F81C9E7E20B5DFDBAEEF
              ACFF70A3565A174871F28D8E3634BA11692CCD6513194359ED06DA50B1D58B65
              BA3CE3B4E679D0E71338EE4AA436D9ED917F6785356843C5B1A2D659CF5EBE30
              55443AB68791833654F00667F94680772C5C473439727847BABDF49F7B684385
              5F6D06EA1889296A9E686C1E12C9BF64B513DA50101486CE1A4B24FF92CD96BB
              5F3B4B684345F271835326D17C3D9FA17F43C6E9E306A7943183366404CCFDB4
              C129C149E7478718C1A18027B569FD3337E531601A265DDFD630A04C6A592501
              FB75D070234C6ADE63B1E116DA90C0BB9F64492DEDDCB0105680089F2CA96553
              A74E49D7F734148E6449ED61A091D2C8385F58B39504553C0C34521A215775E2
              ECC7782E521A35BC8B33A2D06691A5B4AE6F6848F84C5FC8F1098F3227521A29
              776512CDA7642EED92747D3F43E21CBE1F9936D4266B6EE0D2280928BA387B38
              E8368898FBBD1BD8C30AB402851B8036ED7064B3FA870F6DBAE1F27DC173FAD0
              06BB7712137C5F1B804F6B8928FCBA36E03C066F42ACC52566F7BD1BC8F652C3
              66DEC4C4DFD706B22102AC5AA3E6F4B51BC896EC60D51A35B7EFDD00925A4B9C
              BF7703590F076BD8A9D97EEF06B23DBD317590180237B040E0B4C4F76EE0B99F
              0702871802379005CEA9EB7B191A046EE0D9E2605C9A1802379059351CC3460C
              811B78060E460A88B97C3F6F201B29400794188A7903597120ECFA6606464430
              35FAB9BD17B21A2D3EC1CADCE7BE78F06AA4107471721B4AC2AB5112858493A1
              D003A56547B1DDC07377691C4E40C99D62BDC76B5F3CD4D50821496AB96D72BB
              BE9F4141E1D4727600A305845038B5FCB1C66872E848429295B9AFB32551BBA1
              E3FB1136416EF36FF472C8B82A873F7CCC6B1F561C5644C6F1F39D08155E67B5
              A3B0460577D15FEE4498327D65B55BD7F734184E445B41E4CE02411794886DE5
              1905CDC81FA2D3F53D0D85BB38E78E82572707554F22128A85B992E54B1CF801
              12A2F0DB6D89339C9736F003249CA9CCC06B450EFC00153E911958E74672E007
              68D8D2EDAE9A3FB70D7E80802D51654090CF6AF003DF7327D446C96AF0035F73
              7F7798545394D328E107BE85549BE7B20F8C175040AB4DAE208DF182AF21D646
              398D129BDD7CC796561BF58C5DCC1FF80A6A6D94AC063FF00D679F5A1BF58C5D
              F881CF494E6C46AB8D9AD5B030E773E23707197F8A92D5309FF06302C636D4DA
              283D50F8814FE1CD0DC936EB2A63451CCC27FC8C63C85CC213D832568A38D89A
              F013CE3BC656C45640A06635D4073E81870D7D732350B31AEA03CD89786BD346
              4A5BEB590D7EA029676ED2D881689A8D869AD5501F68CA8D6734976A26878E9A
              D5501F68C6FDC29FD9B28DD646B254B4C1FC8126C4BCB1613382A3702A70D4C0
              C15EC5E648695C82E59E95EC5571B0718729A9348BD6329A40CD6AE8821A22A5
              619B763CDA1357D1065D50238E3F9126BF624A80296BF59CA54373276D4BA3AC
              9812A0EA59471484EDB7350F66AA38E8E5BC27DE89A7B46AABCFA9A20E50A397
              F396F3ED229B9AF6FA352A13551C14D6AA39CAA0992DDA6F6A32D4A2270A6B55
              2457D1D2B0653BA5E772B4A22716E6941205975F078D402B7A622CA748743BB1
              9FB6344FB4F200D67E682441AACC6AFF0BE7ACA2153D59D2F5C3B08AF82AB319
              9BFDA0BB5982561EC074C227E7FB563A00E6FE3E9D3DD0CA03A8DDA464C98C2B
              F34B77A6A1163D315CC089EEBB346478366B61A693395A79E0CF0F179C8F8F56
              867768C69DB43339B4F2C0DF1E2E385E1FB98CAD261D26B3275A79E0EF363971
              E03F9EC16CB3EF3A6452F4F2C0DF1C2EB0501881561EF883C305960A23D0CA03
              7F6CB820B93D6D996DC2AC8BE5813F3429EAE59779E3FFFBC28C01DA9CA8BF32
              5CF0F2CBB60A23D0B2DA9F182E486E7E96CAEC15665DCC6AC35F0A9A858CBBB4
              AF8DD1D0B3DAC0870BE247217336E9AA90D9043DAB255D3FBE1679CCCC60ABCE
              8B3266E8596DC0C305491A347D51665DCC6A43ADDD9CEFA79E29B32E66B5610E
              174472D24CC7C5FFC6E875B541D66E1ED3CD6DA8313742AFAB0DAF76939A802E
              66667C8D36457A70533D653E7337FD4A670FF431D08119E9782B5A9A3E068D40
              9BD9312C232D179D2DFBD0D72CC5D166760CC948DFFDDF2C6C6A0DBD93339C41
              50B1E86CF693854DADB1D2C51988918E4FA2A9E9FAE97E47C10E0C6302BB686B
              FA2E4DD10E0CA23C10ED86204DA1E63984AC26766E6A752F8D5FB1D0B5E97F56
              3B5E7EB4BEB96D0A3EBAF7594DEC45D7FA860DBFA1E0A3FB9ED58290AD7ADBE5
              D4D0CB6A3DCF6AC969188D8DA41838BDCE6AB7B0C5ADE87E4E2170C21E673571
              AC43EF866BAA29064E8FEB6AC741854D49E0F478A6E7B5BD8D4F3B411F01EDF1
              92A933FD6928DD52ECE3F4760C3409D9614829ADA438D0DB4ECE9DD19DFC6C07
              A362E0F4D40E6C19D989E9B6A04F56633D9D3C3030072DF18ADAF4D20E0CCE0A
              088A36BA97CBD992160E46EB9C1237D0C7C9035C9B81598175C9E0743FBDDA20
              B529CEEAE86593C3B5199A4D5B9727B5FE8D164483D4A634A9F5AE3CC07DDA00
              B5714A9C1AEBDF50CEA9858338BBA7301B2AA56715E9ED10BD40C9284E1FC5B9
              B165D70FB205E6C59A5A4AD78FBB11899D7DCFD177934B2A1A9C9E89730E5D1B
              A73FED59C3E9258EFAF3872A6D7A25CE8ED938FF69CA9A5ED6FE90FFBF0A33D0
              33716E561A353108D3509C435E9CE2C8741FC549D8A1F2763B447CF09B8933CA
              3BCE2AA3D62F71CE27D74A33201E62B3976C726D54C9184E1FC5B95AD9E0A42D
              46A357382E7B0E45559AE87E8913B309F983254006CEACD14B16AF9FAFD1A62F
              E29C432B7B38E9C6DCCDDAC2D9F36356A74D5FC4D9312B47A5D389668D2A4AFB
              A77FA8D5A627636D772B5D74E6B51A5DDB2C6BA2EAB5E9476D2D0A576D3CDAEF
              49872F9B8C61883371D27FD46BD30F714E7626B5CC0837B1918787386FFB3719
              7D18CF092C4D6A59E5A581559172AEDFD7055EF4602434669626B5C796756E83
              97C822E7FC5D3D2D8FFD93712DAD45AF9F81D3C049A77970525D8756B17F33E9
              53D38AFCAFC876736890734D557960FD565E5B3BEB9DEB57ADDFDCACBDAFA495
              60F94960776665BD739DDB24D5DC49360C1CDBA7E3268CD9BA98E0B960C3F815
              8D03C76EBB968476D63BD7B91356CDB36EE3C0B1DA119C4FB6BAE8DCF24D633F
              D03C706C2E7D726D085CF4DCF3BC856479C858A65F18F36F7D384AF48A02E35F
              D03C706C2EE0F85F34388E375D2C0E87CA59470AAE946BEF79C6DE23D78B347D
              CDB4FAFDABB1B6D1D936ACF73E18798BCD271FD2A74E8BC5D4AB09D89C36C679
              D7EC73A261EB56ECD7E6ABA547D3C5C1A0D86BC48C07D3BE42A47CF5C5F4F363
              54E92C62674FE7DEE04329988F971F7D36EB10222DBCBC4A23659D936993F3E1
              C55979E2D48D35987A3BDA2FA902E61DA99950BF665AF5FC30706C5CDC76DE31
              E3CAC07C52B662EF57984EACFF38AAADF36B777146845155643E692597996358
              582B5D55688465C306624F75236D9C719731936216DE253B0E19639125880279
              F2DDAA5E9BD1E617ED4C0D8659EDF3C0B12774E2EB29BDA049ED07726E3898D8
              326659AD70CA572392AE6539C7B7ED29BB9AFA4D88E79FF7326931CB6A253B0E
              35A0B3EA671C1F83C0F7739762702AE1C88EA861A659ED938A679E9FF575CE71
              1CDF0221887F2A5CC56A62705694638D34A6594D319461F1B6EB0893763589E3
              20D895C8F16075D82CA666238A8B5A1B10FAFE96CB1FC419E2C3C0DFBDFAED3F
              C5AC07AABA817B14367E9F535BF372937BE05F8AEF9715EEF79ED764C2E0F45D
              B726F4835BFCDE7946E253B22DBBA04F30AAFDA96E80A7A863F3376A439DE8B6
              7B7E4C522DC400CAE7730246D53EE0743D36EA1044F19D0753F30FB182D1C74A
              B966E98BEFCDDF895A9D283DDFDE3D2CC68D82A39AAADEC2657BFCF8DAB921D9
              F915BFB70EA3C2AC32B7F33102F0893A09912CF2FDC51DAF2653BAA9335E7946
              BB5C092E3B8A6FD7E6B9CEC40E289BAA3EB7BEFF401D1650058FA8C01C484FE9
              744AFB0AE196B42E28529DB96B30AACCE60B4C39D7157F9050690AD4894F7E14
              E4BECCA35DEEADB89828E696C1E0E1990CB3299938BF68206A9E4B49BA3B376E
              63682702961A815DCBC574E918DE3D2C838F9FD2FDD4E603040D8387A450B065
              2EF1BAE77149D86C7F54AC3D738DCAE3C8C0472BC5E8C2B683E200407328FC9A
              986A469BD1CAEA68BF92E6452245CA4792C15DE6AFBCECE1C6E6B9CDA7C8E03B
              8AA966794AFCF3EFA5C9C1BBB137611A0CCA6A93DC3587E5D72C0F383780648A
              D495786EF3BC389CD6A93492B3C872F5A95B99369054FDB2E8566FE17D925B8E
              4D87970D29868D5F7997BF23602633A495D5D26F577726D777FE3DDC2634979D
              8E62D617FDCDF00A6173B161BA43C44C0247E97DD666A5E8BE2D15E8B2A5EB2E
              1C1F21EA1E6449F3C507E1E44CF42B0DED585D2C9A895AABE6E43F588623CDA9
              E7783843515A6F562EAC451C425C4A63775DACD690D52FBE2311D752971B146D
              EC99531B95FB8F86A153ACD6EC3AF7010F7C93C0A933D19D71BE15D367B38D95
              8AD51ADF86C6462246636A7B0BF9C15AEB0EFA3CC77220DAF7AF4170145DAD46
              BBA817BA9D173B1A1BC159B4AA755535459BA4EB4B7ECBB6D9A657052310DA34
              995BB4A9B39ACA61BFB469B2579A9ED1424B7C408AB4D1EFD380D31F6DA25323
              6DF4AE8D5DD2A46EE07D1A507C9ADD6BD58F6193F1034F6B6C2E37BBA4494730
              DF1A4F551B7BDACA22E72B6B703EB1A7D9E793751F3B59547BBBF65EA9D9589D
              D3129ED20EA6A51C3D6AACB2010F76756E60DA1B6D6E3C6C0CF71472C65A3DC0
              B6B64622279CBD2BBA2B755A9BB5397397B6340B9B796131C7D64269D2A4F666
              18C751629F742E1331628307A3911D67AFD79EAD8C9A7F69527B33E3462D065A
              55B3D1E0DA2C4D4CDAB41034D639B48C9BB8BAEA34AD0E3DD9B2E2A98CB3D10E
              765E7141E7CE3A879621E79F577671B4115B9B2D34CF0075E5A7D1BEB86AF012
              D852792E4114732B0B9E6AD8D86C05E468F5BB9CE68D37C5A9B524D36ADB438E
              535574D9B4B206C94499F6E04DE754DF90C9F1E4EE4D9BD2BD824E41D2F535BF
              27165759EED4F47576D6EE25F4A0E4F15743394CDE1672A0A0D4A939DA62AE4B
              D2F5B5D6612C8CDF70554D57C8B999653D03BD867EB5FE73F6CF60A6FE69171C
              93AEAFD31459EF2CA9A9EDB5146DC5E4A05AC4BAB1ABEF17669B86BEBF1363A3
              F67FBEF224C24517C63DF48466CD0C94668845B3BDC85E15C844A00D14144B4E
              34D3324133AEE2D12B7DEA62C9A927196D70C85A74BE34502C39D93403E54F21
              6BD14F17ED942803693A439A9AB43B3D1F97ADB083349D714B5DB4E3556CEDEA
              439ACE902E9A556D4F4DB63A037CC2BBEEB46F7FD969D054AD9960EC7443B7A6
              5B922A656C2FA2FF054A173BEF10335650D828E072FD7C0B24404B92F70397ED
              1D21631589D8E1502ECF4CBABE14000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000A08FFC0755C0D8CD549B8ABC0000
              000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-inactive-state'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C500000261504C5445FFFFFF0000009933B29C27AF9C26AF9B27AF9B27AF9B27
              AF9C26B09C27B09B26B19922AAAA2AAA9B27B09B27AF9D26AF9C27B09824AE9B
              26AE9B26B09C27B09B26AF9F2AB4FF00FF9A28AE9C27AF9F1FAF9B26B09C26B0
              9B27B09B27AF9D25B09B27AF9B27B09B26B09C26B09C24B09C26B09B26B09B26
              B09C26B09828AD9B26AF9C27B09C26AF9926B29D25AD9B27B09B27AF9C27B09F
              1FBF9B27B09B26AF9C27B09C26B09C27B09D26AE9926B29B27B09933999B26B1
              9B26AF9B27AF9B27B09B27B09C25B09C26B09D25AC962DB49A27B09C27B0AA00
              AA9B28AF9C27B09B27B09B26B09B27AF9C26B09C26B09B26AF9C25B09B2AB19B
              26AF9B26AF9C26B09C27B19B26B07F3FBF9C27AF992AB29C27B09C27B09C27AF
              9C26AF9C28AE9D28AE9C27B09C26AF9A26B19C26AF9C27B09B2AA99B26B09B27
              AF9A27AF9C27AF9B27AF9B26AEA22EB99B27AF9B26AF9B26AF9B27AF9D24A97F
              007F9E28B29B26AF9C27B09C27AF9B27AF9C27AF9B27B0942AAA9C26AF9C26AF
              9B26B09C26AF9D25B09C27AF9B26AF9B26AF9B26AF9A26B19E27AF9A26B09B28
              B19B26B09C27AF9B28AF9C25B09D26AE9B27AF9C26B09C28AD9926B29C26AF9B
              26AF9B28B19A26B19D24B09C26AF9C27B09F27AF9C26B09A28B19C26AF9B27B0
              9622AD9C26AF9B27B09A28AE9B26B09C26AF9C27AF9C27B0A324B69D25B09D26
              AE9B28B19B26AF9C27AF9C26AF9B26B09C27B09D25B09C27AF9C27B09C27B09C
              27B09124B69B27B09C27B09D26AF9C26AF9C27AF9C25B09B2CB19A29B19927AF
              9B26B09C26AF9E23AF9B25AE9C26B09C27B09B28B19B27AF9C27B09B27B09C27
              AF9C26B09B27AF9C27B083775668000000C974524E5300000AABBBBBB59B7E62
              3A0E06DDA1621A225CF9C97618004CBD10EDFBAF4050D560E1C530BFB9D3A718
              9DFDFB142EEF66B50895BF74B9DD3C28D1044883C9FDC34AF32210540C0266F1
              8F8BAF728DA5582491B1B3547804C51E5A6E9587463E836A42F5E31270F746F9
              4C680AA77CD9F11402328B97D772B16E0CE9E185A1446064CDF3202C6A78DF87
              323E48C1A52C34D5E56C4E2A93CF2099385CA31650F7267E9F6CE90E365644CB
              D1DBC7345EDF7CC34E06E36870EF7464162A3AC1AD1C28CDA952812689B7E75F
              AF64D4000000097048597300000EC400000EC401952B0E1B0000049049444154
              5885B5D9FB4314451C0070C78B43E394E8CCF5AE53C8B71D0F3D095314C40314
              9144B9D32043AD105414C1C0C2078616414566E6A3A4876952199A66A5A6BD1F
              BB7F55BBB7F39D9DBDBD59766FC6EF4FECCC7E3FB737B7FB9D9965C2848714C8
              594CF43C92E1F5644E9AFC68D6F8273B677D0A892953B31FE361731EA70EFC0A
              15F2B427A6A7C74A3302B23F681C3FA998233473561A6C6E9E96FB94D1305BB1
              C41C9F4B76EE3C3D71BED1B4C0CA2E7477B58B9E0EE3C4FC02D238C7A2CA85AE
              D8DC22237531699D6F6197B0D4546C64299D5A4CDA9FF19464142FCBA7FA9E75
              C12E5F61BAA270D27D549AB372555979A26B3553B5B2156BCCAA379A22ABB2CA
              AB0E7E05D552BDD6965D574EA335EB7358D793533B4F328E7C810DA67B2D89AD
              A351FF7341E42CA48D8A5242BB66B69E56376C728822B4593BBF811A07331B89
              11B428EE18455BF4944C168BB66EC4EAF38DCED5261927BDC06291B42D71C28B
              5B9DABCDA4B4956F67B108ED50BB773A47117AE9653272AFB43059B4ABB5CA8D
              8A50DB6EE27AD82CB2ABCF29A3C2A8F07BD8ACFBD84BD8D9ED0259B48FB8FB45
              B2D51DC01EE8A4D8DCA62E3EF720A925AF1AAC94A77470C2DDE4F10C12769676
              DCC305179019E510615FD31BB8E0D781ED90301B8509B1A8377DD67718DC8398
              3D040D9BD357115A95208E1C5D8E305B8CD5B0F30A9B2216F99535C7FAF461D4
              D8AC1066BD3CAA5A768F9331D4D8388CC11B7C2C151A9B8955799CD5A54BB60C
              B3FDC2548D954E60B656287B1286B649283B03D83785B26F6135542A941DC0EC
              DBE2548D1DC4EC0A7E2D181D7AE7DDF8BA5D7B54162AE57BFCEC30A686551616
              3231B12CF99B9F8D51ECFBA7860AA3D1E995EDFCEC6ACC4E1534F3E2F800B3DD
              62D9D398DD2194F541E1FE50283B17CAC019A1EC64603F12CA9EC56A7EA950B6
              1FB3E7442DED12711EF6101728D6D776E1633E962C373E01B63D3EACAEA12EF2
              B13027CA233AFB69AC3571FC99D35D63CAF81CC6A01FAF6ABE80ABDFC9C35E02
              6500B327E1739671CC3B8DB02F91A3B0102D810FFA327D166EDAC46B069D6D83
              A6CB57D266BF0A60E32A6125A868CAD1F42F178D7EAD09A74B098BAE021B3AC5
              E14A553D781C31DBF50DB8DF722CC8D51D7EF6B508C5A26660954B3C2C047978
              671277AF48B6F100B0E5F50259944D2ED73FEACEF8CEFA02D360A506E2BA5BE8
              8EF9BD11368B2AAF63F5A2947C965DDC509FFC8C896C160DE96F471AD622E791
              A52FB5BEAF66B3E8A6B6CD0EDC72A1F6FD80BF6199B9A69A279DDBB252E6A22A
              04CFCAE4F7E82FA07B92E6B21F1774524785B665BD77E027858AFD362CA2D777
              912327D69F67A12D7587695436A9B633EFCFDAB3E1BD73D7DAD3D5B76F378D2A
              AD498F900D5B89BF63F8DA60FD3DF35BBC66C51C977F49CAB5616BE944FF9473
              F763CDD075ABC6A43E1849CE65B38DAD4A72D491CE85546BCD983599CD1EB3A8
              CA16D219371A97FC9A2299C9FE16B6B237486F2FFC62792B53663359E9E6EF16
              76D0E8D6371F1D638C17B27637D8F63F424C562DA372E04F66F5B05F31B6DCC9
              A0FF9DB5D4E819E9F9EB6F9BC47117A2BD67FEF9F73FCC76DB9FEA864D44E7E8
              E249DB323DB7DDB00F25FE071113E98816CEB5870000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-star-filled-small'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000B4000000B408060000003DCD06
              32000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E3564475852000009D24944415478
              5EEDDD41A824D51506609141248848184208B308F2ECAA79494C882E24049520
              41421071E122641142185CB8101982841046B27029928504919095B810572E82
              84419499AEEA97B8500826489020214808619010066FE59C3BA7276FDEFCBED7
              DD75EBF43DCFFFC0C73C4F7755DD7BFBA7BAFBBDB6FA8673E7CE111D1BB04914
              156C1245059B4451C1265154B04914156C1245059B4451C1265154B04914156C
              1245059B4451C1265154B04914156C1245059B4451C1265154B04914156C1245
              059B4451C1265154B04914156C1245059B4451C1265154B04914156C1245059B
              4451C1265154B04914156C1245059B4451C1265154B04914156C1245059B4451
              C1265154B04914156C1245059B4451C1265154B04914156C1245059B4451C126
              5154B04914156C1245059B4451C1265154B04914156C1245059B4451C1265154
              B04914156C1245059B4451C1265154B04914156C1245059B4451C1265154B049
              14156C1245059B4451C1265154B04914156C1245059B4451C1265154B0491415
              6C1245059B4451C1265154B04914156C1245059B4451C1265154B04914156C12
              45059B4451C1265154B04914156C1245059B4451C1265154B04914156C124505
              9B4451C1265154B04914156C5279C3309003B8F8541E5A7C2A0F2E3E9587169F
              CA838B4FE5E5C50E54C3DEECA4B2FF0C510CB4A368814E5DF38CB2FF0C510CB4
              A348814E17763F9FFAF652263F5BBBFA62A01D850A74DFFE72E8DB41E9CFD6AE
              BE18684751023DBCFDF5DB86AEFDF732D0F967E9D9CD551703ED284AA0E58CFC
              8BAB6136DAB39BAB2E06DA5184400F7BB7DF2A6F04FF755DA0B527B7D9DDAA2D
              06DA5184404B707F7E30CC4B7A9BDDADDA62A01DD51EE8F456734BEA9B7FA230
              2BBD4DEF6377AFB2186847D507BA6F9F4241DE4FEF6377AFB218684735077A78
              77F796D4B51FA110EF97EF23F7B5CDAA2B06DA51CD8196A0FE140518D1FBDA66
              D51503EDA8D6400F7B777D4E5E4AFC038517C9F7956D6CF3AA8A8176546BA053
              D73C89827B18DDC636AFAA18684735063A5D387573EA9BBFA3D01E46B7D16D6D
              37D51403EDA8CA40F7ED1328B0ABD06D6D37D51403EDA8B640E7B373D77E88C2
              BA0ADDB6B6B33403EDA8BA402FDAC75150D7A1FBB0DD55510CB4A39A029DFEBC
              7393BC64D8F8ECBCA4FBD07DD96EB75E0CB4A3AA02DDCD1E4301DD84EECB76BB
              F562A01DD512E8E1DDDD9B52D77C80C2B989BC2FD9A7ED7EABC5403BAA26D07D
              7BE660280B3863BBDF6A31D08E6A08F4B077D70979DDFB5710C851F23E65DF76
              98AD1503EDA88640A7F9E91FA34096A0FBB6C36CAD186847DB0EF470FEBE13A9
              6BDF47612C21EF5B8E6187DB4A31D08EB61EE8AEF9110A6251720C3BDC568A81
              76B4CD40E7B373DFFC0586B0A07C8C2D9EA5196847DB0AF4950FEF37A3FF2AB8
              AA7CAC2DFD4F000CB4A329039D3FD37C7176A79C211F19BAF629F9F745F18658
              FB9374A5E8B16D0C2FDA981ED1314EF9596A06DAD1D840E73F57CF777787F9E9
              87251C67E54CF8EBD4B7E7E5DFBFA140D54CC76C6397393467F39C646E63FF8C
              CE403B5A25D0577E4FDCCCD2BCFD5E5AB44FC883FEBC3CE8AF8B0F52D77E82C2
              719CE81CAFCC55E6AC73D735D0B5903559E5F7DC0CB4A365A0F31BB4C5CEEDA9
              9B3D280FDCE3F2C0FD4AFC4E7FED250FDC65F440537E0973F9CA1AC95AE99AE9
              DAE91ACA5A2EDF8832D08E74B1D362F6903C10FF450F186D4ED754D7968176B4
              3C43CBE23F26671AF8C0D0FA742D754D798676B60CB496FE99589E368FFD6BE2
              A9E91AEEFF933B03ED687FA0B5523FFB2143BDB91C6659435BCE5C0CB4A38381
              D69237358FCAD325DF08AE49D74CD7CE96F16A31D08E50A0B5F2EF60F9467165
              79AD64CD6CF9AE2906DAD1A7055A4BDED87C5F30D447D035D2B5B265BBAE1868
              4787055A4BCE3CDF151FA30792F299F9635D235B2E580CB4A3A302AD95E6CDFD
              0CF5F57298656D6C993EB5186847AB045A6BD89B7D5BDEC1FFFF4B7B3EE3F25A
              C89AD8F21C5A0CB4A35503AD95E6ED3DD77C13D56795AC81AE852DCB91C5403B
              5A27D05AC3BCFD663AE42B228EBB3C7759035B8E958A8176B46EA0B5866EF71B
              F2AEFEC82BEB1F3779CE32775B86958B8176B449A0B5F2E784B7F8417D6F3A57
              9DB34D7FAD62A01D6D1A682D79906772D61A7D2DBADAE91C75AE36EDB58B8176
              3426D05AE90FBB3BA9E025BC6AA373D339DA74372A06DAD1D8406B0D179B2FA7
              09AE7CB46D794E32379BE6C6C5403B2A1168ADD47FE5943C2DBF87821191CE45
              E764D31B550CB4A35281D64A8BF68B7256FB130A48243A079D8B4D6B7431D08E
              4A065A2B5DFCEA17E475E73B282811E8D8750E369D22C5403B2A1D68AD616F76
              5282F1360A4CCDF29865EC368D62C5403B9A22D05AC39B5FBB4D02720905A746
              79AC32661B7ED162A01D4D15E8F456A3DFD30DC353231DAB8ED9865FB4186847
              9305BA6BEF41C1A9998ED9865FB41868471306FA27283435D331DBF08B1603ED
              68C2403F874253331DB30DBF6831D08E260B74DFFC1E85A6663A661B7ED162A0
              1D4D18E8709FC4D331DBF08B1603ED688A40A73FEE9C44818940C76ED328560C
              B4A34902DDB7F7A2B044A063B769142B06DAD124812EF005F4DBA263B769142B
              06DAD14467E8E7515822D0B1DB348A1503ED68924077ED9B282C11E8D86D1AC5
              8A81763445A0435FEA40C66ED328560CB4A3D2814E17EEF8120C4A203A079B4E
              9162A01D150F74377B108524129D834DA74831D08ECA07BA79128524129D834D
              A74831D08E8A07BA6F7F83425282BC61FB24F5CD6FB309BF4E4EE760D329520C
              B4A30902BD40211943C2AB67CD57F65FE8255FE8467B137CE65AE7608729520C
              B4A39281965DDD28212B7AD95DD9DFEBA99FDD6D87B8AEF436BD0FDA7653790E
              32173BC4E862A01D950CB45E9005056413F2B2E2629ACFBE63BB3EB2F4BEBA0D
              DAD726C65E5C667F31D08E8A06BA6F1E42E15887BC847847F763BB5CBB745BDD
              07DAF73AC68CE16031D08E8A06BA6B7E86C2B10A09E1FBB2FD0F6438A39FEA75
              1FBA2FDD273AD62A742EB6BBD1C5403B2A1CE89750380E236FC03E4C8BE6CC2A
              5F02BF6EE52FDD977DEB31D0B10FA373B1DD8C2E06DA51D940AFFE542FF7FD48
              9ED6CFA60BA76EB6CD272B3D463ED61AD7B4D6B9D8E6A38B8176542AD0C3F9FB
              4EC859EDC82FEB94FB5C124FA7F9CEADB6A95BE931F3B157B85E489E8BCCC936
              1D550CB4A35281D6DF0BA3602CC9D3FE7F2424CF4E7165A275CBAEECF4AC8E09
              8D7569D30B9C1F2C06DA51B140F7A71F85A1E89BCBE2855257F22C5976C55419
              1B7E66D139D95D471503EDA858A0E5A9FC9A30E89FA9BBE665F977E32BDF7B95
              8ED1C67ACD9FD3754E769751C5403B2A77866E5EBD1A84BE792DCDEFB8D36E0A
              533A661DFBBE79BC6A378D2A06DA51C140BF27DE488BD9B7AC15B6740E792E32
              276B8D2A06DA51B1402FDA07ECC76353A5E6C4403BD2C5A6E9C1C5A7F2D0E253
              7970F1A93CB4F854DA70C3FF00C8FAB41A817EAE4C0000000049454E44AE4260
              82}
          end>
      end
      item
        Name = 'icons8-percona-logo'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000850000008508030000004204CB
              0E000002A6504C5445FFFFFF000000F69F00F7A200F9A800F8A500F8A400F8A3
              00F09000F8A300F69F00EF9115F8A500F69F00F8A300F39800F6A000F49B00F4
              9A00EA8000EF8E00F09100EF8E00ED8700EB8200EC8600E77900ED8800EB8400
              E67700EA8000E87C00E77900EFA44DFFFFFFFFFFFFE77900FFFFFFFFFFFFFFFF
              FFE16900E47100EDA155E36E00DE6200DD6000E16900E06700DF6500CD3800D9
              5600D85400D85300D54C00C73500D64F00D2460ACF3D00C83600CD3800D34800
              D24400D14000C63500D04000D0410ACE3900CC3600CC3600CC3600CC3600CC36
              00C53400CC3600CC3600CC3600FDF8F6FFFFFFFFFFFFCC3600E08260D04410CD
              3800DD7650CE3A00D75D30DA6940D24710D35120CF3D00D34B10E79E80D04000
              EDB69FEAA98FF6DBCFF3CEBFD14200D24400DF7C50F9E7DFD75920D24500E389
              60D34700DB6730D34800E49270DD7240D44A00D54B00E9A380E28550D64E00EF
              BB9FDD6D30F1C5AFD75100D75300EDB28FFAEADFD85400D95A10F5D2BFECA980
              D95600E28040F8DECFDA5800DA5A00EBA270E69260DB5B00E27930DC5D00DD67
              16DD5F00DD6100F2C39FDE6300FDF4EFDF6500DF6700E17014E68430E06800F1
              BB8FE16A00F4C79FE26C00F5CEAFE36E00E47610ECA060E37000EA9140E98B30
              F2B780E47100F9E2CFE57400E78020F8DABFE57500F5C99FE67700E67800E77A
              00EEA150F1B170E77B00E98110E87C00E97E00F0AD60F5C68FF6CD9FE98000F0
              A650EF9E40EA8200F6C98FED9020FADFBFEB8300EB8400EB8910EC8700EF9720
              F5C080FDEFDFF8D19FF2AC50ED8900FBE8CFEE8A00F09C30F4B970F9D9AFEE8C
              00EF9110F4B460EF8E00F08F00F9D69FF09100FAD69FFFFFFFFEF7EFF7C680F3
              9E20F4AA3BF19300F29400F29500F29700F39900F49A00F49C00F59E00F69F00
              F6A000F7A300F8A500F9A700F9A8009C1AF99F0000004F74524E530000406081
              9FBF5030CF2010DFAFEF97DFEFDF70CFEFDFBB816050EFEF20EFDF9F9F20A7EF
              81EF6040EF60B79781CFB7EF3050C3814020EFB78F7010DF9FEF5060DF9FEF9F
              8160BF40CFDFAFD7DF40229B835F000000097048597300000EC400000EC40195
              2B0E1B0000092B49444154789CCD9BFD5F14C71D80B312F0CC25920844636A62
              5E1A4DA34950B9CA5DD544E44548AB8905A904B804082587D502562354DA1863
              A29760ACF5A5400CD4B65A8222A026B480B9000979DB53DB26E97BFF93CECCCE
              EECDEECCECCEDE0DF7C9F313F79DEFCC3C3B6FBB70EC4D377D3350E26256CACD
              A96969FF8B9196967AF36C4F7C8DC563E149499DF35F1E7352536E99710BEFEC
              D45BFFE3C4ADA9B367D222E5364703CC5C57222E2C3CA973FFED86B9E9C25323
              6C9192E64A41236D96548B94DBFF151F7352A459A4DCFECFF89923301E0216B3
              D2FE9118698EA788A3853735410748BA37318BD977FC5D06F3ECA7C5DEC27BDB
              D7B2B01D0E5B8B59F3BE92C73C9BD561679121D101C2DFB47C0B6FFA97B24977
              6DE1CDFC9B7C32398B8367E1C9FAEB4C90C9BEB5702C3C597FA1B971E33A23EA
              8E2CE61A655BB024AE4555558D7E91A808538369E1C9FA9CE29A8AF9EC3A5DE8
              069606CBC293F529C57535C667D7E97217303418169EAC4F68A6090B357AED63
              468A3077523B85B6F066B26A5E5355791ED486A52D323F6261B1001E539313CC
              4C11E63B59A47FC844B788462C26EC742716D85BDCF5011BDDE2EA073722D498
              70EAD8B1D0CEC27337B3CED5F1A8D6E718FC344ACFCEF49F5D5ADCEDB5B1C8FC
              138DA100984291E9A8D503F88D4F7FCCA8CC653EDF628135778454008C6AE109
              860620323A21AE91C1B3F0BC6F62647ACADACF382EE268C021B9FABE18DF5AC4
              B1C87C2F06430170452FBEACADD1C8A50895131DBFFA9E08F3D91619C33A9727
              AF70AED54819BE043F4E0D0F8F0C4D5EBA62199AE8F8E0B03377B12CBCF7E80A
              F4F5C186D1D80CC51A191A831A23B8D2E0A8593C7A69C2C9E25E2FC362F14500
              4761601094C16E2E5C24380F3CA2A323C6E789C9297250229323176D59405B2C
              EAEFE72AF4232E832E22FD260607A26A74908C0013A2EAE848BF0DF778298BFB
              780AEF1A0C82C0E5772DF40D0D59438317C6F4FA6383D64292C5568BFB9D1420
              17C094D8B54A880CE88DD856F05A2C1E6028FC91E28A3A4607D9F49DC3033260
              93B4C06C71BF55E1EC1F58F445D421660193F39AC7057EC6835E93C5B7CD0ABF
              E7D11719E09631388FF6CC103F21C364F110A1F03B3BFA06FA6CCBADE970C78C
              F1CBEF252D96608533677FEB489F730AC919D0EE397EF152C2E201518538E805
              4DF7704B17C72CBC50E19D19A207AC8DD3DCD2876316DF39FBF60CD20D06BA9B
              5BBAD0B078445A8F5DDD80CE2E53AC072EB92E4E85B717EB16DEDF48E354142F
              F34E22781AEE93939C1A0FEB160B4FC8E36437DEF2BD9D460C6E13F538AF8607
              5B2C936871E244977E77EFD6239AD8194EFE726CF1E8AFA5D2A99F80BD3D5AA0
              EB34FA788C9DFE8866E1FD95648E193783A32751E0A41639C64ED72C96CAB6E8
              219EB88EF5A0D0391B0D0FB258FE966C8E208D682FE4F81114EA44A1DE0E4676
              06B2784CBAC55B1DA7BA4FF558CCD0E2387D844E5E862C1E7D332974208DE811
              AAE03164F14692D034C29DD6F8E3D062D1E164D17108ADD153D638B4589A348B
              C387D91AD9C062C5EB49046B98834B81C5F2645ABCAE1DA3474DB115D0E2B564
              7250D33844C696438B57938AAE4184A0C5B2E45ABC7A206CD580162B5F4932BA
              861188C7E24047A21AFBB51BDDCB268B5FBAE240B8C35D050647914558FF882C
              7EE18AF67677F92CF66983B10F7F5C0557E7CFDDD0A6BEEC2A9F466D6F6BD52C
              0EE208B458E5A689BD61755F821687F407A0E37A0459BCE48236557593CEE260
              185B1CD023AE2DF6A8ED895ABCB45B93D86F04E009BEE267E28065D5EA221DB0
              777F1BA311B041F6C50239C02267973860425A5CA4EFDAB53FDCB6978A01893D
              CD44005AF85C340A16779B1B892696740B9C0E32809EF87E2ACE1E55DDED227D
              2718F9D6B66673F0201C0A32F05D64B152BC59D040AB0B0BBC1BCCE270287692
              8195C862F54C59ECD44F861D4410AE8A26535A2EB258F51361E0E216CFDEAD9F
              0C6AB3118312EDE6343FB2C8D92E0C6A5138BBB511DF3DD5763D8424F69AD372
              904540DC02DE0042C2D94DDBB7EF6CD5C6A3498BEC803F5A24B6E3BF1C7CEF45
              519AE0A5086737EB3F34EC565BC18766B83043D6AC95D862CD8F45A987D7D528
              9C1E63873E350D54D12A6CB1E20551EA604BADC2E904B5DA666194E4608B8078
              63704CD59A382C9AD028320AD61A7F695CFDBC288DE84ED4209C6F00A7A49655
              B0C6B0F03F274C106A5437D8A534845A82C1E00E730EAC57C5CA5E675804C42D
              EAD0CE0BD7F08AEB2B8DA32A4878A031AC6354584BFC357EF5B3C2D46B5D54D7
              D3458D55D5AA890ABD641B54AB6435B786B07842DCE2D910EE225C59B38D3008
              B584550ADC711DB40B6F63B596437E4BB3F647A23406895E6A831590966A3254
              595151A92755C22A35C8AF86D5DA93A6EF8A724525AAE80B26A80E95E3BCAD15
              58A3AE5E53AC6236E73759F8C41CB6E28B0E0619C3AFD69691B9A5A6944A667B
              6B03E66F32D7FF50002CD1520E7E0E511E555BCDD965A404BBC15CCBF7A93E11
              8B20D9E2D68A5AD3C59673D201E12D9C067DD66FB8D73FE38836D5C158604B25
              160986CA19F9780D85AB9EE634B89EFA9EDDE72851AA356AE9AFACAC8C6500D9
              0CD74ACB669EC333793ECA42D9B0C9013C1F4E69E2E42BB4852FCFBE0E5E6CE5
              D224F2020C0B25DFBE92F4A128505816CA937675CAB5A1D8224DA250615B14D9
              55D23648589AC4A66C8E85926B53A956F284E42B3C8BC0466EA552C91342CC07
              F57F7CD9DC5AF87EFEB42409E3A860592805BC6ADA0E094A92D8B44EB1B3E09E
              5DDA50544892C855EC2D384B031F596572240A15070B2550CCAA572573596C0C
              385A28D9AC935C5B16B55224CC2B9363C1D4D086A2458A4436D523F33FF4698D
              52798B9321C1795B81D2D82CEDCC6249F0DEDCB06AE007EAD29991E0BEC562D1
              C04F90094B143325F86FF4F84CE746AD9C2D426D51270B25B09AA8AE4A39BF37
              70246CDFF48A3D7BE1279CAAC424FCDC9E6CDF7A2BD217073EBF438938709684
              B385312B9B13BF8B94F066C3D94251FC68382A127DFCCE5B67DB8BE39BA18192
              4DC6BD2C6E09EEB214B500AB6363828F3885454E5D08BD315CF054024FBEC505
              CE1D08BE3DBDE4FB716E111107176F922F792A8E2D5228E4E0EAADFA1F38FE3A
              6D266F83CD0911B705D82F0525C20E25050EFB226E0B4DC4E1577B340A6E14E2
              B08064FB4B984FC888E212BFF0442464010914F9F30B0BC961292E2CCCF717B9
              1B83442D62F88A8A8AA8876AF716DF04FE0FDEB1840DDF814905000000004945
              4E44AE426082}
          end>
      end
      item
        Name = 'icons8-terminal'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F0000011A504C5445FFFFFF000000CDD7DCCED7DBCFD8DCD1D6DBCFD7DBCED7
              DBCED8DDCFD7DBCFD7DBCED7DBCDD8DB97A1A6BBC5C925353B226C70236A6F1A
              DDDE244F541CBEC0253E44253C411E9C9F18F8F82090931DADAF19E9EA1CD0D2
              1DB7B92542481EAFB221838718F2F31AE0E126383E235E631BD2D3263339217A
              7D19E7E826393F20959819F5F624464C1EB0B318FDFD24595E1CCCCD2273771A
              E2E318FFFF1BCFD0208E921CC2C426373D263238939EA2313D4398A1A6CDD6DA
              AEBCC49AADB59EAFB8B6C3CAA5B5BDB4C2C9BAC7CDA0B1B9C9D3D899ABB49EB0
              B8C4CED39AACB597AAB3A5B6BDABBAC1C0CCD196A8B29DAFB8C9D3D7CBD5D99F
              B0B990A4AE94A7B1BCC8CECCD6DABECAD0C2CDD2CED8DCC3CED3BECACFCBD4D9
              CFD8DCD9EEDA000000000D74524E53000034747632FD7A78874089483AE8BC39
              000000097048597300000EC400000EC401952B0E1B00000157494441545885ED
              D8D75202311480618A60C7DE7BA3C3025935881D1B8A0562A39CF77F0DB7B92E
              3388EE9E73E18CF96F9273F3CD4E26B9599F8F387F20D8475230E4D7B8401888
              0A87342E48A501F46BDC001D376873ED56D3581BEF6FAF78EEE559887A0DE0E9
              5188877B2CD7D63421AA0077FA7ADB40722D5D11150083153748AE6928D70057
              C6E612C9C185AE9401CEF5F5CCA3F6C5D5AA957A59DF9C9E1C1F1DA2399AFE25
              573A40577270458EAE2839C9494E7292DBA7E5F676DD833D389515F2A41C6339
              859463D94C9A92632C954C90704ACEF4583C1625E038CF172C70679B82E35BC9
              94E9A9241CE7E94C9692E3CA2621677D1C0D97F83CBA8D753C178DC54D2CBBB6
              FA4BAD17B762DD9265170FEDC757B164DFE1C46297165C71F373B3F63CC3BAA4
              BAE1A6A71C33969B9CE89891DCF858E78C3C3B2F494E7292939CE4D05C64145D
              C4C111F5F7B9A161B2463CFEA7FFB60F99E683026D460EAF0000000049454E44
              AE426082}
          end>
      end
      item
        Name = 'icons8-tokudb-logo'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000007500000075080300000047DA5E
              8E00000300504C5445FFFFFF034E6E019BD50AA0D695D9F0F5FFFF77B5CE079A
              D076D2EE67C1E02EB1DF3CBCE72BB1DF3EBCE7F4FFFF2DB3E079D0EEF7FFFF2D
              B2DF08A1D896D8F2FBFFFF29AFDC7DCEEEF8FFFF2FB2DF42BAE730B1DF40BBE7
              2FB2E03FBBE82DB0E037B6E5E3FAFFF1FFFF64C1E470CAEEDEFFFF8CD4EA0CA1
              D70EA3D89AE1F7A8E6F53BADCF44B0D4B8F3FF82D3E40FA3D513A5D792DDF0E1
              FDFFDBF0F5C5FFFF5CC1DC04A3DB11A5D871CEEABCF4FF6ECEEC18A9DB02A2DB
              42B3DA93DFF9CAFBFFDBF1FCA3E8FF49AFD658BCE4BFF1FF6EC7EC04A2DBC4FA
              FFE5FAFFCCFBFF76CFF31CA9DE089ED603A2DC21ADE17CD7F9DCF6FFADEAFF6B
              BCDA11A1D708A3DC67C5E9BEFBFFDDFFFFCBFFFF77CFF40AA4DD02A2DD1AA8DE
              7ED8F9E6FFFFE4FDFF7BCFEF1CA6D900A1DC0DA2D952BAE2A5E8FFE8FFFFBFF8
              FF66C4E713A4D93CAED98AD9F7CAFFFFDFFBFFE1F0F5D5FFFF9ADEF53DADD503
              A3DD46B5DDADF1FFDBFFFFABEFFF4EB9DF62CBF1BEFFFFCDFAFF77C9E919A3D7
              03A1DC00A1DB0A9FD421AADA8BDCF6ABE3FA4CAED803A1DB10A4D873C7E3B4EE
              FCB6F2FF65C3E915A3DA1CA8DC71CEF1C2FFFFC9FDFF98D8F347ABD503A2DD53
              B7E0AAEAFFD8FFFFAFE3F84EB1D810A3D901A1DB01A2DC16A7DF67C8F3B7EBFF
              E3FBFFCFFFFF90D7F335A4CA01A1DA42B0DAA2E9FFD9FFFFDAEEF9E2F9FFDAFC
              FF9CD9EE48AFD504A3DD59BFE7B1EDFFE1FFFFE8F7FAB9F3FF5ABEE605A2DC09
              A4DE67CAF5C7FFFFE5F4FBD6FFFF7ECBEB1DA5D804A1DB06A3DC25ACDF8CD8F9
              DAFFFFF2FFFFB5E6F75CB7D805A1DA07A3DB6FC8EBC5F5FFEAFFFFF0FFFFF3FF
              FFECFFFFC5F0F96CC3DD17A6D701A2DB20ADDE83D9F3D4FEFFEEFFFFEAF5F7A3
              E7F446B2D203A2DB04A3DC54C0E2AEF1FFDFFFFFBEF4FE67C2DC13A3D502A1DB
              00A3DE02A2DC17A6D874CEECCCFFFFE3FFFFDEF7FBDCFFFF95D6E846ABCB0EA0
              D2099ED20BA2D517A7DA5FC2E4ABECFFE0FFFFEBFFFFEFFFFFC5F1FAA9E4EA9A
              DBE19BDEE4B1EBF6D0FCFFE5F6FFDDEFFBEDFFFFE7FFFFE4FFFFE2FFFFE5FFFF
              E9FFFFDEFEFFDCFDFF41C3BB420000000174524E530040E6D866000000097048
              597300000EC400000EC401952B0E1B0000067E494441546881ED9B7760DB4414
              C6AD80CE4C810083D820F62A43EC5976D86596D59419B6C32A9BB0F7060309D0
              920009B3860261F7CCB26C4301155A1AA00A901433AD20038E6C63406A8663EB
              6C3FD96797F5FD5BDDFDF4BD7BF7EEF9A2BA5CFF30FDF947ED9999DFD3A9A431
              50536622F9DBAFBFC4F59FD3FD35846AB19F7EFCE1FBEFBE8D7E334FAB15B3AF
              F7EBAFBEEC514DCDFDE2F3CF7A8D9A408DEE399FCE568734EB938FBB6B809DA9
              7CF4E1073DEA8866BCFF5E241CAA32540EBEFBCEDB6A8EDE7A3310C4558566A6
              BFF1FA6B6A9E5E7DE5E59732D56376A55E7CE1F97CA6A569CF3D9BF257092A4F
              7DE6E9A7485055ED79F289C7E5CE2A303B328F3DFAC85C325455DBDB1E9E9299
              4C1D9A4C3DF4E003AD85A0AADA72FF7DF7C69294A131DF3D77DF5598393FCA77
              DE717B2C46919989DD76EB2D3DC5A1A6DD9B6FBA3116A406D57A6FB8FEBA524C
              4BD75E73754AA6C334D2BEABAEBCA21942552FBFECD24B52342A642676F145B3
              4BF346EC5E78C1F4CAB1C6A4F3CF3B170E3593EA9CB39B0C6F45CCB3D2679E71
              7A91FD4252CB69A79E926EAC009A9977F249279EE00C6A6AD6F1C7F9CA2ECC13
              1B7C138E3DC631D3D2D1471DD950DEEA4E1D7FC4E18795C53475E821077797D1
              DC8C4B4D39E8C003CA85AACDFBEFB7EF3EC17A87D0746CEF09B683D499F6DA73
              8FB4B3D5CD4C9AB3FBB4CAA02676B75D7D0D631D4077D979A7F2A33BA21D77D8
              7EBB0638B469DB6D6015B094B6DE6ACBA404836E317EF3CDA8304D6D3A660A30
              951B36D978062D6AF3461BC2623C31BDC1FAB4A0AABADEBA310542D5D659BBE4
              010E57EB5ADD2284BA666C0D7A50555DBD1B74CE8753ABD1A4AE0AF36A34AC42
              93BA720CF41B57A14D056513752A685DFFA7569BFA2FC9E1BF7184C30B841AFC
              0F51174C84174C3689C9956852571C0FAAFE82B602C55E425DBE09D4AE79B4E5
              96A5485DC607BAAAE0934BD3F4BA148CCAF52E4911AA2ED104FA4929C616A749
              5DCC07CBE16E9AD49E45D3A06B5C31B608C57575A3240BA1E2D4C20B5183D631
              D1240FA172C1316E87D72E45A00CC37A20545E460CD34E83D9EA36A18C074415
              78EBD9BACAA1ED0CE3802AB4590FBB5B2A84D6318EA89EE8E0E315D96D770F41
              19417044ADC4EEB0518B0ACA6141C88E28D36EB33B3B05C381F62B1F1A35C45D
              4E328F326A0AC36A939633C8B95D77CE78A05705B7E58C723B63B6E441190EF4
              573C39847287B99DD8ADCB63322804FAAD2EB252FE483836DF28C3E82C685DB9
              108BF28702A35C6787228307ED1C3E2468711B1662D7CE645082C7B0FDEAC18A
              68C3968E32C12883345184560949AF97C7D9A35C74EBB6929811AD53973068E7
              081E643EAFD8A35CCC6EBB9DC9A0A4D6614E05F4CA5B36E35A5887DBB5ED1786
              89EA8DC1883903E2390895C7F369A84F9869C392EDDA0A83355CC283D18AB2A0
              0887B8A181BA87B54799B08748D18D63561A7AE710C8AB288EBC2F16257B94F3
              8E3F621A7588581F3E2F65509550C22375D80C1326D81DDDCBB5108C22030F64
              87C9B0DBCB4C343B41DCDC4751DBB4D9D525A411A32B5C6054880CD87D9391F3
              DE5E9E2B9C54A4E8F6E3704E7C82B07B0923C71C92FCBC6E9FDC6D896034CEF7
              0773DFD200FDA633C4B6BC89FC823DA9C84201AE3F3F11601196713E020DC819
              DDBEBA0468A79CB0BD1F2C9BFA6C6F6B552A1960376E6801DB534806DD4BB878
              02006978A0041649A242782402FCA8C08F09D98322A2628F418E51B183004538
              0CA3BAC21A6178343E20DA8FBFAC5139495A7A94807FFAA435EA6D8419C68989
              02765117AE27FD93795083A12E57261321D90D883221F856743129D9500496BF
              59199DA468A201AECB9EA51D5C224E8AEE58ECF82B49458C90668AC8FD798539
              8031298DA2BAEC1C6AE614690759FB2F77EBEAB21C20BC5E14D807DB94E06D55
              6AC86E760F2145194B5E0A16561C08E2447BEF642A1E36CF4FCB9F797ACBF66A
              643D81410D4401618E1CE504EF97BC5EC9CF12B712927850AF54505E96D0B259
              66122CCFF3FDA41535A142C59F09721C31CA0C8AC7C9950A192CF0B38162F213
              B66861A108E7B03214902CF781B12821D281BAAC56AAE871330AAA50639A9A2C
              7A0176914429BAC3AAE76696B48BBC025DA8CBBAD42C90B323505C8D8F97133C
              A9C867A3CB53373A8815FC05A38C82ACD30FB7C0E2B942BD4463758C0E8A1588
              1D99D9C955116AD6658F3D975182EBA82AD49420E6F612D140B89C9EC1A94239
              BF7ACCA6A946FFA982CFDE34A2045BF5E80E8BC3838D2B8A54D43338553DAE97
              745DEAA25C774B2ACCF182504BA395EB2F5179DC417E95A1690000000049454E
              44AE426082}
          end>
      end
      item
        Name = 'icons8-infinidb-logo'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000E4000000E40803000000BF8978
              BF00000300504C5445FFFFFFEDEBEC969495181617070707434343A1A1A18684
              852C28293F3B3C4E4C4D898586A29E9FA9A7A8B4B0B1D1CFD0D5D1D2D2D0D1D4
              D0D1BEBABBB4B2B3ACA8A9A19FA09995968886877D797A464243343031161213
              0D090A9A9697E8E8E8E0DEDF0400003D393A615D5EABA7A8CAC6C7E9E7E8F5F3
              F4D8D6D7C4C2C39D9B9C828081646263141213343233CACACABEBCBD25232406
              00020500010E0A0B1A16178C8889D6D2D36B696A2D2B2C1210114C4A4B5F5D5E
              6E6C6D727071767475716F70676566514F504A48494341423B393A2E2C2D1614
              150F0D0E100C0D423E3F7E7A7BC6C2C3F8F6F7F2F2F23F3D3E110F10201C1D45
              4142B1AFB00C08090D07090701030503040A0809302E2FDBD9DAF7F5F6ADABAC
              7876771C1A1B0B07081814153A3637656162959192C4C0C1EAE8E9F9F7F8D6D4
              D5747273464445201E1F0F0B0C0802040C06080B05070903050A0406211D1E43
              3F40A8A6A7F0F0F09B999A7775764D4B4C474546959394E4E2E3F1F1F1D4D2D3
              ABABAB8785866464644543442927281715160703040804050A06070806070705
              060604050C0A0B2220213937385B595AABA9AACCCACBF0EEEFE3E1E2B0AEAF94
              92937573745E5C5D474344332F30231F201D191A130F100907081311122C2A2B
              403E3F5755566866678B898AA7A5A6C3C1C2DEDCDDF2F0F1F3F1F2E6E4E5C9C7
              C8B7B5B69A98997F7D7E6A68695654554240413331322624251F1B1C100E0F09
              05060301020501020400010602030300000200010100000402030B090A151314
              1E1C1D2A28293E3C3D555354666465807E7FA09E9FBDBBBCD3D1D2EBE9EAF1ED
              EEE2DEDFD3CFD0C5C1C2B5B1B2A5A1A2938F90848081736F706662635B575852
              4E4F4D494A4E4A4B4B47484C4849565253625E5F6A66677470718581829D999A
              AFABACBCBABBC8C8C8DADADAEAEAEAF5F5F5F7F7F7EEEEEEE5E3E4D6D6D6CAC8
              C9BDBDBDAEACAD9C9C9C918F907D7B7C7371726563645C5A5B5250514B494A49
              4748535152595758615F606C6A6B7A78798E8C8DA2A0A1AFADAEC0BEBFCDCBCC
              DFDDDEEEECEDF6F4F52A95D5F10000000174524E530040E6D866000000097048
              597300000EC400000EC401952B0E1B00000C3949444154789CED997B7C14D515
              C73516A5A88D482CB49222B504B012209B144452451A301A8B967D244132C416
              E263766750C14711D199BBBB12C0A8A140407944426278C8BCEEDC0D01A442A1
              22B6D88A16A56A55B4C10608098F04E8B9BB9B80102021EB7FE79B7C92CDEC64
              CFFCE69C7BEE39672EB904411004411004411004411004411004411004411004
              4110044110044110044110044110044110044110044110044110044110044110
              04411004411004411004413ACAC913C79B1A8F1D3D72B8A1FE50DDC128070E1E
              DC5FFBBF6FF7D5FCF79BAFF77EF5E517FF899DBDCF3FFBF4DF7B3EF978F7BF3E
              FA70D707FF8CF28FF777FEFD6FEFED7877FB3B7FDDB6F52FB133B665F3DB7FDE
              F4D6C60DEBABD755851860DBAC054AA965516A52DBD0B5B56FAE59BD6A65E51B
              15E52BCA965FB4BDD74B972D5DB2F8B55717552F2CD1F9C79BFCF34F61F0BF4D
              6A2C983FEF4F738B5F79F9A5BD45273B20EFC539B3F7CD2A9CF90263BACDD1F5
              50304CC01F88A21195688AAAAA8A018079466DCAF4E0F3CFCD7876FA33D3FED8
              3E834F2F7BAAE1C9E716B2E8ADB4F590A628AA4634553B1D6E4E5322D21965C1
              75AB9F983A65CEE3ED1738EDB16F1F9D4CCCB0BD5020501200655C1AFF117DC9
              A56AB22C4B92EC835F3EAF2CFA7CAA44644DB50CCAC53EF2F0430F3E5630A92D
              F626FEE1F70FE44FE0976D5A8622A89A401445037D5C54E497167DADAA5C34BC
              205CBBA419E05893AA7933C6DF5FDA667DE3728FD6E76443581886E50F7A02FE
              A06E4782B42550A3BF6D5D75BB251F48F4C197E873C9924B767B6553852B710A
              8A6951DDAE5A545C31E7BC42CBC64EFDDD7D26778C6511CD509DC482AB278200
              4A541E2696619A4638542CC3522C450DCB07B19ACF27C91A718263156A33FDDE
              316F2CFBED8515DE9375F75D9960CF24F029D48AC8F1DC39FAE15119BF1979C7
              CA43C5236EBFEDB65FA70F9FB5F1D65773AA87197CC9986EEE4B09BE25499441
              B3CFCB5FC30B05AE5681139CB70CBDFFCBD60D0EF9D5FB69D434285CB9408840
              C04196E254C20B3DFA4D0D35B51927DC3B1E27E1D5695187234506375B5C34DC
              1F501A1C3C62D0F9250EDC97CC1716510595AF706BC0A21937FFF2A6B1FDFB15
              6DE9DB8ACB938EF7F9C58E1B7F9EA698BD0DB7E2D3649717A43A246F8AC85583
              5E08291E7586C558DE1D536E38F3137AFD6C6E22E410A208541334025E53A2E9
              25B5E7E4EB7FBAEB819FF4E8FEE3EB12BA355EDBF5DACDD7C0D7906943E2FBEC
              F9D1D5573D75E5833776F961E709A98EB05ABE4EB9738966B2903DEA8AA2734A
              BCBCD30FF83A0E5681FFECCB3654C60DCA6D45DAD95CDAF8D403394E9D32CB92
              25085A49044FFAC091922871FFFABCAA25A8E0AD0975DB7B9DFAB7495FA7E781
              C308F841105441E14ED359497561DDD4EEDF64E55EDA06CBCB8BE2DFE93E7EFF
              A8613AB343BA47202E85C7B8610F585CD0DAF99F4F59CF3C2C404A028C65171E
              7EA9AC2DF24E714FFC4D9539019BA6C8925BF2CA3ED0C773914F947CA25BF63A
              2D9E2E286333173736FFCB67C3193320FA04270F696A38F3C6144F7F2C7E4BFB
              0C73FA1695D71C5A9FCD207C654D80B8B76CFBCEC313CF3AAFBC900503ACC4AF
              3396BCA46BFBED7026CD5932630235216E204441A0C4FD287BBD2018B4428220
              FE90AEB3E48A13D17F98330BA2530DC216955DD870D39C13E7FDF40BF17953DC
              C6F9BDC5DE925704A189361B9C70C619BFB65920E07921C842756F77C8546EC5
              8185902535228B3CF3B821FD71978A2E49862D552D0984FC8C0DDED79CEB9BEA
              1F61F6DA2E71B91D32DAC2C4EB762E306179AB4409F89967FAE9EFF5FD805A4A
              20DBEF61ABF774DC52E9910CBFCD54C5A9895E1027B924D85522F8C09B44F318
              F6C2F4CDD1B3E347ECFEB4E3364FB179EA68482BB0CB6AC4A29B4E1D9F54673A
              12354D0FB0E28E454C0B590D0F4396566531BCA3C00A954F0332216C2D55C357
              C4C6D65994D633C6EB055330D8372D478F50CD2B2BC4CFBAC4CE5259F764D842
              898B2B147D5EF93B10626A964176C6206C5A252E1B762592AAAA6C4DB3D796CF
              A49A28AB4A70DDF1989ADA7350A3BD459E7AE4164F72BF7291898660AA16EB74
              666E88112F539AA8298404D9E5CD17C354224B8916DD196B5B7BEBD7F27D1A6A
              34F90C24589D0A51997EB06379EE5C3C491541518420AB8D1EA808098A4B5452
              697AEC8D4DABCF84540B37F16C9150C519A90A0B1DF83E82B6068A272781DD69
              63F4C0D58C97C18265DCF53D58BB64DA5B77B2904755CF50C9B7169F579412A1
              0A981BFBA0BD8AF23E45F3B4A499AED954539C90F2D4EF271134D57AEC669191
              3509B879CB027F4844803C9C71B4237D6F2B7C48A14E545283F6F8E881711B78
              63CA8BE4EA7EB135D5CCB28D1E66A94E4D1360DBF4C1EEC94B5BEEC8886AD851
              8C454BCE5D53B79FF8542EC96985FC4DCD878E510524827FEDBCB131B4743A59
              B5D03C698AEA084729AFF3C2E56DD4AF2A6FEA2EAB1C182B6B498B4CB8A5D064
              461C19696687DA9E50C003BDBEED193E2D5696A2347FDE9CE1D9AC24A4A98F40
              D213BD2E1EA9DE447773043B896150E3D18AA458984C58C3A0E071FA03FAFED3
              076BF5BA27985D12CC0EE9AC6A56799BE6156DE2AB23C9550F35A795AEE9A36D
              AA5A96D392E4149F1776CFC806CA9B3205CA20A29A34AD3EE1226635DFA1EB5B
              BA9DCD5329638BC77DE79D6F193421FE50B6EA846C973375D9C50FDB5A38D1E7
              C841D83F4C6A176E8F1E7ABAC72846A1A473AA820061EB165DCDC9D625CA50E2
              4A9A458DCE0DE5AF5FB4D171E5C525A66A6AC12A9BE5C59DF9EEB11CE8573D01
              E8142C68FBECC187E206BE78D1A69EEEB3F495833355E8D9A18624A110CB9B12
              7D6752C2AE9E2635C16F7C2474AAA415A1CA05DF8A90FDA84107171FBD98B6E4
              F1F2C339D03B1BB05540442EBEA195333655B3505085B460413B484D16AA1E39
              7E4A56E9B8B34F3D377DFB2DDBFEC6CAE4B4106396691109AE9B4F6B4A86F73F
              754E6ECD1842150ABE74492D2A259757E493229E6F099FEF6426A76F9FD68E78
              2AFBFAC8C699D0991AAA2A68D45C3722BEF5F392A6AF61D492AC44C3A9688247
              0F31AA87068C1A59BFAFE2A5FEF1452F9E4BEEC92F8A0A96951FED91FE5AC69A
              751E3EF8D275BF5F219AE29554C3B4DF7CF0CC51C4C0DDF925D430A1B06B2E0D
              A02CE07937B27312958F0A98997DCBCA1D4BE3BF38BFBA4965F1637B8CC8A80E
              319DD9FE60B605579DBFE43CB3C9C767EF1F46A17D568940201168A2AA989171
              999938615EE7E4473F3854FB6C6565E5D0A1F0A3B261C4F0DA5DEF8FB97EFDBC
              096B95C88CDB34436A20322DE4DF86C94A32BAB79A319B7ACCE0436493F0F24E
              E1C354683435C2074351F76AB2D59B1A4CA8CEAF7BEF8AED098D2B86E44E4CDA
              923471E296A4ADB905031BCB3FA9D871FB8D9D3AA725822CAA5B41C16FE94CF7
              E41CEEDF9AC1D3298DEB9266F309281120EBF14610824872886E476F80360F5E
              210D8767DC941F75A43878B701E72A243C36E32595619A74C0862BF69EDBD4F1
              A537E7F02568419D20F0393CFC1B5F9A91F9507866EDB378B4F3BB474DB23633
              6DFE9BC07DF37B6666121A99565A2A6C3D9A6A1115529CF1FC93D3DBB8D996CD
              4E2FBC57E76E310C954F7809BFD7021FD6135FD834240AB80A2F2F56F8A454E3
              4ED0C2436FCDEFF7F05134F3ACCB6F987DE1D6ADE0E847F90B4D3E4755B8F315
              271FA04221CD4B301E0C824022437405DA194B318D705C59866984E7CE42D013
              F20482FC89829E76605F42FBB6D9E3099BEA9ECB548CF0031D0376560D8C089A
              12EEF425B1A50825510F44A3D3027DBA7F74E1AC9AF2B64FFBB6965F599C3F59
              0BDF557087A54686A8913BA74442993F7151F8609608A01B6E0651C0C9B0E0E1
              8EDA25835735C4655DC4940FE89B9B50D350979C57A5471EC08000D3E176A7B8
              DD6E9EF2DD0E08530A4946D7A34F0E3C0366AEAADDF771633BA79961CAB29EA9
              693850387902DFA88DF0A32B0A91C48D012960CEED4849B168CB630A10E71F96
              96FC44434DC2E60E0F6D4E267DD5B8B466FC88FD9D327266E62D5890EA4AF539
              7AA784A5A626AE5D383A6DF0EA55B7D636ECAE38B6E2860B64C20B73A2A8A97C
              FBBB77A7EFDA393763D4BCB4013D335D2ED9E11041A0232535D179EFC2D1796B
              92578D9CD5B0BBFBECC67E678F563B4CDFCFCA8E97166CDBD667D09E41DDBA75
              1B94151F5FF06951AF73EE2D1D64F9A565455B0BAEBDA6A971CFA0418D60337E
              DBB6DCD2A25EB17CD28B20088220088220088220088220088220088220088220
              0882200882200882200882200882200882200882200882200882200882200882
              20088220088220088220FF0769415A79A706E37E0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-infobright-logo'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000E2000000E2080300000064CEEB
              E500000300504C5445FFFFFF000000E0EDF795C5E5509FD453A0D552A0D569AD
              DB82BAE1E0EDF795C5E5509FD453A0D552A0D569ADDB82BAE1E0EDF795C5E550
              9FD453A0D552A0D569ADDB82BAE1DFEDF783BBE1E0EDF782BBE1E0EEF785BCE1
              D4E7F4E7F1F9ADD2EB77B5DE7AB6DF79B6DF8BBFE39ECAE7DFE0E0A9D0EAA8D0
              EAB1D4ECC0DCEFDAEAF5C5DFF1A8CFEAABD1EABCDBEFC1DDF0BFDBEFB0D4ECB4
              D6EDE8F3FAF4FAFCE2F0F8AED3EBA9CFEAAAD0EADAEBF6F8FCFDF3F9FCD7E9F5
              99C8E760A8D8E2EEF7E0EEF7F0F6FB54A1D579B6DFB2D5ECDEECF7C0C0C2C0C1
              C2BFC0C2C2C3C4D5D6D7DADBDCBFC0C1CACBCCD1D2D3E4CAB3A6430070000072
              0000760000710000850000982100EBEBECD1D1D3A2A3A5858789FFFFFFE8E9E9
              FFFFFF828486939596B6B7B8D1D2D2E3E4E4DCDDDDC2C3C5D2D2D3CECED0C1C1
              C3ADD2EBADD2EBACD2EBB4D6EDC3DEF0DBEBF6C8E1F1ACD1EBADD2EBAFD3EBC1
              DDF0CCE2F3C2DDF0B8D7EEEAF4FAF5FAFDE4F1F9B1D5ECADD1EBAED2EBDCECF7
              F8FCFEEBF3FAD6E8F5FFFFFFDEEDF79CC9E761A9D85DA6D795C5E582BAE054A1
              D57AB7DFB6D7EDE7F1F9DCEBF6C3C3C5C3C3C5C3C3C5C3C4C5C2C3C5C5C6C7DA
              DBDC6B6D6FAAAAACC2C3C4C2C3C4CDCECFE9EAEBA4A5A7D6D7D8E8E8E8B0B2B3
              7E7F828082848182857F8183919294A3A4A6E2E3E4C9CACBFAF9FAD4D5D6A3A4
              A68587899193959B9C9E828486949697B8B9BBD8D9DAADAEB0C7C7C9E4E5E5DE
              DFDFC0C1C3E7E8E8D4D4D5D1D1D2C3C4C6F9FAF9C2C3C4C3C3C573B2DD73B2DD
              98C7E6C2DEF086BDE1C5DFF197C6E6D9EAF5E9F3F9D1E5F3C4DFF0EDF5FA80BA
              E0D1E5F3D4E7F487BDE280BAE084BBE1AAD0EAD8E9F5EAF2F879B6DE999A9C99
              9A9C9B9D9F8F9193A8A9ABBFBFC0E4E3E4989A9C98999B99999C999A9D999A9C
              989A9C989A9B98999C76B4DE61A8D9519FD558A3D66EAFDC75B3DD73B3DD74B3
              DD7DB7DF88BEE272B1DC74B2DDA2CCE880B9E073B2DDB3B4B5B2B4B598C6E66D
              AFDB55A2D557A3D656A2D653A1D597C6E54F9FD469ADDB53A0D56AADDB52A0D5
              54A1D5509FD495C5E57683EAE4000000D974524E53000000000000000000040E
              0E0E0E0E044CE5E5E5E5E54C5656565656560046D5D5D5D5D546000000000000
              0000000000000000000000000000000000000000484E24000000000000000000
              00000000000000000000000000000000084E1400000000000000000000026278
              783C167678787860003C764000507878785C0600000C66787885F9BF7878784E
              00087078787878600000507876120000287878787878782800002478787893A7
              7878783A000002623A0002627800605004D58332F56E83A302C7E512000485B3
              F9E5A538000014F3F5A5520200AFA3890796000000097048597300000EC40000
              0EC401952B0E1B00000A5549444154789CED9A0B5C53D719C0738BE874AE8C3A
              58D7A25479B415C4D596D1968983564085EEBD882264E25057512776DDDC749D
              4F5C1905959762D0C040511E1A710C5187124407288430327578899D226A5224
              99849B74E7DC77429461D9C6FAFBFEBF5FE0DEEF9E7BEEFDE73B39DFB9018904
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000FE3F21
              460D4F398D71761E3BEE0B23DBEBA8521C3FE18B13277EE9699791ED7554297E
              D9F5994993BEE2E63EB2BD8E2AC5AF7E6AB558A8816747B6D751A5F8B54FAD66
              33D5FFDCC8F63ACA141F9A2D9F6FC5E7FF6932F63DE8F518D95E474E7132E233
              7631C5F385A9D3A67979DBC77D104FDE2B52F4F57DF1A597D9DDE97EFEBE3302
              660AC7BFFE8AFFAC5799CDD702BFE11BE4EBEB1B14847F05BDFEC69B7CABE06F
              CE0E21E67C2B34ECADB7E78A7B0F0F0F8F88403F22C3E7CD5F208A47A1486464
              54644454F43BA2F0B7BFF3DDEF7DFF073FFC91B80BE9C298458B636397C4C5CB
              7E2C4497262C0B8F14767F92B83C92D98D88407D4745854745E0ABD29B4871C5
              CA9FBEBB8A6D9BB47ACDDA9FAD4B164E5EFFEE9AF77ECE6CBEFF8B5FAEC56CD8
              B07603FAF5AB5F6F64DB6CFACD07BFDDBC65EBB64FB6EF48D9F9BB191F0A67A7
              FE3E2DEDA3B4B4B4F4B48C5DBBF708F14C14494FCF4AFF282B3B27772F1FDE97
              B75F9E7FE0A042685850F887A2E243870DFA9223474BCBCA2BB8F8B1E31969CA
              137CB3CA937F4C6776ABFE94959695855EF455D135B2AA91E2A99AFBF74EB36D
              CFDCBDDFD373F6CFC2E0ADBD77A7FB1CB379BEEEF6ADFB3DFF40AF5B3DF76FF5
              7CACAA67E2171A2E5EFACB4D9DC96AED3291371A9B9A2F5FE1CE6E69EDFCFBF5
              6B9D9D9DD7AFAADB34ED7FE5E21D7FC3B14E6DA7F66A5B49918CBBF3588316A3
              E19A49CB13323AD45A8ED6BC549FCB6CDAF46AAD7E1F7F9732C35576F7B85A7B
              0D75ACEDECBC764D8BAEACD57620C531CF58C9144EB1DB6AB5EAB627F97327A7
              900F7B59C5401569A52C3C4656F18A4BED0D9DB54B47227416ABA5DFCB3B8473
              8CD38A68D597C9D8F801715C9D97F808C58DB212AD0DADE7A4CC910ABD566B88
              E515633AB8DD735A7BDA90A2F3244AA44899CC665D4AD0745ED17A9353AC234D
              BA9AA98869D3F0CF3A5AD1F7540A69A248372F4F954AE559D3DF67D5B9B93B89
              14D57A84A1155FED683B1B9763613EAC562E70A8D8B24BCDBC35AABA3A959E6E
              5AB4D4A1622EAF78D1A0A6C1DD329420C5305B450B69A17AD78C97F08ABD8222
              AA592E3CC9C128F8DA046468212FAD736A083C3F7E96DFCE1A9232BAB94F1714
              8F14561416B6A796E28B960B8A6D85151585ED2DBB709E8A131C292E6C69C382
              5965A952A9F458615946ABBA28C76708C513B25C8C12F5A4F2A13773E92C9A6D
              143FB969EABAB7DEB1E2A0C5D5C6F77A29CB80C70576120E9CE9BD9DA4FABC9A
              054539BD5559866F7F91A0C884099F45283B863256514F279555ACCCC33B99CB
              8F31BB270A9545F555C4108A2CB4620EB3ED208BAA5AD26C79C125F9DF519404
              6C335B7429739DF8C86CEF1A9DB5777330AF984F6F45EFC3B71FCF36CAE7C2C4
              02191A530625B39353ADC130C359AAC039CC6CE77B26647BA5DCE63015EDB268
              54CDB96B3191971A24ACE2CDC728BE7991345367CF3889424E3B0728CA750AAF
              289F878A63F96EA55A345079C51311CA5641519ADA82D8C34C4A05F83D3928A9
              201CC12846A0B287EA5F5424316416ED1497AC6B3452034D0E153DC29CC3C29C
              D16B8C7F208A257B92E8E4F136974FAE315AEFADE4158F2A310A3C4E155C4AB0
              621C6689128BE8439970AC1ECF0F864C7A07A757ABC8658EC4C4C7B188148B94
              3CEA6166B17EA6B79BD9E2E6ED4F0C1AA8E4D61D1C2BB1D86C2F5DD72D6FD152
              01F1BAAB8E62D799F48C6A40E0DB6D2BDDC7150D3CDDE4E7CBE5F979D8BC5553
              C5295EC58AA5F44E0B4AAF9EFD90128A83F27C393E41A4A835086887A56841F5
              CEA9A9DFAC9BE6FD86BDA2D96CC225D164B298AC77F1A2C7656A1F97319E064F
              927B5AB0A98B25897BB9D922DFA6D829B8F1CB2A66F2E7F2D5BD982B7262455B
              8631DDD0257D0ACA04E99924B15334591E3C30A2D7038BC5FC48C50F5568400B
              8A388BEAEBF4FD1555C90629AAF59A16EE4C9B2C8EA4E2E0814A104FAD6F7CD0
              D5BF7990A2EEAC2B872A94A0072AF5B177A08DE20C4F1DFACCF2B7497F16151A
              3D9DAF765EB155A5C2217546683C7FA68D62BC78A066E08582DA56D190ADE069
              1D8E6217AD981CE87D83421FC764BBE9A6DF2360164B127ED0F0438392AC0DB6
              51DC84A69BDBC27473605E44A42C97F0D1E0B15ACE2BB6D5E7D075445F95C89F
              19ABEF40B0F32B9E6ED48A79CC91BD8985D1D1C5768AB1311CB2E1D54566ED39
              3BD473C0DAD7D86CAFF8DC0C5FFA792AC8BFE17D140BBE88566FDBCEF8897A9F
              B912D591C6665E91A90ED277CA7012D8DA8F4B7F814FBBA203AF65844741A9E4
              325AC85C66DE31BAF217C7306BBB851551E1CB0729F2270EB3F4B3CBEBE0242F
              D24A36D53EBEF4074F388B6AE8E964614E9DBC6A6A1FEA6F32AFC82E6388CAFD
              C21DCA19F35C9C59F52EA1BBB26C4411333A2B5BD0C1ABD932E1E8932BDA2EC3
              BB2CEC13C464FF1A34E534DACEA803F6DFAB4CDFDC4F99EF3705BC958C1F9CE7
              BE22697625BB8C35670841B1003FB42F93E01ACFDD613E6B5E8957A8257BF827
              C674FC91D39F6476DA8FE237203B7ACF02BC849316B48F741609C2FFE20DB351
              67A46C06AAFD1AB521144D2EA63BB52E49925317C67DF0B2B71749996EAC5E21
              281EACCF4124E28BF29F45368B44620C5E69E71DE37A2B152BCA4EE253D479E5
              39444B4C3C519F3A52591414898D4D2843264A94C5AEC1DF8E49E6DC25CD265D
              8FA787BBFBD34DAEFD3ACA78BB89EB012B1A54F47DB7D2336A1413E7B248C4D0
              0F20D5B98E140969B69A292B68CA6C51A80CDACF90C5C1458366D38A4B3AB385
              7AEC9306EAE0F9D3777456B3C5D87F13D54DEA2159B3BA9EFB02C7A6F48BEAA2
              9C5F8647E21B3FDC52E948D127A1A8C3AEF8B5C63F91A2A3BAC830E3D456A328
              8B2A478A28EEB432E5B68EA2BA2804D9DDB4C28F2F2222C56BEAA3CA4A6E7583
              86671BB355751C67AAD4A12241CC2F286E1309AA0FE7C91C2B0EB5469DB8630B
              F79792591E3B76AC3FCFB7BC32112D46DDD987BFC0555B8486625EF25FECBDA5
              695B7777F75DCF67572DF1178EC4E5B31CD268CAE265A2B89C1D719709E5917C
              7926ABA8CC44540B859290E52ED41CD2E355A85E7F4853BDB89C53541EDAAFC9
              11141547C4BBE8B8E6407EB5545074760EB9C0293A8D0D0B1014899030E7B1E3
              1A5845BF9047FD612C607648E81944F39231019B4471EEF1206E514C79855D9C
              DD2C94A16D19AB58558F90EC15B524DA73E372F0FAA82C6777FCB2F9BC826C51
              5CB9F00D5C6E4C9C78171DDF1317172D283ABCE96133F96DFFA017FD5E0D1EBA
              E563385E873897631B5C9A302F2A2222D1A7E0093B1D555FF813452A4CECD00D
              870328FE9701C527637429EEC2D34DDDE75A3101537062E886C3E13FF9DF2E00
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000C0FF8E7F01
              156853255E5A91BD0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-folder-other'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C5000000E7504C5445FFFFFF000000FEA200FE9F00FEA100FF9F00FE9D00FEA0
              00FEA000FE9F00FE9F00FFFF00FEA000FEA000FEA000FEA000FFAA00FEA000FE
              A000FEA000FE9F00FEA000FEC624FEBF1EFEB918FFBF00FEC422FEB517FEB516
              FEB614FEA907FEB816FEB919FEBC1AFEBD1BFEC01DFFC120FECA28FEC928FEC9
              27FECA28FEC829FECB26FEC928FECA28FFFF00FECB26FEC828FECA27FEC927FE
              CA27FEC928FECA28FEC928FECB27FEC928FECA28FEC928FEC82AFFCC33FECB29
              FFC927FEC928FFBD1CFEC726FFC726FFA606FFC826FFAC0BFFC321FFA908FFCA
              28FFC927FFC624FFBC1BFFAF0EFFA000049821EB0000003E74524E5300000A38
              4E542EADF7FD58007CFD895002DB3E819FA5FDE59104F756723EB1CDADDBD3DF
              CDA59D817E3C3AD9D7024E4A87877AFDFD762CADF7AB2A0A36546AE0414F0000
              00097048597300000EC400000EC401952B0E1B00000117494441545885EDD847
              56025114846110132298504C98080A6A9B15054445BD18F6BF1EEFEBE4A4A50F
              AFCB09A7FE797D0BA8548A311696769BC84C4E4594495BE5B3D333B3DF9165E7
              ECD9DC7C3E1AB5765DB6F0276AEB1A7661986AE72ABBB8349CB571955D8E516D
              5C655762D9D15D658BF1ECC8AEB2AB66F7F5F93190C40DD64AEB1BBFECFB5B72
              3268732B605FFB3855A4BFEDB12FCF4855E4A9ECB23DAC2A5232EC0E5A15292B
              BB8B67F794DDC7B307CA56F06C852CD9FF66AB78B6AA6C0DCFD6C892254B962C
              59B264C9921D33B68E67EBCA1EE2D923651B78B669EEB563B47A726ACE4007AC
              3E9E79D7E53996BD088ED6CB2B1C7A7D930B6FE1DBBB16066DDD3FF8F79A77DF
              B53B4E37714EA71D9E818C31BF1FF23489452028FD0B0000000049454E44AE42
              6082}
          end>
      end
      item
        Name = 'icons8-unchecked-checkbox-grey'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000081504C5445FFFFFF0000007D7D7D7D7D7D7E7E7E7D7D7D7E7E7E7D7D
              7D7D7D7D7D7D7D7D7D7D7D7D7D7E7E7E7D7D7D7D7D7D7D7D7D7E7E7E7D7D7D7C
              7C7C7373737D7D7D7D7D7D7E7E7EB3B3B37D7D7D7E7E7E7E7E7E7D7D7D7E7E7E
              7D7D7D7C7C7C7D7D7D7E7E7E7D7D7D7D7D7D7C7C7C7D7D7D7878787E7E7EF0F0
              F08484848585857E7E7EAB6E8B9A0000002774524E530000305C72760C7CE17A
              42E74060FB5E42F9400AE9E50A00DF2E5A747887302EDF78E33E3C0889AA6D6B
              1D000000097048597300000EC400000EC401952B0E1B000000DF494441545885
              EDD8B902823010455124118820880AB2A8E08EF3FF1F685842624BA69CD74D91
              D3A4BB8E83BCD53497F1F5A271E62A43719E1F80C502E199DC26B4C1FA8591E6
              B6B1AD0610278ADB216800E97EE40E470C0D20CB07CEC7D10044CF9DACFED45C
              D1732E9606504A8EE17195E4B83EBF8BA6DFD7923BCF57F759B46E062EC41147
              1C71C411471C71C411471C71C411471C71761C72F840CE32573CAEE90B195AD2
              6A87E026B0B8DB9803331CED9E4FB132C5D0D2874AA909464A653AF446D6A137
              7B9A193A17850DD68AD75FD5962B59FD5E345E35462447DD0FB6226A53E03764
              AE0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-checked-checkbox-grey'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F000000BD504C5445FFFFFF000000A3A3A3A4A4A4A4A4A4A4A4A4A4A4A4A4A4
              A4A4A4A4A4A4A4A4A4A4A4A4A4A5A5A5A4A4A4A5A5A5A4A4A4A5A5A5A3A3A3A4
              A4A49E9E9EA4A4A4A4A4A4A7A7A7E2E2E2A5A5A5A5A5A5A5A5A5A4A4A4A4A4A4
              A4A4A4A4A4A4A5A5A5A3A3A3A4A4A4A5A5A5A3A3A3A5A5A5A8A8A8A4A4A4ADAD
              AD7F7F7F9090908A8A8A9D9D9DB1B1B19595958E8E8EB2B2B2F0F0F07474748D
              8D8DCDCDCDEDEDEDEEEEEEF1F1F18F8F8F707070AFAFAFA4A4A4F4F4F4F5F5F5
              AAAAAAA5A5A5FEAD3AE50000002774524E530000305C72760C7CE17A42E74060
              FBFB5E42F90AE9E50A00DF2E5A7478875A302EDFE33E3C08892CD3F5E6000000
              097048597300000EC400000EC401952B0E1B000001B7494441545885EDD8DB56
              82501006601352494BA3304F9576A6EC649624B5DFFFB10215F74637CCC0CC85
              6BC57FC705DF62719861FDA51273F656291BE67EAE9846393222AE52AD09426A
              5645E50EEA142C4CBD21B9C323AA2644B31571C70C9A107663C99D9C72684238
              ED0557E5D184B042EE8CF44CD57442AECCA509D10D38838FEB059C290F7F7345
              9EDF0FB881D47E72457AE7055770FF98F359397FFECDC8F973CF931E950B35C5
              23724B4D7A342ED2D61E89935AE4513855F3665F442EAE7D62AFCEC76B086E3A
              FB406B30379D78EF1A4FAF815CA0791A2F4183B885B6ED256900B7D236BD442D
              9D7B9BAC4F52BD640DB8BA574FE3A568D0BDD378691AF864B7BC540D7EEF36BC
              98F6B2A921BE8A980768986F56F59ED335D444513C40C30D289DA7D590F36EDB
              D36BD8F139C669E8693C4669F8E1FEA4688F495A865DE1AEB58769929665F5B8
              B0966993B9A0966D31BA909671CFBA8096756DDFA76B3BF8335B7005B75B1C73
              F1C158CB5C04DC251F370C1B32B64A6BB428DC2C2E6EB0AC031D1EEDAABD2A2B
              6D0ECDBE8EAAD45693AE350D59F436C845AF73A3D6D06DAB43C146D66DACD50E
              D235FA77B962F6864A49CE9A3F71BB100132F8293A0000000049454E44AE4260
              82}
          end>
      end
      item
        Name = 'icons8-internet-small'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000C8000000C80806000000AD58AE
              9E000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E3564475852000013364944415478
              5EED9DDB8F1CC515C67944511E104F11E291BFC14208B13BBBC6900410B7A0C4
              101220020705414220022C3042C140308220CB18440CECCC1A1B73BF18DB800D
              C6E19A18C805822181448A1421046467C66B2FA1535F57F5BAFACCE9E99A9EDE
              B5CB7C47FAC970A6FA567DBEEDBAD721CB962D238414A03A092116D54908B1A8
              4E4288457512422CAA931062519D84108BEA248458542721C4A23A092116D549
              08B1A84E4288457512422CAA931062519D84108BEA248458542721C4A23A0921
              16D54908B1A84E4288457512422CAA931062519D84108BEA248458542721C4A2
              3A092116D54908B1A84E4288457512422CAA931062519D84108BEA2484585427
              21C4A23A092116D54908B1A84E4288457512422CAA931062519D84108BEA2484
              58542721C4A23A092116D54908B1A84E4288457512422CAA931062519D84108B
              EA248458542721C4A23A092116D54908B1A84E4288457512422CAA931062519D
              84108BEA248458542721C4A23A092116D54908B1A84E4288457512422CAA9310
              62519D84108BEA248458542721C4A23A092116D54908B1A84E4288457512422C
              AA931062519D84108BEA248458542721C4A23A092116D54908B1A84E42884575
              12422CAA931062519D84108BEA248458542721C4A23A092116D54908B1A84E42
              88457512422CAA931062519D84108BEA248458542721C4A23A092116D54908B1
              A84E4288457512422CAA931062519D84108BEA248458542721C4A23A092116D5
              4908B1A84E4288457512422CAA931062519D84108BEA248458542721C4A23A09
              2116D5490E3C922421FB01F56590038FF4651D4036B2BEFDADC6E4D458A3D5B9
              70ACD9BE72ACD9596EFE5DD9687626C65A9D96F9EFD5E6B79B1BADF6D2D156E7
              E2D189A9B19189CE91EEF0288C028988FD29909135C9A1108309FCE58D667BBB
              11C367E6BF938A4C8DB5DAAF4050E3ADA98527AD4EBEE12E73C019051211F32D
              9091F5C9374D002F365F848DE66BB05B09F45A3082DB63FEDD343ED13E17D774
              973F208C028988F9128829061D6D8A466B8C28CC5F7A3DA8E70C5CB3D9B9BFB1
              B67B8CBB9DFD6A144844CCB540465BDDE38C30B6AA811BC0C9EBBB41BE50D27B
              694E8DBADBDB2F468144C45C09C47E314CBD4209D210963CBB3BB9F7ADBDC993
              EFEFEDF90DBE7B77EE49D3C8DF8269B677987F17B8DB9D57A34022A26E818CAC
              F9EC3053FE5F6DC4F1BF9EA0748C4F7692D31ED67F3B6D4327B9C704FF96BFCF
              A43CB5AB5720F065BFDFFDC73DE931320DC035702DED37807BC4BD2E5AF7F9E1
              EEF6E7C5289088A85320E3CDEE59A6F2FD1F2D18C1290F7593EB5E9A4E26FFBC
              37394309EA739FE8268F9BAF4316FC2102018FFF6D6F7AAC4C876BE05ACBCC35
              716DF9FB2CCDCE278DC9EE59EE31E6DC289088A8432068AE45FF841A7C86534D
              70DEF4FB3DC9C60F6692CD26A02F7CA6B76874C153BB934D1FEE0BFA8C108180
              67CDB1E73DD97B5E5C0BD7C4B5710FB817996616F30C7816F75873661448440C
              2B9085ADE9A34C70EDEC0936C3A2073BC9F5DBA773817F83F97F99EE9CC7BBC9
              C65DF980CF081508C039702E99FE8697A7F7A53142C13D9DB0369FC663279EC9
              3DDE9C18051211C30864BCD53DBAA8730F7FB91F7E371FC81BDE9D4945E3A743
              8BD463A688E4A7F3194420E051732ED9CA856BCA7BC1FF5FF8B45EC937C5C44F
              F16CEE316B370A2422AA0AC414474E3495DC8E0C2E04E32DAFECAB64FB2CD998
              0FC871C35DA692ADA5CD18542060953927CEED1FF353736D2DED2DA6D825450B
              D26733CFE81EB756A34022A28A4050A11D6BB56764507DEF916EF2E05FF4E045
              6B934C7FC5737AD0FA541108B8DC9C5B1E877BD0D2E29ECF545BD5DA33687870
              8F5D9B51201131A8401A139D53CC5FD61E719C6F2AD9E89FD00210FCE0B17CB1
              E7BBA618F4449FA255465581E0DCDF5997BF26EE414B0B70EF78063F3D704356
              4E728F5F8B51201131884046273B0BB462D5A59B4D455C09BA8CD5CAD7032D4A
              5A5A495581801B77F45EF76EAF8F458296B04B36F53622E099F1EC2E1B86360A
              2422420532F2C0EEA3D05F2083E7B2CDBB93CD4AF3ACCF79E22FF3A91BBA7D05
              E5338C4010F0B8967F2CBE125ADA0C3CCBA55B7A458267AFAB758B0289881081
              1CBDEEAB434D90BC2D83067F6DB79488E381777A037C79E0D7030C2310A07D45
              9A7FEA7F3C44A27E499A9D9D75F4935020111122100CC790C1824E39AD634FF2
              F32DF9AFC749A65EF0CC077A5A8D6105F2CCAE99F49AFEF1A8C06B697DF06C5A
              C7A3296EAD72D952D92890882813886DB1CA07095AAB428214451C5951BE7ADB
              BE4EBB10861508B86A6BFE6B807B0A1137AE7386D2BA35ECB0140A2422FA0964
              FCFE2F0E97F58E456BEDF8262DA0242BDFE82DDE1435031751874026CD35E539
              706F5A5A49CB14C7F0CCB9E34D9E1CDBFAFC30974D031B051211FD04A28DAFBA
              A9A01350E362D131F8C3278A9B598BA8432000D7F6CF71F1B3E5C5AC0C3CB37F
              2C18A6A84581444491405C936E6EC83A7AA7173FD60DE67831D41C4340B474FD
              90FD27003E2D6D3FE4F013DC9B96AE08D933EFF2A652D32F0512114502491740
              10414124ED1D2EBB06320A2422348160291D3D208804ABB2B86C0B360A242234
              81984AE8F35A30100593572EDB828D02890829907408BB08825FBDB03BB9F38D
              3DC16084AC3C07E6606869CBB8EDD5DE0E3BF8B4B465E01EE4B96E3615702D6D
              11C80B798E4187C65320112105625E3856309C7DF9E833787A808E3D20C75E61
              5EF8A0E7C8A8AB150BE01EE41C75DCAB96B6089C43F6ED98AFC8FD2EFB828C02
              89085F2058600D03F3FC978F4E362D50FA8139E0FE39BEFFD8E0CDBB19750A04
              E05EFC73618EBC96AE1FB2E371ACD99E3AFE81AF825772A44022C217085621F4
              5F3CFEDACA9978215C24FA3F42E67D1451B740E43C114CE2D2D2F503793226BE
              448D66FB1C978DA5468144842F10F3A27395F31F3F59ED2FFFE9627846D10CC3
              10EA1608EA1CFEB93094444B57C68F4CDEF8E7316C72D9586A1448446402C162
              CF6E72D0EC4B0F9DB3E183314EB29CBFE6EDEA015DB7407EF756FE7C0B0D1833
              A6A5EDC772314A18798751CF696696180512119940465BED45FE0B4711E2910A
              C52B8CD3CA9DC7D06FA66119750B04EB6EC9F3AD0D1C5BE6F3F07B7B7B7AD7B1
              AA7C9A992546814444269031ECC3E1BDECB32B56AC57BE99FFCB8AA1E65ABA50
              EA1608C0745FFF7CABFE50AD08B8B87789A1E569669618051211B30211434B7E
              F97CB58AB52CE3631C93962E94B910881CDF55B58E843CF2CF638A59AFA49959
              62144844ECFB82E4B725B8FDF5C19B3FC1B52FE69B40ABB412F9CC8540E4CA8E
              D75668EA05B7BDD6D3F138956666895120118197B5686DF748F1A293F57FD583
              A20C3983F08A8A5FA28CB910C8E5E22FFF2F2A3643636E8B7F9E94FB3A47381D
              141A05121178596E1BB4D9978CA1E05A408420FB40AA74C4F9CC8540F0C5F0CF
              876D14B4746560CDDF85B23F2460F0220512117859D80CD37FC958155D0B8810
              E43CEE1B5FAEDE0702E64220BF164DB4652B9DF4436EE3D0687596381D141A05
              1211E917A4D55EEABF64748269C110825C3CFAD6570F3C81E09EFCF3E19EB574
              21C80E4353515FEA745068144844E0658D353BBFF15F32D6B145DF4515B0A083
              7FAE15AFED51D385B201C33ABCF301F8B4B4A1E09EB2737D7B9D1588962E04E4
              957F6FD8A2DAE9A0D0289088B00269AFF25FF2C10E82FA8ED7F724BF7D734F72
              BBF9176028FB0AF36591831907C6E4A5D341A1512011910A041BF46B2FFB2003
              7B824004992834EE304241C382767C202DA78342A34022E2EB22108CB9D20451
              84ECF01C000AE4602215C8D7A088B5749B2E847EA47595E29DA88AB8C7E9A0D0
              289088B00239F82BE92F7EFCE52C8FBE3793ACD8F14572E1AD93C9693FBB2639
              F3D265C98A75CF25DB3E9AC9A5035BFF61B7462842AEFDD568B6EF743A28340A
              24225281B4DAD7FA2F799866DEB30FC066DEE74D90EFF8D797B34020675F737B
              72FCE29FE4B8F2B635C9CB1FEFCDA5052F19A168E70572E5FA46AB73BDD341A1
              5120118197556B47A10818CC9BD0D2855287405E1002B977C7BF7BC49171E9F2
              95C94B1F4DE7D283EDFFFC32794E3977CFCE54CDF6F94E0785468144442A10B1
              0ED630434DE44040CC4FD7D285528740B67E940FF6DB37BDAB8A23E3A2EB5624
              DB3EECE48E0110C91623B6D9737F38939C20F6376C4CB417391D141A05121178
              5923139D837AB0A214C88A67FA0B049C7FD58DC9F3EFFF37771C80485064C379
              9147F2DE4236D9A14022227D59C6E66AB87BD1EEB2A1EC2F810054DEFB89049D
              8BE2DEA642A6DD522011910904937DFC978D05D2B4602B03F3D8FDF3A0D2AEA5
              0B653E0482962C0801FFFA7E502412209FD5E4E1F634334B8C0289887D5F1031
              E5B66260CB3D414E79280E81C08F162C4D24F0A162EF9F03604350BF9937641C
              168C028988D92F88981382451B1E0DD8A659A22DDA306840FBD42D1034D91609
              24035F0DFFF72C8D2F12B48CA1331163BACE757B8F8454D061144844640241D9
              D9141172CBFE608D5D2DE0FAB171D74CCF6A1FFB7BD91F5F20D81FB14C200095
              743F4D4626122C1EB7AFD77D3A9D53C2657F0E423281C04C312BB7705CD58944
              A76DC807F4309D85750B24ED450F10084073AF9F2E03CDC4F7BEE50BC4E2B2B1
              D4289088F00562BE20E7F88188FE902AC52CD91752B5C20FEA1608F61C0C1508
              40C7A19F360343537C718CB7A616BB6C2C350A24227C8160F16AD9DC8B665B2D
              E8FA219B7A8799B157B740B09AFB2002011882E2A7CFC0582E2B90E964D1BACF
              0F77D9586A144844F802819962D6FD7E300EBAAF39908BC7616103D44DB4B465
              D4291054D051A91E5420A0BF48A6F39958621448444881681BE860B97F7F1399
              3264FF00B8E1E5FDB7810E96E779DC1415D1F38DBFF855040250ACF28FF38F77
              D917641448444881C064653D763043D0AF2F54150828124986CBC2BE46814484
              2690836D13CF3A05028615090512119A4060A6B2BE430BB618A95B20A0DF9079
              E0B251350A24228A04323AD959E036CB9F0D34CCEB961BECF703CDC4FEF11876
              A2A5EB875C681AC0A7A52D028B53A3E1A04E81008CD1F2CF237159D963144844
              140904D668B657CBE01C6494AF5C8614AB2E6AE9FA51572B96DFB15797404015
              91502011D14F2068DB3715F64FFCE0C40EAFA17345D082E41F8BF15D1BDED5D3
              16518740367E605BAFE64220A068247086CBCE59A34022A29F4060E3CDEE5932
              40B1B85A48BF060253CEB81B7486611D0279E09DFCB090BA05028A460267B8EC
              4C8D0289883281C0B4A2168A4F9B03F6F6BB6C73BE98857A08F631D4D26A0C2B
              10747262B1EAB9164886361238C3652705121321021959931C6A0273A70C546C
              A98C2D00B4C0CCC0485E79DC2083178715082AE8B2154BCE49AF5320A0682430
              407E52201111221018E65ACBFA08C01EE86522912B9DA45B2F077E4586110876
              AFC50A2DBE4030C94936D1D62D1050341218502011112A10986BFAEDC880C542
              0DFD8A5B1820288F09FD8A0C23906CC88B2F10EC723B1F02E95771A740226210
              81C04CC09D242756810BCC57A22870F18591ABA69FBCBE1B14E855058234B806
              D26702B9CB0815C13BAC405044436F3A063062383CBE164562D0A04022625081
              C06CCB567B46062E961D2D6A024670CAF421F344AA0A04FB0E66E9338160A950
              04F8B002291B6A52060512115504021B6BB64FD48A5B68D62D2A3E61C7DB5CFA
              C94E728FA913686933AA08049D82FEB45F0804BE2CC0071588B6AA897FFCA050
              2011515520B09189CED18D66E7533F78332006CCDBF603179D848B44BF089A7D
              512FF0D3F90C2A10CC80CC8A561969DF8BB7FC68A840B2BE0D14A1E46F45F343
              CA40BE512011318C406069EB96D2040CF035B97EFB74AEDFE306F3FF321D661C
              16753C0E2210F479642B8CF8F85F0F2CFA16D2CC8BA547E1CFD2C8AF48952126
              9951201131AC4060693F89D2999871AAF94AA045093DEBA8B0CB39EB001D8F68
              9695411F2A109C1B0D05322DAE852D0C10D458B0018316CB3A0AB516287C31FC
              34406BCA7559D2D7289088A8432099A59577A5AF2403C529D407B076D6E97255
              7403B65D90C5AD10813C618A5572FB69806B603621869A848EE6EDF765F0C501
              64512DC36547A151201151A74060C7B63E3F0C4353E450799F71533997FB8B67
              C08F2251A84090F6D40DBDC52A800E490CB9F7FB41FA09A428E033D07A254522
              BF34C06545A151201151B740323301BA60AC557DD2D5926777A7C18FA659F91B
              7C18C28234F2378DABB7950BA46C4B04E07F69328A9A7C5D36A8468144C45C09
              24B3B1E6D468A3D5D9AA056E08B2450A147D318AB864532610FB2F5622D1823A
              843ABE22144844CCB540326BACED1E6384B246AEBB351FA0A20E61646B57C960
              2E424B8BD1BA5220837E45289088982F816486C5E9DC0A8E9B8C5876CB60AE11
              08B1D598E89C22D7CCD58259E292AA6951579122D1D2B953F418051211F32D10
              DF10B8E3ADA98563E9D60BE9FE24C37C5D70ECA674435253AC43D3B3BB4C8F69
              C1ECE392CD9AFC7D908E43778A9C512011B13F05A2D9D87D9D23B01583298E2D
              69B4DA4BB1E746DA2AD6EC4C1801B4D2FE9674DB6A08A17DFE68AB7B1C8E7187
              079B16CCC0FD9C332D5D68C7A13B45CE28908838D004329F1612CC30990E0CD3
              71488144C4D7592083980C7C2005125ACCA24022820209332DF0D17A85018D45
              AD5819EE14B34681440405126E5AF087E00E9F350A2422289070D382BF0C7768
              CE289088A04006334D041A2EB96A1448445020839926061F97ACAF5120114181
              0C6E55859119051211785964BE490EF93FCFD3EE414DC9DAA40000000049454E
              44AE426082}
          end>
      end
      item
        Name = 'icons8-light-small'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000C8000000C80806000000AD58AE
              9E000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E356447585200000DA44944415478
              5EEDDD6D8C5C651507F009E9CE945211B00AA220BE0122225124313146E35B62
              8C418C111588D60A4A017911447CA151622C48881644220D26A4C1F0C50F2626
              0D8499D96DBBB06DA194D2A62D4A4AA90205C41042A4E13E9E73CF9D765EFE67
              76EECC9DDD7D76FE27F90572F6EECEBDE73C67EEBD7B77B7A5152B5610910326
              89C8C0241119982422039344646092880C4C129181492232304944062689C8C0
              241119982422039344646092880C4C129181492232304944062689C8C0241119
              982422039344646092880C4C129181492232304944062689C8C0241119982422
              039344646092880C4C129181492232304944062689C8C0241119982422039344
              646092880C4C129181492232304944062689C8C0241119982422039344646092
              880C4C129181492232304944062689C8C0241119982422039344646092880C4C
              129181492232304944062689C8C0241119982422039344646092880C4C129181
              492232304944062689C8C0241119982422039344646092880C4C129181492232
              304944062689C8C0241119982422039344646092880C4C129181492232304944
              062689C8C0241119982422039344646092880C4C129181492232304944062689
              C8C0241119982422039344646092880C4C129181492232304944062689C8C024
              1119982422039344646092880C4C129181492232304944062689C8C024111998
              2422039344646092880C4C129181492232304944062689C8C024C52784404300
              8B4DF141CDF5CC44846DA572325E3E2DA995CF11D726F5CACAA45EBE53FEBBC6
              A4FFBF32FD986C13AAE553C3A6D282ECD3871AA8261E586C8A0F6AAE675891D4
              C6CE94C57EBD2CFEFB935AE5B550AF843CE4735E4D3FB75EBE4EBF56F6650B0F
              54130F2C36C50735D7536484EAA2E3EC2C5079022DFA41C819E6F1F46B3F70C4
              DBB2972B24504D3CB0D8141FD45C4F11218BF72479A7BF43FE9BFB4C9197BE86
              0CCAEDA15A39297BF98102D5C4038B4DF141CDF50C12C9BAD262395BDC2A8BF6
              005ACCC324AF7B40DC1CAAA5C5D9EEF415A8261E586C8A0F6AAEA7DF9077F173
              C53EB47867929CB9F6CA7E9C93ED56EE4035F1C062537C50733D7943DEB117CA
              A2BC132DD6D92443B22AF97BA99CED66CF816AE281C5A6F8A0E67AF244985878
              A25C4E3D8A16E85CA0FB963C70F8F1D9EEF614A8261E586C8A0F6AAEA7D7C89E
              63EC450B732E91B3DB1E7D8E92EDF6B4816AE281C5A6F8A0E67A7A89A43EF611
              B9217E112DC8B94886E4C5A436767AB6FB5D03D5C4038B4DF141CDF54C1749B5
              F23E3973EC470B712ED37DD67DCF0EC30D54130F2C36C50735D7D32DD2077FF5
              F26EB40063A0FB9E8C2F5E921D0E0C54130F2C36C50735D7E345B8AF74982CB0
              FBD1C28B899C49D676394C58130F2C36C50735D7E3850CC7CFD0828B911CCB75
              D9617504AA8907169BE2839AEB4111AA636726F5CA1B68B1C5489FF427E36367
              6487D712A8261E586C8A0F6AAEA73D24A597569368A1C54C2EB5D683C3EDA847
              37B0D8141FD45C4F7BC8BBED52B4C0E683A4BEF0C2EC300F06AA8907169BE283
              9AEB698E502D2D90B3C7536871CD077216F9871E6376B869A09A7860B1293EA8
              B99EE6D07758B4B0E693647CE1F9D9E1A6816AE281C5A6F8A0E67A9A432EAF1E
              478B6A3ED163CC0E370D54130F2C36C50735D7D388A4BAE02CB4A0E6A3E65FE1
              4535F1C062537C50733D8D907B8F556831CD47FA4B5ED961C39A7860B1293EA8
              B91E5B243220B5F2BFD1629A8FE4CD605F7AE012A8261E586C8A0F6AAE472399
              183B0D2DA4426C3C31847F7E31845D9F0E61FD51789B66134784B0E3E3F2395F
              0A61CB07F03605903784F447E2514D3CB0D8141FD45C4F3A20F5CA2568110D64
              625108BB65285EFE5108FFBDD6BC7859088F7D086FAF36BF2784E7BF77687BF5
              F4577A1BAC9CE432EB120EC88842CDF56403722F5A447DDBF8AE109E5BD6BAD0
              9BB52FFA7547DA59066DABA61BAC3EC831AFE1808C28D45C4F3620C5FC1A2D3A
              6B78D2457FBA5C467D30841796E36DDA157936A95536734046146AAE2F1D9057
              E122CA634AEE35BA9D358AA283B545060BED430E72CCAF704046146AAE27A92F
              3A0E2DA05C268F09E1A51F3A0BFAF210B69E11C2B6B342F8CF15789B662F5F23
              67A1CFC8FDC87BBB0F9C7E1CED4B1E55397650130F2C36C50735D7938C974F86
              8B278FC76400D022DEF3D510361C7D68BBC925213C731EDE56E9406C92FB97C6
              F6FA1D2D1D161D9AF66D9FFCC2A1EDFAA4BF928B6AE281C5A6F8A0E67AF40F32
              A0C593CBD4F19D0B58EF431E7E07DE7EDB475BCF268DB3860E44FBB67A03BFFF
              07AD5F5B3DF1B1CE6D73D227EAA8261E586C8A0F6AAEABBAF01368F1E4B6EB53
              9D8B78FFC57253FD66BCBD9E4D9EFCBC3DEFD0EF7AA16DC617CA19E7EB9D5F77
              AFE4F463E873F2D063473571C062537C50735D13059C4152B260F77EAD73313F
              F38DFE17B39E55DABFDEF317D959056D9F971E3BAA8903169BE2839AEB29E41E
              A441172EBAB1DEFD59BC7D37FADCA3FDEBE837021E7E3BDEBE0FE9B1839A7860
              B1293EA8B99E6443E918B478FAF6D071F83B5A5B3F8CB747A6DE29F72557767E
              8D2DA7E1EDFB941E3BA88907169BE2839AEBD148EAE562FF6AE2A3A7747EE749
              17FCD40978FB66FA2070FFF75B3F57EDFC24DEBE4F72CCFBF91C6444A1E67AD2
              01D13F680016D14076C8FD6FFB227FE192EE4FC2F55E659FDCB3B47FDED3E7E2
              ED07A0C7CC011951A8B99E7440EA95DFA14534B03DE7742EF67DDF9241381C6F
              FFE4E73AB77F76A9DC4CBF096F3F003D660EC88842CDF5A403A2FFB22C584403
              1B5F2C37EDDFE95CF4E8A65D9FB6B76FF7D2E5724F736CE7B605904BAC2F7340
              46146AAE271D10B9599577D4E1FCA1B8C9B7DACF4F352FFC97AFEE3C2B3C2767
              8A966DE41EE691F7B76E531039D60361A27414076444A1E67A1A21EFA8C3FB3B
              BCBAD09B17BFDAB0A4759BF6EF7CE93D4CF3C70B2467CCB5D961C39A7860B129
              3EA8B99E46C8BBEAF0FE609C3E1F695EFC6ABA01D9FCEED68F17488F353B6C58
              130F2C36C50735D7D388502D1D250BE715B4A006368706243D4639D6ECB0614D
              3CB0D8141FD45C4F73C8A5C7ED68510D6C4E0D48795576B869A09A7860B1293E
              A8B99EE690013935A90DE1667D8E0C881E5BB2AE7C7276B869A09A7860B1293E
              A8B99EF6904B903568710D64CE0C48F99EEC300F06AA8907169BE2839AEB690F
              7D87952139801658DFE6C080E831C98074FC9B85A8261E586C8A0F6AAE07852C
              A6629FACCF8D01499F9CB707AA8907169BE2839AEB41917E47ABC87FD9769607
              243D96A6EF5C3507AA8907169BE2839AEBF122A98D7D132DB6BECCF6808C8F9D
              971D5647A09A7860B1293EA8B99E6E2197257F450B2EB7591C103D86EC7060A0
              9A7860B1293EA8B99E6EA1FFC678522FEF450B2F97591A10DD77FE3BE9D40135
              D7335D24E3879F9DD42AFF430BB067B33020BACF497DC1D9D961B8816AE281C5
              A6F8A0E67A7A89A45A59861661CF666340EA9565D9EE770D54130F2C36C50735
              D7D36BC8E5CA6AB4107B32C30392D4CAABB3DD9E36504D3CB0D8141FD45C4FAF
              11B695CAB2F0D6A20539AD191C90741F655FB3DD9E36504D3CB0D8141FD45C4F
              9E089B4A8BE44C3281166657333420E9BEC93E66BBDB53A09A7860B1293EA8B9
              9EBC11EE2F1D29D7F71BD10275CDC080A4FB24FB96ED66CF816AE281C5A6F8A0
              E67AFA89505DBC24A9551E460B151AF280A4FB22FB94ED5EAE4035F1C062537C
              50733DFD46B2562FB72A7F430BB6C3100744F741F725DBADDC816AE281C5A6F8
              A0E67A0689705FE930B929BE132DDC16431A1079ED3B741FB2DDE92B504D3CB0
              D8141FD45C4F112197384BE59DDCFF57AA0A1E1079AD57F435B3971F28504D3C
              B0D8141FD45C4F51A1BF4772A07A64FDF5EAD13B3AD48FDDF9C6B3CB5E6BF6FA
              FA1376376FF3C6BFBEFD6ACBC7A74E79AAF9E3A9078FD9F1DA836F59DFFE5B81
              8304AA8907169BE2839AEB2932EEBE77D77577FF655718C4EA353BC3AAD5DBC3
              4DB76D0D2B7EFB48F8F18D53E1F29F4E8665574D840B2EAD85AB7E313999BD5C
              21816AE281C5A6F8A0E67A8A8C5E07E42E1982DFDFF5445879DB63E1869B3787
              6B7F39152E9521F8AE0CC1F9CB6B5D71406860A8B99E22A37940FE940DC16F56
              E9103C12AED121F8C986B0F4CAE987A01B0E080D0C35D75364DC70D3A67B96EB
              105C310E17771138203430D45C4F9171F50D0FAD458B3AAF0BE55EE3A26BD685
              2B7EFE50B8FED79BC2AF6EDD126EB9636BF8C39FB787BBEEDDB1327BB94202D5
              C4038B4DF141CDF514197906E482CBEAE16219822BD321D8186EBCF5D170CB1F
              1F9721D8D171CFD28C03420343CDF51419ED03D23A04D999201D82ED70F1F782
              03420343CDF514197A0F726808BA9F09FAC501A181A1E67A8A8C229E8334D333
              8DDE7BE8D0E965989E897408B3972B24504D3CB0D8141FD45C4F91917740A67B
              28D87CB9D6C001A181A1E67A8A0C3420ADCF43361F7C1ED2CB43418403420343
              CDF5141D3A083A04C3781EA2DFFACD5EA6B04035F1C062537C50733D4587BEC3
              EB730CB4C0FBA143A6C3A64357F4D94303D5C4038B4DF141CDF50C23F4DBBDDE
              3D443BDD4E2FB7F467B1F467B2F4C752F42CA497657A7976F0724D2EDFB22F5F
              68A09A7860B1293EA8B99E61847E5D1D92C6994487A0F1645C6FC4F5865C6FCC
              F5065D6FD49BEF5920198E61EE6BAF60B1293EA8B99E61862E6CFD895DB8E87B
              A06791619D391A816AE281C5A6F8A0E67A66229A9FB0EB59A59BC676FA39D9A7
              0F35504D3CB0D8141FD45CCFA807AA8907169BE2839AEB19F54035F1C062537C
              50733DA31EA8261E586C8A0F6AAE67D403D5C4038B4DF141CDA54185D2FF010D
              7AA09816EFD6B30000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-mariadb-logo-small'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000C8000000C80806000000AD58AE
              9E000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E35644758520000114D4944415478
              5EEDDD0B5054579A0770F3984C32BB3A95ECEC6CED56ED8CC9241A35BE5F28A0
              A820288A820D48DFBEDD3C6D9AA73C1A44C16E0544051F24C447C418657C6112
              350F1F5197EC669232D1C93A59ABB24B66CB5A6B9CCCCEECD6AC9549326362CE
              DED3E7B634FA01FD40CF55FFFFAA5F193FE897DF3DB9E7DCBE7D7B80DBED0680
              1E90450010C822000864110004B2080002590400812C028040160140208B0020
              90450010C822000864110004B2080002590400812C028040160140208B002090
              450010C822000864110004B2080002590400812C028040160140208B00209045
              0010C822000864110004B2080002590400812C028040160140208B0020904500
              10C822000864110004B2080002590400812C028040160140208B002090450010
              C822000864110004B2080002590400812C028040160140208B002090450010C8
              22000864110004B2080002590400812C028040160140208B002090450010C822
              000864110004B2080002590400812C028040160140208B002090450010C82200
              0864110004B2080002590400812C028040160140208B002090450010C8220008
              64110004B2080002590400812C028040160140208B002090450010C822000864
              110004B2080002590400812C028040160140208B002090450010C82200086411
              0004B2080002590400812C028040160140208B002090450010C8220008641100
              04B208F220060BD52490073158A826813C88C1423509E4410C16AA49200F62B0
              504D02791083856A12C883182C5493401EC460A19A04F220060BD52490073158
              A826813C88C1423509E4410C16AA49200F62B0504D02791083856A12C883182C
              5493401EC460A19A04F220F2C3187B50F380E72F5493401E444EB401F150CDDA
              DDB131A615E7662CA864B1C9D59FBEFEE60793C826813CC89DC97BEF7DF2B829
              6BC313350DBB17C49BDD0D3149CB2E3F392E83FD748CED8624EBEAE36493401E
              A4FFE26ADAFB23A77B47AA92DBD838293AFFC50C7BFD7F24989C97A64CCBBE34
              734E018B88CA62B3675859EE4295B52E51D87393BA06073726AAE09FC926813C
              4868B978F1E2234EF7CBA933132ADE8D8BC9FC4B89C9C276681BFF5B256676AA
              DCCC3A9C66F66E45977FD2FE5E90A432B7D9C25EB62B6CCE4C2B7B6EA28D3D39
              D6C6C2E7946280180D127CB6B41E1BBBD0E2FED4126F65FBF3956E03A12755A9
              16E6D0F620B6792ADB906EF1D4CE68832656DBB3C4A5541F209B04F220C16559
              EDCBA9B171B95FEFCAED3E30F89E6395220641A949651D3E3F7B3E53617C0F53
              99626199F355F6E652517FA7CCCC868CB7316B5E93836C12C883041E77D3BEC2
              E4F82C7652DBB0BD1B3FC707CB086DBAE45D538C0DB3DE9862F1C1E04CB6B015
              8B2DAC4CFB930F12EFEDEA2D16362AD2F14567E76FFF966C12C883049625459B
              236C494B3CD322EF06EE151161EDB6E84ED7A651DE9FF1A9155F77EC76289E3F
              5BB2C49EE70D6DE08C9A6C634B576C6BF23C00D5249007F13F6D07CF0CB5A414
              7DC117DFDE0DDF8B0F1853ACCA866A53A591936C6CC902D5B348E73F3B5A2CF6
              12D5DADE638D6A619B332CEC70B1C28E979A59749495CD48A83C80370A0D0AF1
              2F1D1D1D0F9BD5E567F9C67EF3E0E8CB810231185ED4F61A7CA06CC956D8CFF3
              143663BA8D45C697EF73B95C0FEA0F83016234887FB1D8D756BCA04F8B42C1D7
              241BD3B5354758064BCB59B7D7E5625D8383876A12C883F49DA6EDAF3E5BB438
              E7CFD4061F08BE17E187774745E65E2FAEDAEAE6E760E90FD115AA49200FD277
              7273579F3B71D311AB40F1C5F9C4A956363A2ABFB37EE3FE48FDAE6F0DD52490
              07E93D2BD7ECC968D2DFD00B56A3CDC29E1E67630B14F7C727DFBFF063FDAEE9
              504D0279909EB36B57C7A3D98B0BFE8BDAE8FDB5DE6A6183C7DAD8ACA4E5A76F
              1CA9EA2D5493401EA4E764E5AFADDDE7E72924943DDAB4EA67DA9E23629EF3F3
              5FFFFAF3DEF71CDE504D0279103ADB779D78B642B57F436DF8FEE02725CE986E
              654F8DCF60A5AEED09FADDF61DAA49200F726BF85428277BE5C99B4F25094473
              86E279377D6662E5677E4DADBCA19A04F220B726AFBC65C1A64C2BB9E1FB839F
              A0C8DF21E7036451FA9A72FD6EFD0BD5249007E99E2D7BDF7ABC482DFABDEF59
              B8816ACB53D8606D700C9D9CCD8E9FF9D711FA5DFB17AA49200FD2153E15CA75
              D41EE42710521BBEBFB21254CFDE63DC8C824B014DAF78A826813C4857F2CA9A
              539AB3839F5A71FCB31DDE53DEE352AADFD2EFDAFF504D02791091B59BF60F2B
              4FCBFC5F6AA30F04FF94201F1CDC3CB32BB0F5070FD52490071930C0E96C1D58
              9CBDEC0FFCD02CB5D1072269B6985E0D1E9BCE56F5764A494FA19A04F2DCEF39
              72E417036DE6B20F8F95D21B7C20F8C988CF8C177B8F51D3F2D8EBA73EFC1BFD
              61FC0FD52490E77ECEB2862D8FABE6D20F435D947BF10F4379A75753E34A7FA3
              3F4C60A19A04F2DCAF595EB76B4C6E46C5FF782F9CD01F12F5E915373DA1E288
              FE5081856A12C873BFA5A3E3D2A34B4A3655172C5E729DFAE86CB04E68D32B7E
              C6AE77802CCE6E58AD3F6460A19A04F2DC3F610F64146C8C36AB2B7EE3BD1E55
              7FE267ED7A07C793E3D2D9969D6FCFD31F38B0504D0279EE8714556D8D59905A
              75AEC864BBE5523DFD2535AE6B7A35223CF76B7E2D5EFDE1030BD52490E75ECD
              C58B979FB0391AB3146BF5A5A526ABE7826ED486DD1FF8546DE884AEE9558C69
              F9AFF4A71178A826813CF75218630FD56DDC171F93B4EC253539FFCF6BB5690F
              75FDAAFEC6AF52E21D1C5C82655570EB0F1EAA4920CFDD9E4F3FFDC3C072D70E
              CBAC8595AD494925578B17A9ECD5C2D0AF3E12087E0D2CEFE0E09FFF58B5FEE7
              E1FAD30B3C5493409EBB2DAEF6F6472A6B77452DB2D6AD9B9FBCEC97E64487E7
              329EA17CF22F14FC323EE3C2BAAEA8386E66C15757AE5CF981FE74030FD52490
              C7E83979F2C25FF1AB802C50DD35F149CEF7D4458EBF949A2C6CA75DB971E542
              99F805E0F8A9EDDE01129D5475467FEAC1856A12C863C4B4B51D1B94BDB45959
              68AE7E23CD54F86569B2CA5EC955D869030C889B2D5DD47578974BCEA82FD15F
              4670A19A04F218291BB61D1EA9DAD7EEB024177EE9325B6E7C3D8051F1931B27
              4DED9A5E69EB8FEF5ED9777A94FE72820BD52490C7082977B5CEB6E7D57DB434
              25FDDBD78AE4AC2582C1A779BE7B8F29712597F597147CA826813C32535AF352
              AC4D293F5FA75A0D397DEA8B1ADF75F48A3365D4EFD15F5AF0A19A04F2C84863
              F3C1E1050575E7D758BB7F03D3DD849F01EC7BEE15D7B2F34D93FE12830FD524
              90E74E8631F6BDECC2C6CA2A4BF635231C810A057FBFC577704C9BEFBCAABFCC
              D0423509E4B953397EFCDCDFA7AB9527F9D1286A83BB9BF0BD07FFA21CDF0162
              CA5CD3A2BFD4D0423509E4B913D973E8CC547591E333A31F95F217FF0A03DFC1
              3174720EDBFBEA7B4FE92F37B4504D02796E77366E3D1A5E622DFCF26E5C8453
              B6E7289EEF34F71D2053E7945D0EF8F23E3D856A12C8733B93EF7CE11F2A734A
              BEEE8F8B2118C1DB2566367E4AF72FEAE4E6A6AEFC85FE92430FD52490E776A5
              BDFDE2234E47F56777E26C5A7FF1F54F9BC3FF35D0EB458AE7CD40FEDFFCCF05
              31DDA7565E3F1963DBA0BFECD0433509E4B95DA9AADABCEB48B17116E47C030F
              8FB07ACE9DA27E4EE1DF6BCE6FC70F45F32FFEA706078701720FBB1D59D3B42F
              E1F96C1BB9D1C9F27CA6C29ED2D60E47FD3C50C03F606589573D03C4F774764A
              5C4ACD71FDA5871EAA49204F7FE7F0898FFEB1D89C1BD2B732DD0EF3A3AD6CD8
              04DB8D29535FCAB4BD07FFDEF3B439BD0F0E2E725EF939FDE5871EAA49204F7F
              A6B3B3F3FBA9A965C7FBE3226CFD6997B6F6E01B32FF4A02EAE737E3CF7F987E
              7D5D7F84C5965CC551AC7B543FE681BC92CD875F5A12D8BA837FE0885FF0B9BD
              4061DB7214CF175EBACD1656BDD8C29C29424D9AA8F12B87B464296CB7B6C11F
              2ED66E576EEEF323B5FC220DD322C59127BB3655A27EE766FCF326370F82DE3C
              352E83EDDE7F6A88FEEF105AA826813CFD91F3E7CF7F6F916D95DBADF4BD01F2
              0D9A2F9457680320254EF59C2ECEBFC78FDAF0FAC2D714A327DB3C036091361D
              CA4B543D83A9491B645BB315F682B6EE8899D1755896AF43A8E7E48BBF99F9AC
              CF0518FC65CA5CE3D2FF39420BD524902794B4B477FC757EC596D8E8C4CAF7CB
              927B9FBE1C2A5458BEB6018FF5F978EA9DC44F0DF1E7923FB90BFB5E735022E2
              CB7F7BF1227B44FFA7093E5493409E9E72F2E4851FDB8B370DAEA9DF3DBDBA6E
              8FD59451671D116EB7A6D9D76E9D3AA7B4D59CB9FAF359D1D95F58E7593D737C
              6A63E3F8E73BF869E13DED25F845D68687DBD9D819056C4274111B37B3903D17
              E160CF4CCC227F3F58C9DADE8A7A7EBE0E6AD33CEF19BA7CDA34223CF796FBE9
              4D46E1867AFD9F2FF8504D0279BC696D3D3230A778935D55971DCE4B2FBB9A93
              98F14D698A8D2DD7A64275168BE77B2FF8B465AF363DE28740FB3A1B97AF0F4A
              4DEA2DA7848F88C8BD169D58F571527AEDA6AAFA572C3BF69C78DAE56A1B74EC
              D8D94167CF760E3A76F6ECA0E6E66383E214D7A04387FF655641D58B96446BED
              72ED36DBC3E7969D1E1D95FFD9F859859E81E57BBF7DE96B7AC5D742F1B3BAF6
              6EF3D25CAFE4395B32874CCEFECEF77E7AC3CFC9AA6968736B0BF6E0F7245493
              401E9E9CA20DE672D5F1477E65107F0F83F6869FAF34D9E7A3A89C3605B99C53
              B269E5F6F6533FF43C6890E1478BF817FCF345B1625F6B52ECEB9B27C614EDD6
              F66A17A6C4957E356CEA926E8FCBF1750E1F00D473F5E20705BCBF3F6DBEF343
              6D5DE5B9328973656BF2C4E8A2FFF3BDBFDE8C892AB85654B5E3EF3C4F369850
              4D02790A966D29AA365BBFA3369A40F10B38F3779C07FB9CCC377D7EC5950AF7
              4E87CBE57A50DF046E5BDADBDB1F9A3EDDF5F0DBA7CFC5A46535CCB738D657CC
              5C58799D7FBE9D7ABE5E2FDBC517FEF3E73B79F6D2DF77BCFFC9B3FA5D7A72E2
              838B4FA46537AC9B125772A5A73D177FCD510915975D0DBBA3F59B0517AA4920
              8F9ADF581F36D3E179538CBF63CC17A91C3F12446D4C3D79214BE9767DA809B3
              8AFE94EB6C59CE2F1AADB7FE8EA77ACDEEB993C26DBD7E9CB7BD5061232789E7
              ACAD83AED9CB9A87EB3727D3F65A479829A3DE312DBEBC56BB4DEDF0A9F65AD5
              B1BE76E38B8766EBBF125AA826813C3C6F9DFAE8A982CA2D6591F39CD5F3CC6E
              D79CE415BF6BF6E3902877B858618B7DDE6D1E3D3DFFDBB969354D1D1DFFFE23
              CF9D4BCAF92B577E109BBCE2CA3A6BCF039D5F8171A27E76EEC888DCEBF51B0E
              2CD66F2E2F5493401EDFF0797DAABAE26C931F5F0F70B4D8EC79DF6188FEC9BA
              91918EAF16DA6A371E3DF1CBA7F5BB931AD5D1B8326EA6B6F6209E3BC7CFEC1D
              3D591F1C918E6F8B576C4BD56F2A375493401E6F76B69D4CCC33E75DEDEDEBC8
              F854655BB6E2B9D4BFF7E8D4C848C79FB485F2FE77DEF9F819FDAEA4A7A1B97D
              FCB869F6EB070A6EDD0BF28310AB15CB8DEF12D416F5FFBD79CBEBC9FA4DE587
              6A12C8C353B2E1E063A98B8AAEF277B8F9FB165EFCEFFCCAE57C91ABCC553D73
              757E99CD91D3F2AE4D4FA8F820AFB265D9BAD623033D7762909C3FFF9F3F0C8B
              5D7A815FAFF7E6C1C14F675910D3B54ED2A6949FEC7DB5A3DB825C7AA826813C
              3C6161258FCD4DADF9D5F859859D3F1D6BEB1CAEFD5F555B647FFD93D1D6CE91
              118E4E6D2EDF191657B22FD156BBA6B1E53513BF34A8E786064C7246DD363EB5
              F23D5CCDDFC5E7E761798F54690BEB6FF2CA5B5A2F5FBEFC987E33E3846A12C8
              43A5A3A3E3E18E4B971ED5FF7AD7A4A4E6A5C4315332BEE3070EF854917F3F48
              42B4F5C667C8874CCABE3E6DBEF3D0F3DBDF30D65EC3375493409E7B25AE0D07
              9F981853F4C7B0702B9B1AD13528B88931C55FA464351C5ABDAE6DA8FEEBC60D
              D52490E75E899ADFC4DF97F00C889F4DC86491F1E5BF4BB2D6B5BBD7ED55EEC4
              9B94FD16AA4920CFBD12C6D883B58DFBA3B28A3745BDFBEEBF0DD3CB775FA826
              813C88C1423509E4410C16AA49200F62B0504D02791083856A12C883182C5493
              401EC460A19A04F220060BD52490073158A826813C88C1423509E4410C16AA49
              200F62B0504D02791083856A12C883182C5493401EC460A19A04F220060BD524
              90073152060CF87FBE8487BEB7AC100F0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-csv-small'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000C8000000C80806000000AD58AE
              9E000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E356447585200000A804944415478
              5EEDDBFD93576519C771D448D4B2ECC1142B43AC70A6ACA9CCF22112B34861A6
              1F9B26B107ADE4214108510817104D1E54D010C48578127081CA58AD98A6A9FF
              A01F9AA6DFFA17EA1F387DAFBDE6EC39F7F97EAEDDFD2E5FF4ECDE6F675E3F78
              9DFB5E9DFB3A9F3DE7DCE7EC8C81810100015904E06411809345004E16013859
              04E06411809345004E1601385904E06411809345004E1601385904E064118093
              45004E1601385904E06411809345004E1601385904E06411809345004E160138
              5904E06411809345004E1601385904E06411809345004E1601385904E0641180
              9345004E1601385904E06411809345004E1601385904E06411809345004E1601
              385904E06411809345004E1601385904E06411809345004E1601385904E06411
              809345004E1601385904E06411809345004E1601385904E06411809345004E16
              01385904E06411809345004E1601385904E06411809345004E1601385904E064
              11809345004E1601385904E06411809345004E1601385904E06411809345004E
              1601385904E06411809345004E1601385904E06411809345004E1601385904E0
              6411809345004E1601385904E06411809345004E1601385904E0641180934500
              4E1601385904E06411809345004E1601385904E06411ED571405DE0672F1D17E
              AA9991C5C3A7172C1A1E3A37F59C1A9CFFD783B366F4F91FB54611B9F8683FD5
              CC48E744FBDEE2374F1553D1A23787DEEA7748D41A45E4E2A3FD543323533920
              A6DF21516B14918B8FF653CD8C4CB5802CFDDB9FBA6AFD0C895AA3885C7CB49F
              6A6664AA05E4E8BFFF59BCFAAF7F74D5FB1512B54611B9F8683FD5CCC8540CC8
              7FFEF7DF0B1612B54611B9F8683FD5CCC8540DC8850A895AA3885C7CB49F6A66
              642A07E4428444AD51442E3EDA4F353332D503D2EF90A8358AC8C547FBA96646
              A64340FA1912B54611B9F8683FD5CCC8740988E94748D41A45E4E2A3FD543323
              D32920E67C43A2D62822171FEDA79A19996E0131E71312B54611B9F8683FD5CC
              C8740C88996C48D41A45E4E2A3FD543323D33520663221516B14918B8FF653CD
              8C4CE780985E43A2D62822171FEDA79A1999EE0131BD8444AD51442E3EDA4F35
              33924340CC4443A2D62822171FEDA79A19C92520662221516B14918B8FF653CD
              8CE41410335E48D41A45E4E2A3FD543323B905C48C1512B54611B9F8683FD5CC
              488E01312A248BDF1AFAAE5AA3885C7CB49F6A6624D7809866486C2DD41A45E4
              E2A3FD543323532D204BFE72B658F6F73FF7CD77FE7866F46713904CA86646A6
              5A402E24029209D5CC0801A910904CA86646084885806442353342402A042413
              AA9911025221209950CD8C10900A01C9846A6684805408482654332304A44240
              32A19A19212015029209D5CC0801A910904CA86646084885806442353342402A
              042413AA9911025221209950CD8C10900A01C9846A6684805408482654332304
              A4424032A19A19212015029209D5CCC8F906E4BEB3AF175F3F79B0B8EDF0DEE2
              CED7F617DFFADD6B725C64D1F090CF3FB2AFF8DAF1C162618FF3FB8980644235
              3332D9807CE3F491E2634F3F51BC6BC50F8A190F7FBFB2F4FEE2CAC796155FD8
              FF829C57B220DDB0EDC962E6CF7F98CCBFA8E3C31B57155F3DFC72327EC1D0A1
              649C99B7EBE9644CDD558FAF48C65EB1E6A7725C1D01C9846A66643201B9FDE8
              2B5D27B672FDB31B8AC59D2B4473BE5D3166AD7A50CE2959506EDAFD4C32EF8A
              353F4BC67C64604D72BC74EF1F4E16172F5B928C9DB37DA31C5B474032A19A19
              E93520F79C3932A170943EBB677B32DF4EDECB57FF448EEDD2B91ADDFA9B5F8F
              CEB593BC7E7CE6233F9201B4DBB5FA3873EBA1EAE744084826543323BD06E4BA
              A7D62527DEA52B1F2C6EDEB3A37355D9577C697057714DE7B77AFDF8BB3B27F1
              BD674F8ECEBFF9E51DC9710BC1279FDB5CDC71EC95CEFC17476E85EAC7ED56A9
              9CFB95437B9263C6AE46E5F192DD7AD5C75CB2EC81E4FF21424032A19A19E925
              20F6DCD0BC75B9BDF3DBBA3EC61EBA2F7B34BD42DC32B87BF4F8EC2D8F25C766
              6F5997CC9F7F6230396EEC79C78ED9496E277BFD9805AE3EDF5CFDE4EA644C74
              2BD6444032A19A19E925207685A89F7897AFEE3CF88A5B9C4F3CFBCB64DC9CCE
              C37879EC431B5625C76E7A317DCE3076EB541F633B64E5313BD9EBC76CA3A03E
              7751C7CC15E92D60F3362F424032A19A19E9252037EEDC949C78D76E5E2BC7CD
              DB9DDEE2D86FF4F2D8B59BD32BC8D51BAB6325BB62DC7DEAD0287B6E298FD9C9
              5E9FDFDC9D9A7FF24072DCD8CFA88F8910904CA866467A09C8C79F599F9C7876
              A550E3ECDDC8C2DF1F1FF5ED374E8C1EEB7A06E9B09F5B1F3316B5DDFBCDDF1E
              1B3DDEFCF9EF59FB70327F2C042413AA99915E02D2FCED7F63E7E15A8D1B8B05
              A1F98C62EC617EDE0B5B8B856F1C97F3EAECA4AFCFB587FBF2D847B73E9E1C9B
              BB635332772C042413AA99915E02D2BCFF9F4C40CC9DC7F6875BC5F6E271EE8E
              8131DFC837B77B6FD83E307AACB985DC7CE13816029209D5CCC83B111073D7C9
              83C5FB9F48DF76D7D9F6B16D1DABB9CDEDDE722BF89E334793BA85CD6EF79AF3
              23042413AA9991772A20238687465E047E60FD23C9CF2D5DB2FC81E2AED7BBDF
              73D8495FDFEEB5AD677B90FFE2ABE92EDB359B7ED135772C042413AA99915E02
              62EF2CEA27E0DC9D13BFBF1FCF6D47F78E7C8355FFF946ED729966586D7EF3D6
              EB737B77CAB911029209D5CC482F01B9FE571B9213D0769FD438DBB9AA6FD3DA
              E7296A5C97CE15C51EAAEBFF0D7BD3AE9E479ADBBDF6F6FC7DEB9627B5F205E3
              4411904CA866467A09C8A79F7F2A39016D574B8DFB54639C7D7E62F5F9270E8C
              9CC4A5ABD6579F9194EC56C93E54ACCFB76FAB9AE39ADBBD1F5CBFB2B8A813A6
              F2DFAF5CBBB46BCE78084826543323BD04E4CB075F4A4ECA9137E9625CF356AC
              DC65BAFBD4E1A46ED4D5A1F9097DF4A16173BBB76E32CF47042413AA99915E02
              62BFDD9B276FFD1D84B113DE1EAEEB636E39E063EC3BAD59AB1E4A8ECDDBB535
              996F1F1FD68F9BF9C7079331250B5E736CC99E49D49CB110904CA866467A0988
              B13F72AA9F88172FBB7FE4E59CFDEDC69C6D1BBB0260FF5EDF6AB540D48FDB33
              865D713EF3D2B691EFB29A2F112F5DF9E391EFABEAFF0F25F575AFB1772CF79D
              EDFE466C3C042413AA99915E03620FE0EA4DB8D439F9ED03C7FA7C0B4BF3AFFD
              C632D6878623DBBD8DAB9599BD457F23361E029209D5CC48AF0131B633D5FCEB
              BE267B37119DDC761BD6DCA6EDD209977D1CA9E6D7A99FF3F97DCFC9B1E32120
              9950CD8C4C2620C67E7B5B006CF7A8FC6CE4E2E54B8AF7761E9CEDF376DB6552
              F3EAECA1DF6EAFEC36CC6ED56C17EAB2471F2AAEDBBAAEB8E3E87E39A7C9AE50
              F6FEA46EC2DBCA0D042413AA9991C906A4EFC4DF95BCDD084826543323AD0948
              0B10904CA86646084885806442353342402A042413AA9911025221209950CD8C
              10900A01C9846A6684805408482654332304A4424032A19A19212015029209D5
              CC0801A910904CA86646084885806442353342402A042413AA99110252212099
              50CD8C10900A01C9846A6684805408482654332304A4424032A19A1921201502
              9209D5CC0801A910904CA86646084885806442353342402A042413AA99110252
              21209950CD8C10900A01C9846A6684805408482654332304A4424032A19A1959
              3C7C7AC1A2E1A173183A676BA1D62822171FEDA79A897E2B66FC1F620E95D554
              2929520000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-final-state-small'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000C8000000C80806000000AD58AE
              9E000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E3564475852000010144944415478
              5EEDDD6D885CE51507F0508A0409222252445442321B42DB2F1611912222E207
              111111092245444A3F483F888884A8841082888858D9EC0649251F123133AB8D
              36DDBD3BA6A90D4583888A689ACECE267BEFAC210409419610B6E7DCF3CC7A67
              E67F5FE66577671FFF077E2439B977EECB3C67EE73DFD7BDF4D24B4494022689
              C8C0241119982422039344646092880C4C129181492232304944062689C8C024
              1119982422039344646092880C4C129181492232304944062689C8C024111998
              2422039344646092880C4C129181492232304944062689C8C024111998242203
              9344646092880C4C129181492232304944062689C8C024111998242203934464
              6092880C4C129181492232304944062689C8C024111998242203934464609288
              0C4C129181492232304944062689C8C0241119982422039344646092880C4C12
              9181492232304944062689C8C0241119982422039344646092880C4C12918149
              2232304944062689C8C0241119982422039344646092880C4C12918149223230
              4944062689C8C0241119982422039344646092880C4C12918149223230494406
              2689C8C0241119982422039344646092880C4C129181492232304944062689C8
              C0241119982422039344646092880C4C129181492232304944062689C8C02411
              19982422039344646092880C4C129181492232304944062689C8C02411199824
              22039344646092880C4C129181492232304944062689C8C024AD3D8B8B8BB40C
              E0CAA6B527FE328728CE1E3B7B53BDDAB877763AFCD3CC74B8A31E847B668268
              B43E1D1E50F1DFE35CB8DD8669DC73A67AE62637FA50040BC423AB592073EFCF
              5D5D0FE6EED3062F4E48A3BF589F8E167BA2E3EA674C87BBB5C0F4B3DD64563C
              58201E59E90299AFCE6FA857A33FC8D6209086BDD0D1D0076761663A3A2AD379
              42A7E926BF22C102F1C84A15C84C307F673D88DEE96B2BD1239DA614CB7E9D07
              373BCB1A2C108F2C7781687747BA3E55D470574758AD4D4577BBD95B96608178
              64B90AA436D9B843F70970231D06E127B353D1ED6E76071A2C108F0CBA40CE4E
              9EBD4E1AE098EC2C5FE96C94C345E7518F8ACDFE7DF63A37FB03091688470659
              20B341E3316970E750631C66F13C07D1A36E31FA0E168847065120B56A6DBD9D
              ABC00DB017B2637D599C92BF9F943F27C58433E972A7C4E5E438FDD265D06571
              8BD573B0403CD26F81D4AA735BA4A17E891A5C51AE3B76527EC55FAD05E1C3FA
              999F7DB6F84B3789D4F8EAD05757E9B03A8E34EE5765FCCFFBEEDAC9679CF9F8
              FB4D6E123D050BC423FD14881E369586790136B41C52545218D1B15A103D39C8
              7D00DD079A09E69ED2CFD669A069E79171CFEB4106F7915D070BC423BD16C84C
              357A401AD225D4C0B2C82FFC2519EFB57A30BFD17DD4B2854E43A7D5DB7C4697
              6A53E1FDEEA3BA0A1688477A2990D96A243BE3DDF5FFB5C1C938BBC27F86D7BB
              8F59B1F8EFD1E80629CCDDB2B5FB11CD5B2A5BC6AE77DE59201EE9B640EA41E3
              C1EE8B239CF85F10DEEC3E62D562E65874ABCCCB07681E332CD4A7A207DC4714
              0A168847BA299033D3D1EDDD745764D8F3B3D5B987DCE87DC55F7EF3B76B95FB
              675F519B9A7B48E70DCD33A2CBACCBEE46CF0D1688478A16881E2DAA4F873FA0
              068448A33ADEED65E87FFDEDD1ABF78E94EF1B2B55768D8D94CBE2EBB152F9D2
              F84865314973F1FFC930E3A5F2AEF12D87EFD371DDC7148AD39373377773A65F
              BA67E78A1EDD628178A44881CCFE7B76BD744DBE400D0791E2786BB19A7F9856
              E3E04D07D74BA3DF363652F968BC54B9DC5E0C4549512DC89F47C436FD4CF7F1
              99A18792657EC7DAE73F55107D5EE43C090BC423450A441A47E1462485B4C38D
              9619FB361DBC5E7FFDA5302E241BFA4094CA17642BB373FF96C3850E1F4BC37F
              192D0BA2C5EF464B0D168847F20A442F1F410D056B3CE3464B8DD7377D789534
              DEEDD2883BBA4E8366DDB3F20B87B61EBACA4D3E3574DEF132013997A5B0403C
              92552076D2ADD8B55545B61CFB4A87EF92467B0A35E6E524D3FC56A7ED662335
              643976B62F1712AF93E3F5D403062C108F6415883486425DABBC6EC78BEB5EFC
              853454DD6AF4BC8FD1379D76A9FCDCE2BAEC2DA62E0B5AC67659CBCC02F1485A
              81D4AA8D3B8A5CAA21BFA6C7B376C8DFBEA5BA3E3EDA841AED6A2895DFD56E9E
              9BBD8EB01DF7FCA35BB2C5BC92763F090BC423690522C5F11FD43092B4ABA14F
              2171A374C43B9B3EBC46BA3755D8505791CE93CE9B9BCD8ED0939AB285C83F4F
              12449FB8515A8205E2115420F16DB2A84174683CE846E908DD31961DE40035D0
              E1500EB276DE67AAE12378995BC98FC43D6E94A5608178041648817BC8A58B31
              E106EF08DDE7905FE909DC308749F9DDAC7D1259CE23EDCBDD290CDCE04BC102
              F1487B81C44F1F810DE127D2FDB894756D951E5AC50D7208C98EBB9BED8EA84F
              36364A372AF702C7F64BE359201E692F10F9C2DF696F00EDF4AA5C377847ECDD
              5CBE6B6CA4720536C661542A5F1E1D29A73E0E48B610AFA07590243F18FBDDE0
              71B0403C922C906FFE756E83749D322F46D4FF9FABCEC14BD6DD49C0153FCFD1
              BFF23769FB23A7A71A37C87E46E656447E302E4647A3A56BC158201E491688FC
              5A3E811A4092FC5ABEE606EF08298EEDB8010EBFB152E579B7181D21FB64AFA3
              75912445F2B81B9C05E293960209E2C781C206A0F4BC88DE53E1066F89D1D2FB
              7A6DD5B25F3EB26C4A958B635B0FC26BB7E23B1373CE09C90FC75137380BC427
              CD02891F249DF3AC5C6904C7E28141E825EAB0E1AD216323E597DDE274849EF3
              40EB246141AF7AD66159201E691648FC9475FCC52F910279321EB82D466F7BFF
              EA65B92A7785E932A45D2A2FDDCFA7D13A69516DDCABC3B2403CD22C10D9F9DE
              0DBF7427BEB422E5E923F2CBBB0D35B8B548F6A3E095BA7A2F7D7E372BDCADC3
              B2403CF2D31624E7FAA320FA3C1E10C4F848F923D4D8D6A8236EB13A42B62239
              378D8527743816884796B620F9AF2578251EB02DF4565777371F6A6C6B507921
              AD9BA547F0C07AF989AC431D8E05E211FD32E3D79EA12F3C21EDE10B7A0F396E
              686BD7D89689785FA23DA40BF5305A3749B353B337B2403CA25FA6BEE70F7DD9
              49B58FC32DAE9DB4C4B83E340134B2356EA75BBC96906EE6D6F6F5D24E2F5E64
              817844BF4C7D1926FAB29BA4FB7539ED59B9632395E1B9D76340F4FE15B7782D
              A1CF02D68315681D2D09C23FB2403C625B907007FCB21D299053AE8D748434A6
              AF51235BCB649FEA4BB7781D21EBEA345A474DB2AEB6B3403CA25F66DE0579B2
              73FAA96B1F1D31B696CF9EA790A2FFC12D5E474817EA53B48E9604E11E168847
              6C0B92771F765875EDA325F45E0AD4C07CE016B123745DE07564745DB2403CE2
              B62007D097DD24DD0A7873D4E8C643D7A0C6E5035D36B7982D21EB22E7D9BEE1
              011688475820180B8462FA65B28BD5C92D6247C83E06BB583F276E0BC29DF484
              AC9D74591F27DBD74F0BEEA4FBC5B6203CCC9BC4C3BCB444BFCCFE4E140ED143
              E106A5547ECF2D5E4B143A5138C513855EB12D48FEA5263353E156D74E5AE2E7
              74A9C96C35FA355A3749B5A9E86E168847F4CBD417DDA02F3B49DFCAE4DA494B
              F878B1E2BECD155EAC4826FE32F5CBCFB9DC7D26885E8D076C8BF86E425EEEEE
              84F1CE3D0BC423CD02912F97374CA952E503B7581D215B10DE30F573B3B40529
              70CBADBE2F241EB82DF66E39FC186C6C6B50DA2DB7F1ABA4F36EB9750FD46381
              7864690B3295FFC0EA9960EEA978E0B6F0E5A10DE3A5F2057D5D835BAC96D0A3
              53689D24E9C10E1D9605E2916681E8236BE44BCE7BECCFF1786010F2CBBB1336
              BAB5A454497D4B96749FB21FFB13443F365FF0C902F148B34034A48B3009BF7C
              27EE624C3636BAC15BC21E1C57B9081BDE1A20057E31ED3DECB3D5F94DF9DDAB
              E82337380BC427C902A907FD3D7A5476D6D7CE53DDDB4881A43FE57D3A7C03AD
              8BA4992A1F3DEAA56481CC57E737C82F65F6E1DEE9E8923E23CA8DD212EEE1D5
              DFA20638CCF47299D1DB46E19502B5EAFCAFF21E5E2D3F2C7C78B5AF9205A221
              05B01F3682043DE2E506EF88B1D2C49DB2B3BB7A2FEBEC929EC3D9BB65A2E5FD
              1EC990AD47FEEB0F02BEFEC05BED05A22F83418D2049B722690FB1D69046F73C
              6A8CC3A9FCAC9BED8ED07D0FDDF946EB20E9CC74EBCB3C59201E692F100DF9D5
              CC7CCA7B2C08534FA8E97D225224EFE106393CA43B7820EB156CBAE30D973D29
              E02BD8BC860AA4C8C58B2AEDFA2C8DB5FE124FD9723C8A96B95DAD1ADDED4659
              0A168847508168E41EF717D2D53A7F7A722EF55D8543FB1AE8918A16EE06379B
              1D218DFE56D97A5C40CB9C24C3C0F3422C108FA41588F6ABF5F212D4305A8527
              D2EE15D1D0235BB2D3FE6E7B235D4507B3B61CEE9E8FFC77C4EBBAA986BF73A3
              B5040BC4236905A221BF90A3A871B4932DC95B6E1418F1BDEBA5F273AB7A74AB
              549169979FCDDAE7D07521FB14636819DB652D330BC4235905A2EF0391223987
              1A483B192EF5CDB7CD880F018F94BF810D7819E9798E7D9B2B2D479A50E8E16B
              B46C9DC2F95AB506CFBA6BB0403C9255201AD2200AEDAC9AC6336EB4D4D0EE8D
              1E06D64B3B50631E249D86782EAB4BD50CD972FC192F532729A487DD68305820
              1EC92B108DA25DAD5810A5BEE72F19FAC24CD99ABCAC57D0A2C6DD9752E5BC14
              E18EB497722643975FB77E705990207CD38D9A1A2C108F142910BD4A556F9882
              0D061BCBDA714F86DEBD37BEB9A2F7931C9182E9E3CEC4F28274A58EC816E3D1
              B43B02DB43E7511AFC3E30FF694E7EF7E177B95B231688478A1488C6998FBFDF
              54747F24168427B20E01A3D0FB4AF47E7069E43B65CBF29EF81A75C5ACEB54F9
              D29D8CDCA9E3142D8A66E89500458E5635C5CB9E7225737BB0403C52B44034EC
              D06F7409352044CF93CC54C347DCE87DC5DBB794AF55EE9F7D457C12B0C0798E
              265DE6F6CB49B28205E2916E0A44A33E153D208D26F3C62AE088BE8CDF7DC4AA
              85DDD751E0F291560BB5A9F07EF711858205E2916E0B44431A8DFC028797DB1A
              522669987AD1DF2BA7A71A37B88F59B1D069EAB4DD3CC0F9836C19E13DEA59C1
              02F1482F05A2A1BFAAD2872FDCDD6AB2461ABEB1125B149D864EABEBC210BA6C
              DD6E399AC102F148AF05A251AB36EED0FD0CD4C0F2D82DAC7ABD57F874DA0D58
              BD843E7D443F53643FC628832E5337FB1CEDC102F1483F05A2A147B7BA3C04DC
              C115CB17D2305FD39370FA9853BD26CA4D2235741899F6D6789C207C5DFEFC22
              EFDEF13CB2B5F954F755DC247A0A168847FA2D100D3D4F220DABF8C9C402A4B1
              5F917D809AFCFDA4144F200D7F42E9DFE39CFC5F3C0C18B777E11B45CE73E405
              0BC42383289066E8215D2994E2E74A8646383FA8C3D11A2C108F0CB24034EAC7
              EBD7EAD664F0BFEE83A7F328F3FA66D68587BD040BC423832E9066CC4E45B7CB
              FE41EE4D57AB45F6778EA7DDCFD16FB0403CB25C05D20C7D5F86746132DFEBB7
              92643F6672763AFCBD9BBD650916884796BB409A3113CCDF29DD99FDD240339F
              BBB51C749AE2ED7E0EDD76132C108FAC548134C33D9CEE71E9E21C952E58D727
              F00A93CFD669CC4CCF6D4B3ED46D258205E291952E9064C40FCCAE36EE9582D9
              A557FF8ADEB72EF1B8E127FA59FA5496E683A4572358201E59CD0241A1AF3093
              AED83DF6BA81F00569F87BF4A8986C110E28FB7BB827FE3F19261EF61FE76E74
              A30F45B0403CA25F260DDAE2BAFF03F5351D4BF46B559B0000000049454E44AE
              426082}
          end>
      end
      item
        Name = 'icons8-query-inner-join-small'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000C8000000C80806000000AD58AE
              9E000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E356447585200000B9D4944415478
              5EEDDD7FA864651DC7F1E38F344564DBEC9798C4A6292ABA8A91E8622212FD25
              16A22662A2B0D99605861022DB9AF447F547114451AD66B27F98998979F7EE3D
              335C7F14B6EEDAEECE39B337ED0F9110891091584464999EE77CCF5EF7DEF9CC
              BD77E69E7B9E2FF47EE0C55EBFCECC39F77C9FCF9D393367CEC9B66DDB066004
              5904606411809145004616011859046064118091450046160118590460641180
              9145004616011859046064118091450046160118590460641180914500461601
              1859046064118091450046160118590460641180914500461601185904606411
              8091450046160118590460641180914500461601185904606411809145004616
              0118590460641180914500461601185904606411809145004616011859046064
              1180914500461601185904606411809145004616011859046064118091450046
              1601185904606411809145004616011859046064118091450046160118590460
              6411809145004616011859046064118091450046160118590460641180914500
              4616011859046064118091450046160118590460641180914500461601185904
              6064118091450046160118590460641180914500461601185904606411ED1B0C
              067048360BED53CD417AB259689F6A0ED293CD42FB5473909E6C16DAA79A83F4
              64B3D03ED51CA4279B85F6A9E6203DD92CB44F3507E9C966A17DAA39484F360B
              ED53CD417AB259689F6A0ED293CD42FB5473909E6C16DAA79A83F464B3D03ED5
              1CA4279B85F6A9E6203DD92CB44F3507E9C966A17DAA39484F360BED53CD417A
              B259689F6A0ED293CD42FBAA66B4397E5F9E9075FB67669DF2BC2C2F2ECD3AFD
              4D59E7E02559DEDB90E507D7D7B76A7FCCFEE3B46A1DE2BAC475AAD62DAC635C
              D7B8CE2D0E02E2C89A0664EA9513C244BB2AB83F783AF8679697EF8589371829
              2FDF0AB7DB1D7EDE1E7EBE3538B37EB4E68605F4B6B09C87AA65C565AA753922
              AE735CF74EF954F8F7FE6CA67765F5BBADD120208E341E9038713ABDEBB24EF1
              649858EF0C4DB649E4E5CBE1DFAD59B7D8502F65FC11EF1B2777A7888FA59733
              9E43E1F19EC8F2FEB54D87858038D25840A6FE1E5EA2943F0813F04D31999A91
              17312CB3D94CF1857AA9CB8F4EFF8BE1BECF56F7558FD988EA777EA0DA060D0C
              02E2C8AA0332BB6F5D98203F0913E4D0C249B3E6F684BFDED7D46B313C6288F2
              E22571BFB514B7C18FAB6DB28A41401C993820F17EDDE296F017FDDF8B2649DB
              1ECD66E64EAFD72A04F6C01921188F89DBB5A878236C979BAB6D34C120208E4C
              1490EAE554B1534F8E148AB7C38EF7F559B7BCA9FA59DE2689B0533FFE3B7304
              C491B10392979B82D7C56448E698997270F6D6E706677DEFB9C131B9BE4D3AC5
              6B59DEBBACDE7A2B1A04C491B1029217378486BFAB27421AC74F15830BBFDD1D
              7CFE4B4F57CEBF7B7670DCCEB5DC219F44B5CDAEAFB7E2B2838038B2E280E4E5
              3743A30F0F373F9D0FFCB937B8F48E7C3E1C475CFCF54E151C759F840E6733C5
              9DF5D65C72101047561490D858DDF46462002EF9DA70388EB8E8AEEEE0D86967
              21B1B79A37D75B75E420208E2C1B904EFFBAD05457CF1C71E26FFCC6FB2FAB46
              B920BCDC8AFB27EA31123A9C75CB6BEBAD2B07017164C980E4FD8DE1AF5E339F
              8637E89C7B9F918150367CFF79F918891DCA3ABD0BEBAD3C34088823230332F5
              CAA9619F231E7FA41A9CCCC77EBE5B0661A42F3F3DF8F06FF6C8C74A6C2E9B2D
              4FA9B7F68241401C191990BC7C443435A9931FDB3FD874C3940EC2122EFFCAF4
              E0C43F1D908F9956F170BDB5170C02E2880C483C84433634ADA3DFCE1DD779F7
              3C231F33A96AA7BDB8AADEEAF3838038321490EA68DCC68E786DCC69BF7A514E
              FC71AC7B78AF7CECC4E6B2BD7B8FAFB77E350888234301C97BDF124D4CEAD85D
              C5E0735FDD2527FD38E267260EDFD58ACF245BEAAD5F0D02E2C88280C46FCEE5
              E5BF641313FAC4CFFE2627FC243EF2CB17E53292CA8BD78E7E1621208E2C0848
              A7B85D3630A5BC1C7CF68E1939D92771F19D1DBD9CD4F2DEED75170888270B03
              52EE196A5C62EB1FDA2327FA6AACFBDD4B725949C5AFFED6838038321F907882
              02D5B8C4CEBB67564EF2D538F7BB0EDFD18ABA073E135B41401C990F48F57559
              D1B484E20EF515378EFFB9C772AEB869A7CF9DF5F8B5DD30088823EF3F8314FB
              44C392FAD0837BE5046F82D3B77CF7C456101047AA66C46FBD393B943D8A5F80
              5293BB099FDEE6F218ADC3D9F3BD7504C491AA1976C4AE6A5852F17B1D6A7237
              61E316AFEF66F5AF25208E5840CAAD438D4AAE98E8B8AB95DA74E3CEEA2D64BD
              EC948A7B098823169062876E563A27FD61BF9CD84D3AE9F1FD72D969153B0888
              23F53388BFCF3FB637FFF9C762EB1F7478187C5EEC26208ED4CF20AFC96625F4
              D15F8CF9BD8F09C465A865279517AF121047EA80ACDDE9422774FA4F9B3BFE6A
              94B80CB5ECB48A3709882375405C9DCA273AF3477F9593BA499F0CCB50CB4EAB
              789780384240F4F2D32120AED401E125961BBCC472A50E083BE95EB093EE8B05
              C4E1DBBC0FF2362F1CA89F41FE2F3F28FCE01F1D7E5098978F101047AA66E4E5
              7DB25929E5657538889AD84DE05013AC883D83383D58710B072B22B1AA19CFF7
              E265D4DC1DEE1E0F495793BB096E0F779FDDC7E1EE9E54CD88A3FDEBF92D6BDD
              6FF9C214129B0F48FCBAA76E5A32D5576E6F6A7E3FA4FACAADCFFD0FBE72EBCD
              7C40668A7375D3D28A275850937C35CEB9F759B9ACE4F2839CB4C19BF980C4E1
              F0F390F852484DF2D5387587C3D3FE748A17EA2E10104F1604249EBC4C362FAD
              4B368FBE92D4B8DC9E38AE5BDE5677818078B22020F1D4A30E0F3B89A70B5593
              7D124E4F3DFA6A363BCBA9473D5A1090383AE596A106261677D6D5C53AC7E5F6
              E4D58B2EEE49401C190A48F52C52CE0D3531B126F6455CBEB59B177D2E7FE0D8
              5040E2E89657CB6626162F82A326FE4AB8BD804EB77F65BDD5E7070171440624
              8E4EF9F05043138B97518B9753530158CAE5374F0F4E7CD2E325D8CAEDF5D65E
              300888232303122F309997EEAE34152FC8192FCCA9822085DBC633A4A8C74A6C
              2EDBB5FFE47A6B2F1804C491910189A35B5C181A79685163938B977696611036
              3CE0F432D0BB0E5E506FE5A141401C59322071C48BDEC783E874A3938887895C
              70F7F2974588B7717848C9E16A9B2E31088823CB06248E4EB9B9DAA1D40D4FE2
              D8E96270D15DA3AF7A1BFF5FBCB6A1BA6F32711B1E7525A951838038B2A280C4
              11DFAB77F64C72FC54517D32BE381CF17B24C74DF5E47D123A1CF6E936D75B73
              C941401C597140E2E894D767CE4E1174DCCE6270FE512FB7CEFFCE6CF5ECA26E
              9B4C5EBC93757AD7D55B71D941401C192B2071CC1CBCCCDBE128713F235E4BE4
              AC6DCF39DCE708DB2A6EB33106017164EC80C4515D70A77C6A78322492976F55
              5F1BEEF6E333DCDBF23629E4C513F11B82F5565BF120208E4C14902363A6BC39
              4CC837E4E46843F5C641B123DB79F0E3F51A65D5CF9DF2D1A1DBB6AA783DACDB
              0DF51A8D3D088823AB0A481CF9DE53C35FF01F8609F15F3D59D64AF14258E655
              F55A0C8F99FED5E1FFEFD6F75D23711BC46DF197B953EAB59868101047561D90
              23C35E763D1026EEDA9DC6B47A9BB4E86679FF9A7AA9CB8F4EEF1ABBCF9AEEB8
              FF273CFEFDD974B9BE5EEAAA060171A4B1801C19F1C8D4BC1F3F5C7C3C68EA53
              F8B9F097F9BE6CD7FE4FD54B197FE4BD0DD5633477A4F2A1108AC7AADF75D1D1
              B8AB1D04C491C60372F4A80E9DEF6F0A93696B989C61A7BE7839FCFBDEA289B6
              48F50C145E3E95BFCEBAC52D5967DFE9F5A33537660F9C1126F7AD6119DBAB65
              2DF7AC57AD735CF7E2C9F0DFF177D9D474288E1E04C491350D881A71624D1767
              64D3BD73B399DEA55580F2FEC6EA2FFC04EFF83436E2B9C1AA6799B02E719DE2
              BAC5758C615AC330A841401C89CD803FB259689F6A0ED293CD42FB5473909E6C
              16DAA79A83F464B3D03ED51CA4279B85F6A9E6203DD92CB44F3507E9C966A17D
              AA39484F360BED53CD417AB259689F6A0ED293CD42FB5473909E6C16DAA79A83
              F464B3D03ED51CA4279B85F6A9E6203DD92CB44F3507E9C966A17DAA39484F36
              0BED53CD417AB259689F6A0ED293CD42FB547390DA20FB1FC0A5B892382C87A7
              0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-star-filled-gray-small'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000B4000000B408060000003DCD06
              320000000467414D410000B18F0BFC6105000000097048597300000EC200000E
              C20115284A800000001874455874536F667477617265007061696E742E6E6574
              20342E312E3564475852000006C149444154785EEDDD4F88556518C7F1212424
              422424245C84848B1612D1422222224242445CB8901611212E5C88484884202D
              5A46B490908856D1225CB5888890CE9D716660125C84848446444484884444D4
              EFE73C93F75E1F9D3BF7EF7BCEF97EE00733F79EF39EF779CFC319EFCCF5DC39
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00408B2D2E2E6E73E25BA0DE161616DE75E25BA0BE3A9DCE236AE69B8EBF8E87
              817A5223BF73F1E2C57F1D7F1D0F03F5B3BCBCBC554D7CA3ABA16FF8B1781AA8
              1735F0E9B566EE6AEAD3F134501F6ADE2D6ADE3F9286F6635B6233A01ED4B86F
              F737F35AFC5C6C0694AFAAAA87D5B4BF67CDECF8396F139B036553C39ECA1AB9
              3BDE263607CAB5B2B2E2ABF36F591377C7DB78DBD80D28931AF5CDAC81B378DB
              D80D28CFD2D2D2436AD25FB3E6CDE26DBD4FEC0E94450D7A226BDCFBC5FBC4EE
              4039AAAADAACE6FC256BDAFBC5FB78DF180628831AF378D6B083C4FBC630C0EC
              C5D5F9E7AC590789F7E52A8D62A8298FF537E9103916C301B373E9D2A50747B9
              3AAFC56378AC1816980D35E2D1AC418789C78A6181E95B5959F1D5F95AD69CC3
              C46379CC181E982E35E191FEA61C438EC4F0C0F42C2D2D6DD215F5C7A421478A
              C7F4D87118603AE6E7E75FCF1A721CF1D8711860F2AAAAF2D5F96AD68CE388C7
              F631E270C064A9E15ECB1A719CF131E270C0E4C4D5F987AC09C7191F83AB3426
              2ADEBC3F8EBF0A0E141F8BFF048091F8FDC99D4E67B79AE9A0724AF948B9A06C
              F89D74E38A8F1D73F05C3CA7839E23EFA5C66DFE13F3FCFCFC936A8C03CA49E5
              43E51BE5A7ACA14A8EE71C73770DAEE5806BE3CFE80D13BF27DEA593FB8A4EFC
              717D7D56F94AB9A6FCD3DF184D8B6B8C5A5DF3593D76DC6BA1AF77F17BEE42C5
              0BB49DCA5EE598F281F2A57255F9BBFF2493D5786D628DBC565E33AF9DD77027
              2F4467442766BF4EC05FFD278B8C9658D3FDB1CC98262DFE51253D3164E3F15A
              7A4D6379310BFE33B14E42E3FF4D3CE9780DBD96B1AC98259D8C5769EAE1E3B5
              F31AC672A2043A2187145E086E305E33AF5D2C234AA213E3DF2BF34271C078AD
              BC66B17C28914ED03E9A7AFD4433EF8B6543C974A25E566E652792DC6EE65B5E
              A3582ED4815EB1BF4053DF1DAF89D726960975B2B8B8F89C4EE0FF1FDAD3F678
              2DBC26B13CA8235D8DF6D0D4ABCDECB58865419DE9443EAD137ACF8F88687A5C
              BBD72096034DA093FA94B2EE9DF59B16D7ECDA6319D024BA4AF93DD0337BA3FE
              B4E35A5D73948F26D249DEA58C7C2FBAD2E31A5D6B948D26D32BFD2774B2C776
              0BAFD2E2DA5C63948B36D08FE2C775E2C77EE7A359C735B9B628136DA206D8A1
              06B8D2DF14754DD4B223CA431BA901B6AB11BEEF6E8C3A266AD81E65A1CDF423
              FA5135C4E5FE26A94B3C77D710E500B75F286E53637C97354CC9F19C3DF72803
              B8A3AAAAAD6A909B59E39418CFD5738EE903BDD41CBED557DA3C25C673F59C63
              FA402F35C89EAC714A8EE71CD3077AA939DEC89AA6E478CE317DA0979AE3FDAC
              694A8EE71CD3077AA939BECE9AA6E478CE317DA0979AA376EFC4F39C63FAC01D
              FE5D6ED6307508BF87C65D74A57B3E6B963AC4738F3280556A8CA97DD4C404C2
              07DFA397AE72BE2978D62CC5C7738F3280556A8A6FB366A9433CF7280358A5A6
              A8EDAD0E3CF72803989BEB743A8F658D52A7B88628076DA72BDCDEAC49EA14D7
              10E5A0EDD40C27B226A9535C439483B653337C9C35C938A2B17D77FC4F2213FB
              9401D710E5A0EDD40CCB59938C128DE97CDE7DA3177FEDC7FC5CB6CF28710D71
              18B4D9F5EBD71F50338CF5B6BB1ACF1F76F94C1CE22E7ECEDB64FB0E1BD7E05A
              E210682BDF90256B9061A2A65AD055F8C5187A5DDED6FB64630D13D71243A3AD
              D44FFBB3E6D84834C6658F13436E98F7F518D9D81BC928734043A809DECA9A63
              90685F7FBCF0E171FCA88F7FFA1CF698D9B106896B89E1D0566A824FB3E6B85F
              B48F6FF67864121F02EF313D761C233DFEBDE25A6218B4959A60E01FF5DAD6F7
              5A3E5955D5E6D87D627C0C1FCBC7CCE692C5B5C4EE682335CD2635C1BA1FD6A9
              6D6E2A67F4226E4BEC3A353EA68FED396473EB8E6B714DB12BDAC6BF17CE1A63
              2D6A903F95F74AF81F219E83E7E23965735D8B6B8A5DD0366A8E435953E8717F
              5CF0397D5DDC9D3C3D27CFCD73EC9EF35A5C536C8AB6D1C93FD3D70CFE33F567
              4AF177BEF71C63AE3D7F4ED7F7676213B48D4EFEF9AE46F8423FAE77C753B5E1
              397BEE5D759C8FA7D0363AF957940B6A8467E3A1DA720DAEC535C543681B35C1
              4BF1656334B1260000D0607373FF019A9E2FEBE0EB3BEB0000000049454E44AE
              426082}
          end>
      end
      item
        Name = 'icons8-circular-arrow-violet'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005A0000005A08030000000F76B1
              3000000300504C5445FFFFFF000000B43CA0B440A4B343A0B242A0B341A2B341
              A1B242A1B241A2B341A2AF3FA4FF0055B543A2B240A0B342A2B341A2B341A1B3
              3FA0B441A1B341A2B341A1B242A1AF469EB342A1B241A1B63FA7B344A1B341A1
              B341A1B641A2B1459FB342A2B341A2B342A1B441A1AA559BB242A1B342A2B341
              A1B241A1B442A3B342A1B342A2AA5571B341A1B342A0B342A1B241A1B43FA6B2
              43A2B242A1B242A1B441A3B241A1B342A1B342A2B240A3B243A0B343A0B241A2
              B141A0B241A2B342A0B044A3B342A2B342A2B242A1B342A3B64892B341A2CC33
              99B342A1B342A2B244A4B342A2B242A0B443A5B341A2B341A1B140A3B242A0B2
              42A0B141A1B242A0B241A2B648A4B13FA0B442A2B341A2B242A1B241A2B342A2
              B241A1B242A0B342A2B241A1B242A0B441A1B0429EB441A1B341A2B242A1B241
              A2B341A1B13FA5B241A1B242A1B241A1B73DA3B1429EB341A2B342A2B241A1B4
              3FA1B342A2B242A0B341A27F7F7FB244A0B342A1B342A1B241A2BF3FAAB242A0
              B342A3B341A1BB449FBE5CAFBB54AAE0AAD9C46BB7BE5DAFE1ACDAE2ADDBB443
              A4BA51AABA52ABE6B8E0E6B9E0DFA9D8C76FB9BF5EB1D187C6E3B1DCDBA0D3CF
              81C4E8BCE2DCA1D4CD7EC1D086C5BB55ABBD5AAEE4B3DCEBC5E6BB56ADDDA3D4
              DFA6D7DEA5D5C164B3E1ABDAB547A5C265B5DEA5D6E6B8DFB74BA6DFA7D7ECC7
              E7BF5EB0BE5BAFD591CBD38CC9E7B9E1B84EA8B84DA8E7BBE2BC57AEBD59ADC0
              60B1D592CBE8BDE3D693CCDEA7D7DB9DD2DA9CD2DFA8D7E5B7DFCB78BFCA77BE
              EAC0E4E8BDE2CB7BC0E8BBE2E3B2DCDC9FD3D28AC8B649A5C872BBECC5E7D189
              C6C873BBC871BBC66EB8E2ACDADFA7D8B74BA7C56DB8C161B3CC7ABEB444A2B4
              43A3E0AAD8CB7BBFB84CA7D38DC8CD7EC0EAC2E5B64AA6D58FCAC66FB9DA9CD1
              EBC5E7D591CCB951A9D490CCEBC3E5B94FA8CF84C4D48EC9D188C6B446A4E4B3
              DDD085C5E5B4DDB548A4BE5AAFECC4E6CC7CC1ECC6E8BF5FB0C871BCEDC7E8EC
              C7E6C874BBCE80C3CE7FC2C56CB8E3B0DCDFA9D7EDC8E8D58FCBB343A2DCA2D3
              E9BFE3D186C6B342A2E5535F6D0000008074524E53000010365E83959FABBB5E
              10002C6EB1E9AF2C3E9DE99B1CDFDD1C24F99B2220A7FDA51E067AF7F57840D9
              D702FD1AC1BF1834EBE73246F3F342565A5A42F1361ABD837E3C06D5047A761E
              A3FB2299813A99E72A6AAF0E385C8193A1ADABB99F5CAD6C2A3ADFDDF9972474
              D37C18162E54F130B97E7C023CD5767404A16CE50E227C2FCB00000009704859
              7300000EC400000EC401952B0E1B00000569494441545885B5997D5C144518C7
              DDE840F444EA1013B1F39452F222A1337C8512B33242412CC17C4B037B7F8FDE
              7D2BED552D2B84B2A222ECBDB4B0E85593B2177A39B3C49710B2B0C28CD388E3
              82716F6F666F77E7999DDD3B7DFEBBF93DBFEF673F3BCF3C373BD3ADDB310CC1
              401C1771BC2532AA7B7474F7A8484B8F889E463C7CB4B5574CEF58A489D81362
              4EB48687B6DAE2FA68B124FAC4DB74E9BAE8BE969358DC40F4B3248484EE1F97
              A80FF647E280934DA3ED031D7CB03F1C83069B42279D72AA31B03F860C4D328E
              4E3ECD38D81FC36C06D14ECBE9E6C8E25BB1388DA053CE300BF6C7F0543E3AED
              CC50C808B946F0D067A587464668E4287DF46803B5CC8AC4D17AE831A6275019
              8EB16CF4B8309E597AEE712C74C490F0C8086564C2E8B3994DCE78C4A6426867
              48F5AC8D739C007AFCD120239445A3930D763A5E382668D1E79AEC48EC98789E
              067DBE52EDEAD4C6FF26D817A8D17655DDF93ABC9A6837814E9FA4420F54AB14
              DB0C1A5DA844F7D7CEA1966D0A9D7D91021D47C91AB62934CA09A2FB02BD43CD
              36874E4C91D1E06AF1FD6700DDF62F383C99A0ADE04EE6B081A73EE469FD071A
              EF67C5681BA41EFC9B8F3ED0EAF5B6FC052953307A00A0FDF9077F1AF74B52F3
              EF80941B405BA13FDADFB8C5E7DB87B55F017B9E5542F702A4A6462E7A2FD11A
              1B00C054091D0328BF10DF9EDD2CF4AE5692B31300E44BE8DEB450BF83D87E0E
              D437F4AE7F22393BB6D3E234090DFC6FFD485CDBDC81B503A17F900BFF7B5A74
              F9D13D01D73662FA0E05D6255821DFEAD5CFC522FA127AB8CE833DDF483F4536
              88F67D8DD35A81379229A27BD0C35F91C7F912333AE025B395E4B5D1DA74116D
              A187BFC08ECFEBC9F3D582E82D7B70E267B45620A223E9E1CD3AEF5015ED3871
              332D158AE819F470337674F0D0A4F16EA2A528117D293DFC29767CC2431FC089
              1FD3D24C113D8B1E26ABFC100F4DE6B1919666C168527BF0E429A216277A6034
              F0423EC28E0F79E80F7062272DCD84A7B1063BBA7868D27A6B6869365C7CEF63
              C77B3CF4469C584D4B85F09279974CBC4F9FEC7E07276EA035FF9299430FCB8D
              EFA03E7A3DC9035ADF18B83DBD4D2C7BF5D11B48DE5BB496093755DF9BA45EDF
              D023BF4EEAFF3540F43755813AFE41E855F238D07F931CAF902CA03BB9587F60
              2F1393671D9BBCBE8A64015B91B912FA32C0F61271D554B2C8752F929C170035
              9FB959789ED8BCD51530B9E23939E559409E17D8E240DF8BCFC8C6B55B207265
              B59CF03420E7E18D593CA03D552E5BCBD6D0F29A32596E2905EC39183D017A2C
              C546B571BFE6A5543CD912549F80DCF3C926F87240F43D1E747B571F6E0A2A4D
              8FAD56488F42CDA0886C8205A08D886F739502E0F5B4AFDCB5A2B474C5232B1F
              F628C757D543DE2CF9AB20013CAC6878C8CB8D071B206771F08303DC6123F440
              198FBCE97ED0B840F10576453698B2BD5A9FBCB60EB465DB959FA483C01CB4BC
              AB8A0DAEEA5A0EBBA2545FBB83590738EB96B1C8F7DDCBB0A427A83FFF8732F2
              907B6B33046EAE75B31C576A4E169286B132917BE9C67235B77CF75226185DA5
              3DB4106C7A472DF56D3B977406B09D4BF6B581B58CC331853E209AAC932F45E5
              E2458B16337B2C89AB81B327E7709ECB484443C75AC235C03F99D9705D2B4068
              2122235C72C675028C3E86079F823036AC133987EA28F8681E32175F2FE8A185
              51234325DF902CE8A38511AED0C8AE1B051E5A480DA9BE6F32700D21AE9D9B4D
              4FA6E3965B290C7CE55332D11CF9B61200C2BAA8BADDC44547FA1D77420CE6F5
              DAA4BBE0FF342AB267302E06752E05EDB9066ABC78819DE5D7BDCA4C2828D207
              1765A5B0DDBC0BD8925C663BCCCB991FFA056C20A6DE3D8D5A45F7CCCD9FC7F3
              19BCEC5E9836A7A070B6FFB23BBEB0607ADA42231E13F7EDA6E308AC57B2E70B
              9A7DF20000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-paypal'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004E0000004E0803000000B974D0
              2F00000300504C5445FFFFFF0000001267BC1465BF1564C01464C01564C01566
              BF1966BF156ABF1565C01565BF1564BF1267C21464C01565C01464C01565BF15
              64BF1166BB1464BF1465BF1764BD0055D41465C01465BF1665C01263C11565BF
              1465C01465C01465C01465BE1465C01464C01861C21462C01363C01564BF1565
              BF1564BF1464C01565BF007FFF1564C00E63C61B54B1273693273493078DDA03
              9BE5029AE5039BE5029BE6009FE91464C11462BF273593088DD9039AE4029AE5
              039CE51565BF1957B2029AE50499E61465C02148A52835930497E3039AE50099
              CC1565C0243C9A273693029AE50099E51364C1273594233D99029AE400AAFF14
              64C0165FBC1D52AA1565BF1D51AD0F76C6049AE322429F2735920596E1029BE4
              1764C125389621449F049CE41465BF1664BF1074C5039AE41959B6263695039A
              E3039BE51565BF1F4AA61566BA0096E71F5FBF1565BF243D9A263895039AE303
              9AE31666C02836940D7ACB039CE41761BC1D4DA6029AE51564C01B54AF263C97
              0497E2029CE61464C02144A12737950691DD039AE5156ABF263A97273794078E
              DB049BE21664C0283493253B970691DE00A3EC1464C0175CB72834921D4EA704
              98E3039AE51565BF1D4EA92639960C7ECE039AE40055AA1464C024409E263995
              126DC0039AE4029AE51567BD2737952735931F4CA40D7FCD009BE81365C11562
              BD273593273694263C962049A31861B60A86D3029AE41465C0195AB51172C406
              92DD0694E00399E4029AE41465C00985D6039AE5007FFF1564BF0593DF029BE4
              1663C00399E31465C0126CC4039AE5059BE61564BF0C7CCE029BE5078CDB00FF
              FF1563BF0398E3008DE21663BF1564C1039AE5029BE40091DA1465BF1172C903
              9AE41565C00B82D3039BE41564C00691DF039AE4029BE41565C10398E3029CE4
              0099DD1468C1039BE5029AE5039AE50498E31465C00F78CC039AE4039AE4039A
              E4029AE5029BE4059DE30989D8039BE4059AE41264BF0595E0029AE4039AE503
              9AE41565C0116EC50399E61565C00B7ED21566BF1564BF283592039AE4039BE5
              2835931565BF1565C0F7CD05CC000000F874524E5300001A7076725E48140CE3
              D7912A56BF3C8D990EC5DF2A06F7EB2C36E36EB1A34ADBC914304C8585C1BBF3
              02F112CBDBEFD5DDBF975C1862F9EDE5FDBD509DD3CF3ED3C1FDF78B04FDC5E5
              B50A42E3CFB7027AE9C1B3C9CB38C1F5F5C320D1C53858FDC993D9DFFDE3C9C3
              BF1608F9C5DBFB4238DFCB54F1BB64A7CFCFF55CDFC1DFE54E18CFDDE13650F1
              CDE50E87E1FDB9F5E3BDC7D1C9A502F3C3D3BDFB622ED9E9BBCB1666F7F9E5D1
              BFBFD3BB9FD3C9EDEFF956D5C3DB04FDC96044EB7EE9F932B7C978C30024D308
              5CFBF7AF0695D787CDC3DFFBC5F37A3ADF740EEFFBC78536ABCBF1999170562E
              BFFB301CCBC1EF8983DF526AC3E83344E3000000097048597300000EC400000E
              C401952B0E1B00000365494441545885ADD86558144118C071564545B115C4EE
              3A6CC5385130C0C06EEC4605BB03BB0B1B130BBB15055B140315150B15BBBB93
              D115F476D9DDF7DDB9997DFC7F9FDF8777EE66E6591B9BFF9CA02C49D264946C
              93A74829D0D27076A9442BFD4E6D9F86994B6B4DFB5BBAF48C5C06264EFC9D31
              131397998D13C52C0E0C9C6356564E74CA669DCBCEAC89620E6C8FD55C4E0E4E
              CC6595CBCDC38979AC7179B9B87C56B8FC5C9A2816A0730539B94274AE302757
              84CE15E5E48A51399333272716A7710EC88212254B512A5DA66CB9F22E3A5C05
              A855ACF48B5665129FB98AAB09E3AA42AE1A55FBC7C5E7E68E70D5215783AAD5
              AC65E1489C87A796B3AB0DB93A54AE2E49AC9E9786AB8FEC44032AD750C19146
              8DD55C13A835A58FAE9992231E6AAE39E45AD0B9962ACEDC4AC53941AE3555F3
              6EA3E2485B25D70E195D7B2AD78168EAA8E03A41ADB33795EBA2E5BA2A387BC8
              75A36ADD7B68391F05D71372BDA85C6FAD4688AFCCF9F5815C5F9AD6AF3FE406
              C8DC4064270651B49F83A14686C81C72270EFD49E186211A192E7323203792A2
              8D1A8D71FE3237067263F5B571E3318D4C90B889C8E826E96A93A7A01A992A71
              D3A0F663BA9E366326AE915912371B727374B080B9F374B4F9F2CF7801E416E2
              DAA2C53A18218112B76429E49661D8F2152B7535122471AB909D580DAC356BD7
              C5E963C41C2C71EBA1B62140016DDCB479CBD66D668A15DF76F9BCDB01B99DBB
              76EF91DA4B772C85C8DC3EC8ED6722148586495CA603903BC8CB1D92AF9EC3C8
              4E1CE1D4DC4C3277146AC738B5E3E189D7F609C89DE4E422148F0AE44E3CC5A7
              059E4EE4CE20A33BCBA5358A54BCA0CE41EDFC051E2DEAA2A0E02E41EE320716
              17AD7E2E5E81DC5576EDDA004150727ED7217783158BB91929A8B95BC84EDC66
              C34263EF088286B385DA5DDA4164E9DEFD070F054D09DC23C83D46963F097C2A
              F52CFAF98B979E5ACBC2215F275E41EDF51B6439C2BD4546F70E72EF19B4040E
              B913BF7F80DC4746EE13E43E23A3FBC2C87D85DC37840B66E41CABE670D6841C
              273E2C9AF6B38C2537C84519E7BC5E432EC238E78E8CCEDD38170B35B3AF712E
              0A726E4C1ACEF940EEA9712E18195D90712E04E1C28D731E508B31216B19B9F7
              90ABC2A6615C580CE4A28D73E1C8E85C8D73AE508B73C1D6B271C1F0EC64FBFF
              E39CE01BFB519D3F76CBE871FFB53F64B32FFBA16DC8850000000049454E44AE
              426082}
          end>
      end
      item
        Name = 'icons8-pie-chart'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000056000000560803000000628891
              C5000002E5504C5445FFFFFF00000000B8D300BBD500BBD300BCD400BBD400BC
              D300BCD34389FE448AFE4489FE438AFE4389FE4489FE3F88FE00B2CC00BDD300
              BBD300BCD300BBD3448AFE438AFE448AFE438AFF4C7FFF00BFD400BCD400BCD3
              00BCD34389FE4389FE438AFE3F7FFF00BDD300BBD4448AFF438AFE00BBD4448A
              FE4289FE00BAD64389FE4288FE00BBD600BCD300BCD3438AFE4489FE4B87FF00
              BDD400BBD3438AFE4288FE00BFDF3F7FFF00B8D200BCD44389FE4686FE00BBD4
              448AFE458BFE00BBD300BCD44389FE428BFE00BCD300BBD44489FE4389FE00BD
              D4438AFE438BFE00BED5438AFE00BCD4418AFE00C6C600BBD44489FE4891FE43
              89FE4389FE3F8FFF438BFE438AFE00BAD5438BFF438AFE458BFE00BBD4458AFE
              4489FE448AFE458BFE00BCD3438AFE448AFE4389FE428DFE438AFE4389FE00BC
              D400BCD42879C03F50B42282C43F50B53E51B41C8BC53F50B43F51B41891C83E
              50B43F51B51399C93E51B53F50B50FA1CC3F51B54050B600BFD10CA6CD3E52B5
              4254B30AABCF3D53B43E50B400BCD407AFD03D54B53E51B405B1D03C55B63E51
              B500BCD203B5D13A58B73F52B402B8D3385BB73F50B5334CB200BCD301BAD236
              60B93E50B500BDD301BBD43366BB3E52B500B9D02E6CBC3E51B44545B900BCD4
              2975BE3E51B500BBD22380C03E53B61E87C43E50B53F51B400BDD41990C63D51
              B500BBD41597C93F50B500BCD4109DCB3E51B53F4FB400BBD40EA4CD3E52B500
              B8D400BCD40BA8CE3E52B53E51B54350AE00BAD208ADCE3C53B54051B406B1D1
              3B54B63E51B400BCD304B4D23B58B73E50B53F5FBF00BFD403B6D33959B83F51
              B53F51B6365EB83F51B5404EB400BAD201BAD42D6FBC00BBD300BCD500BCD500
              BCD300BDD300BBD300BBD300BCD400BCD400BFCF00B6CE00BAD200BBD300BAD2
              00BCD400BDD500BBD300BBD400FFFF00BBD400BBD400BBD300BBD300BBD400BB
              CC00BBD400BCD300BBD400BAD700BCD200BCD300BBD300BBD400BAD300BCCF00
              BAD33F51B53F51B4448AFF00BCD48890FEDB000000F274524E5300001C446A7E
              8999A5A599897C6A421C0A4689C7F3F3C787440A0C60BDF9F9B95E0C3AA3A138
              BFBF4038C536129BFDFD991058EBEB54080828D3CF24EFED364CF5F54858FBFB
              564EF94A36F5F12208D1CF0697E91034C34240BD0A5E5CB7F7428785C5F11A68
              7C8B97BFA5C1FD97C5FB89C9F77CCFF368D5EF3E1CDBE91AE1E3F3C7E7DDC3ED
              D78344F3D144F5CBF90ABBF9C7B55CFDC35A0AC1F50AA1BFA338C130C3FDB942
              C942C5CDBF36D3F13097D9EB12EBDFE5E91256E5DF4AEBD993CFF1D3D10824F5
              CDE51CC9F5364AF748565048ED2295AB54E9101434C33ECB4A9FF7005AB9F7BD
              660E85F18B1A687A9978681AEF6CF2BA000000097048597300000EC400000EC4
              01952B0E1B0000039E494441545885B5D9554014411807709790030CD2403000
              1514C520153130115131B0BB15BB1B130B4551115B4431B1BBC5C6C2EEC26E61
              E6D963EF0EEEF6A63DFFEFF37B98DDFDF69BF90A15FA4F91E83133B7B02C6CA5
              B2B6B12D52B45871860554D6CEDEC1D1096A0234712E51B254E97F615DCAB8BA
              C1828082942D57BE8220EBEEE1040D020CE2EC59518035AF049501CA54F6E264
              BD1D8D50040B4095AA1CAC4FB5EA0815C502DF1A3559D95AB551289A05C0CF9F
              890DB042A33816009B403A1B148C53B12CA85397C6BA8760553C0BEA8592D9FA
              0DF02A81050D1B91D8B0C60495C482264DF16C33A24A6441F31638369CB40334
              16B40C45B341116495C202BF562836B23545A5B1A04D5B048BFD0A98591065CC
              8651553A0BFC95AC0FA60EF0B1EDDA2B58FA16B0B0BA6DD0B1DEC84AC8CFFA76
              306051555B84051DF5D968169589059DF458E3FF9630DBB980756752D958109A
              CF7A9892F5D4B12E9412C3C73A77D1B25DD954461674D3B2AEA665BB6B583B37
              BAC8C3F60894597B469595053D65B697A9D9DE32CBF4E1F2B07D64D6890EF2B1
              7DF3583356959905FDD42C5B99E162BDD4AC85E9D9FE6AD6D2F4EC00353BD0F4
              ACAD9A1D647A364ACDAA4CCF5A73B1837373D832846B13E0D0616C6C0CD72383
              70F808267624D70BA6CEA8D12CEC18AECF212F63C731B0E3B93E5E391326D2D9
              496A76321F0BA74CA5B2D3B80AA336D36750D49972BD8DE564E1ACD964760EDF
              4F273F73E711D9F9321BC7CDC2050B49EC22998D64FDA1EB65F112BC1ABF54D3
              7E2CE36761C2722CBB42DBD5240AB070E52A1CBB5ACB26F1BE6272FEAC41ABC9
              6B758DE83A1116C2F54876437E7FBB518C859B500578734193CFDA332AB325C5
              48DDAA7776481564E1B67825BB5DFF009526EAEE483654771A9CCB76B11CF790
              D9BD475F4DD96B78384D1765E1BEFD7A6C8CE2CC7BE0A0B07BE870BE7AE4A8F2
              E07F4C9885C74F68D5DC93C6D714E2DB004F9DD6B06710B71F0167C5DD73E7F3
              D40B1711AC9421BEBDF0D2E59C9C2B5725144BBDB02225E1DAF51B129A953205
              0ABA2E376F493856BA4DBEB623C4ED8E8467A5BB82FBE096299158293C4B440D
              8993C8AC9421F09E05DF9368AC14709F577DE0A2349057EE0F1FF1A05989C602
              7A40F0389DBD4EAA9E2000DC38E3E9333634D61CB91C3F7C79CED094BC788959
              4C1A1585BF22F60FAF55A96F704BC983ADA4B7EFB2D166F6FB0F1F090BA963B8
              80E84F699F0DC908C72FF676E4556C43C3AFA9DFBE3BFC50A9D21D7EFE8AFECD
              B080736EC99CBF46752D1669276AC60000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-postgresql'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005E0000005E08030000009D0C53
              5C00000300504C5445FFFFFF000000FEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFEFE
              FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
              FEFEFEFEFEFEFEFEFEFEFEFFFFFFFEFEFEFFFFFFFEFEFEFEFEFEFEFEFEFEFEFE
              FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFEFEFEFEFE
              FEFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFE
              FEFEFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFEFEFEFEFEFEFEFEFE
              FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
              FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFEFEFEFFFFFFFEFEFEFE
              FEFEFEFEFEFEFEFEFEFEFE0A7BBF8DC2E191C4E2F5FAFC298CC74098CD86BEDF
              0478BE1682C2D7EAF577B6DCA8D0E8ECF5FA5DA8D56BB0D83894CB1B84C392C4
              E3A7D0E89ECBE67AB8DC268AC62D8EC8BCDBED9DCAE561AAD64C9FD0A9D1E8A3
              CDE757A5D36CB0D965ACD769AED83E97CD1C85C47CB9DDC8E2F1AAD1E9C5E0F0
              9CCAE52087C566ADD7C6E1F0C1DEEFC7E1F1F8FBFDEFF6FBF2F8FCD3E8F4F1F8
              FB8CC1E158A5D476B5DBB1D5EB1A84C38FC3E2117FC1B5D7ECA5CEE752A2D2E5
              F1F8C0DDEEACD2E9E9F3F9E4F1F80C7CC05FA9D52188C5E3F0F8C3DFEF1D85C4
              D1E6F3449BCEDAEBF5B3D6EB0E7DC0288BC7EAF4FAE7F2F94FA1D11782C2CDE4
              F288BFE07EBADDCFE5F31E86C42E8EC8258AC63994CBE2F0F7BEDCEE4199CD60
              AAD6BDDBEEFBFDFE9FCBE63592CA1883C395C6E3FCFDFEC4E0F00D7DC03190C9
              B9D9ED2F8FC90679BE90C3E2CEE5F23B95CC077ABE087ABF459BCF9BC9E5F7FB
              FD1280C14A9ED0F0F7FBB2D5EB3D96CC0378BDDDEDF6D2E7F3AED3EA9AC9E589
              C0E08EC2E1A1CCE6CAE3F1F4F9FCDCECF682BCDE2B8DC81581C2FEFEFF87BEE0
              3F98CD0B7CBF097BBF73B4DBDFEEF798C8E451A2D21F86C50277BD0579BE439A
              CE94C5E3F3F9FCFAFCFECCE4F2ABD2E98BC1E174B4DB6FB2D981BBDE93C5E3B0
              D4EADBECF6FDFEFEEDF5FABFDCEE96C6E47FBADE6AAFD867ADD778B6DC97C7E4
              B6D8ECEBF4FAFFFFFF9CA7BD1D0000005674524E530000245C89A3B7BBB5917C
              502006305A859BADB3876A3C0A22DFEF742C2695CBFBFDCF833220E38F320E42
              6C8DABA17AEDDBF3D5161070C10A08A7BFF5E14C08B9AB0CD3EB3E2EC7364AE7
              1CC3BD287E0C46819758CDF2E77E03000000097048597300000EC400000EC401
              952B0E1B00000954494441546881DD997B5C555516C7EFCDC11736032616600A
              BE5228D2448B06479BC052B1319B98CC8A268719B252CB5792459A569843DA8C
              A28E13A0913A06E4238CF22D283ED08931B3F095C3114112031D1FA8A7F5DBE7
              9C7BF7D97B5F303ED77F66FD71EF596BAFF5BDFBEC73F6DA6BEFEB70DC7071DA
              E4A666BFF069DEA2A54FABD6BE6D9C0DCACDBFFC959F7FDB162D6EF16917D0FE
              56B95DC6DFE617A87312D422B88392ECB8BD59C74E21BC6B68E72E5D1BC177F3
              09D525E97E470FB3B96758F89DFE7745DC717797E6BD643F92DEE1B736800FBF
              4719A4EB7D82239D7DFBDD1BE2A199BFDD2EF779C047DD6FBA5CBB7AA5FEF2A5
              8B17FE77DE1D16F2EB6805EC5C5DED8F676BCED4FF507DBACAB2F5FF8D123F60
              206BAD3C557152B3A4FCBF27BE6FA8AFD78E1FB35C8F1E396CB93EF05B19EF78
              002D6557BED304F9F6D0372EDCC1AF0FFCA7B4F4AB7FEF77F5755F85DBB364EF
              9E32667CF036097F37ECBB77897048B1C1DFB9A3A8D0326DDF7676ABC12FDBB2
              9973DDB49119636205FC203CB6DD1B54F42FBF4044C1E7EB057BFE67EB186BAD
              ED86D7B007161D66C33B1E0261B58ABEFD53F8E7E52A9A72AA8D01FA8437AEFA
              17E33FCCE307C3B45245D756A069F9C7CA362DFB23B42E5BCADBB232611B3294
              C3C79121E3980AF0E1396AFA67B19AAE694BFE01D6E245BCEDE41ED886B9F18F
              405FA80A4F5F402DF35779A26BDAB1BF23B6CE36FEE97F83CDD785FF1D691F14
              AAA22FC2719E673AF5752E5CDE2FE16D6978D79ABBF09D49FBAB2A764E25B5BC
              D7105DD30AD9B39F6DB3A5922574B889EF8944764415FA2E35BCB3A461BC96F6
              367955E5F3A663B3C8146BE21FC5A4518DCDD199D4F26E23744DFBE42D729B61
              1B9EE9640930F1FDE8FA4D555C0A35AC7BA351BC568FE159C35B5E27C30813DF
              91AE3F53854DA386D71AA76B2793F16E1CE52C3F90A1A3896F49D7531551AFE2
              9D57A62151A6A0FB93390326E363261E196192226822F290F27D95E47DBCFCEE
              4CAE9DE2F07DE87A82879857AE8BAEE5A2FB5C727E99543F13DF9FAEC7CB2125
              487EE3AE0FAF9D26DFB16EF52552FB358C7F113D7A6173C598E7AB93FEB2E6CF
              0DB013FF74A18E7C17B82D580D7E6FE21FA4EB6C39683466CB81E7CC75A9EA8F
              1EA657D6B309D6DAF58C657BFA20690F9BF8C7C5B7D690A774BBCC1CA5A2EF5D
              E0F670AD384F42EB6BE2B1CC8E9103AB05BC3EF245D969D448CE21CDB222E70C
              B1525A3B524EC891338C9875D39E1873B89651B696883E6946DF1376FC015FF1
              96F930292D2D7C336454199F81886F26673165FD5A5DF58456C23A9DD259223A
              E23263451F61E1DB93B24FC67F80D79ECDAAF8495B9E9A073549F441625F76E8
              C2C59C6CA405CBBAFD1DD21EB5F091A49465297B6FAC2493ADC1BD26B8CCB11A
              CED7D0C769CB5C414AF400D7721244EA3609FFB56B562D7DCBC2CCB1BB6CB3EC
              B3F09A655AE6525206BAD75A249DCB121EA35D635C8EA692260F2B5791DD6514
              EE1BF4F14FD0E7F396793F29C16EBC3FA9A7247CADEE4EA41B0E3D5BFCA6FBE7
              2CC1C4DEB977E5EC7296640E9BD625B89F0E6E7C00A9D324FC01B2960AFA0EBB
              4B3140AC8EF894FB6D3CAAEE5C19D55557AD8657C87A85D3C7907E55F05946B6
              545CA0DE49318DB87E8CC347A1C24C6C0C3F8EF42F049FD7743367A3F7130D5B
              0E9E467BBE08EC2C0FAB81FF9CD32790FEB6E083713888771A0FEAAC613B4497
              810E1E1F4196B9227E2C1957707A11E98B059F570BCCB7F747EB36B4927D74D9
              C556218793A54EC4A354E433DD2ED2F344274CFFE9F47DDCFCD6B4D578DCB7DB
              F01D60120B78F7B432245531386C51D0F71A23F73DB3BC42579DECDB07470CD9
              460B91D82BF175428AAE28870A171BF9F0087D55C1508E8D5180B03B69ABCBA5
              CE4EB2F1A5DD54D2378A786D36266EBEF602EE02F91E7563CC00011FAE786C08
              F896D3938437C990B46B6C3A3C63E28B2BAD07CBE3D9E03F29F79EDFF3A052BD
              24E1D943D557E7E033DDA807432245BCA3977B5A58926137AD47CD3645C6C763
              C14A1E4F1FCFD1A3C06E2842DED762F0F7D8E330535E76AB0B49AD546D902EA3
              E3B8B5B5C6340BED21E391D566C5DBC22E81E7DED5604756ABA06B9B33CCA43F
              55CB9AAF639195F1DDD06EDFE59417B827BAA67D5CA57BAAD92618F4B245AC76
              7175DE76A680B4232CA598B633AD4D1F56BB91F28A0929615B35BAB572BC0D3E
              CA238B11188A745B583E52DF6923519724C83FEF9245D8C5D04A86091B729312
              3F481E1DB680E849ECD0806512E5B61D827CA14F4F44775A7938CF41195E6D8F
              2ACE43D855948E58EC12A42ACA25E8B78E7B888E8C0C0B68E713111029E08331
              B85FDAA372597136FF527C3A46F5B847BA9665559A21D67159D0603B7E281A52
              84B0A259CCB7129B27D59CB264AA2E49D02336BCB339D9B68A71F91F71110935
              DBD5F42299AEEBFE763CB6B748DD36D9B4DB163243793472924DACA4A49DCC67
              66F2DC1578557BDBF16C8F259402AB160B5D4A56A505AC63FA19FA99A5A3F2F3
              D9AA3449C77A6BC3B3AC6C2F06D3F65BD8CCAFF61847711315F80BBAB08E25E2
              9EEF12F051DD7596975C629C46500D3C173F5A5281F774B9028F075FEF564B52
              D828850978270A7DEE5CA7046729552F9DD960BDEF7882059B3549504C7DE8D2
              728D1C11211DF23A9078AEB996742ACBCE4FE40FA2DE40589A26CA5198CDDC54
              BC70AD71DA38304A3EA28EC5BB9F6C669E7165E211D522359EED50471715A5CE
              3EB1F59CF9AC5A395427E07E68DAC80893908F9773678F85E396A9F153A4573E
              70B094738CE1E984D6BC9ADCF199A6E7BEB1132BF273721253AF98134CDEDE8A
              F898F02839A599A921506F44E4F31D1BFE9E5B7C6F56654C53DAF4E6BA71FDF8
              D0DE4143FAC4F907C7723415DED9D7C782FB0E683D840787DEEB191FE4944589
              773ABBFA0786F48A0B1E0E8F41FD7C3AF70A45EFDA8677EBE915BC2C7D87B3AF
              1B8537E5FF002F1F287B15AF9EB55EC34BFFAE780DEF40C693FF01419E8EF102
              DE8943BD6C098FB2B89337F098B6D2FE57DB42D6FBBD81C7FE573E16C319666B
              6FE051C96588F4EFB030C47A03DF4335AFB0378C8EF2069EED7F85C12F44FDE0
              AFF4FEB978279275DDD3363C4E2874F19FE026E27168681CE058928B4D519CD2
              F9E7E3D92E208F2B4E36E18C3954D9F9A6E07DD1FDF75C7F0464B3136C3FB56F
              13F0CE61E0D51AFDCF799D954CC33C109A821FCAFE859F5F3A6F577D66015B82
              E37A7A706D0ADE1926FC6BDEF63E4F9E4DC23BC382F8B226DC7378D3F0CE36CD
              2D7874C7A10DF835114FA5CA9D0FF58F793CA299A751B7E16FA0FC04269CDF0C
              9794B0E00000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-azure'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005E0000005E08030000009D0C53
              5C00000264504C5445FFFFFF0000000055FF0259DA0054D4003FBF035BDA025A
              D9005FDF025AD9035BDA0066E50057DA035BDA025BDA035BDB035BDA025BD902
              5BD8035ADA0359D9035BD9025BD90062D7025BDA055ADC005CD8025AD9035BD9
              0459D8035BD9035BD90057D7025BD9035ADA005AE1007FFF035BD9035BD9025C
              D9035AD90055D4025ADA025AD9035ADA035BDA055CDC005DDD025BDA035BD900
              5FDF025BDA045BDA035AD90359DA025BD9035AD9025AD9025ADA035BD90066CC
              0000FF035BDA035BD8025BD8025AD9025BDA035AD90054DA0058D7025BD9035B
              D9055AD7035AD9035BD9035AD9025AD8035BDA035AD9005BDA025ADA025BDA03
              5ADA035ADB035ADB035ADA005BDA025BDA0048DA005FDF025AD9025BD9035CDA
              055AD9035AD9035AD9025BDA035BD9035BDB035BDA035BD9035BDA0558D8045A
              D8035BDA035CD8005BD7025BD9025ADA005ED9035ADA0058DD035BD9035AD900
              5CDC035ADA045BD9035ADA005CD0025ADA025AD9035CDB035AD9035ADA025BD9
              035BDA025AD9035AD90259DA045DD7035AD9045BD8035AD9035BDA005AD9035C
              D8035BDA0558DA025BD9025BDA035BDA005DD6035AD9055CD9025ADA035ADA02
              5ADA025AD9025ADB035ADA005CDB0059D8025BDA035BDA035BD9035BDA035BD9
              0057DB0055D4025BD9035AD90055DD005BD6035BDA035ADA045CD9035BD9025B
              DA025BDA025AD9025BD90459DA005DD9035ADA025AD9035ADA025BD9045CDB02
              59DA035BDA0459D9035BD9025BDA025BD9005BDA0359DB025ADA035BD9025AD9
              035ADA035AD9025BD90259D9025AD90558DB025BDA035BD9025BDA025BDA025B
              D9035AD9045AD9035BD9035BDADC2E6DF9000000CA74524E530000025A120495
              7C10B9E50A22D76240EDD564FB4A8FBF0CB53220D3A53CEBF9205E8D100289EF
              5E950CAF72D9FB2C1ECFE1085C38E74C58F7CD5ADB0400834272ABB7EF141ACD
              FD2CD5979F5654F51CBD7C85544EA70ED30618C76C5230E1DBD1F14EF350992E
              3A46502674CB1AF3164AF1169B3CE70AC96E48524CC7DDBF447634FD34E3A722
              42F93066C19112872E76DFC3785CE52428789FA3DFF71C067A830E18EBA136DD
              C3C9B1B13E2899C5EDB93A688736E97EC12A466281BBD7A3B358742A6EABBBC5
              CFE93E9D077424000000097048597300000EC400000EC401952B0E1B0000044D
              494441546881EDD9F75BD34018077053ACCA72200E40C1511782621DB8E24241
              0151A9031141C58DB8074E04F7C2857B823871E1DE7BF6FDA76C209726EFDD25
              695A1E7FE9F7B7DC7BF7699EF0F6B83C6DD122986082094613C1526CA66659E5
              435A36236F6FD5DADC444B7C9BD0B0F0E6E32322A1ADC9A916F876EDA183B93F
              AC153EAA2340B4D9C9BEF2B64E00D0D9F4741FF92E5D3DBA3BA699F8D8388F0E
              DDCC2FF089EF1E2FE9093D9A87EF9920E9D04BBEB4F70E24EFE8D388435FB21D
              F4EB1F407E4062930E03E5017B52F2A080F18353647D88531E190A101A287ED8
              7059871079C496E4B91811183E7524D14739E4A1D1D2D598B101E0C5716EA2C3
              7879CC11D97839C17F3E7CA282C3243298DA749D36D95F7E4ABA57CF984A6E7E
              9A3C92E9271F13E6D5218B8C662B1FA8DF9C46FCF41C959E3383DC7C9C3236D3
              0F5E9CE556E9904BC65DAAC1D99679E71C350EF173C9A7CE538D8EC9B3C8CFCF
              D7E8B080140A34C303B9802EBFB050AB1791EF90B84833BE58A739F9FC9262AD
              0E05A4B214159659E0637310922F929B4F41958CE5BEF389C88015A4321B5774
              FEB5F3F895984824157114C5C32A1FF9B19108485E4D4A23681D8A78CDC9E14B
              30A0EC2DE21A060F253EF1A5B86BD6AE23A5F52C1D366CF485EF8697CF524ACC
              9B07D8E403BFD98D166FD94A4AD16C1D32169AE66DB8B1214AA96DE3F09CE664
              F16578E9343B296DE7E9003B4CF293D3F0CA9D4A6D179FDFCD6A4E06BF092FDC
              A394CAF93AC05E537C45255AE6DEA7D4A6ECD7E137CC37C13BA8CE3BA0AA4E5D
              ACE3339A93E2A3F0A28483EAF2A1C37CBEF28821DF261E2FEAA45D7054E7F68F
              19F2C7F192B4136845958E3FDD803F998C579CC22B446AC7F0E6B4134DD6F2E2
              19BCA0102FF09C1FB8DF5C80B3BAFC686A7E35A57BBE77455C7E2D6A4E0D3FE0
              1C9E9EE21018394FFDFD956469676AF83ED4EC7296EE79EFE7B667A5F69D57CD
              5FE8882773DF6E42F096ADE48CA89EA7E643A95BE19F302E721F8F8BC3AFA266
              5EE2EA827099C75F51F79A97779EC613AF5ED3E1AFCFE4F93798FC4D6A5E958E
              2E0835F318B494E25A061F3B124FBB55A3CB0BB1BCF6AC63F0D4A10FCAF47541
              B88D8FA1722A2B289E3AF4C19DEB46BCB02483EDDF559A53E6F392A8392E3EAB
              A484F378B2114FB7F13D91AF7A93C9E6958DB089A70E7D009BCDE882ED3EDB27
              A7BA269EDEC21F98D205612BBB3D8B4B557C3DB583243F34C90B33D887873A2F
              6F8FA3AA8FCCEABCC3837C7A9178EAD007618C230B37D1CCF67C2CCABC72E87B
              12F7B42E77C1D286C1C61DAFC933E6E34995F992D0BAE765050D3DF4DEAEF5C3
              3C3C14860BD67F1E50A5F645C14B96FFCA2FBEE5F29DCF722FBFBE93C07C349E
              E4945AE0C3DFBC7DF73EEBC347CE76A6CE27F37C5E447DF58DCCCF8BDA1BAB4A
              DCB78D785B69C397AFC713D70C37C618C917F9BCF3DB8EEFBDE6FCF8F1E1A794
              5FE9527EEF6ECC9FBE52E87D8A4A88FF9D53D35B4AED412911318DF95B2E65BB
              CB556FFDD7B4608209E63FE51F7207EB38ABE579B40000000049454E44AE4260
              82}
          end>
      end
      item
        Name = 'icons8-run-file'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000050000000500803000000B9CF02
              9F00000111504C5445FFFFFF00000091C8F88FC9F890C9F941A3F141A5F56FBA
              F641A4F441A4F48FC9F742A4F48DCBF941A5F490C9F88FCFFF3FA4F48FC9F842
              A4F48FC9F841A5F590CAF83FBFFF41A4F490CBF840A6F541A5F490CAF9AAAAFF
              43A5F341A5F48FCAF98DC6FE42A5F542A4F490CAF891CEFE3FA2F341A5F590CA
              F890CAF97FD4FF40A6F441A5F542A5F48FC9F98FC9F993CDF545A2FE40A3F341
              A5F441A4F441A5F545A7F653ADF658AFF65AB0F75EB3F76FBBF683C4F88FC9F9
              8FC9F890CAF892C8F977BDF858AFF679BFF84CA9F556AEF68EC9F959AFF68CC8
              F84DABF580C2F843A5F55CB1F64BA9F560B4F76BB8F772BCF774BDF742A5F58B
              C8F880C3F82196F345A7F42196F2339EF37DC1F756AEF590CAF9280B2EAF0000
              004074524E5300002A765A26327AC3B346992C78FD1030C3DF7268ED04D97036
              F5BD025AFDDB1250F3C3142CBFF783064AB3F7E18F1A0A425E78898FAFBFC7C1
              AB93856E522E63634054000000097048597300000EC400000EC401952B0E1B00
              000174494441545885EDD9874EC3301006E05E297B94BD47D97BEF59A0EC0D2D
              F3FD1F8410A5346DEDC477FE852A91FF013EC5B27D775662B1CA0FFD265E659D
              781198F8B24E220223F09F819F1F60F0FDED55400681B99C800C06056418C826
              C341266902B2483390419A82C6A439684872402392071A905C3094E48321A404
              0C246560002905B5A41CD49036A092B40315A42D5846561C085E327853C0C706
              7CB0C1570F5C1CC0E50B5C60C12D00DCA4C06D14DCE8C1A3087858028F73E081
              133C12838776F4B302FEF09125023160754D3EB559D3BC048175CFFC3C456011
              582F001F75608303360AC0071DD8E480CD02F05EE3B5241DB05500DE69C036FA
              B929ED0231AB063B5CB05300DE2ABDAEA40B76F7F0C19B6B15D84B2E487DFD7C
              F1EAB2DC1B18F4401A1AE68B17E7A5DE488AF2208D8EF1C5B3926F1C9FA00248
              93537C3173EAE3A66766C90F12CDCD2FB0C993636FDD8B4BCB1EE3AFD82BAB6B
              EB1B9B5BDB3B8CECEEED1F1C1EA50B555FF8FFE02FF30DB7CFBA1694521A8000
              00000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-clock-outline-other'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
              54000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA86400000A3649444154785EED9D5B
              6C1C5719C7C749A328B4C00BE5222814F118414BDE02B44949B1EB5E0248A056
              20418172694B4B2271E9435554786882A208D1825A092975D2967A67B725968A
              9A127B67D636491CBB49A18EE33489E360C57653A785422FA870F8FE67C7C9CC
              EE979D33B373CECC6EE62FFD646B2F73BECBCECE9CDBB756AE5CB972E5CA952B
              57AE5CB972E53A8F84E8B00A831FB58AE56B2DDBBDD32A3AF7D1DFCDC423C4E3
              1EF87FB37CAEE0DC215F8BF7E44A4085F22556A97C9D653BBFA2208F5845F75F
              848809BDD7D9279385636EDF75B1D74AAE862AFCF9BD56C1BD8D02374001FC0F
              13D884A063A30DDBF9B66C33578D4AEEE72950BD14A837EA83A71BB4E9FC81B8
              C6B3E60215AE0976E546FAA4EEE103950A7FA10FC70DD2B60B4A38236CE72013
              90ACF0BC6597D77AD6B6B14AEE87C8D9276A9CCF26B6F33FFA1ADB216D6E4B15
              9DEF11FF609DCF32B6FB2A9D2DDFF5BC6803EDD8FB1E72AC50E768132C7BAA22
              3EF1A7BDE2CAE746C49AFE3171BD7B4082FFF1189EBBA85461DF1B1FE731EB8F
              43EFF6BC6A5195DC55F4093BC23BA8C6520AECA79FDB2FEE1A19173B264F8891
              993931FFCA823873E64C43F01ABC16EFC17B91281C8B6B4319F8521ABCC2F3AE
              C55474BB88589DB9252557AC1918130F8D1F13532F9F66031E87E3F3A7E5313F
              476712DAE0DA0EC576FE497787EB3C2F5B4445E76BC4DBAC430DB8E4E941F1A3
              FD87C45F4FCDB3014D12B4F1433A73D026674B63A46F377BDE665CC5F2EDD53B
              14CE111E04E59EB109F909E682A79363D4E64FC70E8B8B2327C6F96FF62FF605
              F7EB5193F1E5CA417168EE653658267971765EACA71B03CEC606BC237DCEA46C
              B733CAD7D4FBFB8645E9E8493638AA2C2C2C88E3C78F07C063DC6B55E97D695A
              DAC6D9CC433EA3A39B29C9BB29E7DFBCC1F5ACA58BEAE104CE8A13274E086A3D
              001EE35E1B05D87615D9C8D97E1E5ECBCEDD57B59FF1528D81E7E5EE9143E295
              053E1051D19510709ACEB43BF68DB33EF03887E59441EAB29D277903837410BF
              7CE108EB7C5C74266491FB0F1E91B6733ED58149B2545570BFCF1A56031C7AF0
              C5A3ACC3CD602221E037D477514E4AD1FD0ED99182E440A1DAD8143E659CA3CD
              622A21E0BE0393AC6F7560EC6BE7EE0F902D86A5386ABB813A7A9C8349603221
              001D49CEC73A6C773BD96250D5193EDE181F18ECC3C591732E094C2704BE28DD
              7DA12FD65B5943F618909CE90B9F5CC2BDFCE4BCDE0E9FE9848009BA25BE74A7
              4A3FC5193533F3886957D68020CD76FA54482321009D47CEE77A9CEBC926CD52
              9803C77008E748D2A495107093CA308BED0C914D1AA570EDC040E1F8ACFED15A
              906642FE463E2A0D486ABD962874027F3636C13AA0833413027E42BE7231A8E1
              09B24B83B0A0ACE8BE59D358009C1D2687D0D34EC851BA69093D4B30C687E1A5
              C48515855C833E30B9C419AE8BB41302303DCCC52200564826AEA25BAE6BC807
              A6444DCCF4F9C942425E3835173E1D8C65AB890AA398216B6DD161E20CD64916
              12023EDB3FCAC6E41CCEDB56DFE8BBC8BE84643BDD7C43E7F8EDF831D6589D64
              25210F92EF5C4C6AE822FB1212B604F08D48B0BC26C9D521AA642521B8B82BAC
              62D944F625A4EAFE0CAE1109D64D7186EA262B09019FDA35C2C6E62CE8502722
              8CC784ACAFC22C2067A46EB294108591E0D7C9BE04F4B47B1973F000581DC819
              A99B2C2564FBE4141B9B00A5F247C8C6265572BEC01EDC07966C7246EAA452A9
              8875EBD689254B969C4D06FEEFECEC94CF71EFD1C99EBFCFB2B10990C8EA14B9
              C19239B8071635ABACB54D926DDBB689E5CB9707CE0C3F78AEA7A7877DAF2EE6
              2806A10BBCB111B56961472B77700FAC34E70CD4C5E0E060C3642CB262C50A31
              3C3CCC1E43171F7F662F1B231FF7926D4D2AE49677D5B3FBC4A9B9B98670C6C7
              055F49645590A54BABD43CDED5D5C51E232E9C6F7E5685DF696D26BB9A94EDFE
              8E3DB8C74D7DAEB8E7D7BF6F08E75C1CA6A6A6C4B265CB8281BFA65B588FEFAA
              B2F6BAC07378EDC993C94D9471BEF9B99162C1C5E82C8865D3C25A23EEE01EB7
              EC7458E3FC70CEC5A1BFBF3F1070795620118BF6E0FF9A33656060803D561C38
              DFFCDC4CB1F0C7A68E44D66DB552421E7BF6824848C3AF2C9CA69C717E38E7E2
              303D3DCD7F652111E0EAE0F5A54DBFB2B27551C7859AAC0A82B3A2E6CC002B57
              AE648F1117CE373F662EEA19BBED1D1A1A92B7B46459281D1D1D62CB962DEC71
              7460E6B65756D5610F2E49A363884E9F4A5F04984A8A52C710BBCB9A164A1CB1
              073F471A4327E8F475777707AE2908FEE2FF7E4C24C5DCD049860717012EF4B8
              932A97CB62626242AC5EBD3A95A4280D2EF6EEFE30D9D2A4323CFCCE31333393
              4A52EE0CDFDC93D0F03B84E25F7C23126CCAE78C4C8B3492F249631354902C9B
              C734E28129DC34B63437C2645294A6706DE7016A3B21A12C1ED7880F5448E08C
              4D135349C10E2B2E2601B04B3931A14661069701A9602229E6970141B20E22D7
              58953416CAA9A23329582817BEFFD0D94D6D252C6C66641B3B87E9A5A4516894
              948D1B37B2EF5141699B5BA1FC2D6A2761C9FDE88D8B549A5E6C1D152E291B36
              6C605FAB82F2626B6D75B664F54EA6511F26B723C4C19F94669201D2DD8E00A1
              942ADFE859F08931B561272E48CAD6AD5BD9E75451DEB05374AFF6A2A7494567
              986934C0970C6D694B13A52D6D4577D08B9A46A1AE2DDF7800FBE834EB483BA0
              BCE913FD37EDAA8E6D3D5FD7780DD8169D44C59FACA1BC2D1AEBA18D09458615
              0A95A16EA2CEC201A6812FA8D7C8F91A00B1B19DABBC681912CAA672C6D4A0B3
              B48669D4CB35398F7A5132A842F983D4F86BF5C6D4F3F30393AC83AD8472F199
              A273C6EAAD5CEA45C9B0143682025DE5994C01DB23D4CCFAA6179D9414B26E6B
              11389474013313FC225A0133C3558038615800E5ED380319F03D9CD4857E766E
              BE6E6D141EE35E1B15D8787B94127FB67B283BBFDC53285F4949512EB48FA1FA
              246E8975252456114C7B70A5178D8C48D641895626B6D9CEA38E843C499DBEF7
              B57C99D845A1A8302A3EB386F37CB172501631E68213469209C15C8EE270889F
              77A8BFF155CFFB8C0AE5B7232605837428F78DB2DF5CB0CE471209C110FA8F47
              2754070AFDA0AAF56D9ED719170AD547F8FA5A04F329A81DA23AF3D84C42168B
              F1C748042EE06F59A5CA573C6F5B44F84907FCB403E75008980EC63C35164E34
              3A6BA22604670316247C66F7A8FAAD6C1DB87969D55F7443F96DDB9DE01D5303
              C9B962D7885C8886D581FB6666E53A5A04B85142F01A2CEFEC393C25DF8B8DFD
              0AD5161A035F3277371555D5C2354AE35EAA6051F3E5CFEC910BF4D6F739E296
              BEB264FD4E473EF6317A2E7CE173647AA42F6D235C005164987736BBC0E682F3
              0DCF8B36132A3E637821E26F8CA482B4D17934BD814293426148D4B5E502910D
              F69B9FCFC882641DAEF0397A8354CC4CBB665D720612A3C6A9FD38316E3A34AF
              0E6945552B9FDE4AC9C1CF7747EE58AA43C7AE2E8DBD554FC5D076945CE02D7F
              0B711305702FFD7DBD1ACC18C8DF1E9415B937D1DFCEE4173E5FA842BD298C00
              60F32476B45603FC48F52B47F2B07C0CCFD9EE0FE4286C2235AA72E5CA952B57
              AE5CB972E5CA95AB5D6559FF07518C7B68730B004B0000000049454E44AE4260
              82}
          end>
      end
      item
        Name = 'icons8-filter-database'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005B0000005B08030000002BE809
              AB000001C2504C5445FFFFFF000000FECB81FECB80FECB80FFCB7FFECB7FFECC
              80FECA7FFECC7FFECB80FECB7FFECB80FECD80FFBF7FFECB7FFECC7FFEDA91FF
              D47FFECC7FFECC7FFECC80FECB80FECB80FED08BFFD47FFECB80FFD287FECB80
              FECD7FFECB7FFECD81FECB80FECC80FECC80FECB7FFEC67FD1C6E8D2C3E8EAC6
              ADF7C990FECA7FCFC4E8D0C3E8CDC4E6FECC7FD1C3E8D3C3E5D1C4E8F2C999FE
              CB80FECB80D0C5E7D1C3E8F0C89FFECB80CEC6E6D0C4E8D1C3E8DBC4D0CDC5E6
              D0C3E8D1C4E8D1C3E8D4C3E5CFC7E6D1C3E884817D7D7D7D7D7D7D7D7D7D7D7D
              7D7D7D7D7D7D7D7F7F7F7D7D7D7C7C7C7E7D7D7D7D7D7D7D7DFECB80CFAF7E7D
              7D7D7D7D7D7D7D7DFECB80FECC817D7D7D7D7D7D7D7D7DFECC7FFEC68D7D7D7D
              7C7C7C7C7C7C7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7C7C7C7D7D
              7D7E7E7E7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7C7C7C7C7C7C7C7C7C7D
              7D7D7E7E7E7D7D7DF7C77F8C867D9F917DFDCB7FA6967DC3A77EF4CA977E7E7E
              7D7D7DD2B17E8D867D8D877DE4BB7FE3C6BDDDC5CAFBCB87FECB80DDC5CBFDCB
              82EBC8ABE4C6BCF7CA8FFBCB88FDCB83D0C3E7D0C3E8F4CA98D1C3E7D1C4E9FC
              CB86F8CA8FFECB7FFFCC801D6125C70000007574524E530000407276409F9D4E
              4C8787626008D1CF060C7EB7C1CD7C0A06BD10DB24EB38F95A78A512102658FB
              3A3AFB087A1408FBF3EFB910268168066A95C100B91212000697EDDF345874AD
              BD02E104FDFB0EB72CEBED10E1502EF130850854646666FD99A708D3E71AEF12
              F540423C898BA3A100C3028D7F1CD900000000097048597300000EC400000EC4
              01952B0E1B000002CE494441546881EDD9675713411406E05CB1F7022A102014
              0BD82B02F65E316A5454948EA058000B6A62C11A2B31ECFF35D1EC6676A7DF19
              3D9E93BC1F7792E7E4DCBC3B9924A15031FF3690C98C92999652320BDCFCB167
              3B1633C767CFB5493BCE3CD29E6FD75E40DA0BEDDA8B487BF1129BF4D265BEF7
              72F98AD2B295565256BA6AB5BF27999457D878CD15E5908F674365D89C0E5702
              D386AA6A53BABA0A3836D444CCE8480D706DA89D36A1A76B4160439D895D0742
              3B548FA7EB4362DBA089BEF6316D7413FDED63DBC82606DAC7B1514D0CB68F67
              239A48B58F6BEB37916A1FDFD66D22DD3EBEADD94446FB043634683431DCC0A1
              39B6461399ED23EC356BA9AC5B9F26F2934B471AB9F46FBB69434A92A91F1C9A
              D33ECFDEF85D46A752DFBEB2ED4D023A6B6F96D3A9D41726CD6B9F059BDB3E73
              9BDF3E635BD03E535BD43E435BD83E435BD83ECFDE82E9B7B87D9E0D4D5B65F4
              D4B6EDFEEC10B72F6FC3CE5DF486E265773AFD99DA4F9A1568DE3E48A49975D7
              28DB7B5A5A05694B26939F3E22EDBDFBE4EFE587F7387BBF4A07DFE16C4CBF8B
              76E1D907546C64070F2ADC3B6F91F70E1C6A693DCC4FDBE424FE9E973CC26CAF
              629DD97C7B2C7D6653B6116736551B7366FB1FFA5DB40BD57EF3FA5526478ECA
              734CFFCCF632115749E2B8EA99ED05318FE74AF609DC99ED99027D1270FBE0C4
              53297DEA34D276269E48E83367016B3B8FCF09E9F6F380B7A3172E0AE84B31AF
              DFDAF6E52B00573BB874C735C0DA91EB37B2973BDB7903E9749FA96D47DD6F95
              3739F62DEF999A76761C6EBABA19727757FE015A766E1C6E7A18760FB1AE6347
              835FB27B29BA975C56B7C971E4D2D71FA0FBFB3076601CB9C4067CF440CCB7AA
              6853E3C865F03659EC41FFA292CD18879BA1618F1E1E0AAC29D8EC71B8B9E3D9
              77834B72BB51F213CC488E1EA156E4B634F7B21F7289FBF482051B1E24E28987
              8CEB36ECD1B1F8D8E85FB261FCD138EBB2E67FCB85915F15F6B78E0FDD961300
              00000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-filter-table'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000005900000059080300000062D578
              9D00000255504C5445FFFFFF000000FECB81FECB80FECB80FFCB7FFECB7FFECC
              80FECA7FFECC7FFECB80FECB7FFECB80FECD80FFBF7FFECB7FFECC7FFEDA91FF
              D47FFECC7FFECC7FFECC80FECB80FECB80FED08BFFD47FFECB80FFD287FECB80
              FECD7FFECB7FFECD81FECB80FECC80FECC80FECB7FFEC67FFECA7F0096A70096
              A70B98A50096A7FECC7F0096A60096A749B0D149B0D13AAAC95AB5DA0C98A59B
              B68FAAB98CA4B99370BAD6FECB80FECB800096A78FCAF98FC9FA8FC9F8FECB80
              49B0D090C9F990CAF890C9F88FCAF8B1C9D449B0D090C9F990C9F8B0C9D538AA
              C791CAFA8FCAF88FCAF88FC9F88FC9F8C4CAC057B5D990C9F990C9F98FC9F990
              C9F89CC9EB139CB290C9F98FCAF98FC9F98FC9F8EBCA930096A70498A962B9DE
              90CAF995CAF284817D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7F7F7F7D7D
              7D7C7C7C7E7D7D7D7D7D7D7D7DFECB80CFAF7E7D7D7D7D7D7D7D7D7DFECB80FE
              CC817D7D7D7D7D7D7D7D7DFECC7FFEC68D7D7D7D7C7C7C7C7C7C7D7D7D7D7D7D
              7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7C7C7C7D7D7D7E7E7E7D7D7D7D7D7D7D7D
              7D7D7D7D7D7D7D7D7D7D7C7C7C7C7C7C7C7C7C7D7D7D7E7E7E7D7D7DF7C77F8C
              867D9F917DFDCB7FA6967DC3A77E7E7E7E7D7D7DD2B17E8D867D8D877DE4BB7F
              9CCAEBEECB91A7C9DEAAC9DCD6CAACDCCBA6C3CAC161B9DEC3CAC0C8CABB009A
              AB00A9BD00A7BB9BC9EBF6CB8990CAF962B9DE009CAD189CA5009BAC009CAE00
              99A9009FB1009FB000A9BE00AABE00B0C5009DB000BCD400B8D000B6CD00A8BC
              00AEC3009DAF00B9D000B6CC0097A737A19E1E9CA21D9CA2FECB7FFFCC80F6C1
              F5F50000009174524E530000407276409F9D4E4C8787626008D1CF060C7EB7C1
              CD7C0A06BD10DB24EB38F95A78A5123AC7E1EDE37A8950A5A789DB54CFF5F5FD
              EFB9527C52CB68A77CBDA7E5B3A97EA9B38950A5A789DB99D7C3E1D7F3DD6012
              8760CF74C9EBE5E3EFEDDF345874ADBD02E104FDFB0EB72CEBED10E1502EF130
              850854646666FD99A708D3E71AEF12F540423C898BA3A100C3028DA937568E00
              0000097048597300000EC400000EC401952B0E1B00000355494441545885EDD9
              E753D4401806F05BB1F7022AFD682A76C5862288A262050BD87B47545454948E
              A058000BCA5941542C17141005691A85FC5DDEEE245CCA6E924D22731FEEF9F2
              CE64B9DFECBC3CC37160B379230E00837C065B149F214008948772166698481E
              6E25CC7123DCF2486BE5516E79B4B5F218B73C769C95F0F809A2EFE0C449BE7E
              932D899FEF94A9E26EB8E21F60C57D03FC813BBC0C0283CCC34181002383E010
              B3704830C0CA20D46E0EB68702820CC2FACCC07D618028837033723850916D11
              C6E1089B9A6CA27B92BE6164C3DD93F60D271BEC9EAC6F58D950F7E47DC3CB06
              BAA7E81B41A6EF9EA26F2499B67BCABE9164CAEE61FA4694412445F782220930
              56A6E81EB66F2A3288D2D93D7B141146F2B4E98ACCE8FD2BCE1F3C4CE89B5B8E
              66B5D28B9767AAC0BCFCFB174C0FDB8D6617DB856637DB8366274126F54D2C77
              FC846967DBD0FCC17E47B38D6D47B3032F13FB665626F7CDA4ACD23773B25ADF
              4CC9AA7D13CBADDF605AD866349BD826349BD916345B95B26ADFC4B256BE52F5
              4D2C77B7C17C6167CD8699D33817CD798DF3172C8C898959D4B87889244BD5FB
              2696853D2F43CF6299583497332B409CEB864EE6B3F4CA713A60AF3CA0F2A78F
              301FD895F130094C029AAB98C4F8D50D0D0DEF4DC842DE31F898BFF39A2418D7
              9DD15CCB2426AD73DDF9AD47EED92B0F8C2CFCAC5B9F0CB381D988E6266673F2
              96FAFAFA371ED967E13D656B0A4C2A938AE636667BCA8EBABABA5A8FDCB3571E
              18B993FF5D74671A4C3A938EE62E6677DA1EA7D3F9DA03FBBC379ACFBEFD07E4
              39F80AA6D6A0AC9638A9F9F2C573570E1DD6CE114A997BE6A8D113C751DA3B73
              DC535DF231EA6DB8F244077C9C7ECFAE543FD6844F9C342473D58F34E053A781
              31997B784615CE380B8CCA99E7CEABC017B28041F9E225002E6713E1EC2BC098
              6CBF7A0D3ECEC920AD22477825A59C297C0ABC4E906FF4BF924A868B10929B87
              71F372DD5F4021F38B10928F91F345E7FAE54CF9C7E102055C203ED62B8B17C1
              A7B048061715D2CBB245F0C92A96C0C55992535DB262117C4A6E8A8B5C223DD4
              21631621A4B4AC1F2E2B959D69CAF84508B9D52FDF961F69C9511A7F2029E7E1
              72C58996AC993BF0EDCB715779605A06F71C358EFB98E7E6E58ACA9ACA8AFF22
              83AA0755B8C794FFB3F58CFC031F05324D2D9FCF8A0000000049454E44AE4260
              82}
          end>
      end
      item
        Name = 'icons8-clear-symbol'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000660000006608030000000E0114
              50000000C0504C5445FFFFFF000000FE3C00FE3D00FE3D00FE3C00FE3D00FE3C
              00FF3D00FF3C00FE4800FE3D00FE3D00FE3E00FE3D00FE3D00FE3C00FE3D00FE
              3D00FE3E00FE3C00FE3D00FE3F00FE3C00FE3C00FE3C00FF3300FE3D00FF2A00
              FE3D00FF0000FE3C00FF3D00FE3D00FE3C00FE3C00FF3D00FF3B00FE3D00FE3D
              00FF5500FE3C00FE3D00FE3C00FF3C00FF8F6CFF9B7BFFAD93FF4E16FFF8F6FF
              521CFFFFFFFFC8B7FFFEFEFF8E6BFFDED4FFF9F7FF7448FF4308FF794FFF4D15
              FF6E41FE3D00FF3D000A610D690000002D74524E53000087EFEDD7A33E78A106
              5AA14EFB4636F5AF2CEBE91CE314D30AC906B300A589EBB1E7AB3C918F02EDD5
              9B325FB62DAA000000097048597300000EC400000EC401952B0E1B0000016649
              4441546881EDD8D752C3301085E124F45E4227D8F4DE8513AAF7FDDF0A6C26C6
              9616B46294BD3AFFA527E36F2671D6925A2D84104208218450586DA6CE58A4C6
              2726A7BEEEC733D314B399599E99CBA33234CF320B8B7115A22586595E89ADD0
              AACB74D7A22BB4EE301B9BF115CA6D666B7B040A91C5ECEC7A3EFFF1CE5C7C7B
              0D637A7B9E8FBF3C0F5CA79F3DF99C0693A45EC518C7E967C6F89C06B32F501C
              A750BC4E9DF18D98C7075336B8771463EEA48C7FC40C6F5973AA4BDCA3C13192
              11E33842E587918D18CB912A15D33D9028962356868C7CC4D41CE6A7FA9B0919
              31D5CD6FE5CA37E31D31AC63E44AC9F40E4314CB11290593A4614AC3912905D3
              0955886EB230459149D250E55F5F9AD223A0F5406BFD3DB5868DD6E8D47A1168
              BDD6B45ED25A4B0EAD0594D672506971ABB554D7DA78686DA346B3293CD2D9E2
              1EEB6CD84F548E1F4E350E53F2B3F35F98784743179757D7EDF2680821841042
              082114D227617AB9E7DED5FF830000000049454E44AE426082}
          end>
      end
      item
        Name = 'server-memsql'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000001C6000001C60806000000EE622B
              29000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000001874455874536F667477
              617265007061696E742E6E657420342E312E3564475852000032B74944415478
              5EEDDD0D9C5C757DEFF1092B288F1110799899DD2404D1E04395AAADD64B5B5B
              F5FAF0B25AA9D76BBD6D6D8BCE9C4D2080525FF5766B1FACAD7A6BC8399B6466
              360941B865DB97B6D4876BABA6DA9A33BB49009182E013958A567C404090A7E4
              FECFE48FE770F69B6476761ECE39FFCFF7F57ABF6C7F2433E7FC67FEE7BBBBD9
              9929EDDFBF1F00005872080080ABE410000057C9210000AE924300005C258700
              00B84A0E010070951C0200E02A390400C05572080080ABE410000057C9210000
              AE924300005C25870000B84A0E010070951C0200E02A390400C05572080080AB
              E410000057C9210000AE924300005C25870000B84A0E010070951C0200E02A39
              0400C05572080080ABE410000057C9210000AE924300005C25870000B84A0E01
              0070951C0200E02A390400C05572080080ABE410000057C9210000AE92430000
              5C25870000B84A0E010070951C0200E02A390400C05572080080ABE410000057
              C9210000AE924300005C25870000B84A0E010070951C0200E02A390400C05572
              080080ABE410000057C9210000AE924300005C25870000B84A0E010070951C02
              00E02A390400C05572080080ABE410000057C9210000AE924300005C25870000
              B84A0E010070951C0200E02A390400C05572080080ABE410000057C9210000AE
              924300005C25870000B84A0E010070951C0200E02A390400C05572080080ABE4
              10000057C9210000AE924300005C25870000B84A0E010070951C0200E02A3904
              00C05572080080ABE410000057C9210000AE924300005C25870000B84A0E0100
              70951C0200E02A390400C05572080080ABE410000057C9210000AE924300005C
              25870000B84A0E010070951C0200E02A390400C05572080080ABE410000057C9
              210000AE924300005C25870000B84A0E010070951C0200E02A390400C0557208
              0080ABE410000057C9210000AE924300005C25870000B84A0E010070951C0200
              E02A390400C05572080080ABE410000057C9210000AE924300005C25870000B8
              4A0E010070951C0200E02A390400C05572080080ABE410000057C96112212AE6
              B9B16C7C327855B9165C5DADFBFF61C771B6EE7A56A919DE6A6C2ACDEC7EA19D
              12D273D65CBAED34F37C7B57A51EFCDB442DD860C707123DC75AED5B4AADD02F
              6D6F9F6BA7842C48BAE314394C22249DF1B5C18BCCC5E90663FF63EC7F8AD398
              FB9952B3BDFFA75AED4F9636EF3ED3FE5742BA4EE583D71C6DBEF8FACB4A2DF8
              C963CF37F3FF6FB5FFF9409ABB5FFCF8E75BF88FA5C60D2BED7F25E4A7513D97
              268749842453F582CB2A75FF91642946EC7F8E932EC603EE2DCDCCBDCEFE0942
              0E9B33D73757573CFFE6F4F36D41316E9D7F9178BEDD630AF2D7ED9F20A413D5
              7369729844C86331A5F857E90BD463EC1F89A38BD1081F35DF3DBEC5FE29420E
              9A89C92D4F375F84FD977ABE75598CD1F36D1FCF37928CEAB934394C2224CA8A
              BAFF3675817A8CFD63710E5A8C1D0F971AED97D83F49C8828CD7A64FACD482AF
              ABE75AA4FB62EC7878ACD57E95FD93C4F1A89E4B93C32442266AC1332A9EFF80
              BA403DC6FED13833EDE7880B544278C7F2AB6E3CD1FE69421E17538A7FAB9E67
              8F5964311AE1DDE6CF54ED9F260E47F55C9A1C2611B773EE055B8EACD4FD3DEA
              E29464FF789CC3166324FC5BFBA709F9692A6BFDB7AAE758D2E28B31127ED65C
              D396D9BF411C4DBAE314394C226E67DC0BFE425D98D2EC1F8FD355311A33EDDF
              B57F8390D259174DAF325F88DDA39E6349BD15A3D10A2FB67F83381AD5736972
              9844DCCDC4DBA77F4EFD06AA62FF4A9C6E8B31FA4D555EC6414CCE9F9D1DABD4
              825DEAF995D6733136DA0F94B6CF9D63FF167130AAE7D2E43089B899532FD971
              AC29C5DBD44549B17F2D4EF7C56884E1793B773EC1FE4DE2684CD9BD473DB794
              9E8B31D2685F77EE963D47DABF491C8BEAB934394C226EA65C0F9AEA827430F6
              AFC559543176FCA9FD9BC4C12CE6A71391251563A4D5FE0BFB378963513D9726
              8749C4BD9427A7FFBBBA181D8AFDAB71165F8C8F742E6EC4B9AC999A3DCE7C21
              F655F5BC3A98251763F47C8BDE2D873817D57369729844DCCA19DEC693CB75FF
              4E75313A14FBD7E32CBE18A35F8CF8FAC9AD5B8EB7B7401C89F94E71BB7A4E1D
              4A1F8A717FA9117EED94D99B8EB3B7401C89EAB934394C226EE570AF1F3B18FB
              D7E3F4528C077CD8DE027120E36BFD37A8E7D3E1F4A5183BC296BD05E24854CF
              A5C961127127152FF81D7511EA86BD8938BD17E3FED2CCDC6FD85B2105CE59EB
              37954DC17D5F3D9F0EA77FC5D8DE3FD69C7F8DBD15E24054CFA5C961127123AB
              D66D192FD7FDBBD545A81BF666E22CA5189BE10FCD858E77292970CCB56599F9
              42ECD3EAB9D48D7E1663A9D5FEAFE366AE3BC5DE122978D21DA7C86112297ECC
              E3BCACEAF99F5517A06ED99B8AB3A462345AED9D53FBF71F616F8D142CA6142F
              55CFA36EF5B5183BC28FDA5B22054FBAE314394C22C54FA5EEBF435D7C16C3DE
              549CA516E301EFB2B7460A941593973F27F9D98ABDE87F311AADF65BEDAD9102
              47F55C9A1C269162C75C60CE39DC1B8477C3DE5C9C7E14632B7CA8B475D7F3EC
              2D920264626ADB93CC778B37A9E7D0620CA418A3CF6FDC16AEB0B7480A1AD573
              697298448A1BFB06E1D7A90BCF62D99B8CD39FEF188DF0CBA75FBBE7187BAB24
              E7A97AC146F5FC59AC011563F4C5D8E7F9117EB1A37A2E4D0E93487173A80F1E
              5E2C7B9371FA568C1D0D7BAB24C79958EBBFC27C21B64F3D7F166B60C51869CC
              5D666F951430AAE7D2E430891433E36B83172DE62DB80EC7DE6C9CFE1623BF52
              9FF33CEDE22D4F29D7826FABE74E2F065B8CE183A566F86C7BCBA460513D9726
              8749A478E9E52DB80EC7DE749C3E1763A9D1FEEE31DBE64EB3B74E7296B217FC
              BD7ADEF46AA0C578C08DAB3F71DB13EDAD930245F55C9A1C2691E225BAA8A88B
              CD52D89B8ED3EF628CB4DA9FB4B74E72941575FF6DEA39B3144328C6E8F9F601
              7BEBA440513D97268749A45839C3DBF86A75A1592A7BF37106518C915678A1BD
              079283ACF41A4FABD683FBD473662986528CCDF0D1D2CCFC79F61E4841A27A2E
              4D0E934871D2F9779E7AF01D75A1592A7B177106558C7CD06C6E72E0B79E83DD
              E9E74A3F0CA7183B6E3FE9CADB4EB0F7420A10D573697298448A93722DF888BA
              C8F483BD8B38832AC648ABFD45FEFD27FB199FF4DFAB9E2BFD30C46234C22BEC
              BD900244F55C9A1C26916264A5B7F1F7D405A65FECDDC41964311EF0217B4F24
              83A94E4EBFC43C2F1E4D3F4FFA65B8C5686C9D7FBDBD2792F3A89E4B93C32492
              FFACA8FB13E57AF0237581E9177B5771065E8CE1BEB1995DBF62EF8D6428AB2E
              DBB2BCE205B7ABE749BF0CBD185BE15DFC567431A27A2E4D0E9348BE3335B5FF
              88AA177C4E5D5CFAC9DE5D9CC17FC718F9D6F157CC9D6CEF916424E5BA7F957A
              8EF4D3D08B31D2083F66EF8DE438AAE7D2E43089E43BE5FAF41FA80B4BBFD9BB
              8B339C6234C28FD87B2419C8C4A4FF26F5FCE8B79114E3016FB3F748721AD573
              69729844F29B95EB373E6BA99F62D02D7B977186568C466BEEF7EDBD9211A6F3
              999EB5E087EAF9D16FA32BC6F0BED28EBDABEDBD921C46F55C9A1C26917C66CD
              D4EC5115CFFFA2BAA80C82BDDB38C32CC6E862B5F5BAB3EC3D9311A4F323FBBA
              FF2FEAB9310823FC8ED108779D3FBB7FCCDE33C95954CFA5C96112C967AA5EF0
              01754119147BB771865A8C462B9C3F6FE7CE27D87B27438EF94EF15DEA793128
              A32D46A315BEDBDE33C95954CFA5C96112C95F06FDABF28ABDEB38C32EC64823
              7CAFBD7732C48C7B9B9F57F6FC87D4F3625032508C7C56684EA37A2E4D0E9348
              BE72F63B5AC7576AC1D7D5C56490ECDDC719453176DEC22BFC057B046408397D
              EADA634C497D593D270669E4C51869B46F9ED8B6F349F608484EA27A2E4D0E93
              48BE52F1FC2BD48564D0ECDDC719493176DC7EE2EC9EE5F628C88053F182CDEA
              F930689928C648A3BDC11E01C94954CFA5C96112C94F56D4FDD7AA8BC830D843
              8833BA628C7CD81E05196006F586F4DDC84C31466F34D19A7BA93D0A9283A89E
              4B93C324928F9C7AC98EA7566BC177D5456418EC61C4196D319AAFE477BDD91E
              0919409EB9AE79EA289F6FD929C64878C7F26DD73FD91E09C97854CFA5C96112
              C947CA75FF1FD4056458EC61C419753136C3BB4BAD2F4CD8A3217D4ED50B3EAE
              9E07C392AD62345AE1D5F64848C6A37A2E4D0E9348F633EE4D5FA02E1EC3640F
              25CEC88BD168859F9FDABFFF087B44A44FA9D4374DAAE7C03065AE183BC237DA
              A321198EEAB934394C22D9CEF82597AFACD4827BD5C56398ECE1C4C942314678
              BD595F33510B9E51AD05F7ABE7C03065B318DB3F38BAB5F70C7B4424A3513D97
              26874924BB89DE6DC494E2BFAA0BC7B0D9438A9395626CB61F3617CDE7DBA322
              4B48E7DD946AC1F5EAF11FB68C16A3117ECA5C3797D9A322194CBAE314394C22
              D9CD8417FCA1BA688C823DA438D929C6C86DA7EEB8E1587B64A4C798327ABF7A
              EC4721BBC5D831698F8A6430AAE7D2E4308964332B262F7F4EA5EE3FA82E1AA3
              600F2B4EB68AD1085BF6C8480F29D7825F328FF350DF4DE950325E8CF7975AF3
              67DB2323198BEAB934394C22D9CBEA0D1B9E58F5FC2FA90BC6A8D8438B93B962
              345AED5FB347471691F1DAF489D55A70877ADC4725E3C518FDDB36EFDD9BD1A8
              9E4B93C32492BD980BC35FA72F14A3660F2D4E168BB1117EEF982B779F6E8F90
              74994A2DB8463DE6A394F9628CB4C2F7D8A323198AEAB934394C22D94A65ED96
              F3CC8521333FD27A8C3DBC38592CC648A3FD4FE679CD2F477499EABAE9DF528F
              F7A8E5A218A35FFCDABEFB05F608494692EE38450E934876B27AED952754BCE0
              7675A118357B8871B25A8C915678B13D4A7288745E0A54F7EF518FF7A8E5A418
              8DF0D6D3AFDD738C3D4A9281A89E4B93C324929D988BD495EA229105F610E364
              BA18DB3F296DDDF52C7BA444E4FCD9D9B18AE77F413DD659909F62345AED697B
              942403513D97268749241B99A805AF571788ACB0871927CBC5D8117E898F0C3A
              782A5EF047EA71CE8A5C15A331D6DCF50A7BA464C4513D9726874964F4E9BC61
              B3E7DFA52E1059610F354EE68BB1E3727BB42491727DF30B2BB5E061F5386745
              DE8AD17C2176E709CD9B4EB2474B4618D57369729844469F4ADDFF98BA386489
              3DD438B928C670DFD8D6B997DB2326266BA6668F2BD782AFA8C7384BF2578C46
              2B9CB5474B4618D57369729844461B7301A8A90B43D6D8C38D938FEF188DF0DB
              C76DD9F3147BD4CEA75A0B66D4E39B35B92CC648ABFD167BC46444513D972687
              49647459BD76C399D57A709FBA30648D3DE438B929C68E7FB047ED7426BC4DAF
              538F6D16E5B618A38F43DB3A5FB5474D4610D573697298444693CE6F05D6825D
              EAA29045F6B0E3E4AB18F7971A736FB747EE64CEF65A6798EF16BFA71EDB2CCA
              6F3146C2CF9A6B2BAFA51D51D21DA7C86112194D2A93FEFF561784ACB2871D27
              6FC5D80C7FECEAFB5B9A7DBEAC5C0BFE493DAE5995EF6234782DEDC892EE3845
              0E93C8F033B176FAB965CF7F485D10B2CA1E7A9CDC15A3D16AEF3977CB9E23ED
              19389389497FBD7A4CB32CF7C5D8683F50DA3E778E3D7A32C4A89E4B93C32432
              DC4C4C6D7B52A5EEFFBBBA1864993DFC38792CC6C84CFB7DF60C9CC8CAF51B9F
              55A9053F518F6996E5BE18238DF6752E7E2136EAA89E4B93C32432DC980D7FB9
              BA10649D3DFC38792DC666F8686966FE3C7B16854EF4292DE55A70A37A3CB3AE
              10C5186984EFB567408614D573697298448697F2E4F42F9BEF16F7A90B41D6D9
              538893DB628C84DF5CBEEDFA27DB33296CCC73ED43EAB1CC83C21463B3FD48E7
              D8C9D0A27A2E4D0E93C870B2EAB22DCBAB9EFF4D7511C8037B1A71725D8C46AB
              FD37F64C0A9915B5E06579FD222C52A0628CBE6BFCDA29B3371D67CF840C38AA
              E7D2E430890C27E55A70B5BA00E4853D8D38792FC6C84CFB7FD9B32954CEF036
              9E5CAEFB77AAC7312F0A558C9156BB69CF840C38AAE7D2E430890C3EE36BFD37
              A8CD9F27F654E214A1189BE18F4A8D1B56DA332A4CCC17611F518F619E14AE18
              8DB1E6FC6BECD9900146F55C9A1C2691C1E6E9176D3E3D4F2FAC3E187B3A710A
              518C1D5F387F76FF983DABDC67A5B7F1F7D4E39737452CC652A3FD9DE366AE3B
              C59E11195054CFA5C96112196C4C297E526DFCBCB1A713A738C518F9237B56B9
              CE99EB9BABF3F216838753C862EC083F6ACF880C28AAE7D2E430890C2E95FAA6
              49B5E9F3C89E529C6215E3C3A599DD2FB46796CB9C37B5F309A64CE6D4639747
              C52D46A3D57EAB3D2B3280A89E4B93C3243298AC5AB7E92CB3B97FAC367D1ED9
              D38A53AC628C2E565FCDF36F0E96BDE04FD5E39657852EC666FB9ED2B670853D
              33D2E7A89E4B93C324D2FF446F105EF582B6DAF079654F2D4ED18AF1806DF6EC
              7295F1C94D2FAED4FD47D4E39657052F46F38558F8F9A9FDFB8FB06747FA18D5
              7369729844FA1F538A7FAC367B9ED9538B53CC628C5EC2F1067B86B9C8EAB557
              9E50A9055F578F599E15BE18238DB9CBECD9913E46F55C9A1C2691FE667CDDF4
              B9E642F5B0DAEC79664F2F4E518BB1D5FE7E69FBAEB23DCBCCA7E2053BD4E395
              776E1463F860A9193EDB9E21E95354CFA5C96112E95F2A1FBCE668B3A96F496F
              F222B0A718A7A8C51869859F317B23F39FA7579D0CDEA81EAB2270A2180FB871
              F5276E7BA23D4BD287A43B4E91C324D2BF98CDECAB4D5E04F614E314B91823AD
              F6A5F64C3399336B41B55C0B7EA81EAB2270A818A3E7DA07EC59923E44F55C9A
              1C2691FE64656DFA57F2FCDE9487634F334ED18B31FA315763EE67ECD9662A53
              53FB8FA87AFE67D5E354144E15A3439FF8328CA89E4B93C324B2F44C5CB8EDC9
              D55A7087DAE045614F354ED18B31D268DF5CB966D7D1F68C33934A2D78A77A8C
              8AC4AD62ECB8FDA42B6F3BC19E2D594254CFA5C96112597AF2FE06E1DDB0A71A
              C785628CCCB4037BC699C8C4DAE9E756EAFE83EA312A12078B31FA29C5767BB6
              6409513D97268749646999F0A6FFA7DAD845634F378E2BC5688C3577BFD29EF5
              48D3F9E52ECFBF593D3E45E3643146B6CEBFDE9E31E931AAE7D2E43089F49EB3
              D66F2A9B0BD50FD4C62E1A7BCA711C2AC652ABFD5FC7EEB8E1A9F6CC4796AAE7
              07EAB12922678BB115DE75CCB6B9D3EC59931EA27A2E4D0E93486F316BB7ACEC
              F99F529BBA88EC69C771A918238DF063F6CC479272DD7FA57A5C8ACAD9628C8C
              F8B996F7A43B4E91C324D25BCA93D3EBD4862E2A7BDA715C2BC6C896B06ECF7E
              A839F5921D4F2DD783EFA8C7A5A89C2EC603DE66CF9C2C32AAE7D2E430892C3E
              2B2E9C3EBB5A0BEE571BBAA8ECA9C771B1189BEDFB4B57EC7D865D81A1C5ACFF
              3FA61F8FA2A318C3FB4A3BF6AEB6674F1611D573697298441697CEC7FB78FEBC
              DACC45664F3F8E9BC518FD1BD0F56B666F3ACAAEC2C0630AA2A61E8FA2A31823
              E1AE227D88F6B0A27A2E4D0E93C8E252B48FF7E9963DFD38AE166347F87EBB0A
              03CDC4E496A79B8228CC47972D06C568B5C277DB15205D46F55C9A1C2691EE53
              99DCF48222BE417837EC12C471BB18F78D6D6DFFB25D8981E4DC0BB61C69D67D
              6FFA717005C568B5C2874A5B773DCFAE02E922AAE7D2E430897497D3A7AE3DA6
              5A0F6E559BD8057619E2385D8C1DFFB9FCAA1B4FB4ABD1F754EAFEFBD4E3E00A
              8A31A1D1BE7962DBCE27D995208789EAB934394C22DDC55CA836A90DEC0ABB0C
              71284623FC5BBB1A7D4D65ED96F3CC9A3F9A7E0C5C4231A634DA1BEC4A90C344
              F55C9A1C2691C3678537FD72B5795D6297220EC578406BEEB7ED8AF4259DF7DD
              F5FC6FAAC7C02514635AB86FAC35F752BB1AE410513D97268749E4D0A9AC6F9E
              54AE07DF529BD7257639E2449F3C2137B073EE2DB5E6CFB6ABB2A49C3F3B3B56
              F5828FABF5770DC5A884772CDF76FD93ED8A908344F55C9A1C269143A7520BAE
              511BD7357639E2508C09E1ADFD78CBB88A176C566BEF228AF1205AE1D57645C8
              41A27A2E4D0E93C8C1335E9F7E8BDAB42EB24B1287624CBBADD7EF1CD74CCD1E
              3551F75B6ADD5D45311E4AF846BB2A4444F55C9A1C26119DD56B1B95227F42FA
              62D9658943310AE17DE67FD79FBB65CF9176950E9B096FF3CF9BF5BD21BDDEAE
              A3180FA1D5FEFED1ADBD67D89521A9A89E4B93C324B230665D9655BCE0D36AC3
              BACA2E4D1C8AF110C26F765E98DD9A7F66F45CB22BF6D344FF6E5DF136FE0F97
              DE847EB128C6C3093FA59E5B84621C582626FDF56AB3BACC2E4D1C8AB13B5BE7
              9F6F57AC93716FF3F3D4FAE2F128C6AE4CDAD52189A89E4B93C324F2F84CD482
              67543CFF01B5595D6697270E2FD7E84EF405442295DA96E7ABF5C5E3518C5DB9
              BF5FBF115DA4A89E4B93C32412C7F5B7E13A14BB447128C6EE508C3DA118BBD4
              0AE7CFDBB9F30976958889EAB934394C22712AB5E0CFD52605C5D8338AB12714
              E322B4C2F7D8552226AAE7D2E430891CC8C4DBA77FAE52F71F519B141463CF28
              C69E508C8BF27069FBEE17D895723EAAE7D2E43089743E21FDD8722DF88ADAA0
              38C02E551C8AB13B14634F28C6C50A6F3DFDDA3DC7D8D5723AAAE7D2E4308974
              7E84DA509B1331BB547128C6EE508C3DA1187BD06A4FDBD5723AAAE7D2E430C9
              F594EBFE2BD5C6C4E3D9E58A4331768762EC09C5D89BB1E6AE57D8157336AAE7
              D2E430C9E59CE16D3CB95C0BBEAD36261ECF2E591C8AB13B14634F28C65E8577
              9ED0BCE924BB6A4E46F55C9A1C26B99C6A3DF83BB529B1905DB23814637728C6
              9E508C4BD00A67EDAA3919D573697298E46AAAEBA67F4B6D486876D9E2508CDD
              A1187B42312ED14CF89B76E59C8BEAB934394C7231ABD66D192FD7FDBBD58684
              66972E0EC5D81D8AB12714E35285779B35ABDAD5732AAAE7D2E430C9B598735E
              56F5FCCFAACD8883B3CB178762EC0EC5D8138AB10F5AE167A2EB9D5D416792EC
              B78391C324D752F1824BD546C4A1D9E58B4331768762EC09C5D837EBED0A3A13
              D573697298E452CC663BA7520B7EA236220ECD2E611C8AB13B14634F28C63E69
              B41F286D9F3BC7AEA213513D97268749AEA4F306E1B5E07AB50971787619E350
              8CDDA1187B4231F651A37DDD623E3C3BEF513D97268749AEA452F7DFA73620BA
              6397310EC5D81D8AB12714639F35C2F7DA952C7C54CFA5C961920B199FDCF462
              B3D91E4D6F3E74CF2E651C8AB13B14634F28C6BE7BA4B3860E44F55C9A1C2615
              3D6BA6668F2B7BFED7D4E643F7EC72C6A118BB4331F684621C8046F8B553666F
              3ACEAE6861A37A2E4D0E938A9E89BADF521B0F8B6397330EC5D81D8AB12714E3
              80B4DA4DBBA2858DEAB934394C2A72CEF036BE5A6D3A2C9E5DD23814637728C6
              9E508C8333D69C7F8D5DD54246F55C9A1C261535A7BD6BE694723DF88EDA7458
              3CBBAC7128C6EE508C3DA11807A8D1FECE7133D79D6257B670513D9726874945
              4DB9EE7F546D38F4C62E6B1C8AB13B14634F28C6410B3F6A57B670513D972687
              49454C65ADFF56B5D9D03BBBB47128C6EE508C3DA118876026FC1DBBBA858AEA
              B934394C2A5A262EDCB4A252F7EF519B0DBDB3CB1B8762EC0EC5D8138A7128EE
              296D0B57D8152E4C54CFA5C96152913235B5FF88AA177C4E6D342C8D5DE23814
              637728C69E508C43D20A3F3FB57FFF1176950B11D57369729854A4546AC13BD5
              26C3D2D9258E4331768762EC09C53854EFB4AB5C88A89E4B93C3A4A264E5FA8D
              CFE20DC207C72E731C8AB13B14634F28C6216A840F969AE1B3ED4AE73EAAE7D2
              E430A9085933357B54C5F3BFA83618FAC32E751C8AB13B14634F28C6A1BB71F5
              276E7BA25DED5C47F55C9A1C2615216613BD5F6D2EF48F5DEA3814637728C69E
              508CA310BEDFAE76AEA37A2E4D0E93F29EEAE4F44BCC46E20DC207CC2E771C8A
              B13B14634F28C651081F2DCDCC9F67573CB7513D9726874979CED9EF681D5FF1
              FC6FA88D85FEB24B1E8762EC0EC5D8138A71646E3FE9CADB4EB0AB9ECBA89E4B
              93C3A43CA7E24D6F539B0AFD67973C0EC5D81D8AB12714E30835C2ED76D57319
              D57369729894D7ACA8FBAF551B0A8361973D0EC5D81D8AB12714E388CDCCBDCE
              AE7CEEA27A2E4D0E93F298532FD9F1D46A2DF8AEDA50180CBBF47128C6EE508C
              3DA11847AC15DE75ECD5E1A976F57315D57369729894C7543CFF5AB599303876
              E9E3508CDDA1187B4231664023FC985DFD5C45F55C9A1C26E52DE393FEEFAB8D
              84C1B2CB1F67667E95D9389F336E2835C36FCB8D058A71313CFF01F3BFB798FF
              0D2B5E70A95DB203A11847E56DF611C84D54CFA5C961529E72D645D3AB2AB5E0
              DE051B0A0353AEFB7756BDE003F6213868A2CF771B6BB55F566AB43798CDF49F
              A9CDE52E8AF1A0CA9EFF90F9CEF013D1A7E18CAFDDB4E6FCD9D931BB4C0B12BD
              F8BCF3FC6AB62F377EF0B835C60085F79576EC5D6D1F865C44F55C9A1C26E525
              D11B849BCDF46FE9CD8581D93B3E397DFE79533B9F601F82AE639E57CBCC45EC
              556653EDD69BCD2114E302E57AF0A36A2DF893CAFAE64976591695D3AFDD738C
              796EFD81F123B9E6E8B370D7F9B3FB0FFA454BD692EE38450E93F292722D7897
              DA64E82FF355FCD7266AC1EBEDB22F3D5BE75F6F36D7B7166E3647508C09FEBE
              AAE707E3B5E913ED722C2DAD2F4C988BF667E5BAA3BF66E6FED0AE7AE6A37A2E
              4D0E93F2901593973FC76CAA07F566437FF88F443F32AD7CF09AA3EDB2F72D27
              CEEE596E2E603372C3151DC568F9B7ADA8FBFFCD2E43DF62AE61CB4A8DB6C777
              8F03D60A1F2A6DDDF53CBBEC994EBAE314394CCA7A566FD8F044F355E697F466
              437FF8D78D7B9B07FEA41F6BCDBDD46CB0AFCB8D5754CE1763E70BAEBF9A98DA
              F624BB0403C9D1ADBD6798E7D63FCAC700FDD168DF3CB16DE7401FC77E44F55C
              9A1C26653D66637D506F382C99E73F10FD88BA977F47EC35A7EEB8E158B3C92E
              375FE13FBA60E31591CBC5E8F95F1C5F377DAE3DF5E164A6FD06F3DCE2B7A407
              E74376A5331BD57369729894E594BD8DBF688A719FDC7458926A3DD879E6FAE6
              E87EDB2CFAF5FB56FB16B1F18AC5C962F41FAC78C11F9D7BC19623ED690F35CB
              B75DFF64B3F6DB163C16E883705FE7273F198EEAB934394CCA6A56AFBDF204B3
              B96ED71B0FBD32DF21FE7045DD7F9B79EC97D9A51E593A9FFFD66AFF85D9700F
              2FDC8005E15A317A7E18BDF4C29EEE4833D66AFF52A9D1FE8A7C5CB004E11D9D
              2F3E329A74C729729894D59852DC21371E7A56F682BF7FFA459B4FB74B9C9D5C
              F185E7965AE1F57A13E69C23C558ADFB3F9EF0828BA39755D953CD442AD7EC3A
              DA5CC8DF6F1E8BE27EF1350AADF02ABBC4998BEAB934394CCA62A2970BA8CD87
              DE442FD2EFEB4B300690F376EE7C82D96CEF36DF41FE446EC4BC72A218FDCF44
              6FBE614F319B891E87667BEF82C7074B10BED1AE6EA6A27A2E4D0E93B2963597
              6E3BADEAF977E90D88C5F1F7556BC1CCC485DB32FB638F05B962EF33CC86DBA5
              37620E15B818CD175C77476FD1684F2DF3E9BC48BD317799795CEE5FF03861F1
              5AEDEF777E1B3863513D97268749598BB9987F4C6D422C4EB9167C25FAE525BB
              ACB9CAD4FEFD47988DB7DE14E48F176CC6BC296A317AFEB5677BADCC5D14BB4A
              F43EBFCDF0D3F2F1C222859F323D32F2DF574826DD718A1C266529D12F85C84D
              88EED5828787F1BAB1A124BA80B5C2CFE80D9913052BC6E8E3DE2626FD37D9D3
              C9779A73BF671E23DE7775E926ED8A6622AAE7D2E430292B59BD76C399D57A70
              9FDA8CE8DADE89B5D3CFB54B5A9C34DB1798AF4CEF4E6DC67C285031966BC1D5
              4FBB78CB53ECA914229DCF1C6CB6FF6EC1E386C5B8BFD49A3FDB2EE9C8A37A2E
              4D0E93B290E85DF5CD773ABBD466C4E199AFE2EF37DF255E76A84F27C87DB6EF
              2AE7F29D4D0A508CE5BAFF9F67781B5F6D4FA190196BCEBFC67CF175877C0C71
              78AD70BEF30B741988EAB934394CCA42C6EBD3EF561B12DDF03F137DB76D97B2
              F869EC7AB3D98477C9CD9945B92E467F9FF982B511BDA6D81E7EA17372EB96E3
              CD736BB329C87DF2B1C4A1B5C2F7D8A51C6954CFA5C961D2A813BD4767F4B96C
              7A63E260A217EAE7E93702FB99E8B31FCD46BC66C1C6CCA29C1663B91E7CD53C
              C77EC91EB65B69EE7E71F4BEA0F2F1C4A13C5CDABEFB0576154716D573697298
              34CA44BF2062BE2AFD77B5317170E682F591E8652D7619DDCDD6F66BCD57F777
              8A0D9A1DF92BC647CD9EFCE0E953D71E630FD9C9AC99BDE928538E7F66BE0B7A
              483EAE3888F0D6CEE7658E30AAE7D2E4306994311BF0436263E220CC57F1DF9A
              A805BF66978F9874DE9AAAD1DEAA376906E4A918BDE0A6CAE4A6917FC59FA96C
              9F3BC75CEC43F9D8429B690776F54612D57369729834AA9427A77FB9F36F186A
              8322C5DF674AB1B9EAB22DCBEDF29154C6B686BF6A36E537166CD251CB413146
              FF9451ADFBEF5933357B943D4C9248E775B533ED8BCCE379EF82C717D25873D7
              2BECF20D3DAAE7D2E4306914892EF055CFFFA6DAA448F36FABACDD729E5D3A72
              88743ED2AA116E345FE167E723AD325E8C661FCEAF5CBFF159F6F0C8A172C59E
              71F3987E62C1630C21BCF384E64D27D9951B6A54CFA5C961D22852F6820FAB4D
              8A845AF0B029C5F715E285FAC34EF4CB13CDF0CB7AC30E59468B317A898F797E
              BDA3D02FF1195466C2DF2C35DADF958F3762AD70D6AED850A37A2E4D0E93869D
              F1C9E9F3D5464592BF67C5E4E5CFB14B467A48E793C667DAEF331B74B49FAA90
              C162ACD6FD7F19E967711620C75F3177B2B9F05F251F73C4A22F22861CD57369
              729834CC441F796436E5F7D56645E782F563F39DE23BF92ABE8FD9BAEB79A546
              7883DCB4C390A962F4EF31CFB19AD9F7997A6FCB3C676CEBDCCBCDE39CBD7FDB
              CE8CF0EED2D6F9AA5DAEA124DD718A1C260D33D55AF049BD6151F1824F67FEA3
              7B729A73B7EC39D27CE5FABF4D413EA837EF0065A418AB5EF0F1336BC1502F50
              AEE4C0BF6DB73764EADFB6B3A4157EC674CDD0BE184B779C228749C38AF94EA8
              AE36ACF33CFF0795C9E077ED32914166A6BDC65CBC86FBABF7232E46F3C5E8F7
              C62783A1FF38CBC96C9D7F7EA9D5FEA27C1E60BD5DA58147F55C9A1C260D23AB
              D66D3AABF36342B1715D56AD077FF7CC75CD53ED329121A4F3ABF7ADF0625390
              C3F948AB5116632DB8E6D44B763CD5DE3519427EFAD389A27DE0F65235DA0F74
              BE301D4254CFA5C961D2A013FD7B59D50BDA72E33A2A7A53E61575FFB57689C8
              28B279F799A61C3F2B37713F8DA018CDF3EB4EDE0862C4893E6DA2117E4E3E27
              5CD5685FD7F9C261C0513D97268749834EC50BFE486D5E37456F68E06F71E54D
              99B31EF3FC5F6636ECDB4C41FE68C126EE97211763B516CC4C5CB8EDC9F6EEC8
              0873E0F915D68C7C7E64DA2034C2F7DAE5195892FD7630729834C854BDCD3F7B
              E0F5787A13BBA45AF7BF5C9D9C7E895D1A92A55CD9AE980DFB31B991976A58C5
              580BBEBEB236FD2BF66E488672746BEF19E6B9F00F0B9E1B6E7AA4B475FE4576
              690612D57369729834A8543E78CDD166C3DEB26003BBC67C61303EE9BF77F586
              0D4FB44B43B29ACE0BB7C3EF89CDDCBBC117E3A313B560C3A997EC38D6DE05C9
              6A5AE1AF9BEF1EBF2D9F272E69B5BF7ACAEC4DC7D955E97B54CFA5C961D2A052
              F5828D6213BB66F7CA75C1B3ED92901CE4D81D373CB5F38E1D6A43F76290C5E8
              F9374F789B7FDEDE34C9413A6F7ADF0C67E473C525AD76D32E49DFA37A2E4D0E
              93069195DEA65F3DF0EF6962333BA0F31BB85E70292FD4CF715AED5F3317B0A5
              7FA4D5208AB1163C5CAEFB7FC64F21F29BB166F88BA546FB2BF239E388B1C6DC
              ABED72F435AAE7D2E430A9DF19AF4D9F18FDD6A5DCD04EF0FF79FC92CB57DAE5
              2039CEF2AB6E3CD16CE06DE90DBD28FD2FC6BD1317FA8FBB4D92CF1C78DBC2F0
              AFCCF364B46F5B382A8DF6773A1F3ADEE7A89E4B93C3A47EA75A0FFEAFD8CC85
              67BE4BFCBEF92EF177EC32900265ACD57E99D9C8B72FD8D8DDE857317AFE03E5
              FAF41F9C37B5F309F6A64851123D475AED3DF2F95378E147ED2AF42DAAE7D2E4
              30A99F9998F4DF243775E1F9B3BC90BAD8E9FCB2402BF4CD46DEA737F841F4A3
              186BC1BFAEB870FA6C7B13A480397F76FF9879BEBCD33CBF86F3C613593213F6
              F51B0AD573697298D4AF9CB57E53B9F3F6666A631754B516DC71462D788D5D02
              E24266C25F3017AF5BE5065796528CB5E0DE4A7DD3A4D9A7BCE9B72B99995F65
              9E5F9F96CFA5E2BAA7B42D5C615760C949779C228749FD88B99D65E55AF04F72
              731752E785FA9B78A1BE9BE9FCDB502BFC4BB3A11F496DF0857A2CC66A3DF87F
              2BEAFE84FD6BC4B5B4DA6F35BE2F9F5345D40A3FDF79BBC63E24DD718A1C26F5
              23152F58AB367741DDB26A9DFF0BF6D489CBD9DE3ED75CBC0EFDA6D18B2D46CF
              FF4175DDF46FD93F4E1C4EDF5F3A947DEFB4A7BEA4A89E4B93C3A4A526FAB78F
              039F062E367981943DFFA14A2DF8737E459E24D379EFC7D6AEB566537F2BB5C9
              0FE8B6183B3F36F53FC89BCA9374C69AF3AF2935C33BE4F3AB483A1F0B172EF9
              75DFAAE7D2E4306929897E43CE6CEADD0B3679C154EBFEDCCAF51B9F654F9B90
              0559FD89DB9E586AEC7AB3D9E0FF62C43F623D443146AF778D7E645A59EBBF75
              D5655B96DB3F42C8829CDCBAE5F852AB3D6D8A6371BFFC953F3776F6D212A27A
              2E4D0E939612B3B1DF932C90A23117ADFB26BCE0E2A9A9FEFCEC9BB891E8F58F
              07BECA6F4F1E7B75F8B8EF009F7ED1E6D3A3222CD737BF70CDD4EC51764C4877
              69EE7E71A9D1BE3955260513BEDF9E6D4F513D97268749BDA632B9E905D13B70
              A8422982B2E77F6AE2C24D7DFB4D294208E947D6CCDE749429C73F39F0A34755
              2C79173E5A9A993FCF9EEEA2A37A2E4D0E937AC9E953D71E63BE9BBA55154ADE
              459F78CE2F3F1042329FED73E798120975B9E4DEED275D795B4FBFF5AF7A2E4D
              0E937A49D5F303552AF9E7FF0D2FD42784E4259D9738B4C20B4D91DC9B2A96FC
              6B84DBED692E2AAAE7D2E43069B159E14DBF5C974A7E99A2FFE6F864F02A7B8A
              841092AF5CB167BCD46A7F5C164C9ECDCCBDCE9E61D7513D972687498B49657D
              F3A4723DF8962A977CF2F745DFFD9EFD8ED6F1F614092124BF897E33BAD1FEAE
              2C993C6A8577A57F81ED70513D972687498B49A5165CA30B26873CFFE6F1C94D
              2FB6A746082185C8F157CC9D6CBE7BBC52164D1E35C28FD953EB2AAAE7D2E430
              A9DB8CD737BD59164CCE442FD42F7BC19FF2ABF2849022C77E2ACC3716144D3E
              5D604FEBB0513D97268749DDE4CC5A502DD7821FAAA2C993AA17B42B6F9F7EA6
              3D2D420829744EDD71C3B1A566F8D7A6580EFFBEBE9916DE57DABCFB4C7B5A87
              8CEAB934394C3A5CCC9F5956F1824FABA2C98B032FD49FBE8817EA13429CCCD6
              F9E71FF67D7D332FDCD5F978AEC324DD718A1C261D2E51A1A8B2C90B3EA58010
              42ECFBFACECCFDA129C89FE8E2C981E8F80F13D57369729874A84CD48267449F
              1CAE0A27EBA217EA8FD7A7DF624F85104248942BE69E566A849F93C59375ADF0
              A1D2D65DCFB36722A37A2E4D0E930E96732FD872A42998BDE9C2C983722DB8FA
              B477CD9C624F8510424822E6DABFACD4987B7BA919DE2D0B28CB1AED9B3B9F89
              7A90A43B4E91C3A483A55CF7FF4C954E9655EBFE7F98E37EA53D0542082187C8
              D1ADBD679872FCA82CA06CFB903D8505513D972687492A13DEE69FAFD4FD4754
              F964D4A3552FD8B8666AF6387B0A841042BACD4CFB0DA620EF14059451E1BEB1
              D6DC4BEDD13F2EAAE7D2E430299D532FD9716CB9167C45944F46F9FF1E15B93D
              7C4208213D64F9B6EB9F6C0AA715958E2EA3AC09EFE81C732AAAE7D2E430299D
              8A176CD6059435FE83D1E741F2427D4208E95FC69AE12F9AE2B96D611165502B
              BCCA1EF64FA37A2E4D0E939289FE7D4E9750C6787E684AF11C7BD8841042FA98
              CE2FB7CCB4DF67CAE7E1056594353373BF610FBB13D573697298F458CEF0369E
              5CAE05DF96459415B5E0DEF2E4F43A5EA84F0821434863EE674AADF61E594859
              D16A7FFF986D73A7D923963D972687498F257A89832CA38C30DF217E62D5BA2D
              E3F6700921840C219D779B69B52F2D35C31FCB62CA8256386B0F57F65C9A1C26
              45A94C6E7A812AA32CA87AFE5DD11B98770E941042C8683233BFCA94D03F2F28
              A54C887E61287C767498AAE7D2E430294AB9EE5FA54A69D4CA5EF0E1A75DBCE5
              299D8324841032FAB4E67E3BFAF1A52EA8510AFF3A3A3CD57369729874FEECEC
              58A5EEDFA38A6964BCE0F689B5FE2B3A0F022184904CE5D81D373CD594E3DFE8
              821A991BA363533D9726874913935B9E2ECB69341E9DA8051B78A13E2184643F
              638DB95747AF271425357CD19BA39BA89E4B93C3A4EAE4F44B44410D9F17DC34
              F1F6E99FEBAC362184905CE4E4D62DC79766DAC1817FE71385354453FBF71FA1
              7A2E4D0E93AADEE69F95453534FE83C6142FD42784901C67EBFC8BA237F85685
              35148DF07BD161A89E4B93C3A455976D596E8A699F2EAD01F3FC2F8CAFDDB4A6
              B3A8841042729D35B3371D556A85EF3125F5A02CAF810A3F151D83EAB934394C
              8A52ADFB73B2B806A516DC5BA96F9AE485FA841052C06C9F3BC714D52E5D6083
              12D6A2BB563D972687495186F929FD552FF8F899B5A0DAB963420821854CF4EF
              7DA5D6AEB5A6B4EE5D58627D66BE433DA179D349D1FDAA9E4B93C3A428D16B05
              ABF5E03E5564FD52AD05DF9D98F4DFD4B9434208216EE48A3DE3A556FBE3B2D0
              FAA5D59EB6F7267B2E4D0E931E8BF94EEE8F55A1F58517EC88DE8BD5DE152184
              10D7D268BFC9F8AE2CB6A56885771D7B7578AABD17D973697298F458A2DF0A35
              25B67741A92D85E77F638537FD727B178410421CCEF157CC9D5C6A8657C882EB
              CD2363CDDDAFB437DF89EAB934394C4AE66CAF7546A5167C5D96DCE23C5AA9FB
              1F8A3EF4D8DE34218410D2C958ABFD32536ADF4895DC623DD2797BBA5454CFA5
              C961523A6B2EDD769A29C75DA2ECBA52F5FC2F95EB9B5F686F8E1042085990D3
              AFDD738C29B6FFD329385D7C07D7687F676CEB9CFC69A4EAB934394C52E9BC7F
              AA175C5AF1FC1FA8F253CAB5E087552FB8ECDC0BB61C696F86104208397466DA
              CF3165D7EDA776DC6F4A7143E747B20789EAB934394C3A54CE7E47EBF8092F78
              7BA5EEFF73B516DCBFA0103DFF0153A09FAED6FDDAEAB5579E60FF1A218410B2
              B8B4E69F596A867F5C6AB5779AFFBDD314E003A608EF31FFF7AD9DCF5B6CCDFD
              FEF2AB6E3CD1FEE98346F55C9A1C26759BE8C5F8E3975CBEB252DBF2FCE86DE4
              CEBA687A55F49DA5FDCF841042C8C8A37A2E4D0E010070951C0200E02A390400
              C05572080080ABE410000057C9210000AE924300005C25870000B84A0E010070
              951C0200E02A390400C05572080080ABE410000057C9210000AE924300005C25
              870000B84A0E010070951C0200E02A390400C05572080080ABE410000057C921
              0000AE924300005C25870000B84A0E010070951C0200E02A390400C055720800
              80ABE410000057C9210000AE924300005C25870000B84A0E010070951C0200E0
              2A390400C05572080080ABE410000057C9210000AE924300005C25870000B84A
              0E010070951C0200E02A390400C05572080080ABE410000057C9210000AE9243
              00005C25870000B84A0E010070951C0200E02A390400C05572080080ABE41000
              0057C9210000AE924300005C25870000B84A0E010070951C0200E02A390400C0
              5572080080ABE410000057C9210000AE924300005C25870000B84A0E01007095
              1C0200E02A390400C05572080080ABE410000057C9210000AE924300005C2587
              0000B84A0E010070951C0200E02A390400C05572080080ABE410000057C92100
              00AE924300005C25870000B84A0E010070951C0200E02A390400C05572080080
              ABE410000057C9210000AE924300005C25870000B84A0E010070951C0200E02A
              390400C05572080080ABE410000057C9210000AE924300005C25870000B84A0E
              010070951C0200E02A390400C05572080080ABE410000057C9210000AE924300
              005C25870000B84A0E010070951C0200E02A390400C05572080080ABE4100000
              57C9210000AE924300005C25870000B84A0E010070951C0200E02A390400C055
              72080080ABE410000057C9210000AE924300005C25870000B84A0E010070951C
              0200E02A390400C055720800809BF697FE3F212AC633B6E3CE80000000004945
              4E44AE426082}
          end>
      end
      item
        Name = 'icons8-redshift'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000006E0000006E0806000000C65B26
              FB000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA864000005CF49444154785EEDDD5D
              4C1C5514C0F17B0716B02C2C03DBFA55846D69A9692BA536D1440BA50F7D318D
              6D227D2868684CAC49A94DC4980251574D8B89C6A7A6BA21464CF4A54D8136F8
              A861D7A4F1B1441F6C1B906AAC91CF34B548ECCE1CCF2C77A07CECB2CB0A3307
              CEEF0176EE2CFB71FF9DE9DE7D19090082D1A3A9DF8C180E4714A953E5F62317
              B326B2C68F65E5E6BF959DA76F50C369F1EBB943BACFFB71C688A7E34270FBBF
              6AD8F54884B383E12B6D96429464ADCB1339F9856A6F7AFC4579A2207F9DC069
              B8858F7D36E3610C58EBFE80AE0E170B967DA701C06CB182A961B11CE16C5402
              BA32DCDC234C0D4F5BCE70B6E9802E3D85BA2ADCD41136864798C0234CCE0B66
              5B897036B71E81AE0837134CCE3A25C6B392E16C6E0BE868B85483D99C08679B
              0EE8F029D4B1755CA03E74E05ED6F80D0132944A34A74989AF558A50D47FFFC6
              E1F3D70EA8E115E7DC021C440DA560735901A569D6A8CD15C7DF9C10C5E188E2
              70447138A2381C5169857BE6CD9E8A43E77F2E569B2C4965C7BE2C7EFE744F85
              DA5C92252DC04B5E6EDFAF9966ABAFA870FFE6F22DF8C91E7EC5B54D58983202
              9ECC48F7EB3B06F061133E70A02ED4869FA94FABCD9438B9007F1080F95167E3
              EE66B5B9208936D69FDB9C2132F7E2FC544B01553818B0E62D5FD7BF13609CED
              3CF9F4F7EAEE494B3A1CAE5B64E068FB0B20CC56DC78D61AF315EAC27A0173E1
              23DE16608685D4C220CD48F7D095EB100C9A6A77CC6A0D278341AD646063B930
              0C8C243092A8C6D1C7D4EE69D6BC59F31703F0A329B433DD8D15DFE2DC251564
              D170F2C8C58C52CFD84B206433C69B7578C70B37173EC330FE8C08D0C21834F2
              D468E54F5FDD0C9D590DE1BA46AEB496F63FB2D33A9A70A80ADF6B151E64EBA7
              EE11DFAC7033FAACAFD3B40D372F5DA8AD35D4D88212862BA90F3D2A41F4E20B
              D9AA86664936DC3C00E3B70606FF1E1D1A5ED2FF8F6E0937F2D7D0EFBF0D0C7A
              F1E6BC028B89136E0AC075F018359DC7F7FCA946E649F8E1040CAD305EB4B448
              A97B3C99E43FD444A386F51E528EB62829CBB56866C27F99BC1C208AC311C5E1
              88E270447138A2381C511C8E280E471487238AC311C5E188E270447138A2381C
              511C8E280E471487238AC311C5E188E270447138A2381C511C8E280E47148723
              8AC311C5E188E270447138A2381C511C8E280E471487238AC311C5E188E27044
              7138A2381C511C8E280E471487238AC311C5E188E270447138A2381C511C8E28
              0E471487238AC311C5E188E270447138A2381C511C8E280E471487238AC311C5
              E188E270447138A2381C511C8E280E471487232A61382DDBD30F205A04C0A81A
              4A1FC03808E8F96762F2AA1A212BE7A19CABD67BC19BE35323FF079C6B80166F
              6E41BF1A5850C270831D0D9383DFBCD6969D931988051430A276250F6008003A
              41C8538610953B472AFD9D272A0FDE191B8BA87B90E5D37D91C1AF8F1F1C2CBB
              ED079095F85E4FE17027CED5D0D43D523262058BDE9B085C6AAC6CEB68289D54
              E30B4AE93AE0DB5EFC226FD26B344A014D42CAA2852E6E8B8FF78794E207095A
              D8D032C2DD2776FC824F31EF4956F375C0AD6B7F3F51F7D9931232AAA430ADCB
              49EF15523CAE76C73C70715B2BD8A7D189897397DF7EEE6E6C6712967401F76D
              AF62C049A351F7EB4D9BB694DDC5571A9642460CE37EB8EB8D3D090F71DB5AB9
              80BBC50A59FCCAE79B344356E31F55E36655606B99572FD4530E665B5238DBBE
              606F666F705F546DA6642D855B483A736749EB53653A4FBCD6A53B77BC1C208A
              C311C5E188E270447138A21C0B670AE8C195489FDAA407E09A04CDFABACB1169
              ADE3D22571D55E723474187FBF835BBBD4F0A21C5DC7613010F283AEC65DDD38
              738E4D9EA3E16C7640BCF52EDEAE50C3713912CE25C16CAE08678B05AC6B3F84
              93F45EA2802B1CAE0FA7E87DB704B3B92A9C6DB1237045C2B9EC089BCB95E16C
              F1022E6B380C66027CD87D7277971B83D95C1DCE3637E0328573E529311E12E1
              6C76C06C6F4153B6D7B75E0DA7A5A8306F58F7E57E4225988D54383683BF3921
              8AC39124C47FAD3246A64AC433DB0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-sqlite'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
              54000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA86400000CA549444154785EED9D0B
              70155719C7CFDE240D104228D496A750FAA0B5A3AD8519955BC6D1FA42C7B1A3
              B6175B4B1D3B8ADADAD13A76C6A9B6D0FAA833BE5A3B549D5660A023602D6D55
              2C28856202487817288FF04AC22321E40504F2B8BBFEFFBB672FCB65EFDDB39B
              84EC2EF9C17FCFD9736FEE63BFFDBEB3E7B557F4132E3499F6D35D92A9026C07
              401DA26271A75916807E837487646A04B65F833E0F7D002A81CE41DBA097A197
              609CB34895E937481092A9326C7F027D071AC8A21CEC83EE8551365ABBDEF41B
              C40F77DF2DC4D1C427909B0B8D31CBBC3903DD05A3FCC7DACD4FBF41549992D2
              70B47E84DC5310EB0B3F9C82A6C0283BACDDDCF83248D9AC8DB7214941B77317
              BA3C0C6AE8C6994D4B067435D5DC2A4B82B01D9AEC55E12B1D5018E24A247320
              1AE3F2F22A18A3ED9D7F7475D6ED299225DDE1211884C731279E0717C6B80AC9
              6AE8163EF9FA1125E2C6918345C980C2D85BC6300CF1FA5FE677D5576D2D9445
              7E30A0EC437400BA0146D1ADDD8BC97B4C4B676F100923B10CD96925C505E2DE
              E41871DD35BCB2BB3C7865F1E2F4CAE56FFAAD2F4823C4BF6358CFE60E18A442
              E62F22215357608C4F239996486862C6D4B1E2DAAB07091D67CDE5A035AB5707
              35C61EE838E4660CF22999BA92D720808D1E71DBB82162F4B0814287A35D0EDA
              B7B74A5FF2F242AF63E3C626E85DE87DE69E3B9364EA8AD79B7E989B9B46958A
              74D619C47DBBCC99777B8E537679F6E3CEBFCB56F6F39CA98A9CAFE5A5969656
              63EE1FE788743AEDB78ADC0ABD06DD65EEE5E63A99BAE26590F770538A0A5CD7
              F1E51CE2BE5DE6CCBB3DC729BB3CFB71E7DF652BFB79CE5445CED7CAA7AEB42E
              16CE7DD168696EF6EB1D7BA1C7A11F9B7BF9318F692EBCDED83C4B0CFCC3E78D
              BDD6AC7A2BBD7BE70EBFC6607D8126BCF80D54CC020FF23E47E9CD1957DDCEA8
              38A9EEF8717DD9D2BFF935063B0E19A2BE054D6481025D327545CD202EB1364E
              4A23542D59304F747676F8A937E053E24168303493058AB4CAD4154583D04BF0
              E163AAF5156BD2870F54F9F50E86A837A03F417EFEF6984C5D51F6109C44B154
              4B6BABB1E28DA57E8DF15F881D8D4F421358E08383327545CD20F8E0D96E1E17
              C118FAB9B36D7E42D549E83EE826E87B2CF0C92E99BAE2C343E2A7DAEAC3FAB6
              CA757E5AE3AC37BE81A416E9EFA1201D8E9B65EA8AB24162271864F9EBAF18EC
              40F401876497A235301DF98F5A45BE40AC11FFB3B2EE281A0462D88A91F6EC7A
              47AF39B0CF8F771C821E15C9147B579F314BFCB313066D90795714EB10B838CE
              A4B8882DF2B7FFC50B2465E846DFC4C1E4C8DFA3D07B5918801532CD897AC882
              51E2A277B76FD64F1C3FA2F4DD25F38426FE0DEF1889FC63565120FE29D39C28
              872CB74A318AA277AC5DC9211E65EAA11F8AF2C5CCF332970DC1209C8078B99C
              17E59085FFB1D0DE1DDBF4C6FAE37EBCE33184AA93F00E768DB0651E9457F13A
              79BB4D88D20743C4BAC8EDA3287A48E51ACF30EEA4025F7E81CC3F0D0519CAB5
              E1C4394F940CE2563146513507F6EA278ED6A87A07AEC5C42362ED121DDEC159
              365F324B83C1097339876D9D287A88FB1917356DA95825BF9112731162368BA9
              EC5917B3213F612E1BB65F68604F94DE84D7ED6984AD28ABE964835E53B54BF5
              A09E863855145F3EF1116C3F67E683C1B9BE9CE9A8849A4162E0213B2BCB4D4F
              57E4D738A38F215431FF04E47738D7C922BC16AFD494503408BDC4FD8B46411D
              1D9DC6BEED1B540F2A0F1EBBD6C98720CEBC090ACF80DF5959351443967B2519
              151DDABDDD6857EFD17D066774AB987A0FF30C5BDDF18E15782D2E4D50C647C8
              A261A2A97DDBF2F6E7393902FDC1CCE9DA07B1FDAC990FCE2F64AA8C72C8723B
              F3A2A053ADCD7A5DF57E3FDE612FB0E1005477BC638D30B4B7655E99D857EA87
              766D4165AEAB1C580EADBE64E6AC56F917CD7C70668BB58B64561DC53A441AC5
              94E531966499FCF2173E06B12C97DC1EF77A7DCAEB75B354BD9BF3D794E09595
              ED1D3F80824C23B55905DF7A4BE67DA1EC21E7C7A199B725CB70904C5DF01864
              97BBC9ED71AFD7379FE3F1BA0EB5B634EA4DF54ABDBA9C1CCDC90AF40EF6E8DE
              6FE6838177168FCBCE48DFC43A641DADDA6975C479F302BC83631DE42188AB69
              83F29AA8B8799DCCFB463964B9559861D7B1FD9CF7EC095BD2CF9B396B34D0CF
              1CAB6CB83A0A1703B3ACBD00F8F010CB305151477BBBD178ECA04A65CE9634A7
              8312862A2E500A0A3D8DCB1102A368100A4689901A8E1C3474EF19EC8C67CF99
              B9648ACF7DC4CC0783D383D809D92D943DE4C2CA36FC6AA8DD2F3F7D5ECA8538
              BB45E6B9DCF9662B1B8827E01DBC38E8168A7588FB591866351DCD3B41D0668E
              A8C84C7660651E14CEB5B2AED2BA897AC87289D3615557679771AAE19857B8AA
              835E3573C914679104ED62C73B8A87E11D9EC3B32AC43264B59D6A46E3DCB3FE
              988F83D821F31C2B0F3A3CFB225E27F0656E36B10C59C5A5C31225C347F1CCCD
              052B73D94D329D2DF207CCBC7F7875C63EAF1E433964B99D89E1942E4E35D6EB
              23264E969FDE950A21342E4303C6C7B11967E595619DC189D6B7F74445EE4439
              64E1BB46422DF5B57A55F95271E5B85B342D5180125796888A4CC7DF0C997AC1
              7EAE3F43B4F42418E25928EF5A8F20C4CE434E1EDC294E9FA84D341DA932868C
              9CE06690346457E69CF4E6B56AB609E214A0F130C083D026C87CA03750328881
              2F9A1DA743297CCEA66AABBBA476CB4A3164E4F56E06A9C401E54014F902946B
              26221B7A5C597B2DC43B008D82011F8616419FC17EAFA01EB2689490EB4C539D
              DE7EBAC9FC4EEDA71A13ED6DAD6E06E15A729BAFC8D409679CFC14E26530F3F3
              215E22B301C93521254213CB91F60AEA212B0232F875340D398BC6433BB544F1
              E0ECDB21FDDDDC2653C3B0FDA499B7603BE24D88F188D34DD643CF42F4223E97
              B0029F29CA1767DEA3A7513348D699185615950E4F0C193D3173B0BADA9A0B8C
              AE76D6013607D08CB3BB8059775C6165CD0A9B7D2D3410DB2437406E7C1BE1EE
              A8CCF70ACA1EE27600C2A4CE8E734673EDEEF4D00917DE4AC44877F25E5F36CB
              C4BACCD9FD659912DE3791C3B6F9460917C2184B64BED7503408AE6042AE33F5
              3546DD96155AF1F0315AE180C1CE46A1731DA015FB93A9A1D8DE69E6D560C7D8
              77AD6CEFE2C343C2ADB6866AD179A639D1B47F935E32CAF5A60AEC26B1678170
              7A8F1DAEBC60DD723FBCA3D9DAED5D94EB10B7B3324C3ADB68B5D11A7757248A
              878F75AB7437E0A0DAC3B45E6D0F274FE1EF9466AEF704CA212B3B66874D9DA7
              D96CC067ED38AB9D6B3A26B44461B651AC5920C9146FFE92F726620E56423FB7
              B29706F59045A384595DE7AF6E4F1FDE9A281A721502D905D8E16A2A94EB6E6F
              4ED871C850C596FD2543BD52C7D70BB3068D3E7F1337BDB35D4BB7B7393D84F5
              07DB15649A4CF3C17AE33E18A3C7FBAABC50AE43C2AE81E379B97B7E08247DEE
              B4733C640B0E6E9B489A0D73956E0F0EC7069AE8D65D9443965B451A26690387
              268A868E80AF480CDDD9A69003483A4706F38D9BD3AB16C0AEBFB4762F3D3E2A
              757A4AB8557475AE0676E676161CFBC83592C83A660A5E688628575B7ED61B28
              862C884609914CCF80EB3A55386C7CF695954DA54CDD1A83EC9F7A00CEF13184
              A9F562DD5FADD23E22EFB873D9AC8DBCB3FF206B2F0218BAD1BAFA79DDE86A77
              862B1E70DE7892C6AA869CBF6A500EF1E7246AACDDBE47C943228396D00ACA46
              657BC9761C708620DE68CC698C79D09D61320689974140E1D0D1329781BF4A40
              D8FEB0790EB1E1EB30863DEB2434C4CE2005655C4D7001F66F764C9129079CBE
              DF9B631ADD217E0619720DB6E707A9807D4B3DAE37DF00CD94212C94C4CE205A
              D1C0C244F160BBBB8386D92B92A952A49CEAF35518A39D0F8495D81984244A33
              77F36E1286C63BB8F15E25BF823178CF9150134B83140CCE18E4A058BB885EC2
              16BA7D33805013538364D6DCD853E039978A3348424F3C4356893D4944D86D0C
              396D34FCC4D2205AE100FB2ACA9A10D7434B052E05B1348830324B1138C12D52
              C4D220869EB6FBB2946F8B141662EA2186ED213DBA54E052E06590C03F431D12
              5A641A19BC0CC21F428C1E5A6654211297BA4EBC0CE2EB9EAA6141D312BCAA62
              83D0BE994C64F032C80B106F3D112D0ACC395954642E776DF21AA465D6E4C348
              7A7451E3A5402BB8822B6A0DA1994B9623859787C0FD35AE91F819C4332E1A14
              5EC1DE5ECD3449C4F03448F393938CB448F0071339C18C3F2D1A7AB444611136
              344A776E0DDE27F83A83CA666D64722364FFC07D686959F9DBA785DEF57E51B1
              3872ADF578924C554239276A8515CF901561B8F42CD3ED1B15E26C10CEC1E200
              7BA488B341D8CB30D6CA4687381B8483527E7F85B3CF89B341381FAB3B7788EB
              13E25E878C12C97B22D5388CAF412ACC998987D1D40AFA9B837D429C3D847015
              54909F48ED33E26E90A5D0AD56B69F7070C7F4C87530F6131A84F83FD9DA8DBB
              65E7AFEE0000000049454E44AE426082}
          end>
      end
      item
        Name = 'server-proxysqladmin'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
              54000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000376B49444154785ED57D09
              985CC575EEE9EEE9EED9F75D42BB105A00B12F66910488D56070BC90F8D98E1F
              CAF3CB821DBF180824F9E2C47E36E0D8247692179C2F0EB18303B6B1CDE2984D
              32C6EC1824B40B9034D28C665F7B667AEF7EFF7FAAEAF6ED9E114866B3CFCCE9
              AA5BF7DEBA55E7AFB354DDDBB703F25B4EB7DE7AEBDC7C3EFFE7C85E0CBE3D18
              0C7EFB861B6E48E9CEDF42FAAD0504407400881BC17F80CD0A53AAB42F10087C
              3112897CE7739FFB5CDA96FDD6D06F3420D75EFBD1E0C0C0C082542AB51A237F
              2584BF14BC00029FB372E5CA39F3E6CD8FDA4367D0B3CF3EDB373232FC3AB2FB
              71EEABB95C6E0740DADCDCDCBCF79E7BEECD9AA37EF3E8370A900B2FBC2000C1
              2D4BA7D3EB21F4759297B3D0C21608149B01412A4CC910AE9C71C699120E87ED
              D9051A18E8976DDBB609C053469D2E45921FC6F9CF22DD84731F292B2BDBFEC8
              238FE6EDA9EF39BDE7807CF8C31F0E4080AB20AC8F62F31AF0B2503014088682
              0A00F20688603120E48EF60E99377FBED6E388C27FE5952D924C2425973740E4
              73000379EECB657392CD65359FCD6609C4EB38E647A150E87B8D8D8D9BEFBBEF
              47EF2938EF19206BD7AEADCA6633D7224B1F702A0412004B115B30FC8004033E
              5050B664C95289460B966B706040FAFBFB0BDA41500808C12028C58028673219
              07CE16F09DD09AFFDCB871D38456F82ED3BB0EC8BA756B5B20803F46F67F43C0
              2DE8BC0A9F69B82C2427CC49CBCE812A08DF80E200F140F101C2D6575556495B
              7BBBD64DC1761F3CA8C29E0148A98630B580345626A57F3C2FA9B40107C78DA0
              BA3B61D2FEFEF1C737F669E5EF12BD6B80C03FD42793C9CF4190D743D07504C0
              8010961080280B95C949C724E4D21513F2F527E71BED80D92A32590E0CE4F5CF
              82D2D0D0A85A323E3626F1781CAE876008D880A1C0100CCB04C1A52149CB97AF
              E89207B755CB835B2B2593CE483A93765A3389A6FF13DA791B3466D8F4E49DA5
              771C1000518628E993C8FE0D80E85010E08809444D65502E5E3EA9027FEE6093
              7C7875BFBCD2DF28AFF435010C9AAC82762828563314081F51932A2B2B657272
              5285EFC8694929200E0CD58E8AB8FCC5BA3D72E3830B6518E2CF0288050D53B2
              AB37048D490B020C1E3788EAFE0681C4BF3CF6D8E3EF68281DB2E93B42E79F7F
              DEF1E8CC0F20CC3F42676A388ACBCBCB7534936BAA22B2A22323E72E1E97CB96
              0F495B754AB60EB4C964B656C291A802E7346936501C53E0141CA9749F3B8FA0
              915D7DBA0DCD4CE622D259332DD97C5806A7ABD19E84DC7C519FBC7CA85626D3
              6177CD2A5CE3325CE3D2850B17BC7CCB2D371F7AE08107F57A6F37BD231AB27E
              FDFAB24422FE67C8FE15845A41C1324CA556A8763841878D70A2E1907C72F51E
              8CD69434574EC978A25C9EEF9B2B4FF7CC3315BE43E4346769C3A05CB36C8FC4
              92651209E5656B5FB5DCFD528B82EC67683AD3242CE2AD9168E44BD096B77D45
              E06D03E48E3BEE88A0C12BD0C1F7EDDAB5F323FBF7EF3F9720281004246CD222
              402C5746443E7BDA73F28F2F9F21D1504656350FC8EB638D7268B246EBA61172
              A6475982920B462417AA00E3E44019CAA0119293402E2DC16CC2703EAD1DF46B
              CC6CF4A165DBA4A33A2677BE7CA28C4F072405B3E57CC90C405248D329B6E3E9
              F5EB2FBE039AFE2CFAD37DFDF5D7BF2DE1F25B06E4AB5FFD2AA3A6BBD0C033B0
              D9000E8C8C8CC8B6AD5B0D1811A31D7E408C762085D9A0904E6AED959500E1BB
              3B4ED43A4998C2C121C3D643F0C9F2764957764AA6A24D72E5CD928BD4490040
              04688ED003ED84ED094EE327CEC5643C3D2DC1E4A884E2835216EF95F0548F94
              A546F51C4C353D80E6D64C4033B2B277AC4101A76FA153F783E10021184C6972
              39310571D6DF85BA9E41FA9D9B6EBAE96116FEBA64BBF1EBD357BEF2951BD089
              5BEDA6121BBC65F3E659C17080F847EB1C8CCED164B94CA5CA1092E6241DAE93
              78CD3249D52D916CD51C1C4FF0E0F082609C16D2888B4235AC35E98701849820
              B8D23CA25BCD67F0C17C3E3921A1897D1219DB2D91C9FD70A259E327CCE91E11
              18054581319AE18102AEABAF97638F3DD61EEDD13E0417C77DE6339FF9B54D59
              693B8E8A60A6C208337721BBC89418626776EDDCA9E1692920EC7C29D18E6720
              9AE9DAE324DEB85A72357325521614B81609A30E4D814419F20A0A5256A3A31C
              E7FBB0552210D430029155200C1819CCFD3248D364E4B3A9B88446764AF9D0CB
              124EF46B54576AD6D8363F280E9096D65669B7F31F3FA17F1FBCF1C61BEFB39B
              474D6F091068C75510FE8FED66117577776384A5150C82C2A866D6CE06A2126B
              3C45122DA748385A2DD132011800920C10981208E0A35C00C369074D8FAD1004
              0CF4033390220D21280A06804823C3340563A3CC1DE30724DAFF8C4463FBF41A
              FEB63A33E6D7908ECE4EA9AEAEB6471408E76D6A6A6A5AB761C3065B7274542C
              A1A3A0CB2EBB2CB86AD5AA47EAEBEB2F281534696C74541289849A2D4EEEFCC4
              D19BC98764A2F15449B49E2991F20A290710D170006950538241CD28636A8170
              262B4850988279E5D2CB130832815030B001EC714D030C26E406101424018649
              058CE326BAA5BC679344A60EAA8FF3930E200B0A01A1E92D2580479FB2EAE69B
              6FA6E5386A2AE9CA91D135D75C1D181A1CFA22E2F89B1B1A1AA4B3738E343737
              17AD29118CF8F4F40CADC860A44D562D9158E74512A96E900A68407958A42212
              04185633C07E73E537550A8865D6CDEAFD5780CC4DAA6018B3A5A00010CF7411
              14A72D105F121B09B205867919DA2115DD8F4B383B5564669DB634B7B4D81243
              C96452060606E4E0C103323E3EFE8D8A8A8ACF3CFCF023AE39474CC543E008E8
              0B5FF86BD9BE7DFB9F0443C12F01005D104C2613128BC5D4CE521B421839B4EF
              1C498E289C844465B8E33249CF5D23D5551552531E0007A5A622285551C39500
              A6121A5209B5A88C04A4026939B6991A0D0AC0AC398656A9892BA4CAE81553FA
              1DC7AA713887C181F14706704D751F7D96019CC0E72B5B25D17882E45293129C
              EE57AD24711084618239F8A831535353D2D7D7A76B68A3B00AEC33003B1D9A94
              5EBD7AF593BB77EFD6F38E948E1A907C3E77391AF56F987187CAA398759763F6
              CD140D2438EAA0A1D61C49CC9318394D46E7CAC8C28F4AB4719ED440F0B51521
              4DC90A860261C1A0B6F8410047A1451E18D8A68099A7208D7933EC04EF02013F
              3B108CE61970681295B1AF0C6AC8FAA891C1401EFD094BBAFE5849459A2438B6
              17B39FAC0242E7CF088C83706A72520762090500CA1A043CBBBBBA0E6CB76547
              447E6D7F535AB3E6FC6510F23300A3C103A3BCDC0344E71D88A4FC94818D18A9
              3F455273D749151C05054F002A54E056D82A688E6C273C0AB3E0C499728462D7
              ACE68AECC8335964355705B3C5F1A1CE1D794DD597184EA993A7C9329C48E765
              2A9993E9544EE26998A4D89094BFF60389A4468A4C1881A1B94AA6C089A42460
              2D98C613719AED18DA79DE134FFC62B33DFC4DE9883564DDBAB59540FDBF21F4
              85147E2918E45230D8C181D68B243FF71C98A532A9A57902574703CA55609A25
              679A0C40D00482A44041430096D306A60634AB1540C68C7430F69B00A0908658
              CE6D8E7E5B4E5F64CA5C1E4280141478206B8207826FCE670A03861152298986
              9522B143124C8DA94926111C0710D710F49F23C1501480AD5DBC78F177F6EDDB
              9FB4656F484704C8860DD7C9E0E0E0D710555C4900FC4C60A2482333C008487F
              C7FBA5ACE34405A1167EA2261A0210C63C911D08860D1005302C0860054053C3
              F4113815792350972ADB3C85ECB68D9619E13A208CE06DAA4050F3586623386E
              7BC771E298C3BC2A0C5056487E7A508289A12250A8B12405852940B166BB19A0
              749C75D6593FD9B6EDCDAD179AFBE65453537D312ECA759B805F239423305500
              C33588C4D8BEAFF32A89B62F875604148C6A6A0634815A5105811BADF0992DC7
              16086A87465C04C13A6ACF21B38C8262DE97160BDDB2B76D848E430BFB3C813B
              302C08C8EB36587D86EE63FFF2D80E4AB26E99E4A600C8E140A186F8340596E5
              C48989896DF0273BB5E00DE84D0159BB764D0D507E10A6AAB1D4449123D1081A
              855E586228D9D77E39C058098D00183453AA15051355E181611CB5E747202DCE
              D08D5932235F19C25010287832856853638666612B4493B70207AB2F52007C65
              CCE3C394F9F385320ADB445A04051164DDB1928FF54A2839A2DB667FD0E887D5
              0E1F07A025E7C274FD3B4C579C871C8EDE10908F7EF4230264BF08537539C138
              797E5ECE5A9494E164AD84C2156606EE9BF4718ED1DFB446C2734E319A41AD00
              AB56101005A3C457781A61CC9386AC0A84117811086035439A9AED22C1FBCA8C
              E02950E68D26A8A0B5CC6E5B611BC1DB6D96A32FCCA348CB99BABC0A9D231F83
              3051B7546414D15766EAF0A02078608A415D0350EA56AE5CF9E0ABAFBEC62366
              A537040493BDE3907C1B60942D6809C98DEB876545DBB49CBB60587281B00C26
              EA385EF45886B6C3D5C74B7EFE5A0542CD143483CEDB386EE733300924108E3D
              200C181AB2421AEA172C100E0427EC82E9A1008DF0745B8566CA3C2DD09482A2
              C079BED936C2737977AC39867957C6D408DBE6D1571EA7217DA04C12358B2538
              B4CD2CF5EB7186AD66A02FBC679F96C9648011D96AF04FF7EFEFEA55A1CD4287
              05E4DA6BAF85768C7F0B5AB08AA669C33931F9FEB6B9F2D8DEB952579997750B
              BA652A1D919EC95ABD70ACAC4526175E23755511A319160C6A8501C39828CF67
              40CA7EADA09FA0361403516005810C89B8D40F0653C7149C3F2DDE67C1D0EDD2
              BCFF18A49083A6DC3662D16DEE611941C987CA2559DE2AA1A1ED0A9439862789
              549665E4E675AFCA35278E23940EC9EEFE7010802C3EF3CC33BF83C9B51E5B4A
              E8D2ECD4DB7BE84CA8DF950C6557766625182A93EE891A49E42BE4A1D797C9D6
              C136C9E4CCE9A97C4846E65C21B55551CF717BE12CD982516CA2CCBC434D9482
              62CC93323AA6A02838168012562D40A79D79F2B36A11F7B9637CE7196DB37E09
              6CFC54217526B3D04EC36CBBE907FA056694585D1E421EE7352D9254FB196A25
              489DD59332BF3E212D35390CCE8CFCED630BE5CC456969A9D510791D66F617EA
              81B3109A3693FEE00F3610FDBF0C97858304E4FCA571540CD5ABC6C5CBC25287
              7C43795CB60C76E8BACE40C33952D5D0AE9AE02D7F7840CCF4170A80B201C569
              85A61494A6C5825456E172441BA13BF3825DC5CC32B79FC783CDB9865DDD061C
              5ED7B01B144E6B3D30D04EB74CE38210F6AB0A61BCF615FD9379E749A6BC59AD
              453C13964B16BD2E43895AD939D8200D953979704793FCEEE971CED50238E62F
              3FF1898FA3453309979D49353535ABA176B7C35469989B0F4665EDD23159BB70
              401B7C4A47AF3CD77B8C0C4E55C844599B24175C2A7598F8714DCACD33CC7A94
              03C4B00706AE4A3682B042017BA6C90A0F9B86F1E104CC5E202962164EA63232
              389992DE58527AC613D23D9690431349E98BA5640065C3D3698925B3BAB0E840
              E0B9AC9FE73B33C50F4DF54AFCE44ECD1A623EAF5345089FDB019DF5E7301492
              D156090E6C91542EAC03B6BE3C25CFF7B4C8EFACEC92FBB7B7CAD90B27A4773C
              2443B1FCBCB1B1B1C7BB1007B34A3FCD0AC8BC79F3FE2F903C999115FD472C53
              2D2FF67562CE1192B3E7F6C860BC4A7ED9335F43DC81CE2BA5AEA1D92C1462C4
              A8B982F32E98AB59B4C381C1118A94EC46AFE32220D0260AC963D34C99C284E7
              C06842F60C4C493F04CF7A1A70C18EDAA8CCAD2F579E5317D5EDE6EA08CC2986
              3868229991F14446EF83B03DD43AD6A9B69F29FF345BD8F69389A22C28601A2A
              3EF89809D749667A5442D3FDD23B5527972D7A550EC6EAE4B48E7E0C88886C7A
              B546A69279994E6A185C77DD75D7DDBB69D326D6E651F19540EBD6AD6D82193A
              50515151C9679D904A6545A5945798390805994563B84634145D2A9963AF4614
              11927AB099737059C4CC3B2A22D689A3D304457D066452040684E100C0A60A82
              791DB16C10F3DAB20211887DC371199E4A01F890CC6FAC906604133CEF484847
              3688828CA32E670631D031DA0D539374995ED7BA78EF442489946B5CE438783A
              C5B6E41041E5650C1A388174726242C25BFE9F84033959D5DC2F1F5CB64346E2
              11F9C6D38BA567242BF1E9B84CC7A7657A7A3A057FB278D3A69F779BD6189AA1
              21C71C73CC755C22D1891F66E19A72028839076FC8B830576F19CC79BFD4D5D6
              795195AEDA42F0D40CB5B3562B18DE3A30FC3E638689522E314D7A35431C04FB
              46E2B20B1AC11B4B8B9A2AE5B8D66A5C9B7723ED4147405AAFAD9BCB32F4478E
              5CB6582B4CDEF5DD69068125880496DB7A8B18E63D939896D0242D498D9AF6A7
              0E74C25C9AA8CC3DCA8A411F4AA7D323070E1C7812A77A041114E8A28BD4F9FF
              0F0ADE634457EE013347745C63154BA4A2BECDF3112A7808DA386B0280CE2235
              DAE00301A9CE277C60B8F0D59927F6DB272325DE347AB93BA626AA12959D7A4C
              AD9AA4D2E38E86782E59AFCDF6207583C3B16B3359D7CFC8C8B37F1C60C614D3
              2C9B5B06E5AC60CE997C7442AF91C8601063BE42392AFB640B2BF07B90394E28
              9039CB12505B02353AC50302ADF09DACC730657837D574AA9A0BBF7F70AC8D45
              C3D8700384655CAD080832F20E0C5E4185A4572A500C36FFA5EE094DAB50F9EA
              39B51808A8F06D20BD16AFCF040D316D7180508BD96EA3CD0A8AF6ABC0EC2B97
              7CC87AFF8656A0B256B28DCB55A3499CBD3B3952A66E80A3FC38F892C2B34F20
              B6C323ECBC0A070779829E64B583EC00E14526C36D52563FC700E00162B4C380
              601B8C4E98E8C975CE7498EDF440419D7E304A691291D12B87629282AA73F7F2
              B66AADFB70C4BA35EAA12D3942D2DAF0C1B61481A2A919400560A825B67FEC2B
              FAADC0A82CDCED02B4A3E354339BB7E497A9932B40A173BFDA1EA2A46D7174DE
              79E76E4464B596CE5C19CE9C4E9DD1165126513B0E35AC91EA456721BE863347
              A86B96D69D33C70CD5CE41548D099436D8349C826534C68E69C7F1C19A670383
              7E829AC194C4D0FA2468879FF6C29F3CBEB54F5E7A7D4426E058293CB34069EE
              D1D721EA6A4594B5B8BD46CE5AD126353A69989D14427CB89B5AEAE091F2F2F4
              0FBCBF93E60D2C387A75EEC8C75370EEC8D3B193C7E35938F8AC4C24F2927FE9
              5F249C1E5521D3CCEB730671CFA92B63FBC565CB8E3BED5BDFFA16AF5E70EA1B
              365CD7383232F27538F032E7C87569DD7F171052CBE40232D6B95EEA6A2ACD2A
              2E5867E5CE8692394A2C7B1A03C1535804A40AC732AF801009F35F4414C8B6DE
              9846548E6A816E2BC2570AE7272FF7C99F7EF715F9CFA70E486B43859C7742BB
              9CBDB24D4E5ADA2C272C6E92958B1A65D982465930A74E5A9AABE16C83F2D2DE
              618921DC6D441D04AD94BC36B8D1E16B14358F4E9DA971E2262A23780638331F
              61CAC78C324C9370EE135DA80E16004C503891CE66CC93F76438F6560CFA7FDD
              BA752BBFFA6000F9DAD7BE16AAADADBD0F823F8E37EDF92C95821135A9D30E5C
              5F62E17691CED354381E189808BAF0D69931A3150608E347D828363CAFE019DF
              717853D5351AD7B9859FD8F91E38F54FFCEBCBF2FD170EC955A775CA27D72E94
              4530637C60FB8D88F7CB6BABA392C3C57A31616490500B8DA329F5936B8B9A68
              76D82303068B94F16100314C4D22302654364FB5A402083AFA7E55909F03C482
              4293B678F1E2E0D2A5C71E77E59557FED7CF7EF6B3BC1E994AA53E8FE4E2F9F3
              17C88A152BF4592AFF97651CF159DBE9CA05086BF9943885EE46BFB5AF14BC6A
              8265F4899A60D6960288DBB3AA1DECAB8E1AD4C93CC93940521CC13FA3A952FA
              D9B641B9EA1F5F90187AFB771F3B5ECE59D66C34EC288957EAC3ECFDC5031332
              0A33574ADA3E975A266E3A889051BF826DE7F4D947E35BC81C8841CD87AA5B24
              17299858CA92BE83299F5C59B17C0526E1FA1DC9CB61BAFE9499D0ADB7DEFA3E
              207717F32C282FAF90BABA7ABD51CF9369AE9C43A7FF186B39576AEA1AF43E87
              B78A8BD49BFC21F5B4C302E4E61C53985DD10F68C750A77616F5C6F8140188A3
              98B41F738D0998163FDDBF6540FEF91707552A5FBEE6386982D971C4C91D3567
              FFE0B474E3DCD149F3D44B0546CC1B01466D1D984C41ABE903E1E44A89E716C6
              09B2669B457EED500DC107CD959950629063D0D0BC6726FA24181FF06448AD20
              2098EF4955F1938F6BD6AF5FFF68E0CB5FFEF21E6C2C356505E289E3E3E32A30
              255498C806A57FD91F4A7B633566E74108176680B3F3723874982E333B37E19F
              59902B0666682AA94B19A58E7C0FA2A8633BCD570FA829CFEC1F53B577B4E9D5
              51B96363970A62615385FCFDEF2C5373B669CF883CBF6F5C0E0C4D2142E45711
              2009082400DB11CC23780020C763BE72EECA56397949938EE8D988A5CB5AABA4
              1DCEDF4F545AF5112AF062E7EE9E7654C7AEB3F63C069C71ECB1444E46A6B83C
              83B2032F49D9BEFFC6B5CD6063A7E11E14945202683B42175D74D1A5C8CF0084
              8832C272768F3459D622F9B6930100D7ACB880683504238CCF4DB9FBE06AC618
              554100FAE40652AA341DB46A08EA261814043B7D60685A3AE0984963D08C43E3
              85073468BABEF84897F09B1E7974220E611C1C4BCA3F3ED5235B7AA6607232FA
              7D00378BD64F568E7A53B0D3DD8353F2F4F67E796EC780B4D6954B0766F7B3D1
              084C17233246864584BAD846FC2B511BF2D004A6C0074071066E40E3634504CD
              5B6E01332F7D2F29000C946A6A6A54B6B311CA9FE5D5677D589AADE073AC04C4
              6C6244849B2078C4D11434CE348CD16EF31C807EE675358FF34D1B8CD81C9306
              2612520D901C310AF2D3B79EEB933885800BE46142E310C0C67D310014941CCA
              C879DE46462308588E8DC145F3CACCA31C17EF1E9E965BFF6B8BFCDB43BB2038
              8AB29828E09DFD93459AE91AC9B6BB367330B9FE798C0FA62A0FEC67AA32E2BE
              CA265C5FBD81CA90323D1C01901F01B8E003C81B150031561E1A1AD2C7232760
              B2DCE3A0AC2C1369507F602E6C41B0796D28B7B5815AB9E6F1EF7548891B3EDA
              DB3F25731A0BAF2A89333CB1D40D4D79B96F5A815046D490032B388C20B49C40
              19668308821F0802E3F29C5A3EFCC241F9FB7B5F991514CE77F6023847DA76C7
              F870FD7079ADDA633F286C9A9153B02C2CF98831C794656C6242653B3C3CAC0F
              D8F92803993D14BCF0C20B7B81DA333D3DDDB26DDB56D9B37BB78C8E8EA899F2
              AB16C74D3E5A672E882BAB66F0C26C0C2FCC5419E53896CCF35985639226364F
              9A8867101C1434C43F427F75684A473CC1C829DB3C81F16D3B100E07042FEE52
              F20B3B07E43FA029B311A32FAE0E1411CE61939559055256CF52939A6D4F7BF0
              616EA0993281DC9CA5A14C72902D654C596FDFBE4D0E1DEA21584F5D7DF5D503
              C1934F3E59366E7CFC67BB76ED92C918E62638DF08D2B047A83017AEB6172C34
              808714B874DB96B92A6CEAB649693A617F812F7F603C65046D468111BE6A08B5
              C36EDBFD069082A9F203301B288FBD70405EDCD1AFD7619123CAEDC058F1933A
              DCAD87144E0717FA6A6461D8DBF66484F322C5DF233132E1C1A232A7EC81C1B3
              4B972ED581CC88AA4685AFFFEE60B025EE53619655E002765480DD05598996F1
              583DDEB2DD26719B9D75DB8E18C5F8E7200C041CC531509DB08D4618AD70F902
              10160C3E1FE65DDC00E007C1350E3E59BDD9777FBA5367D54B9A2B55E31D0D21
              6CE68A82922BB6A79BACC915AA4409F36095834D1D0720B7420F417ABC933337
              1918E474C2A280409D34F470A0D8E36612BF685938C4B2698CE6B88FCC4D1F99
              FD1402FF8A2982113FE533115C5A77C4684E85ADDA80A616698701C26F96C8C5
              DA804A34CFD4E4972F6890D54B9AB51D0323D3F2C2F63E84F011590A501C7180
              0C4FD9EFBDEB6781741B1FBEEA4D3A83290F2B9B50F1FA198BDC812A7390C340
              010185DD0E122B9B8DF818A5D6E32E047647DA4D8F74DBB79F1486F0F4EB633E
              9A0F41ECE99BB25B04A1E04F163796AB6039F2554B141CA31D0A04869FF11505
              20C87E000C990282D0581395EB7FE77869632081FDCFBDD2AB613AE7208DBE85
              C7513B5925F96BF1A71E69F5F8D0D4661DEB7E88D967056623C8542FEE0079E3
              A33D3287E9455CEA5D941F26B15943BE0DDED9E3BD6C3F2D6EAD9457BA0B2FDE
              A985565040A453DA2BCDECDD099D5A412DF16985D722DBFB4247EC3E94F9A91D
              40F06B11D75E64BE41BBEFA0598D252DF0457B938912C74E2AA98B9BAEA834F5
              C8DB31634F2969731D2069170590661A164301FDFADC61C877CAEC6763F447CB
              8A461E89EB3EB4D95C7220D147B5D86591A68A909C33179ACC5DAED23719696F
              464B3ACDDAD2A9CB5BA50ED7191F8FCB246F8E83B860EA96501802FB7D9BD22C
              97F69A65D3227285B9E241A834F304158C020275D1E05B41E1813629A540D6C4
              CD6E9F1E5A72EC8CF37C051CE894BBE7302D9D3CBF4EEE79B1F074E51CCCA8DD
              80FAE4CA0681D2E885B824A29C03EB85DDFCDCE49914C6A1DD8732475CDB5A3E
              AF5EF3D4BC63E735E8F43AC135104B8D55C66C719DCB0D92C351D15EBBC16668
              EA158021B742BB8AF7F91441EDB60364CC81C1D4E4CD81FC6A17B7D56F64A6B4
              D81C630EE15186ED65FC6536EFA766D8E9D295DC35CB1AE5072FF54BF798019C
              B769DB60EB499DD565F287273448908B7288DF1D737129C090D9AD5F790D7279
              9CCC544937E4CC652D0A8AA326001FC6B951DF3CA8D6B7C8E85563368B53B701
              32C75999B86D30358CDB7CA34411E97E2B319B877CC7B9CB0132E40E280F6765
              79EB041A9694935A0FC9B5CB5FE1218A703015D3114EC6BF619EA7955AE6C1BA
              8319432CE736138EC0A1A954D18D27869C7F78FE3CD9F09FDB65DACED4173555
              C097188B7AE9C26AF9D8B25AD50E8E68A32948DF000C3F2818533A51BBF28CB9
              5A9FA320F6356080F8EF22FAD7B28ACC3EEBB289919556ADACC43C135BA66CB7
              25091F692BE3C3D76560953676BA1418F015500610141C3282CDCB9F9C7B48FE
              E8AC7D72E3395BE4FD4BF7C8BE71BEBE04840A83C93145DD81A2C03836F514F2
              BAEDCB8349F4111D18FD7B068DB639BA7079932C0008D7DDBD43ED376FC11ED7
              5AE5A9FAC757D6CBF5AB1BA4820B20D4129A2D0B8A61748A00E9450D131407D6
              FAD51D724C4B95ADCDD004C2DE158B9A24648127B9F908DB49105DC39928BB6D
              56CB14AC32716560950D3E34CF3625CDAA797D3421D79FFA9C7C61CD0B72CBDA
              DDF2E9B31872EB1BECB057D4663B40F6B39037A01A2AB2F2854797CAA3AFB5CB
              C37B177BAF48A2C92A4B0DEBBA3F2FC63A34750D9885F1CFBAF57CFD3459E984
              A988A7727A57D0111B7CDB07964AF74842AEBD6B3B9C7F469AA04D8B7CF3832B
              96D4CA372E9A23A7B696C36C11101FA3410614038C5F6BE601E8DF3B7F81ADC5
              10AFD7737044D69C768C297064DBC8488F4B20245BE465B45AFE21A3FDB4ECFA
              4DD69715309F9A82A937FD9C5F37267B47EBE4BE9D0B64D740B5CC6B48CA15AB
              264C3DB9DC7E1EA38034373777A1304DA4BB46C292C80464E740AD3494176C3D
              9B160520A974C6DC1F7017744C8090B272FC9B8B78799CCCD424BA12CAFB1A5D
              23717D1ED711E720FFF5A9E3F566D305DF7C599ED93F21C7D497EBB18EE6D745
              E44B6B3BE51B971E231F5AD120C7354525947780E828319A81C6709B4F34DE74
              CD0A29F7F90ED2F4445CC6C7E272F9F98B6D89A134EB00D18F193840EC0713B0
              EB2FFBE44F0D3B99F096855992CF4DF6EB60E6B3BECB1A07E5F943EDF2EC8126
              B9674B9BFC604B838C4C627E05AAAAAAE23B860D20975C7229BD4E17B564EF50
              58E6D543505311995B332E27B71D92154DE68E5724332EE9C424CC382E86762B
              306801F3AE31DA08CB458DC50590A08C9F980FC06CD557846557FF948CF942E1
              CEBAA83CF8E913656E6D58DE7FE716D970CF6E892573725C5B55D1F206278D57
              AF6894F9384E1DBC36A21898B90D15F2371F5D256D00D54F34872FBC7850AE5A
              BB445A9B8ACD985B6D6608ACED758C0F65BBEDF5CBB2B11C4E26BC2FC2ED80E4
              267A14D82B16EF96E54D8332345D4E0094DB6BD2B27F5807CAC009279CA0EF74
              D4AD071E7840E6CF9F775E28145A5189866C387B48D62FE997A6CA842CAE1F95
              542E24BB479A71645E12D10E29AF6BD30719CC3348BC190506B46477BB966699
              0234AB9E6EE5D38C0082CB46D6C399F2CE1F9F506774E31E7EE3E8FCD049E6A9
              C8EF3CDF2BFFF2F421D9F8EAB80C60BEB2A37F5A5EEA8EC9FD5B87E45B4FF7C8
              6B005425010110088DC620B98B56B6CA9F5D71AC34F86EF53A6A8E06E51FEE7A
              41FEEECFD64A35DF9EE6A3BE89A4DE3EE663AA517402F2F50696196CE616AD63
              E2676E46C15590DD77DC511087A549ED7B4283A1DD232DB2B461181A3D844833
              21D5E1949CB3705C1ED882B9D054F6A9BBEFFEDE77797D4F8F172C58B0281808
              5EC87710B6D606E4B9EE66796CFF7C79ACEB58D93DDAA6C75088A97C58822DCB
              ECED59F33A0ACA91A977AFC48101F680200848955917323C87668AA0F0DE36EB
              731333DAEF3317D4C9EF9ED22E11D4F7E2FE317976DFB86CEB99949D8726D5AC
              6529110522AF404471CE598B1BE4FAF58B65FD096D182884BF9838C7B9EBFB9B
              E59A0B96CA69AB3A6C6981F8107710A72DB47716D504232520C49DA0E833BC28
              50402C18FA30B6657DD9003891484AFAF547F51645361F9481A94A69AB989025
              8D1372F6827139341E94FB3787A151B97BBABABA36F27A948DD279E79D7B0E34
              E449BE07B7A2B242DF87CB5BB8CCF34B3A8EA6A55292277C5A5AD0B1864A774F
              DDFFF535DE53778F0499FBEA0634731BD701A600A13E02C4307847DFA4769AF3
              0FAEBEF2783F51009B0FC6E4B97D63F22AB4621020F226139763A240EC98C60A
              397E6E8D5403E0C311FD496FD7B03CF7CA21B965C3597A6D3FF1D1A0E70E8CC9
              7C983A32E40D108C2F503304C1BB5BB3BCA7CE5520F7B01C9F8247376412E675
              CCDE4F9FE8D929D99D3F447FCDC0C86432FAA01C399B9A94F1C9B84CC4F83C40
              E6B2279FFCE57FF3184F434E3CF1C4814422F1D9B2B2B2887B28D8BD4F977992
              9A9A6C42A6AB16487975838E4067AE68A6CCC30C3EEDB08277B73879BE49CD48
              D0FA90E133C2D414AEB0F2F95D6A0CCF354FB5F348534F677D544E87D65CB2AA
              453E7872BB5C0D5E31A746172809C86C0FBF392218A1644A9E78B15B6EF8FDD3
              B54DA5C42FFA4C24B2EAAFB8DFAF1D0694826614B4C380430D710F3CF0951C0A
              D6BE5F48303EECF58180B857044E27D292448A7CAAB2B2F233AFBDF6BA46501E
              20BB77EFC9C08F504B9612000F9450F1B3BD4CA9A2C1E6630BFE4335C000E1BF
              DF6EC060EAC09869B64C9DFC1E4908612EEC29C2DD047ACB870E0E4DA4744E42
              A28078340542D07AC693B27B806F3045CFDF8078CEBC867284EC19D9B577447E
              FFAA95B38241DFC0AF39B4D546A505EDA0DF20130C05842030A596A0C03CC860
              4D1552362389D8C4BC1B05C0400B527B7EAAE68A4470793F9D60285B6078B7F6
              F1C737FEB3390AFDB4A9124E7AC8FF986326AB6F77D688C0119F9EA88CED96E9
              A96934C4BC99CDB01D351C4136CF4E287B1D7361211875711B59ED3889CEFC94
              636AD55C10BC344EE6A8DDDA1B9367E1439EDC3B2A4FC3646DEE89C9C1B1845E
              F78D888F231DDF59230DA89761EF956B167B83A094FA003EDB35AFDEDC4CA200
              B59D68A8F11D8C260BE68B6CB485FD357D667BF8EE2D05AB7F3B828BC260E133
              6D4EAE9E7C33195C26FF903D44A9089068347A3F40C8121407864BD940476579
              18CBC1AD66746034A8CAA2316403866DA436988DB19DD18E5940906795AC9735
              BBDA0904E71DA7CFAF53074C8D3B5AE25BE9E88756038C001A545F1D9539AD33
              5FC7E788EDE4247531CE6160A20307E5DA4EB001C30F82494D84653585606087
              316139C9F4BCA883D711846A64E9648B149C8715FA913D44A90890C6C6C66E08
              E8971E18B0795A0152A72514209D5474F04589434719E69928C36809F39EC690
              B5F186FDC0B0A38E090C1161E288425DDA5229672DA89715EDD53A6FA1599B6D
              80B38CDAC539CC0900E18CF9F5FA651E3EEFDB50FBE65FEA6164C539111FE4D6
              01C276D936720019304CDBB52FDA3F33E868115C9F1914A80C865E93C0F4A09A
              4B1265670128022597CFBD8C0961D11BCE3C1F42DABE7D07E623F30912BF2762
              FC071CBB970793D41F64E39208D64A596D873A72134539FF8114ADE1E036EC7C
              07D3429E2DC6BF21966BEA2B03F15C0A9B5FDAA4903973E7973879878F4F411E
              03F3C68548EEA30F3A1C688723FA2A86DCFCDE094F23088E4B81F06B840B71E1
              9BD599D377E8FBB5E83F76FC4442F6751B2475E6D677F0BD5A4C1140E501D46D
              8F3EFAD8737A90A5220D214185BE0FED18F36B87E3195AD2FB14A205548E4698
              06525D8DA37326CC680B4713B5841D73EA6F66B6480C731B2947A76ACC618860
              53E89CAF54EB64922F533E0A047CC411CD5B01D4400E1CD7166D9FA6A6AD060C
              A3F5EC8BEB97E9A3B10E0900C27CB27FA7BE53CB814159793274DA813C641CC7
              00BF5B0FF251918690F6EDDB9F42B43507159EE19E80578676E82F16F8B48421
              7012B3F860FD7CD508F7D8284DA7A638C6B11E8F63A8076CAA6BB06E9BAC9266
              5D0112DFAEB795284C7E817409CC22359B8300453A48987ABE021BC644150619
              D9CCC8B9D462C25CCE43A661C2E35BBF2F21FB8A731285EFB42385B05BDF3C97
              4CE601C8DD4F3CF18B1980CCD0101284FE0D24F0651C21B07D60836EB196F035
              AAE57DCFC8F4F8B036CC7DAB888E9E1A63E273D301A32966A46947BDD1673586
              C2F0D83855F52BE0B793581D9D2F17351763365E06F0794DB6C10F065CA8A6AA
              192877A6CA68843359EC2BC3DCAC6E27F6FD520276A99DA4DAE10B8C28479671
              172CD13FE8412534EB00BCF3CE3BCB87868678076BE6421088CBF47C01242B27
              C72BE749F884DF15BED8B20EACAFF0C3ECD9BC3C00E127E62AEECBA1E6EB0A6E
              A9C54C28BDC9245A8344358C0D635E35CB5CF62D698C1103058F4103E93368A0
              6C0886631D18C8B80143CD50001404A71566F2C7AF95D06F8C4F67CC13EF23BD
              127FF1DBDA17B6B9BAA6A628CA2AA16C757575E3F5D75F3FE36795663D0333C7
              342A4B1B33339339E9B148EB45A3535D923AF8BC69281AE91A6DB40523091D33
              D198D318638BD5AFF8533B4275B432A5A090711AC34B1631CBB415C5E4CAFDC7
              52D05CC96539170D5DFD0604026041608A1DC64758CD609BD917CB3A0B675F61
              AAB49FE864828E9CB726F5BAB81664349BEC2C6721E3C27D071FCD0A084231F6
              7FD69736F201E198EF976C98D27445BA7F2EF1916E0062BE2B1167C32D28B4B5
              AE337E503C53E604C194E05801A9B0ACE03C60C8BCAE5EDB30853B5B1EFFDE04
              94E5D44A966B9DAE7EB0D306078473E09E66A0CC00413660F04B425CD1E5F6D4
              EE9F415D8654D824CA84AF8FE583EBB3118E4B73D0DBCD229A1590DADA5AF665
              C6ABE878A181FE7E49C341D159396279389897E0EEFB647A925FD434AF57D510
              90A0289B8E3860141C5451048C1586A72D2AAC62E1619782A3519A0ADAB04EDE
              7CDBDE314C710E8ABCF35DBD04DF09DF6984193004C2824166FB913A27CE955C
              3E90CDDB38535D2F4AB677334C6E4194F41B5C26E1EF29BA815B4289F2F272B4
              6026CD0AC805175CC064C61BB6F8358589D884598701D35139E2E88864A1393B
              EF95A978D2C4E40A8C01C568CC6140B19D778261EA466B91B6F8D90918EC85CF
              36EFEDF71D437620381369C02866B6C5DF3E02C1B653F846337C60F4BF26A957
              1F560BE18832E1806554C507A90707F5D98552DA012B342B5233C25E47975F7E
              F9BDA81CCD93B3C1657C7BF3AE5DBB1571BEF4527F318D8E1821B15355FA9340
              3A26D9589F641BF976401E4747CC3F47EE6943432E9F6739369475DB97B769CE
              1D63CB205F9396B0578603983A808C263970902730C82B304CB1AD1A0276379B
              0C2805CD8825B23AC8A6860E4A7CCBBDF01B6895CF54B9C99F0D6F65647444DF
              8BCF855A500AC77E05F90D1FFFF8C729DB197458401E7EF8E1ECA73EF5A92710
              4D3D840B9DBE6BD7AEF6F1B1B180FE641D1AE07EC28E29E72645A0C48725131B
              906CC332088FC7718F6DB43F5FCAD849617A5C0480094F995761BB32BBCDE398
              1AC153E8345D160C32F246430A5A57305760089E29FD8502027119ED28365304
              6312604C6FFE1E8497290283668A20383098D2B94F4F4FE7DBDADAB64136572F
              5FBEFC3B90EBAC60904C6D6F42B7DF7E7BF4C1071FB81915FE957BB383C7F6B5
              B1FE6FEB32A5EA66EA164A78C507A5AAA2DCBC29C87E6BD7BD60C0DCC0E23D6E
              B7846F4260FF12BE32AA35134CD6EDD8681D79462F207CFC5B30EDDA94C7F42B
              05809CB6189345700A8028280A46D6335393FD7B75F2C7955CFF0A01C1481004
              3872BE6E9C0E9D1C9F8EE731FFB8E3F2CBAFB8F9861B6E98DDCBFBA8B42B87A5
              8B2F5ECF5FD37918825FABA0000802E27F19BFF7C6079082829E672B5A25B4F2
              C352595D0750CCBB0AF55BBA1E209C9B3850785F9EF313DFDCC403C432B6D504
              22AF6CAF574A060CA64653FC6CB4864EDF82C15481308078933EF03480609042
              FF377970B3C477FD149349E86E0918AA15F6DDEF04C2BEFF3D0F13F67C241259
              F3D8638FBF2918A4C39AAC527AFDF5D7730B172E7C1423FF23D8AC3523948229
              348C79B7B44252F39599926CFF36C95476482E52AF02C1BF2730DDB6E6A8C04E
              8836A500710C64A5426499CB7B690917CC52715E35C1A61A4C205500906AD0E1
              69853151E60D701989ED7A54927B37A9F6FAFB9C714B237659C4A50085600C42
              06976EDCB869C81EFEA674C48090F6EFEF8A2D58B0E0996C267B2DB088B88631
              6DAE4AC9C74E7C4D4E681D90EE581D3A66B4454D4D3E2DB9FEAD2A846CF55CCF
              193B1F5100A0008C0AB6286F4D0DD8991AF37E116CE3182774153C46BA314348
              75D43B365AE04552C81B4D2008C667100CF396381B494D0C4B6CF33D921DD829
              6138E6CA7046AE5AB24BDE37074E1D53BB83A365C65F3836FE230F4E422ED73C
              F1C42F5E56411C211D1520A4AEAEAEEEF9F3E7BD064DB91A17E478D1F2DF3BA5
              4FDAAA93F264578BAC5FD425FDD3351209E6E4D2457B64EF5823500B497E6CBF
              A487F74AB6AA53B265551030840C58285815BC0546B755E046B04C8DE00BF313
              030CB70B654E1B2878074C1118D408650B8202638100F3610575DC36648FED7B
              5EA6B7FE10078C6B9454174DC8B5CBB74AEF54B5B457C5E494F67ED9331895DE
              51D46301B1BE03632CFFE9CF7FFE861F7DEF7BDF53F91C291D3520A475EBD66D
              1F01E5B2B94BD46AE1A30993FB0684D6F7EF6893DDC38D72F5B2D7E4AC393D52
              519696CD031D1010578E1106A7272573E865C4EA7198310023FCA93CBF69A270
              0D0846D0C65439A13B003CA6B0594610C00A8605C14CF4C8060CA311060802C0
              651D6A8486B1344F00816B5493835D32F9CA0FD04E4EF88CE96DA99C920F1DB7
              5D7EFAFA1279A1A745B6F6D5C8EAF621396DEEA8FCEA404406C6EDEF88249304
              E32F3A3A3ABE79CB2D7F612576E4F46B01B279F36639EDB4D35E884DC6E2D094
              0B08CADEE172A98CE4E5B2E5C3B2E550B59C3E770C8E3B2BDF7E65B54C678A5F
              5941679D8FF548FAD04B468070FC997CD00A9BCED6BC3364060059DE6737F982
              3658B679E3176CEAE322F3446D5020785389A1AC01626AA457623B7E2A89D736
              623E35A5133E6796C3D0F61D438D726034AA821F9FCACAF6DEA89CD439212F75
              85E4E05086668A379DBE84A0E78B3FF9C9FD7ADED152C13BFD1AF4810F7C4046
              4686F993DCB721CA0A31D23A7B7146FEE7D9A3707E79F9C6B3CBF4FDF0FC390B
              AABCEB1CC9E51989E5825109769C2C91B9A748A40AC76398149E68E14F10F942
              619C5678ACC874C057AD12FD121918491E1FBAACC214E07200383691554E9283
              7B2571E079C90CBFAEF5FA031312233586F1EABCEDD3226402C32FE3C4A06274
              E2A02FD4D7D7FFEDFDF73F80ABFF7A54D295A3A72BAF7CBF8C8D8D7D0A4AF24F
              916804984465D59C1CC2E088EC1F8370ED0BD0F83A223AC5D2CE3A60F4BE337C
              47A061A194B51D2F91962538A7DCB744CF70D868973E9E4A53825379B61F684A
              820254407C403836DA0620624392ECDB2EE9DEAD928BF3E7588B2344476C17C3
              5A7229208CA810E6329AE2E323FF07607CF3AD80417ACB80906EB8E1F3F2ECB3
              CF5E82ECDD107E034121101EF3973E23F6A757F933AA008676D94F4EA83A1A21
              04BE1F2450374F428D985CD6CF97B21ACC6770AEDA741C6A581D98E984395D11
              299D0C2A188949498FC34C8EEC574DC84D0FEB296C47695B486C470621AD0706
              80703F4CEC00A18942CA37C17D72EEDCB9F7DD7DF7D139F0D9C875E36DA1356B
              CEE7AF45DF8B91B602A004FC60F87F7E953F4CECB4653661785A03A1F06698A6
              418058D124C1AA66A40D128CD64820522981B27204705C27C239FC526A162176
              3A2E79C829979850C167A706259F88E118AEC311446AD8CCEB921C100AC6617E
              2D5AE71BA9541EC7BC8EBA3E7CB4A1ED1BD1DB0A0869DDBAB5B59974E69B0888
              3F06408A407180A896F0AD42565BE83C29206A96DA651FF9CD910203E6F0678A
              9CC9EBDE02E91914BC2606007F3D7E72D7E50B291D100E0CFD09EF120D011879
              6E63E0FD106DFF5F98F48DD8AADE169A6934DF22F1D7C84E3BFDB41F4F4D4D71
              AE721E1A5E01E105688B3D86A7E52FCFB86D0AABBEA141CD5BC2DE699B8DFC02
              A676318CD67416D60929F6BBE3672382CA9F00E79BDD78CE642CA6F3089F4932
              6C267BEA2F00C638CEBBBEBABAFA96471E79B4E4DB9C6F9D666FE9DB446BD7AE
              E9C468BB0382F92034437FFAC2AF214C6BEBEAA4B3B3530542EAEFEBD35485FA
              26023D5A52AD027310687487C8896B718D8D4DBA9F9114DF8A343A325AA421D0
              0E02C190F621B4EBFA9FFFFC09FDFAD93B416FBB86F869FFFEFDB1152B967F1F
              A03C8FCEAE06B7603219E0D317144A4B6B8BCC9D7B4C913DE73BBA381A291C65
              7BACFE96933D86427D33E2D105E19BA7068B7E86DB3A672E90F21DC524B6A3B6
              B64E35983796A8116C0BDACFD7206EC0715F78FCF18D637AF03B44EFA886F8E9
              D24B2F09C38C7D02D95BA025F357AD5A15686F9FF985999E9E1E05C5FF5654C7
              E6ADD3466BF0E199303FA916988C01A4C43C3A7680533B1B9B8C86F889EFB3C2
              04B817268C13BD7F7DF8E147667DC6E0EDA6770D1047175FBCBE7CF5EA93BE8E
              98FDD3B6A888FA7A7B15140F10A40A08EF5212146BC21C2BB95E58C551507C4C
              504AC170BF52B0ECD86552576FDEEE5042FCD9D4B537DD74D3AFECF6BB42EF3A
              20A4AF7EF5AB6198817B20ACA2F79E9386878764C7F61D0610EB471C207E0DF1
              0029ED01405120F847CD701AE207C5820133963FFD8C3302CE64F9288BBA3F02
              307E68B7DF357A4F0021DD7EFBED5500E56164DF674A0CF1CDDA4F3EF98BBC03
              C36A09B09809085B8F5CA11704C37C68EA01422D3140F0EE9DA725A0CC85175E
              842911E7310542DD7FDEDCDCFC95EBAEBBCE96BC7BF49E0142BAEDB6DB5A2098
              FF8000F802C85E08AE17DBDD8F3CF2305FF5B116FC3E94AF84D023048320F8CD
              16C9A58E287C9792297C970773896307CE790A876C6A6F6F7FF2E4934F391965
              CD286B24A37C02F392AF7FF6B39FE552D8BB4EEF29206F4677DDF5EFF2E31FFF
              B8727878780584B512454B2160BE92810F83B7801B20CC4AB00E716C13D8696C
              F3653A7CFEA607DB5DE0D7B0BDBDB1B171FB85175E38F9C77FFC273CFC379044
              FE3F34C8FFBE045C6F950000000049454E44AE426082}
          end>
      end
      item
        Name = 'code-folding'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
              54000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA864000016E649444154785EE59D09
              7C55D59DC7EFB95924088222821B5207C75AD419D76AD51625BCC4BD9DD16AAD
              B62601673ACEA7B592046A9D7E3AD3B10209283ADA5A4D82AD76B4958E828324
              2CA2E02E6ED485A55651716455148190DC33DFDFBD2F819897F7EE5BDADC3C7F
              F0CFB9FB7BF7FF3BFFFFD9FEE73CB37DFB76A7AFA3AEB9B25F4D59E38EFA96EF
              F4B7B6E000E3989DD6389F3A8EB18E635B6B628D3BE297461E7D9A10882840F9
              03AC63BFEA186738CA1FC9E1FD782D8FB40D598DBC681CE7F9F6F6825D6CDB49
              67DF0949D1459F24A4BEB9C245AB07F1F54F61F758E41B103284B498746F48EA
              67ADFD90FDF7206323D73E63ADF330FB7FAC2D6BDC421A59F43942EA9A2BB000
              598373A9634C19E9080838002B810BC37FFE750056F8EBF16713E93276EF277D
              962BD6D6C69A644591439F220417E5925C809C8B522F21DD0B2934C6E878CF80
              09485139B282AD87B8B719D656D5C49A3E0E2E880EFA0C21752D95B28AAF2197
              22A743C2FE3A9E2E20642DD6349BE2FE3E8879115254B64406C973564450D752
              3580BC23CBA8444ECB948C380EC2AB9D4B7A8EF59CFDA7CDAF88940E224F0896
              C177B4316432BBA7232ABC33066416921CC1C6B558C804E39AC1C1996820D284
              D4CD1F5F42A2DC3C11390865F64F595E844731CF3A83F44BC16E341059426E7B
              78429131761C9B3F20277F99B4D83F9103400465BA6F295BD868AB5F58B5BB66
              D6CB882421D39BAB8A76147AFBB2F913FCFDE94801A4A403BFBA1B6CF604FB1E
              A42CA7B2FC2776224348E46A59339AC7177A8E3D4EFE9DDD0A52E5E450A006D5
              0E79AACABE8FA8FDF137A4BE6561137EE6A386D5CE9F0FD89CCFD1A69A58C332
              1D8F0A2265219051001987434205BB6A7DA74506C93A14FE20723D477ECAFE4D
              A44F23EF733EA8DE5A9FACA790D9ECBCE41F8B10A2E6B254885F815C8E84AB4D
              A9891E408DBE5BD8BD85ED396EA17990933F417E86CC338E5D076BED9C9F83CC
              E2A6A535B1C64F825BA38348B8ACBAE62A17277E00167121BB3F263D34381302
              D6774D7F64EB76DA15731DE36DAA2D6BDA199C54B5B9621F926379FEB16AAE43
              C6938E7157D5C61A3F0DAE88167A9D90290B2B5DE339FBB88EB914A55542C649
              F1534911E89682DB3A7A81EFB543465BBBBBF5FAF312F7E6D6B754153AD61B80
              A56C9B58362B52ADF33DD1AB844C9D5FA9DACD7EB42C8E67E35E0AE47DC3961B
              B0D14AB2C6B1E67E2C63666D79C347C199BE8D5E2B4368811740C441C8F99051
              43D36068F842DCEEE29E0F44A263ECBDF9428690530BC12D186B6C01D9F71044
              D5CFAD35658DDDDC435D4BD55E2875349B67222A374E841015E829E077A74B34
              D6412DC9F921F269F5B8C6846EAA2F2267845078A25073209B63109503B813FB
              2AB28A9CBCC9BA1A5362CB812C7F70C95E4B7A38321232D48D1E027ED556D6F0
              085207112FEB683E2197841C47723E8FBC985443A99F40C646D2577C3146CA1C
              CE790DB5FE2DDBC7231632C2B929EAB4FCFD044E69D039B7238FE5936574206B
              42280BA4D011C837912AE470941CB48A2DC5ADE36C4354C51C8850109B025ACD
              1A62D5C0926F32A9C0B552FC0E2E7E1742D4467919323AABB6F984AC0B757475
              2052CEE679E8775407198206549101FC1986A8A77630FB22A688ED5064C42142
              9F839569A42FE42B194256844C6DAE2C4249224105F331C1D13D21A5A7A5F86E
              A07ABB95446E6F16F21064289A246F911521C67595D3D5353E96542DE29C416E
              0AB4C2C84A76EF417E5F136BDCE09FCC636445886BBD4164FF7EC847F1423797
              50A4C8134813323B8AFD4E7F09645B86FC1FF20A4CAC417A7425CAEAF1CD10B0
              BBB85C6EAA191B6C249D0719EA2EFF5C202B42AA638DD2F4B36C3E8E240CA989
              93E191B4213B94066702705297E8FC4E642B57EB7977533FBB91930F502F7827
              B8F2F381ACABBDD35A2A8B70596A084EA1FC3E95ED2EED0A299B643DA2469CC8
              3994F266288AD771ED1791BCCD96C6295652AD9DC3B977DA76BA6BAFBBE02EB5
              5DFA24EA1754A007BF313CA47ADC5DEBA72CAC34934B53B79B72D230AC5B50F1
              45143A09422E214777E90251F62791FFBF9F6BE6B1B301428E627F1052CCFE3A
              AE5AC7B9ADC63A6BA834AB25DE26EB23ED93A86FA9D4BB8D24739DC04B1C8E3C
              416DF13995B5B5E392C781E58490FA968A2FF0A15379DCB928BB7FFC7027E2A4
              2C43E9FFDEE6992585058EAE29403CBEE8A77E273ADBB5E57DBFE55DD75CA977
              53DF5C056F7EA6A511CCFE1AB665F94BD95E8D9E36D7C61A138EF9E7C6425A2A
              8692DCCEE32EE48BE082BA034EE4B66620BFA2908E74C073A6D0B40892BFC732
              2E410FD704477DD78C7138061DDC43069CCDE66310925007D9D6B29CE98F4EE0
              198A2434724BFAE09EA020E92391FE752DFE38485EC1EF4232CE616C9E879CEF
              1F0C201D8B0C597F292EFD0A0E9C8E5B4B38449D35216E81F870D459384ABBFE
              C1CF805CA12F23DF7900528C85F479D7D41D46D12D67A10B85BC8A982EC06284
              E1E444C59A4DE0BA13672C192F8BEA82AC0969DFD1B6171A3F95CD239084395F
              5D5A242A3370A9CED0FA962A6DE715C874BC93BA905461313DBF9F310391F3B9
              E1EAF656EF542CAB8B8BCF8A10145BC2175137BA7A7B872A0BF8271221E87454
              AD4A8556C202ADAF62DAA20A17A7B41F3579DA5096C6B25FD54F0AF4F0151259
              D330FF401C191332BDB9CAE5A9FB93FB63886A15299E25276A5B31972DD5B186
              BC7259B5639B3CB2D806F4F18C2F8EB339389318F1F2447D7F6721A5752D559D
              61B2995B88F5A8DED93390CB51B2DC5572F8D121E643DAE47DB6B1970CB5654D
              1A2278125147E813E8FC23B49EB86A1B40AEEA0B4829CAD1809E8FB4099931BF
              CACC984FF5CE38A391AB79BA866143C06C849427C91B793B9601295BD0C94236
              1F20DD8CFF4EA55F0D5D1F841C3C7DA13FD0978185C0AC67CC97AD313F604FE5
              472AC83C11BBCD35E67524AF7B6D5D5723A4F671DE781E56B24B7E3A7EAA1BB0
              12B92A0D5FECE779EA424A939078ECED81BE6538A68C2776ABB625025F6C03DF
              EA09EE5D5653D6A878AABCC544F55759A78497568B3DCCFC7865D043A80EF9EE
              2D342190E1A2D0C32043D18517236AE8A50464E8835E451EE59EBDFD83790C5A
              EB782A3FA36ABA763F14DD73CD1370722BA21EF0F01612276338775FC6AE820C
              D2C13A5907E953E49CFC1F6432CE21C839788F23E305772AC89DAF22E7FA959D
              507D59D3E757F5A74527CBB806D19C8B94C0777AD4CD3F265521774B6DACF1F1
              8AFF6C3EB4A0A8F85B8E674FE68A513C736F72075FC46CE38697D85F5A68ECFF
              DC31A9B4C748C45C3C4398F0F34567A0890B280B4FE439EA8B93F5E2FFCD06E3
              D8E7AC759B1BAE3B73917F7148D0C8534FB7C2A0AE424E8A97110981E750D942
              05C76A6AC4F89A58D39B3A9E94909BE75D6EDA0B8A065AC71C07E3BF860C3500
              43818FC31AECF36CDE893CFCC6F2CBAFC27CEBFC934980037E1FF94EE3E45211
              D90555372EAECEF619C2F8298B7F4722C525053A7BA8E14763BF1EDF4D090821
              9338D7216391BD55B7D5F1448813B28DE437A453A9A1BDADE3495DD68ED6365C
              95730644D4B0AB88C390D0A8A0DD04DFF7212DAFBF70D9C9611429E0720F348E
              3B3DBEDB89CA290B4BB37D86307ECAA2DB48529221A0CF0BC7DFB8F886F86E8F
              800817D1188FE6D01FCD7D0A7DEA910C217E7E0D5B8BC8F09DC11B4909714B4A
              4671E7D5503986B70C51DE8875C8B0CEBB7C9AD616B9BB26D6B0110585524007
              B8F758AC41DD0A9DC8C533046BCDB7E39BA1608DD56CAE5410191721CA3429E7
              B6C83AC00EF4A45833CD73EC74533D2A19C68743E2BF40488C346CED4835AAAD
              68632ED200191DD53E7511A409EFB4F84607B27EC65553177F058569342F3464
              6D955316FF5D7CB71BEA16544937EA72576CDA28EEE8B1DCD803EAF97E0D590E
              011F4C2EDBDD95949010C850EB3198E7E767B630F07DA2BA0F1E457E89F881D0
              FF3475E1205E4A5DF3E9C198A3E35B39798640AE54FC71FAB089E7B243863A06
              FF1151E4E668326E88087E1FED28EB7134BB9476599742BC1B2190A126BC0658
              6482EABF0FE3AA64198AE15D81CCAC1ED7F81AE237749CB6E26E43BAA160F718
              0ACEC53300D5BE8C9E53E076BF0F32B4028422FD2F12F19011B691AC8CFB962D
              F4667A05DEAAE0E86E7451F6B4960ACDDB5048E83F20CA155D22489240AE49E1
              3BFF853CA7039D286ECB4C99266828F9C8C53384A0F59C366C7B7B2237A4B5BA
              A4A7AF22A11AC901CCAB507293D3E66E98347656B758B62E84600D23A04FBE70
              24DB7BC17A6A77A5E9C614E2C8AFD86BC632BA7617B416663AB972F77DB97886
              604C46CF31AE2BEBF78165942027B0A94AC6E92848D19B21BC880F053BDC67AC
              B3989653C24ED6CE074D5F58598C9F1E8DA80E4D6B333919BEE905416F0A64FB
              6D75ACF17EC8E8360ED056549061EBDC9F5BE22317CF108CE74744A68D76EBED
              7E2FEB0795FB4B44215A322A35D014FFDAC8EC0FB23707ADAF9D7476E2A0F14E
              423CCFE9C70DAADE6A242B4CE12467F821F27BB6D5B8498886DAD314D1A81A45
              5A309ED339A93F17CF10DA8D7D21BE99160ADC42FF39F52D5522E00294AB21D8
              116958C6669435877B1E725C774D4DACFB34BF0EF80F8CAF47856568751CA359
              4DA95D5570CD5CA411EBF09BFD3DC2DAFF8D6F85469B6D6F896F06C8C1339A7E
              54FA1CCF792BBE1B0A64B867EF9C34E6DDFA05550AD0B88097D6BCC851BC7DA8
              429C07C8853FC17D0A145C59537A57D2BEAA80E160128D9AFDAA55A50C40E04B
              EEE4CF6A6A31F5B0DDADA6F059EC6A377770571ADDEEF6BF67FD38D62577E7E2
              198235CECDF1CD50308EBD959AE7BE7868B569B4B4E05190914E90866A9EEAAA
              59806E15D19F141D26F7111FA4055F422E0E6657706D3DB6BC367E2029EEBEFE
              2CADB873112FF5E7E0483298DFF5EFDFDAAD759C8B67080D93C7CE2443DD8053
              4FE8C33BC0E77CC235D7DC3579EC3D380DB5CBCAD9973BD72A45A9112C6AA0CC
              7A2FF2547559C31624680A2481F98FB9979570A33E487D3627C16252BFC81715
              79BF409A705B6FD68C6D48FA629FC584A94B4EF1AC77129F7918396D6F9EB1CB
              7ADE366BBD174DA1B3ACA176DCBAF8A53D2217CFB8F2A74BFA1594D8B1C65A3D
              67304AEF8F9FD7A4D20F28509F6FB86E9CDFD31BB437FC297B33D46AD7B150B0
              FE721F0FC4657575AC219475FBBDBD9421AA4F4F868C13F942248901196258BD
              92FF86AB12F3798FBA05955A75EEFBC837504D3857651DD5E66E4544C61B9011
              66E4D047DC1AACFAE5076192A94C2A20C4D89439301F50AF2036EB8F79F7D897
              D50DD69FC4F407641EF25A3A6408EA3656E4C34ED90515A7543900F76B5BB194
              D6FAC5DFEDD192F20190A1F753CD4A6E4A9135495D791C1A14535F9E9A02B28C
              B4E3075C8868A5E6A1109D15F8D054160261E6486E3BCEEE2A1816B525567309
              7F7E8A7186C2CA485C9556AA4B9E01712FE8EF1972EC1F906590913458AE27B8
              35E31A7990799B4F5720C28664A4604110E0070C7F9B6F7016E9E019CDE3937F
              D1BE8C4017FD7D5527813C06C9EBC81CE4C99A5843463D02829FC3D1A8BA26A8
              B3EB73937EB6F289FAB84E61E387C8F9D4ED723A1D3A62D889364A9054AE7C3D
              06321FDD2972516548C6085C8E71DAA07929F9E067ECAD86F1A4D3AE044CF868
              08390B7737BC2E42CBACE60AB72DB9DAC86781F5BC6D2A572E8BD01A2CABB08E
              54D726854F48ED387FC44A4B1E2DC740C472F209FAF297DC8B14D922677D4D69
              7E054F0B578FB94D0B1869D6D74A5EF8435E38E13B9279D5807C05594E53A0B3
              5738537416CAB5657EEFA39AF96A5F3CC6276D401236FAAC5114BB5D893C8F6D
              851D25EB8B902B570F81A69F25CAF92249D55AF558E4440F9D840890B28D32E2
              510C55A13BAA316C260768FEF8EEDC116CBF8BE8BA255857DEB549147D4873A0
              6062A9DF2BFB142E4B159E1EA2F64D7FE3B854774DDA55DC44E8312E8B2FA4F9
              805ACCB89C427CB4888009E5127585AB36A1709A9731D3BC88669FDA5C35D0D5
              2C2875C558BFEDB18B6D590639DF9C4D4E9C801EA493CE023EEEC644D4D3C804
              0A9D5561FAAB922119211AFE3C8A8F2CE78B6998527340649E5AB561AEAC83BA
              7A4E72456FC15FA934E8E93ED00BFAB4D4933B8C7408C7356C2B0B91CB1209A5
              10221D74A971418ADCFA4AC8F839E96C08C92A83A60C25C57CA9D6DA2FB2792C
              5F966AA0D198F93A2C23E3BA766F032294D90691BD8F42F16378BFA32141AB51
              1C8C48A17EA01B3E411950A2791F03A9596AECBC8B9B17200525DAFBD89CC93D
              2B6ACB32FF39A594840875CD15C5C6B145AE6BC80DA6F5DA3EBEB41ED67F22C9
              09BCCBB748BF84B24BB0F801F2CA22C2BFA83BF4CE09CF7142F54E59D21D3CE2
              37D67AEB2795DF9D918E4211920FA89F7F15D574AFC4F3EC105360A7A376451B
              62F946DD47F1FF99414492C8921EF5BCF64990A1AEF78CD0CDFCF216A67D7FAA
              E9E590510F199A2BAEE9025AFF5126913119826F55C1629E838C7147D4B55C19
              367CAA1B3E1784E0A246D07652DCEDBF221A6CDA071D66ACB484B0FEF0EC729E
              AF11CD1EAAC8A991D72E8BB2CF755C3310652986EA5248182B6F8F3D6465117B
              225EF5556D73393295238F50E149D9F5D413F2DD420E763CABF8E48BA02058E4
              3F5D32ACD31E2F235456682CE83335284BBBCC4286D518C8E26CC810F2D642EA
              16540D70AC77110ABD04FFAED94CA17FDD4D5526BF68D12A784120A00879175A
              545A8C466D0A01527B0472ACE2C51497F63064A8A69515F29210C8D014013566
              BF87525566845EB459C00AD4C652F790FAF6343F5283775AD3BE583CF1FF1C8E
              29F65953A015FBA5309F8D1092552B5DC83B42204343D28AA1FA2EA241B4D033
              BFB00CC59BA9C756C3B09A0EF70CF7AFC43CFC1E09EBF9CBA56B984E43BA9A98
              B389F31BAA630D5A9E3027C8474214D2A4D9C29A5271300A4B35B8248B904B52
              3BE20D085946C3E426CFD84D94361F6B44D5BFA807D4B78C77AB6377656D191D
              C81B42A8DAAA1A7B00F9573F42A9825C11FCFC4F0DF85027A2A21C6743C82310
              F2D6C42C3B0933453ED5B2345D5B3F28A64934B28C9064F81D881D8BC63C5853
              D6F8666F9121E405215887A2D255787F1D0D1F011361E6F9898C4FB18E97487F
              8B5F7A8842F9BDF8A95E43A45D56FD82AA2128CB789EBB695279F71FFB820859
              816A549AAFA115261465A80A5558EB781A17752F85F93CECE9CFB511587A3092
              844CF37FADC7194605F312BEE22ECFB38BA8F2BF8396B7D69607D3C0EA5BAE30
              D6291CC6F918BBFA59EF63E021FCD432EBCF376982940761E1EDDAB286AC1A74
              B942A40851B4A067FD95D64E208F7F13052BDA7DB09F931DFB4B08794A3999AF
              4DC3CC2A3EEC620C4873D14586069A528396377F5588FF02B98F2A6BDA1381FE
              92885419E259BB0FCD63FD849EA612A8FF69088A568FEC71A4FF0C191C375772
              9CC2DB7C1FB9816B4F4606E8FE9050834FDD1C9A0014626AC35F1791B290A9F3
              AF3CC20D02F0B4BE88162E40D701F0F3CAD95BD950C34DA37A83399DDE8FDD5B
              F53B39F7F3DA1ADD7B1EEB48BA404D6F2032844C6BAED00A0B5AAAFC6644ABF3
              2404FE5E136104D1D5495832A86FCA27D2FA2DF05BB8713164F45AD5361922E3
              B2D0AC7E35410B11272D98B90E23F22514193EACDFF5B1141EF5A3C42BA24A86
              109D32C4A8430FB714FC2065AEF13844FC9A54BF9D1EE99F4D8A52A1AE185AF5
              ACBE8187D162048163CA02D4D0347EB10653BA1559585BD6B81E89AC75081172
              596E1B4A5317460B4CAC858FED9992020982DA2B9A063DDDF1DA9FC6C525FC35
              82A821720D435ADF2ADCC723EAB13D8A7225ED9859C8D0F8F61BC84C63DDC768
              DC6C9A787643C6E3DC7F4D44911015D65AE959135169A9FBAB3FAB8A9B342801
              53923DD1DAB69A0DA6B18CB935658D9A74D9A71039423A00318A2ED4C260FA49
              D763F8AA23713BDD1652C31A54262870E163FEBEE258B3845D4DBAFC138464B8
              464AEF21B2847400628EE76B2ADCF36BECEA6731B6430C6ECD2076232D0C295D
              43A9FA99BD05C80A88595F1391BEA974117942EA835F0ED0946D05166845B8D1
              10A29515B643865ADA9B3193D5AE63574E2C9BD5E77F622FF284EC09AC650064
              C895C94D15F9ED6FC7D9A2E0829BE75FE95E533E2BD255DAD4709CFF0775F948
              AA1FAD341C0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-markdown'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
              3800000006624B474400FF00FF00FFA0BDA793000006CE494441545809ED997F
              50545514C7CF7BEC8E895A8E069A35656139E34C7F9452EA984EA158D938D6A4
              4318A441588C36E934538936E9D4983F111141604441766D9C1A7F4C8C82250A
              A1526AE6A456F803050CD4FC9520BBCBBEEE5979EC826FDFEEBEDDFB36D6C370
              F6DE7BEE8F73DFE7BB7BEFBBEF01D01F11200244800810012240048800112002
              44800810012240048800112002448008100122400488001108650242D78B1B1F
              97344914857809A468098481AC419FAE6DA8EC3D0109E0A600D2DF8C65356369
              2A33E597B8F666BE3BC557A6CE8CB0190D9B01A4D83B1EFAE44140106097C52E
              26949B732FE3F80E016213DE8F84365B15532B0A9D64DC09D4582571148A2062
              28A9CD6626F84842371B6214A4628C264C78FBBDC96097B663814C5F02925D7A
              4D94EC3053DFB0144D262088C2BBA22049D1B28352DD09448B2040A4EE6129A0
              4C60206EC246B944A9EE048C2880EE5129A0930009E06411941C091014ECCEA0
              248093455072244050B03B831A9C59DF72A5C5796E3B4892049F2D5D0D478E9F
              70DBC6978A291363203531CE6D976B376EC2B40FE6B9ADF7A542EDBA0219479E
              13975F80C01EF92D98330B0644F497E3684E873D1505B3A64FD3DCFFFFDE918B
              0078D1BD7B85038A603068FE91419FDEBD206D760A8485719B264E35A8C6F5CA
              86463D0E33A74DD17C8173931321A27F3FCDFDBB4347AE022080375F8D85D123
              9EC1AC4F3679C28B3026FA599FFA74C7C6DC05C0FDE0E394193030E241AFF90C
              19FC6848AFFBAE20B80B80C1703F48FB701678B31F84F7EC090B585BA351FBDE
              8131BB8BE92200C218FAC460488E7B03B3AA36373901060D88546D134A95BA09
              80D05E7F79BCEABA1E3B76348C1B796FBD9ED05500DC0FE6A5BCA3B81F3CF6F0
              20983D231E75BAA78C8B0056AB0D6C369B22C8DEE1E1F0696A3218C2C23AEA71
              BDFF243509EEEBD1A3C3E79A69B97DDBB51852792E02DC6A6981ECA26FDC82C2
              D36DCAF4A91DF5A9097180773E1D8E2E9915EB0BBA7842A7C8ED5663E79E7218
              F66414C48C19A9480B9FEF1C3FF527180D469814334EB10D3A7794ED858AEA23
              980D49E32600D2CADA6406FCB63F141981C5BBECA3A444C07DE1AE8A76C7D90B
              F59067DADA5E0ACD84CB1224A3FAB7B919BE589505AD16ABECEA94E2B31E3C23
              7472B6176E35B7C0A274F77DDB9B75FB84AB004807BFC5D9455B30EB93A5E717
              4243E3259FFA74C7C65C97201948C98FFB61F8D3C3E085E786CB2ED574F7BE9F
              60FFA15F54DBF85289CB5CDA9C1418FBFC085FBADDD5B6EFFD7D40ED7D81DC61
              F3773BA1F0DB1D725135E5FE0B90A32FCF2980F3F517E5A2DBB4E6DC79C82C28
              765BAFA5025F107D9D951FB017446A73D85956EE357C1C4737016EB7B6C2976B
              D6B3FDC0827115AD99DDBE621B8B5579CF50ECE4A5D3D6D6068B3372E0CCF90B
              5EF6F0BDD9C123C720ABD0EC5347DD04C0599DABAB07BC33C2BC92A5E717B175
              BF49A92A203E14386DD91AB874E59F808CE73AC8E9DA0BB084FDCAEC76BBABDB
              635E57017036BBCA2BA1ACE200663B19FAF71DFCB9938F47E1CAD56B307F5906
              E01D5AA0C66F62822E58BE06B49CD87517002F1AD7F8DAFA06CC3A0C9785B51B
              4D8EBC1E1FB5750DB068D53AC04726FEC64321D398A028AC96B1822280EB7E80
              DF1A5EEBBE1A906327FF8015B905801BB45A3BB53A7CDEB5283D1B5050B5766A
              75BADC862A4D00278DBF044902A8BBD8A8D484BB6F6F5535E0297DC6546DEFAD
              333614C3B113A7FC9A67D004C05997EEAFC224A866DAF63DF4EBFB00E03B685F
              2662DE5E02BBF755FAD245B16D509620C59904D1B9AE700B541DFED5EB19ECA9
              3C001BB76EF3BABD5A431280D1C15BC7256BF3E064CD195652FF3FFAFB495895
              BBC9AFBDC3350209D04EA3D56281CF57AE553D87E03966F1EA6CC0435D7B37BF
              1312C005E1F51B3761FED20CC0D4C5EDC85EBD7E0316AEC8047C4AEB7004E883
              04E802B2A1B10916AECCECF4C8046F9BF1A0D578E94A97D6FE1749000586A76A
              CEC2B2EC0D8E751EF787AF3273E1AFB3B50A2DFD7719FC1F223447A8A83E0CEB
              8BB73211EC70E8E86FDC2E5298109FCC8E42DCC6A7813D10A025C80320DED524
              006FC21EC627013C00E25D4D02F026EC617C12C00320DED52840E05FC0F29E75
              E88C6F410182F3303E7420FA732517990052A53F23505FED04D801AC52045134
              6B1F827AFA43400030310360A7E11FD8402F31A37FDD0808A565A6BC8922C613
              C20C6F31254E639E4C1702355649988E911C029416E5348559DB460902EC4227
              1957022556491C556ECEBD8C51D8171F13A7C5C6278D95404804906200844758
              8D8119FD6B2760632CEB18CB3DA20885BB37E757681F8A7A1201224004880011
              2002448008100122400488001120024480081001224004880011200244800810
              81EE46E03F67EBEC02047C01690000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-js'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
              3800000006624B474400FF00FF00FFA0BDA79300000613494441545809ED996B
              6C145514C7FF33DBD296BE295D5CA49457454ACB435E091134180AB13CD46063
              F4831FD062349A468D1F8C89DFF4136A44FC4040A32662783421544050438C44
              0984D8022D60C19497C5BEDBED73BB3B9E3376D63B1B10509919266773CFDE7B
              CEBD77CFEEEFDCB9AF05E4250484801010024240080801212004848010100242
              4008080121200484801010024240080801212004848010100242400808012120
              048480DF0868893FA8BCA6BA44D7A3EB016D39C938C0189BD846F4DB21A0B512
              C36618388400B6ED5DB9EEB4DA3B1E802777EC183598A9BF671878811A044824
              FDFF04A2148C8F43C1F6D7B6CCDF10E18F3703C0F00732B41A1AF134EAD92C72
              87091C4C0DC756EFACA818D2D9D14086BE49E03309C7A48C987FC0DEB4B55FEF
              288D69FA2FA498C1A05C923304A23A62B3F4A8A657923F814F101C4E8128F44A
              9D1681471C762CEE4608307B1EF90523BA64CE1328E4006438EF573C8E10C8E4
              008C942573838004C00DEA8A4F098002C38DA204C00DEA8ACF24A5EC9B625A52
              120A32B290164842C7E0007EEF0B23128B79F2F7DD150148D27554AF78DC0670
              CDFEDD369D9519B97978BAA818A563F2A16BB4CB662349F7D020BEBDDC84ED8D
              F5188C46C9E29D745704E0567095154CC68B33E7DAC05BFDB246A5E08929F761
              7EF01EBC79F4077040AC3AB7735FAC0153B2726E085F053C91A6A5574AE7A926
              D7CBBE78021E9B5C641BF9E7BB3BF161DD7174D2D4B328381E95C5B3C1D318D3
              5E180CA130330B4D3DDDACBA2EBE7802EECFC9B381DC5A5F8BDF7ABACC05F8C0
              A50B387CF5A2AD7E417EC8A6BBA9F8E209E05D8F0AB19D763EAA7EAABD1525B4
              305BB6E440C02ABA9EFB22002DFD7DC8A685D6A2595E38155B1B6A2D15DF5F69
              32256EF05041F7D077F9D75FE5A76B576D7DD74C9A8657672F407EDA689BDD8B
              8A2F0250D3D4681EB654C00F8F9F882D0FAD40D5ACF998909EA95679AAEC8B00
              F40F0FE3ED633FE24A6F8F0D6E40D3B1ECDE426C5EB21CAFCF59689BA66C0D5D
              547C1100E6D7DCD78BAA23DFE1CB5FEB118E0CB1292E1A9D8A97860AB071F132
              8C4B4B8FDBBD50F04D0018265F337CD5D880E70E1FC017E74EA38BCE016CB724
              486BC21B7317E1EF4B0AABC6BDDC5701B030F60D47B0F3FC193C4F81D875E1AC
              6536F3A2EC5C94E6E59B652FBCDD15DB503D61CC1A0AB9828C4C14E78E8D5BAE
              F68671B2BDC5D407A2C3F8FCEC2914D215C4023A019B467AE3CBBABAB6BFDA90
              EA6AF24C00F816F3A96933E23076D3C8FD8CE0B1213D3999B3B8F4D308B79409
              E95978A9E4014BC5F196E678002CE3D9CE76A801C84E49B1AA5CCF3D3305F1BD
              BD4A83EFF32D7D2A5DB65965CE79C1E59CE572C2CE677ACE18249E8C735352B9
              695CFA68D714575C2E782600F51D6D3614F3F2C7814FB43C5D3C3BBDC456C7A3
              DC325C0A77E31C8D704BCF4C1E85B7E62D36E7F9D0E80C3C189A606E45AD7ACE
              1BBB3A38F38478660A6AA2CBB3DAB63F303B2F6882E13DFC86E23966597DE305
              765FD379D5846D67EAF0CEA2A5E03E5CC1412B5D78FD85F65A7F2F8E269C9CB9
              8F5BE2992780017C74F204DA06FAB9785D19A27FB336D61E43E2655B033D3DEF
              D71E071FC8AEDB71C4D843E783774FFCECA9BF27B5D5FB76A99B8A91AFEA5E96
              430BE4334533C107276B2E8F1A31F08DE6270D75E635F38DBE1DEFF3D74E2AC2
              123A74F1E758EDF8A939D27C05DBE990D6FA0F01B6DA3B997B2E00D68FE73F50
              C6A6A6216618E6BD7E2416B3AA6E29E79D13AF07DCBF85A01BF439B7D4D1E146
              9E5903127FF7300157773B89F537D37B2311B0DCAC9DDBF59E5A03DC86E1867F
              09801BD4159F120005861B4509801BD4159F1C805E4597A2B3047A3800179DF5
              29DE140217751838A018A4E82C81FDBA8ED8A7E4F3F64E39D441D27F261065F6
              FA9EF28A93F4515B4924394B60CB9E472BEA75F6991A8EBD0C1887B82CE20881
              83C4BC8A3D9901D8595131941A3656691A3693314A22E9CE1020B6C6A650B06D
              153367171ABFA9525E535DA2EBD1F5805646F62924F6BF93C820E9B6080C50EB
              0BB4D9F906016CDBBB72DD69D225090121200484801010024240080801212004
              8480101002424008080121200484801010024240080801212004848010100242
              4008080121E063027F022693919A528D837B0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-sql'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
              3800000006624B474400FF00FF00FFA0BDA793000009CD494441545809ED596B
              4C1CD7153E33BBBC59C3C2B260A8C1E0105EE1D1C4712C1C9BB61179A9B595AA
              49938A4855A42A525A358D7F58A9D47FFD57B5B6D2A8F69FFE6855A7AED2DA69
              A5246E9D38698A1325B59D60FC066C4330D818B26B5858D8651F3D6760666716
              767C6F197631DCD53D3BE7DE73EEB933DF37F73900E227101008080404020201
              818040402020101008AC3504249E073E7F62B83C04B67D5867078A0B45A41802
              630866A74D96F634B4BAFB62C5E61AD6317750ADF3E07761DE8922526204BC72
              38D4DCD8563698D825669163AAB936FFE60BF0CD6122AB3322DBF792C222CC04
              60B076149158109080192B1E021C2C6D0B1F05813CE59FE18F87008670C28517
              0141002F6216FB0B022C0694379C208017318BFD05011603CA1B4E10C08B98C5
              FE82008B01E50D2708E045CC627F4180C580F2861304F02266B1BF20C0624079
              C309027811B3D85F106031A0BCE10401BC8859EC2F08B01850DE703C044CF206
              5FABFEF89D7782F5D9790838CE1A74ADFB45A3708C1503660224D9F62A06F5A2
              88648E80478E84769BBBC4ACCC0434B5BA2ED921DC82558FA0F85044D221303F
              EC1C96C3A196C6B6B2419DC954C57AA6762E6377E76D67540A5CC64A4528AB31
              DD9CB6DB6BB66E2D9CB0EAE1987B004B831139B81BFD562BF8F8685092150EBD
              428A5562590FF8E2436FBE9C16EC07803C94D59C3C19206FAC7DB8C89261D8B2
              1E20A5075F40D4573BF8F88850108886E959495FB270F580F32786CB4360DB87
              ADEE4071A1881443600CC1ECB4C9D29E8656775FACD85CC33AE60EAA751EFC2E
              CC3B512C4B53BE20040361484BB741EEBA74AEB8B8DE06FFE45CFDF40C1B64E7
              A683C4FC445C4DF1387B7125D4CCBA12B2B3469E7FF32D013F8AC8FDF7A321F8
              EC83EBE0199DD66E2123D30635CD2ED8FE580514ADCFD1CAE395C989207CF44E
              3F5CEC1A05D2553B1158D75204DB1F2F8775CE4CB558BB9E3B750BFEF9D75E2D
              5FFF75373CF96CB596B748714664FB5E8CF534CA1D13330118A91D65C929301D
              823F1F380B03BDB717C40ACC84A1FBB311B8F0F9287CEF857AA84530E39D86BF
              F4C1C1D7BBF0CD0FC59B14324EFE6708BA4F8E40C78F9B60C3A63C83CF6C30AC
              F8A88533D3B3AA6AED550266AC648E961D1CBE095DFFFEC78B8B82AFAF109A8D
              C05BE8A7EF1D64A7B7FDE06FCF2C0A3ED95521920FFEAE1BC6BF9A518B927D35
              326FD23A4F0F3009C366BA353C0517CF8C199CB73F5E018D0F162B6FE6D1377B
              60F4865FB1536FF8F4C3EBF0E433D54A9EFE8EFFE32AF8A7626FAD233F03DA9F
              DA04AE926CF08E4DC3FB47AE80771E7422E1E8DFFAE0D917EFA3AA2B56787AC0
              921F62A0CF38EC6CAA2F8047765581BB3407AA6A9DB0B3A3CED0C6651CE3D502
              02F4DCA91135AB4CB61D3F6982A62DC5505AEE8086FBDDD0F1D366906DB147BA
              8C644F7853D60BB47B355362776BE665918D40D4872A2CCED667A16CA303B273
              D2202B7B4E6667C3100947149F7E9C336683733A156CA8CA83E2B25C52352974
              67C3BDF71568799AECAFF51849D78C2B4449EA10B40E870CFD73F7768F41107B
              002D21A95C9625D8F3EB87495D2034F9EA0BCBE32658D5565AB10E2EE19BAFE6
              6F0CF8A0F9A11235BBE2AE49ED0155750560B7C716EA345EFFFE57A7E1FAB589
              3B0243FB05BD534E823D438EC3B897F0E13E435F6FA5E9492580D6E9DBDACB0D
              18D0C44C24BC81AB967E93E182366BFA8A99598B77DEAC1C6379C01FD6575B71
              BAF16E93707BDFF84E25F87023F5F9C7370CADF59EFB0A4868427DECE97BA0E2
              9E7C833D1A316401621DC9609070183314ACF04C527B006121E159C1CE8E5A78
              EA8775E0746551914168ACFFC3DE2E8827C8E0B48A3249EF012A763431D212F2
              C2E951E83C36003707275513D0EAE5ED433D505AE18092AFCDAD749037CDAE28
              51E57FC19F84C71CFA4229E9AF98BEF53BEB29BD3DEA0D0D9BDDF0E2CF1F8467
              7ED400FAF19B969F9D4707B42748C773222D83CA8C3F84FF0B937FCA589E68AE
              585833352549ED0117BE1855DE6EF551EBF0E08D364EF476D7E346CA96668343
              FBBB55335CEBF1683AED0FB40C2AFA1D3166B514BF5ACACA4DD36C2B51492A01
              47DFEC05DFED8086C3CBBFDC6A98072A6B8C13AF7F3204A1505459BA966C301E
              45DD1C9AD2E2E895C1ABE3FA2C94C46DD60CC6159049EA105450649C7407AF4E
              182008C40D2BB431534F1636DE9BAF10A156B872C16338CAA672DF7800AE5C8C
              F51A2A8B2795CA569224B50734E2B98DFE18FABDB7AE400E0E1115D5F9100E45
              E05F87FB0CD89494E782BAACA421A8FE01B7725C4D4E34471C7CFD0C3C814B56
              177E3BF08ECD00F5B030F618B2935437141A7A1895E965DC1380F3A76FE98B34
              9D76EDF1C7D99AD14225A904346F298193FF1E8291A1B9150F0D477F4210133D
              CFFDDB4A0D263AF9EC3DEB8169FFDC89281D57BFB1FFACC147CDD8D364F8D6AE
              4A35BBE8950E07491633D63416C2732F352D66B2B48C67089A436D09CDA7A5CB
              F0037CA8A2F5D9778C421F631ED8B6DEE0E7C8CBC0FA8D90916017AC77DEF57C
              2DAC8F9B37F4F6E5D42500E3D86AD2180F01C74DE2309BF20A32946567DB1315
              8B7E362C7467C1B79FAB81EFE3B29496A9F181695878E9175BA0E9A162A04F98
              F17635FFE90783F8E166AEA7A865C9BAE256E4186B5B48169B6BF72763B5D148
              F813F476A25892A2912878F0438A6F3CA89CEF3B0B33172525516334DE7B46FD
              40F567F053E7BB7FE9513EECA8FE0545D9F0FCCBCD4071D5B2245C3D7238D4D2
              D85636C8D216330114ECFC89E1F210D8F6A1DE8E625C176241AA13CD093431D3
              55BD9747BFBB095AE30E00559B955704720237E7EF21F8AFB0824FED633DBA2C
              5DBA3E1ED92D45E1374B8FB4B408D3B8133E74A05B39E2DE89F340CBD665F816
              108DFEAC797BC96B4BBBD3B9DA961170EAD47076DA8CAD1F008A50529AE8CBDB
              97F8F9B3BAD165F97D2060371CB3FEAACA6F56CE58119C6712366D6FF3E6523F
              48514BDE0AD386188CB44A5A0EF095A6A3D26B56814FF12C2380824991CCFD78
              1D4559ADE9A63FCD76C0CA87C31EC51E4E3709EFC05AD6F76F0C7A17A73104B3
              D3264B7B1A5ADDC62DBDC943611D13ABCE340F7E17163951444A8C80175742CD
              AC2B21E621687EF9B986C1C7456662D0F5166744B6EFD51798E9CC0460105AFB
              E365AD26E6C182BE573363C5438063AD42FF7F3C771E6B1D1E0258630A3F0E04
              04011C602D87AB20603950E5882908E0006B395C0501CB812A47CCD411C0BCAC
              E6789ABBD0357504702CABEF425C996F39750430DFE2EA761404A4985F418020
              20C508A4B879D1030401294620C5CD8B1E2008483102296E9EA7074CA6F85EEF
              9AE6718F39C17AB33C041C670DBAD6FDA25138C68A013301926C7B15837A5144
              3247C0234742BBCD5D625666029A5A5D97EC106EC1AA47507C2822E910981F76
              0ECBE1504B635BD9A0CE24548180404020201010080804040202018180404020
              6040E07F8F2A9E1072D527DE0000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-php'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
              54000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA86400000DAE49444154785EED9C0B
              7054D519C7BF4D42DE214F424810792A8A0A16450BF22896822888B5542CEDA8
              75AC9DE9A4ED385AECB463B59DB1B58CF681A2ED4C67AAA5B64A05F15144232D
              D022A2808880BC9F0292377993C7F6FFBF7B1276B3E7ECEEDD249B40CF6FE6CF
              EE5D763777CF77CFF73A67572C168BC562B1582C168BC562B1582C168BC562B1
              582C168BC562B1582C16CBF98E47DDF6599E58B296E7180F2542295092BA9FA0
              1407B57F0E2FD406B5289D859AA04675BF6551F1743EA7CFD2A70C82C1CFC0CD
              25D048682874313408CA8732A134A8DD28140D4263F91BA4156A37060DD100D5
              41D5502974023A0A1D82F643FB60A433B8ED13C4DC204F2C7917FF7A38A81CEC
              CBA0F1D058A52288577C2CE18CFA0CFA18DA0E6D8176414760DF8645C537E26E
              ECE87183E0AAE74D3F88833D0DFA1274AD3A4E87626D80707096D54034D207D0
              BF958E43CD984DB8E9397ACC2030046701AFFEAF40B7406320FAFEF311BABF9D
              D09BD01A680B0C4357D8ED74AB4160040E3863C01DD03C88B12019BA906092C0
              D8B3127A09DA0BE3D060DD42B7180486A0EB9903DD0D4D812E34239860D2B01E
              7A1E7A0D86A9E5835D216A83A8D89007DD057D07E26CE8F17870F4D02ED9B767
              AB3A3A47BF7E893261E2CD929CC2442CE63031E0ACF923F402541A6DAC89CA20
              6A46DC0F7D0F1AC6C762C5FA775F964F77BEAF8ECE919935406E5BF043494CEC
              F5C9C974FA19E80FD1CC185706812198FBDF06FD1CE28CE8D618140EAFD72B2B
              5FFAAD949D66C213C890A197C9CC39F78AC713D35332C14C8D33E667B8B3E2E1
              E2E98C3B1111D1D92BF734027A0ABA09621A1B73EAEB6BE495179F9406DC7666
              DCF8E93261D2CDEAA8CFD00CAD861E800E44E2C6C2FAFC277EBF96D5F07DD026
              682ED42BC62067AACBE46C933EDBCCCB1FACEEF52938561C33FAD8FBD4588624
              A4413033B230879EC6DDA5100378AF5259FEB9B4B6B22B124CEE804275AF4F92
              0B2DE558624CB37D0FE9311A042FE425F71AC4E01DD6B2B140173B48BFC424E9
              9FC9CFDCA7E118722C5F5563AB451B43F08251B861D173B5F340849C3A71484A
              4F1F534791111FDF4FD2D333252B67A0A4A6F5978404BD47F47ADB64D5F2A7E5
              F4A923EA9173A4A665CAD8F1ECCA74C6837438091958AE938525A7A44B5C5CF0
              3578ECC81EA9AAFC5C1D45464242A2A467644B56763EFE7E063E87AB6B761B74
              0762CA3EDFE139820C02630CC1CDEBD055CE032E2859FD1739B8EF2375E40E7E
              A09CBC41326AF43572E9E5D73A03E94F73F35959F6A7C7A4F92C6B31F72426A5
              48E1E01172C5D8C9B86582E8A3ADAD55DE5CF99C9CFCECA07AC41D344C5E7E91
              8C1E73BD8C183556E20D1794063633E7C028EC3C77C0D6750730460E6E96436C
              FEB982BE7DEBFB6F4B63233BDDEEE10CA8AF3B23C78FEE91E347F64A41E13049
              C115DD4E65C529D9B97D833A720FCFAFAAF2B41CD8BB1DB3C423F905439D14B9
              B1B15E3EFA702D0C1D71661A000D5A5B5325470EED9453270F4BD1904B22AD85
              0642D7CC987DD7AA92D5CF77642A1DF317C6A0711E876E701E700907B3A1A1CB
              9D03A7D6A0DB2B59FD42C0FB9597B2F9DA755A5B9B650B2E9CCF8EED758EEBEB
              6AB469B45B78DE278EEF977FADF9AB9C8D7C164F861EC7D877D8C1B9830778F3
              75E81EDE8986EAAA5237271296CAF253B26D73893A1218491FD0A381B365E7C7
              FF75EED3D06D6DEC7C740F278E1F90DD3BDE534711C131BF43D9A063866441AC
              BEA36E8F57949D14AFE683D12D0C1E7269905837748E139D39746087346296F0
              EAAB28E3425F30746BBAF7A7CB4B4C32BB8EEACA52C7DD98661ECFADE8A24B02
              DE93EE2837AFD09878B4B367D707CE7B4708C79C634F1BF8823AACF3106E7ECD
              FBD1B2F6AD65B27F2F93874032FAE7C89D77FF441D054237B775F33BB27BE726
              AD319911CD9EF75DC9CE1D282BFEF694D4D57215361006E98953D9E90FA6BCF4
              84BCBEE2191493C1339759DDD7BEF1A0BCB1E2596487C1019D817FF6BCFBB559
              D999EA72F970D35BB25FD3E4240CECB7DFF9809381B9E04708F08BE3608CFE38
              88DA55114EF9F2F293EA28906C7C70134C73BF3879AE14169DCB7AFCE1FBD6D5
              564A1D826663833E59608663223D234B9212B94E160CEB16BAAEEAAAD3EA9140
              9826EB8C41F8DA1BA6DD8E6254FFB7DB5A7D81DE25F7D016FC8B1321D61D51C3
              54F44C55993A0A243BA740DDD3C3ABA9F022F39F6F6E6E960AC4135D854E7798
              37C0DC32696A6A900643D697935BA05A31FAB8C759190ABAC38183B80F438757
              5A5BD8C672050761220D3213EA52256E1A3012EE839136C36B09FDB5A9424F4A
              4A958C4C66EA7A9868B4A07ED1919D3BC8491CF4868EC30C09EF6ECCE7EDC185
              E67A48F9829934C875CE6117283304C6B8B87867EA87A3E64CB9BA170867404A
              6ABAF1FD19071250E99B283724027CDF6CF877D3FB723033C3B46218F36A6B2A
              D551207475FE35940BAEA341BAE4AE4899A15DC2699D96CEED54665A30B5197C
              7530D3494BCFC20CD4C72736143D063F4FCA4FEB079C332B2535C368B02454F5
              A961CE9B297E6585BEDDC2F3CE88AEB7368A9F2664F7311C4CEF38F5752425A7
              391F3C141CEC2AB8161DCCD078259ADA257986A04A58F957A0BAD7C18B84B3C4
              14F7F877C3A5B69F9F3AE264893A18ECA35CB9CCA641BA5415B1D2ADD5A4A324
              33332F64D38DC6DC8AE2CF1400878DBCCA3118EB90CE3019C8411C30D1505F8B
              0C4D9FE9F4CFCA93A6C6066D1A4DC225226CB36CFBA0447B5E64E4A5AE7AB2FE
              B4D1207A071E21B53515C866EAD551205939E6C0C860BB65D3DB72EC30370906
              43B7316AF4F8906E8557B2896A5CFD2DC8D0743015676FCC54BC854AD5E9AA36
              AE7F55DB75264C89870CBD5C1DB9A68C06F9D4773F3AE8FF75451D617BBAA9B1
              BE43BC6A5919EFDAF11E0AB6A5B2ED43FD55467772C5B8294EFC3055D23446A8
              1D2674A3E6012F08D98AA14BF33F6F7A013EFFE3ADEB64D5CB4B50896F36CC0E
              8F8CBBE646271189923D1E14236C28FED877EC9E75252F3927A8832D6F7F97C5
              0FD1D2DCE404F2500C2A1C2E33E7DEEB14862BFFFE1B646115EA7FCE31E6AA1B
              64D234EEB7D0B361ED3F64F727C13D259ECFADF38B65F3C67F3A9D651D49C9A9
              4E86D80EE311DBFFE16A8B8B878F9119B3EF0A78AD4B7EC919C2AD9151EFBC33
              D50884EBDFECA4B68B7DA970C6C846C13675C6022728F23575757A3F1FAA4267
              A54C97A483C19A89065BF1267CB3D9FFBCEBC21A83BDB329D3E777C518B4C19A
              38AF78B9A1F813E7219734E36A3765486EA19B2A281A2EB3E6DCDBB11CCB80CE
              C1ED0C9F1B2AC3E2793186E8A01BF4B9A2E8D66D3AC32272C8B0CB65C6CD7787
              CD28C3B003DA1CF770F18D8CC8CF3A0FB9849B0E4255D991C2D930FEBA9932EB
              966F0704EA32431DC1A5D834C427139C55A6DE1703B653C187B9E2238106B87E
              F25CF9F24DDF8AB610F4E7B945C5D31BE8B2C88B10BF17E18AB2D2E3C6D48FBE
              5AA7B8F878276565E0CB2FB8D8D9FE39FF9B0FC91726CC70628E3F959821BAF7
              60504E4C34B7EE79A1B05AD6BD3627AFD0A9D04DC984EE3514CF9BEE2E154618
              543442264E9927F3173E28578E9B8CC7BBBCA99F634F1B74B4DF7933037A154A
              E541246C58BB1C8193DBB502E98FFA63FAAC85CE74EE0C03647C5C02AE725FB5
              1CCAE7B212D65DC94C7943ED32A1DF37D546DC50B1AEE46539AA49B779814C9A
              F655751408CF9B6D1A66769C0DA13A042EA187E2FAC13BDC48D7B1C94119E551
              E81148BB1BC51F36E55E7F65A9361F1F3E6A9C338DFB222D2D6765F9B2C5DACC
              EDCAABA73ACB013184D3948B538FD218A4C3CCEA81C5D00A48EF87FC606BDBD4
              5CCBCD3357D0BD8DAF82D7CF1EAE06C6108E31C77A71BB3148C0BCC37F301272
              DBA86F8137045C34A26BD0116A8DA2B7E152B3AE60A4EBE41A490CE118DFA7C6
              BC8320478827F0B25F08BD0519670A5B1ABAC0C8801DAA65D2DB3011D1C1B810
              AE33DD4D70D038B60BD55807A08D4C7822FBCA0B20EE5ED4F6454CAD87B4B44C
              494EEE952FCD448429954EE3722F2AF41E8663C9315DA0C6380863AA8017D0D1
              72AD9D3B143A25F55E29375C695CD84FE817F1EEBD98C2806E5AC3A0BBEA4295
              1D091CC39F42F7A8B1D512369B42F6C5E77099F77710BFD0E9B8AA83FBB63B15
              7167B88A57605C6BEE5DD8613E7CF0136D2A3D207FB071D34237C05D793F80D6
              C0182113A6B00621BF424A8C27B2347E0CE2ACE97259FA7F02B75EFE197A0456
              A87C38822FEC44649076305BE8E2B84BE51710B741F6E81C3F8F611AF71F882E
              6A236645C48B80AE0CD20E0C4343DC0AF1AB5A345054EF73014277C49EFF93D0
              2A1842BF201382A8075255F64C4BF84B0DC5D02428F4DED00B1706D38DD01288
              CB19F530066EDCD32D57B69A31DC4EC41F0E60EF21FC66AC0B03A66CAB207E37
              7D533433A233DDEA6A548CE146AC5910EB98091093810BC5A5D125B198E31229
              EB097EC3963F12D0A58D22FEF4D840C1387C6FFEA8007F6A833FBB4197C612FE
              7C330E8DC0553806E937A075D021182164FA1A2D31191C357358BE737FCC5488
              19DA688806EA6B7187F180EBBB5C70E757B6F8D34C1FC12CB58BBEDF7D33C144
              AF5CADA86B3CF8C35C1AE40CBA12E2F719F90366FC4133C69F589D17AF72C681
              DD10BFF3D7AEC350794FCD8250F429F7A132377E7185BF1A4163F157E7D81367
              3F9F06643CE24CE3B6402ED3714B0B138AF61610AF600656AE2B73D300B73CB2
              65C11D73DC7FC63DA9DCE8C5451CFE26C9018C785524055BACE8530631A10CC5
              41E7E0B3514663F096C7F1E2F5FA3E87C7C32B9A06A1D81FA15178CBE3B66853
              518BC562B1582C168BC562B1582C168BC562B1582C168BC562B1582C168BC562
              891891FF012639FDF74190BB900000000049454E44AE426082}
          end>
      end
      item
        Name = 'server-interbase'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
              54000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000DD600000DD601906F799C0000109D49444154785EED9D09
              7854D515C7CF9B3590442081BA1412512C286E15030A6E88A245A4802B0A5590
              165BB4B58055D12A285AEA527129B456EB5A2BA268DD455410B59AD852506471
              814450541296ECB3BDFEFFF7BD192693992493D9DE407EDF77BE77DF633E32F3
              FEEFDE73EEB9CB930EAC85661E2DCBB6A201A269B62E28F685F58115C30E80F5
              80F17A679813A6C3BCB03AD80ED8F7B0AF619B609FC336B86AEDD5F9DB3E40D1
              BA584E90AAE2121BEEECA1289E021B0C1B083B10E6802502C5FA12560A7B0FB6
              0C4A6F28DC544A212D832504A92C1E88275CA700E7C046C07AF17A8AA110AC3D
              2FC116C356149697F971CC281915A4B2B8A41F0E3F875D04DB8FD732C857B027
              600F41982FD4950C907641B6159768F8A367A0381D360C66B56633007B157617
              2AD1B2C2F28FD2DAA4A5ED6654151DABE99A3612C59B6003D445EB435F334B17
              EDCDEEE5E9F1356911044D131DF39DB013D585EC63096C069AB28F8DD3D49152
              412044010E7F805D06B3F35A16C328ED7ED84D10A65A5D4901291184751BE1EB
              281C16C0D867D89360643619A2BC699C2697A40B825A918BC3DDB0C9B0B4F9A8
              3443C73F0FBF6E66E1A6B246E3527248EA0D83183FC2E119D811EAC29ECF87B0
              F3505B183227059B794C1888311C07E625F61631C82058297EFB10E3347112AE
              217A9F3E52E5EDC6E6693E8C39A5BD917AD8A5A8294F1BA7ED272141AA7A0D14
              DDA65F832223A93DD55FB415A65DA6169497FD35911BD1EE26ABAA6800C5B811
              C5B9B0BD5D0CC2B07E01A2CB2B13E941B64B10BD7F7FD135DBB528CE36AE7460
              C207F31E88F20BE3347EDA2548554D67FA8CDB8CB30E22A028F3E1E899B98E9B
              B89B1A339A62CA7A6F75E06D850365C3E0E8E31A118B4B10B39FC13FD04D5DE8
              A03538623910A26C314E5BA7CD4D16C4600F9C9DBE0E31DA0ED3460B2B8B4ADA
              DC9AB44910336A603A646FEAF4258B2168876E36CBADD2A6260BB58389C2E761
              71FB9C0E14ECA30C45D3B5C2388D4DAB3718623085CE71803D2D6B9B6E3E831D
              0D51E8EC63D296268BBDF00E3112E710D80D4631362DD610D40E8EF4BD0FCBF6
              C125ABC054FD51A825EB8DD3E6C414A4B2E8584D346D398AD93AEC9A5634B74B
              1C834BC475E62912A8F85AEAFFFCB0F92FCD785ED3FD630A2AFE6B9E3625B620
              C52567E3F08271D64154EC76710EFAB1B8460D17D7194345EBD645025BBE915D
              A32749E0FB4AF343CD60D07A026A095B9E6644150462F07A192C5B6687A4157B
              DF83C53D768412C2B6FFBEE65511EFDBEF49ED75B749602B67B1B6C8123DA09F
              D1FDAB8FCCD3DDC412E44C1C3837A90313AD5B57718F3E535CE78C1047FFBEB8
              60DE3A8F573C6FBC230D8F2C145FD9FF8C6BADC35A3208B5840F7D136209F206
              0EA719677B310E87384F1A24EEF3CE16D76970A54EA3C3ADD73788EFA355E2FB
              CF6A6978F829D177B66B12CA5310649C590ED14C1088C189CE6B6051C5DA1BB0
              17F714D7F9A3C47DEE5962DB9793EC45F984C0A6AFA0061E6E0865EFD7471A1F
              5B2475733933A85D705A513144F9C638358826C85D384C33CEA280A7C4D6A300
              51855BF4DA3A09546E473F34E37394134673B9C479FA49E21E375A9C838F450F
              CD26FE2FCBE1A4B72A016CFBF5107BEF22F3D368A9FEF59AD45C7D8B6AB21260
              2604613F2F441341AA8A4B9CD0BF02C5D6273EE30BDB1055D80EC04773DCA2C1
              187504BEDB26FE0D5F8AF87CE607AD8DADE7FEE2BE682C9AA59178D00A214285
              043696E3CE6862EFD35B6C453F343F69E0FF7483D4CFFB9BF21BAAB624C63A4D
              D70E2BA8D83D4DB58920A81DA7E3C06993ED033FC276C0BECAE969B99D458728
              DE77CB44DFCEF5331602DFD379FC00714FBC405CA79E207A4D2DFCC1C7A2A3A6
              DB0F2A16FBC15C13B41BB602DE25CBA471F12BF01DAB9321443803504B429D92
              4841FE82C314E32C71B4BC5CC4E7A72034FC81F8D77D219EE508BDBD19AC390E
              BBB8460E974E53C6ABD0D5B7EA53F5B068FBE48BE3982354AD570402E25FFF85
              04AA76A8669902D0AFD4A289F27DBCD6F84CF2B8158284522A2141B6150FB469
              A2739A644A16CB380EEFA7DA6869F448E30BAF4B6073135F965A70A35D670D93
              4ED3A6A866D6F7C97AE5F71C471EA63A730C4203DF6C35BE13C3597CDE7E486F
              255410EF8A0FA5FA92DF28B192CC2A87DF717497CDFF56272141503BFAE3F089
              71963A6CDD0BD0668F510ED2F3DADBE241672A41C7D8228E23FA49E75933C47E
              785F09C03FA808A9CF8168A6EAC4BF7683E8A8B11A7C9FADE77EB0E6395486B8
              8D8F3F23F57FFAABE80D499D351A841151AF60B4152EC8541CDA1DC3C50B9FBE
              9C5F8C17377ABB9E37DF15CF8B4BD08420DAF627E709D43AE548A7E9974B0EFC
              04830D12F8EA6BD4846F45472D6573AA3A78AEE68379FAF69DE2453FC3BBEC7D
              F1BCFA96E868BA52CC851064210BE1823C8943B38E4AAAB1F53A4072E75C2BCE
              938FC30FDF2EBEB59FE3C66D51E987C0D6EF10FB6F4613B34E39DEB6E238E250
              C99D777353E78C268A4F3B850847DF55AD9AB0C0668855BE453C4B968BFF0BB4
              DCC96F9A5AE23E08F26B169420DF1F38506CBACE01142E3B4E3F68B7595B3A5F
              834A1A74ACE1305A7BEF236978E0711C9B651B9AE09E70AEE4FEFE2A3CF92EF3
              4A185EAFF810B6EAEC3BD157E0E76B799DE12F0E12ADEB3EEA237537DE2E0D8F
              71EA405AF900821CCF821204B583EBBDB7C1125D7A9C104C51E4DE8E8003374B
              6F68907AF48219666AE894B9CE3A4DDC679F2E0D4F2C96BAD95CFE17117AC237
              E4CE9E2EEE8B634F87F2AFFF5C6C3FE8AEF252D1F0BE5B2AD59742CCF4F7A1AA
              355D0A0B2ACABCC1C791D37B322A06695CF4A2785E36D6C1342E7C411A1E79DA
              E8D7F4ED23B5D367CBAE0B2E47D87A1AFCC285EA33219C0EC9BBEFD616C52076
              FC3FB1C4F095AE949A5F5E9BA90E6DBEAE494F1682827078D112343EFBB23A06
              DBFA4EBF992C9D665C8E27BB5025F36A264F971CF42382893ED6A6BC3B6E14D7
              4F861AE77142DF547FF703523DFE4AD1AB6BCCAB1941691014A469D73483F8D7
              D295A1F942F4E518F863A999364BAA274D0B8D31F8FEB746F5091CFD0E56E739
              932F12D7688E16C407532075B3EE921D434649FD3D0F8AEEF198FF9231940641
              412C338941DFB1D368365003F21FBF57DC637E62E4C6C260FF45EB5EA8F24C0C
              6DC3E18DADFFF323B2E3B891B273289AB0B06849AFAB97C6279F939D674D909D
              23C6AB318C76A6CE5381D220284877F39879E8AC0386C3664639E7F29F4997B7
              1719371E8E9BA870B862B3E45C7A8191D434F1976F965D632E93FA3BE6C361D8
              246FC11F55D416D856856B0B64C7E051523BF30FE25F13738E4126511A040589
              EEE92C0253E39DAE9C04C73D47DD68FFFA2FD1572837D2E426BE0F57428C49EA
              663B8EEE2FFB3CF77795C9ADBF7381EC3C79AC9A74A06A9F7561A41B12845B1C
              5903F60F541F210C556B0270DCA78AFBC2D1AA3FA170183DF0C6675E925D13E0
              94D1A3769E749CE4FF63BEF8CA56C9CE61E74BFDFD10820942EBA334080AD2E6
              C9C06921420F52FBBB39E814961A829834CC7F546AA6CE54595881EF608DC943
              0FBDF686B9B87E9D04BE6D75B28195501A040589E8656598C86F831AE31A71AA
              D44C9C865E769579113563F12BE8B72C5535C856DC533ACFB94665643DCF65EF
              FC8CA020A94BB7C689EEF3470D419D271E275A7EAED4CE883291DCA6A1977EB5
              D45C79432AC62BD285D2202888751A5984BC514351F4C61D2547AB882912A655
              3CAF2CB56AF4D456940641412C35C6EA47481B8DC8F1ED20CE41C748E322AEB2
              CB6A940641412CE5FDFC1FAF334B114499DDC299833ED68CC86463F6A134080A
              C2B57096C1FBD6BB66A9299C111289E3C8435596760F40691014A4DC3C5A026F
              E94AF16F8A68B65003FCEB8C3C57385A7E9E04BEFED63CCB6A389F212448F35F
              9A49FC016978880398BB615636DA8C728E02A679742F55706F614310B4BE1B70
              B04CE84B3C0B5F10FFC6DDBB1EA9DE3642E2489832676A25CBA143574BA79520
              EE0627E3CC8C6D8D1A0DF645EA6EBA0305D35973FC2332A502D8EFB0F73DC83C
              CB5A3E292C2F5323634A90FC6FD5DA919607AB3380F79D0FA4E1B145AA6CEBD6
              550DBF46A2FA2C3939E659D612BAF7411F42B825AAE5A8BFED5E9528646FDC39
              FC64F3EA6E9C434AE0D4B78626296429A17B1F2EC83298E58279CEA1AA9E72B5
              9ADA9973D9B866F3A8F4C646719F3F2AAA7FC912D854AD308A6182E89A8D8E7D
              A371662D9856AFBE78AA081C7BA72B269A570D38A49B33E15CC99932412DBCCC
              42561694977D6796770BD27DD387AC1DC60C030BC21CD6AEF3A7A82502BCF921
              07CF25652F2F5503585DDE794ECDEDB21FCC9729640D2F85872A4DC296CAE212
              36D26CBAAC0BBEB1FBC231E238E670A9BFF32F6ACC834B08BABCB1508D262A10
              997997FF5BEA6E9967CC42B42EAC044722C20ACDA98E1064A01D9F61B3958ED7
              45248456D055DC178C121D9D45CF4B4BA5F34DD3C43D6E8CF9AFF8154CE1A3F6
              544FBCCA080AACC96A9FCD76D4BE1BB9DBAC41B85397C2F2527A46BEB2C1F2D0
              AF342C784C8961EB5D2475772C30969F99F856944AF5B85FA9DA63611E0D1783
              34A92104CD167B594CA534112B1B60A231FFC9F9A149769CA45D7DD15435A1DA
              8234C0B80C8153784334BBE9F8002741BD629C6517BED56B118D5DA1A609112E
              12CABBE766FCCA66CF9D15E0B2E826629058B580AF96C84AB8C68493E0B8AE83
              38870E413FE5A7AA6C21980DFD93516C4A2C41DE81451F94C802E85F38719ADB
              5CD0B9736E70E4BA900CF362C0A6477D174954415095188ECD8259AEE71E0F8D
              FF7C5E6A7E3E438D9970FDB94560E034BBC7C6E6FB9C90D88E5BD359E75F374E
              B217EFF20FA4EEFAB9E2BE782C7E6DEC9F9B4616DA75F74AB3DC8C98DFB07093
              7A19D6D5304B8D93B407CE6CF47FFA995A759B61B82E6F66D78AD8DEA0C547C6
              EC41DE679C65377573EF5399E10CC335E92D0E97B7A50EF3AD6A4DD703642181
              8A2D51E774A591D508BEB98F4C8BB42A0814E5B222EEF59EF503D7BED59F9AA5
              B4C3A998130BCACB5A5D15D4262F0751DEC6216ADC9C4DF83FCBD8E802DFEC16
              7D93C508DA2488C9F53063FF876C25330B3A39F3FB76A3D83A71E5142A8B4BB8
              5294B3D2F657173A680D4E1CE1567E3177C48C249E1AC2A68BB3D7B8F6382B56
              C064184EED191D8F18242E4108FE009BAD9FC13252FFB304EE52C3D7E9C5BD99
              4FDC8210FCA16771F8252CAB532B29820FEA78DCA3A5C6697CB44B10823FF820
              0E57C0F688799C4982625C827BD3EECD52121E2880A3E78B87B9135DC6B7E6C8
              306CA6583312DAB9262923371085A9540EFD5A2AC79D46E8C0CF851809BFB038
              69436910856F52580C8BBECC69CF85A12DA3A9A4ECC6D76E1F1209BE10FB27CC
              DE71706B6F819D3EF63392B63562D20421F862DC4572188A7360593BB7B30D30
              27758DAEEB23F19BE3EA67B446D29AAC48D0840DC6E121583F7561CF813BEE4F
              82103107991221A935241C7C61AE713806760B8C535EB21D66BDF9BA59365129
              1183A4AC868483DAC2BD1CB9C7F95858CA1E8214C1A697EBEBAE8710497B917D
              2CD22208D9D6FB58D1021A5F08CF012FEE3896B6BFDD4ED8E1E5AB026F2E706E
              5FA57DAE9600A69CB4DF94EDBD0648C0666353F65BD879B0DD1B5E5903BEAC9E
              35E2EE8004D6F428FF8FBA982E32FA94A229E3FB8298A8A47167ED4C7D1FE6E4
              E8AC1F853D8EA6296363BD9668362A8BD07DD1E44814E96346C28E82A53A15C3
              D9347CFCB927C7E282BCBAB5DA1ABEC726B358AE1DD7D18A55156F62CD3901C6
              D0991980C36189EE7AC7A79EB305B9C0926BFA56A02624B50F910C2C274834D0
              B471EB38A664B81529D717B0CC7711715B3CEEC4165C78C80E1B07CF985BE2DE
              21DCE09ED36E36E0A76E35975B74D0415B11F93FEDD2997558D6CC7C00000000
              49454E44AE426082}
          end>
      end
      item
        Name = 'server-firebird'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
              54000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA86400001BFF49444154785EED5D07
              7C1445DB9FD97235BD9142124A08096008A10602848E5445942A2845407C05C1
              82A828EAEBAB48B1BCA27C82D850414069D2A4482886DE6B42124A202424A45F
              D9DDF99ED9BBC3CB650381DC8500EFFFF7FBDFEDCC3CBB33B3CFF4B618D56CE8
              1806356DD7966FDAA2391F1514C8D4F3F06482D42AE4C7715877E1A288DF78AB
              680AC8FD48859F7C4233B46F1FF527924488C1804A8A8B494ECE75E94A5ABA98
              B67397F9F4A54BE251103B0C2CA6F23511354D21BCB737133F7CB0A667D3A65C
              E7B0DA6C33F85705F83356678472F32474E6AC8852CF8B68E72E135AB0B0F44D
              B0FE37756BDC887B7DF433DA0FA21AB2A8513487424359C45863284A08A5A408
              68FF41C17CEE9C7078FB0EF3B6BF924C1BC06917D0240BD500D4048530B54398
              0E639FD50E8B8DE1FB436EF0F7F5B128C0642268EF010125C18BDFBBCF2C1E3D
              2E9C4DCF108F4A123A01CEA9C0B3C0034002A4A0F169018CA6841C15DBBC191F
              D73C8E0B486CAF42F1AD79A4565BA24CE08ED36704B4798B2977CB76D3EAB5EB
              8D3FC173B78293280B3C6CC018F98D18AA99B6F43BCFD49C0C3F420A036466C3
              F5A2F91EE4B13E6AC1DB0BEF01D1F7805D811EF4BEBB00D54003E0181F1F66E9
              9303D4B9DF2EF0207997FC6FFA49792CD987BCF3BA3EA3417DF62D900DA4373E
              1450AB709DB75ED5CFDFB9D1BB44BA012F233F80987202C88A1F3D49DF47D502
              A4605A8C8C02FAC937381F2A60377737BC70E8539ABC0D2BBD889867090765F1
              157FB2F0737743423CBF10E422E53B1E44A85438E49DD7F40B8E24F998087D01
              C0EBA97EE4FD37F504EA8A3410791D18240B571FB4C0A79B36E1767F3ECB9D14
              5D865C630D9B0089E4A7AF3D848436FC77205357967E40A09B385A3B73DF666F
              68F3406481D7CFF991699374C4CB13D3F2FF2920274BDE5BB4090F657F9FF58E
              9B587C1114630DABE96A00F9BFB9EE868611EC2C90B9DB62B366A05302DF67D5
              F79E19E25588E0357F6284727BF64C37E2E7C39C04E7C78135A151E188D8C8FA
              EC1F8B3FF3209670836220ECB967FDC82B13759950A4D204747F816590EFBFA7
              E97FBA76DC97102893299356799147A2B93C70FE179097056B36BA7569AF3A79
              788BF7CD3850EE5AE345DAB6E07F07F7FBA3E26FDF8AEFB2F917CF4B8496C7C0
              D2F37E64F2582D6159B4129CEFB7D68B4AAFC333DE7B556F306558E2435992E2
              475E7D5E970509AFAF55AE46827961A47646C61E1F915C8080034F6FF721CD1A
              7305E036C22272DF22A64B82EA58DA6E1F395E36AE5AE4298587C8754B4DA803
              FF01F4293C66BFE1B6D600E52C4987C002572FF224DE9EF838383F284D476D68
              30B368C3F79E37E348790E125DBBE63CED50FA5AC4EE31A0820EFFF5BFEE4709
              346109144FF4FF93B7F484E3D01A7076B7483D38D06AF0F8FFCE7433DD8C2F30
              FF882F79B297FA0C38DFDBC4D728826DB4F507CF8B049AB1364E9FA0A3C3185F
              016B56367622A044E8F6D60BBA02899608D6789B4EF99109433559E01C6791AA
              66C44673717B967A65933310202B5F19ADA5CAF81858139BB3CE46CB97476BAF
              4BA7FF893FBD86777003DCDA5A44AA094D1B724DF72EF3CA2127212056BEF382
              9C33E65A241E1AC44D1FA7BB6EFF1E24E0ABA3B5F9E0D6DA22E262D4ABCD46EE
              FCC1F31A390E01B0F26BE8EC4136A6430C0F43CE7044FCDC57F5C5F6EF433AE6
              47260ED1E482DB2316111741AFC5811BBEF448215089D9B8FD1B0FA256E16DE0
              4C07ED1E4AA878D47FE53C77D1FEBD980FFA92413DD417C139D422E57CA817CF
              74DB430E8187565EDEE44D82FD990C70F3B7883CBC080E60A69F5CE175F3DD50
              16EEF22109CDB883E0ACB348391133C66A1789FBC0A30316D2EBAEAD793AD316
              6F9178E8C12436E7D795D2CEA3F51D51A6AFF126E181CCCF5699DBA25265FE90
              EEEA67E6BFA65FECE5FE8FF8A7BF18D0E4B9C56FC3E5BB161BE7222196EB3520
              513DC1D30D47491252971A49415E21B996992D5D38744638B7FF94705C22F26C
              E125CB1D3502FE33C6688FCD7C4E57CB6A96B1618F19F59D52305110D17CAB55
              85B8AD42C26A310DD7CC71DF1F13C1B959AD505AA688629FCE3F5C504C5A8251
              B0D83A0F5D5AF0BDBF7BDB6D4D88BF6D46DC01D09ECBBE21A17DA70474E2BC48
              15B46D75927973B1816C02D76C8BD0BD81568D076CFFD26345AB4665BB61AFCF
              2F29FDF0FB52DAF23A66B151C6ED14C27EF7967EE7889EEA3656B38CC7A61549
              AB924CD46E9FC5C6B998FBA2EED7970669065A8D95C2F57C8236ED350B7B4F0A
              7FAFFCCBF4FB852CE937B03E6F71BD2DE8EC648EE5B2EAE815CFAF5D33CBBD37
              F3CFDA0C643411D47162E1A1E49302558AD9625B1E76B794C7E8DEEA17077702
              654860B072CB5E335A9D64FA164C2E51060504CACFDECFCAD0178AD3215D54DC
              BC7FE912CE2CF19CBD76967BCAEBC3B5871AD7656780442CB0A2C4E7D1B60997
              0EFF0D2DC6AAE38F3DE6977ED96C32D9874FCD61F4E9245D336891BD220B5500
              D6FA5F0E6E5A5CFB8BC9BA15A17E8C4A5ED30124F0E021EF16975CCE9106804D
              A12CE802B488E4FA748EE51B513F4FA489E8B94F7DD0375B03D1C2B5025ABD3D
              171516131419C2CA91B485CD9E1C9474E08EBBC4F181E3FA693A756BC18F8F0C
              659F75D3E0E8D44C510D750F1DE22805A2E691DC63339FD50E5DB2D94427CDF6
              533B2720F74A8E1438A29BBA154B9381355CB5FD1894934FDA269F127E021BDA
              A32F870A8BAC3913744B5E7A5233D46A94B1162AA77E6F14CE81CB972D364E05
              1D2D8DF6D0E1E0368DB9511B3E72EF412D37EF37A38D99A3518FEE8FA2D0D050
              C4B11C5ABF713DFA7EF167E8B9AE57D1D83E6A2A56695CCB93D0F62382947249
              3C0E09EB707C633EA663532E367CF08DFF82339D3C73166AFF30DD2D65585755
              9900E61610143B367FC5A56C49B148565448C3DA6CCB4DB3DC92431D2AD50E53
              0A0D3B8F09F5E132D3625335F01CAA3BE651F598D6D1DC63750399E886A12CF6
              F5C08896BD368F69E2BA784D42F0F250E675095D81FEAF89EA4E1D8436EF3882
              7E9DA1456E1A8BECDD22EDAA84EA3F9DBF002EC75B6C9C835EADF96FD6BCEFF6
              ACE34BFE6485914CF9AAA43D5CD2457A65A0A890AF5FD2AD1FDD53DDD36A94B1
              EF8C805ABF58F80D5C8EB6D854099EAF0FD67C38A8A36A4C4C3D48F22EC05F47
              05F4C56AA3181DC6B0D1612C8A0A6551BD2006B9EB709948435314BDBBA494BC
              BFC430068C347ECE44F31D73DDF727342E1B450354F0B1E30BB79DBD2C76B65A
              DD443985D40F62E277CC76DF1D645D3D68C3E8792568F1266373B8A43DCFBB46
              881F53FFB3F1BA0D8FB7E52394938373700CEA9E51F38AD71C3827D2A9635A5E
              37849C1711E0C984D7F2C6817A0D76370B88A4658957A05CA77337B3814E6FC2
              4F1FAC39F0FE486DB921F9CF5719D1A4AF4A12E1F22F8B8D05E55EC9FCE775CB
              C7F7523F6135CA80F63DAA3D22FF507E09A9D2583FC6C8FBF737DDF6F76DCDD7
              B35AB914B4B84B3E2DA0EFB7988E2EDA6C7C1714409543ADAB0D0D829929C7E6
              7BCE51399403254682A2C615ACBE9423F5B75AC928930D343CAE97D8847BCCBE
              B946B91A2A7350C60F54A62A78ED09CDDB7D5B82321C9EEF2A62609B480ECD9F
              A08BD9F591C7F26EB1F2546B04B0DA702E53FAEDAFA3D0ED70089B8EC7E8E944
              551F309599652CA390497DD563A2821816899088ECB86237147A082DB748DD35
              B8B60DD9118ECFAE2EB6A8C7A0756FEA13DF1BAA3904A9B54CEBD1C5483B9422
              9E500AD398AE2A866311ADBB6EC25E215C4214BC30074D1A8D086D3D2AD07A83
              0E25570521B5BD196FC7E7572769B7E58D27346EBFBEACFF31C013BF0FB62EAC
              C5FEC1C154619B5278EAFA33A85B537E38986EAE53BBA9908840A67387282E44
              5E8C6FC7DDA70474A398ACA7325584E946114D1970758FD9378EC7BFBDA27F23
              D89BF91C6C5CAE9475FB859D2525CA711FD89AA7EB99E9EA7E19371532B6B37A
              80BB0AC2E6A0C5EDC7E486072D7BAB8AAB3B4E08698ECFBF578C8FE0D0CF9374
              13BD74986E7770298A8DE4D0D174F0D4210C94FD9BF348ABC274E443864D212C
              D41DFD9534B8E7AC40E73C9281550599B5CAF8F2F23D6649C91F1B0DD0FA3874
              5E442BFE36A3C55B4D08E4D179E8B829C95695ED1B7068CE70ED1B602AD3AA74
              015252AF88254A61F0D162D4218AA52B20E5612C39BBEA54382E65AEFB8140CF
              B2B957825C1638B1E0604E21A1FD0FA740C3A391EF0CD02C98DA4BAD66ADC9E1
              CC1509FDB0CB44924E8B8507D2C4E41213A1634A749DD375A0069ACB4DFBC5F1
              23E60ED384D172D7D9E83FAF2473CD4173145CBA6C7CEEF311DAE313BBA91A5B
              8D65F0F13A237AED17039DCAD82FC76E701BBE53209D7C72C84EE959120265D0
              4920A7C16046DF4D5B6A68FFE8ACE293FB532189803F33571AC40F56191393CE
              087EA08CEE20361D48174DAC052E2704BDB5EA8039AAC747C5DF4233B25C38AB
              CA37FBAA8341E92F80C965806E438692DF949DA3E44E4A27FA232BA479389BA8
              949D4E5DA677A053F4C7C9D8F7E70921AEEDBB455387CC2FB986C9CD51E70AE7
              0900A52959D2E869CB0C9B95C25A15B60C6751C786DC04305538FA5D55408326
              5BC96FCAA6B559E4EB8669AFDDA290104FDC524973A9B4EC86F28FFEB8004641
              427397269BEBFE9C6C1E05E62B16EB5B42FAED80F9BDB350C42985B72AEC1FCB
              D1D5212E5BE0566420794AFE52D2FC0199826E56951552BBAE0F534BA9E372F1
              3ABD03D1C91B57A204B818784E36DD1E472E6443B814C25B152642050F908B0D
              57A0D4480C4AFEDAD838880900B150C6478F631AD28AD24E633666E5D30B7495
              FED4144043A0767DDFF2F55D5549DF01CFBA6E611B84B8CC0CA2231B07C9A565
              0CD32D8A8BA0DD0FD9C156AE59AFF34A08ED84D0659135066FF6544FA9EB0D09
              C82E9C657897761A78A48F0EBB6C4391BB1AEB95FCB5D9C99902FAE74C841F13
              715388FEDB5D979AE4130E6ACA2907FAC989AA4FFED54135DA319C6558153B4B
              71EE12D472C30115FA0B76722243A83EE3A7C3A1E504AC1444521394E13BB819
              FFCA9AB1BAB3B3FB6926F9689C5F5C511A21A6502228CE733B03816E4C7D257F
              6D0CD063A4E1A00EF154A300A54A8612A20E17F7049A46B598011FF755AF487A
              417779C970CDACDE516C3043CFC35008A733782E0B529F2877465D01AE961EC5
              28F96B2307710BF26002181583FC953446C933D5BB803AC00DB799D155B570CD
              28EDD5BD2FEA564CEDA01AD02E9C55D3790DA5F03993AB8F09B4262D337BE72C
              A858D4AC4508EBA6E4AF3DBD75D89FE111F690CB3505EA794C15E2F22DCC3141
              4C8F0503343B0FBCA8DFF34E57F5E8DE919CA78EAE9F5108932B586A4068C1DF
              A60B605A07743AC6B4E27BD5D2DD3E3E6E3C7267388CD44ADAA2F4D662AA0C97
              9D5E50C79B6936BFBF66DB9FA3741BC6B6E0DB85B8B9A67EB81DE72599D0C51B
              848EFABAA2CEC4EDC3B9414AFE3A52CD6268EC49900314B44519445F906BF696
              6B26C5F3B3378ED4EE1BDF824FF4A315B582FFD5C174E8FC7EF497898ED7D1CE
              A9D311EE85DB76AAC3462BF9ED4828143846920828052A1605867BC80A09A33F
              CE02B4EAEA7CF7B866CF9C1EEAA90DBC31ABE46F759140653A61954128349271
              1034FA5A9C8EC9F1AAC901F4881B05FF1D2911C230A288CC8E59C7C60696B6B1
              D3160534F4651A2F1BA8D9FD740C17CB401894FCAC4E2ED867461B53C48FC0E4
              D4116D1B02DD7093DE11ECE34A7E2B51109189310BA8C831EBD8D8D897A14B77
              14C7F0EF143E5A1C36FF51F5A6C4303648C9AFEAE6E92C094DFB532EAA5CB2BF
              85627A3BD57F223CE9A211305482252664604A4D245F495B94015A8C22BC1967
              ECBBE66777562DEB14C6062BF953DD3440D53DFC77435181910C031B97747E3B
              86B17D0645737D94FCAF88370C24972932A26B4ADAB231AE16130357B414BC6B
              8C69CA4D1DD6886BADF4FC7BC197FF34A28357A58960725547D0F3B5D6FC17FE
              F47C4705FF95488059C52487C92E96321D2B177BB60F61E8EAED321B76EE1001
              A39AF06FC89D1985E75737979D34A32F0F9A698BEA7B1A245760663BD5173DEB
              B0614AFE57C4825209E519C81526ED064953D2988DDDC2E461613AAD7A5798DA
              9C9FD2A616E3A6F4ECEAE63968E24ED86C3A0CAFC065D3B543A2B871FF8AE586
              29F97F2BA6E741A8104A63922E8929D0D2022D29B381078362FD19BAE4F16EA0
              ED1EC68E557A6E75B3146A8A216B8D85900A07830D9D14733A1282D9C4B75BF3
              9F79F177DEC13D974B2FD079E67211397E3E0F0C0E1AB367EF3A6C13B8A2AB32
              EE08ED83D9C71383591FA56756375FDD614207AF4974DEDC25F546231F26664E
              826A65A407A352F2FF763C91232BE404ED689C387A4D82BE48D932CD9E432338
              3AF27BC7EB6187346087F174C058E199D5C9AD1744F4E53133DD2BBEC41232E7
              A281276EFC5547D5A696FED85BC9FFCAF0F035896AE418554849460139AE948D
              6C8CF6C2A863303B124C77B22AC3B38937D345E979D5490952DFD45DA67C88F3
              64B0713AE2FC98568B3BABB7270432B594FCAF0C690BEB50B6444FE92E94BBE2
              87B3A5DD4AD9C89EA31B42AB0155FE8CC1601D4E68E90B2D3485675527B75F12
              D1911C896E57BB06742A7A87B1031727AAB6B6F567FC94FCAE2CCFDF20E84211
              D90926CB32A055E9C2F6BC529A75C050019FACC341058FE997082A85F6814C23
              F9987585675527F7428F1C404FCB7626D4931A73731624A8963DE2C5E895FCBD
              136E834403D8417F6485149AD1D6ED97A11E71D09C3DE9C4C8F3D13CDDA8D801
              785B0469712DA5E75437F5F2BE64E721DA93895FD251B5F7E396AA29C16A8C95
              FCBC536EBA44BFDD8036032D0A01E41ECC11F7285536F67CAE014B7349A5C67E
              340C8294A3FC9CEA64BF10080887EEE854082578A970EC47CDF9A57F7455ED1A
              52878DA153AE4AFEDD290D6682B65C91E8989ABCDCCAA610B43C5D5C69A40B39
              153468231D3F99DE84EF087FFD80B704B41918A5675437C3B518CD88E19F0353
              B91DAF95409D7EB5D9490BDBA8920FF6561F7C259A7B0A9EE7945C61E36628AE
              F28C841E0322C33E3FD75EDD5195DE2784BD654B8A2AB6EB5663EAF62C89F64D
              0C16DBF298D490FB6C5E73DE991BF1EF1A1064F46DAA685C7E41FC69F355719D
              4010FDD20E5DBA6A0B3FDDE9EE0FA55B9D76FE4C74C70026AE813B9310E38523
              1FF1664003AEC3D05D26F24B8648A738E47359CAF8352992DB342F8EEF663556
              88C3D0916CF7A7F1835211D1BD158A185997FD60716B15FDE2418D428E91A0B3
              8504651B08314A48A0558C9E455C8006E33A7A8C7CE8AA41576AC00E792682C2
              571B76150928C16A55B65F71BA80984686B303DD692869B2AA8081D07C12096A
              B33D5BA2AD17C5531D7CA1CC1D11C67557BAFF5E52C760140AC558943B831B7B
              306C2377868D7063709006232D3DB842E11E5771E17911ADCE94E807648E0065
              DCAC4328F2CDE4B79F3384AB8E158F125F8FE4F8CEFE0CFD1897E261C927F2C9
              5591AE3952B8F77F24D061256841AA403724FD6A796316945108C0F46DBA389F
              0EC4295540F6E4E1B98B9AF191615AFC35D894CBE4594672F15A051B1DFF4784
              D6664AE86401A127CCC9A712D9E0A810741C847EBC20162975601C190ED9FC9B
              587E1094C1D3C0C61169E7E9AE5B85FB1E76D263AE3E3A2B5045D01388CAA09C
              4200D7BFCE10BF28BD4D13D8C6CE3E0CFAAC09FF3E543B43C0C61E99E945A4C2
              F9FA87997F5C91D09E5C89E68E72C3398A4DDC4C03391CA442E35A79628D5265
              E4C866EE18438FB8EF9F39D221B0B16DBC21095ECC80782F1CAC74CFC34ADA27
              1F7AD85C70D5287FEAA9DCBC4C457D8E9273C5040D0964BAD25689D2831DD9D6
              9361350C1EB02557A22D063A7289EA6971ABDE7E4C9C92FCC3CA45D011FCFA92
              F40E98E8819DE550612730D72C1F7737A4AB37E3A3F46025B6F362383F1E0FDC
              9227A54323E2283C23E4F910B60F56907D18791DFA1D838E08E78A44F90337B4
              002B875BF5CA85830524B593173334940EDB2A78A0C456B46DAF631EDF9E47C8
              6523D932C09F1D5F8B4E692AC83E6C7CE18C4876E54B74A24F2E4194702B8520
              81A073A9A52872901FFB88BC6A44C1132546EB30CE34914EC905E4E3166E7864
              333D53A9BAE841E61FD725342D55A0A7B9DEF20B12B75408458681EC80F4FD74
              274FECAEE45145BC2120B42247DAD540833DBA7BE12825998785D9D0AFEB7F42
              C82810E54F055638FE47715B85004AF61490E32DF47858033AFEAFE0A1127DE0
              C99F664AD72E9BD09E09B5D8DEAC82CCC340DA311F7C5A100F16113A425E6151
              6583523FA41CA0E8DA38F9BCF89FF4DBCC2ADA3398C3088AABEE1946B26E7B1E
              1D2B50967BD0F9DE0511ADCF93E85121F214EDED50991C222357407F1D2F41F1
              03BC98FAF23E37BB5450112F9A90EF8E42B2B09E1AB74A74634294641E64AECC
              95D0A40C71195C567AEABBD20A01903423597BC9441EEBE7C1F8C959CB21008E
              F4875CF255B69493654607C7F8B1DDE53DC70A720F22938B087A3255483648F2
              D14F955ED05D6E50B012A8373980D9353B980DACCCCC4DFBB3C2F9DDC5A4C3B2
              BA6CDA135E8CCBF72BD6049C3410D4354548818448E739E8B1E695C69DE4101B
              F2FE2E265BA1E3F754271DA3554A1DF684DE8FF7DA02B25183B1C763EE4CB492
              CC83C47346821E4D152F649AE529E3CBC03BC2DDE4101B5A4DF76736BE5B8BF5
              BAD5434AA0628B3A27ACBF2A9059C9F5B86DCDB455F1B266E3345546BA78E982
              99506554F6309D32B89B1C62C3E5A412B2394F4003BAEA18BDBC454D81B48C2A
              9650C4D662F219D421B1BDF44C6D25B9FB9DFBA005DA2B4348B92CC8270A55F6
              BB25E5E08CE41A35D88359B7A01653CFADECD9FD3741D771C6A4096BB245343F
              298C5BDF9CEEBA7D80B0BA484223AF88FB0A2479354E954E4FAA4A0EB121E7B8
              912C4D2A25F11DD528CC9BBE6B87D4439774F01845AE2D268BAF8B24E8493DAE
              FF200C38D2A5591F42D376E235E937C820F4C870FABDF82AC1190AA128BE28A0
              1F7F2B26FEF538DC224AE1432B712A8CFF2C252D36979271A12C7AA6990ACB0B
              E3EF57E6426B657896287E994F664035F922D83A65AFA2B314422142965DF76B
              11390D81ED96A0C21A955D04681D13ABC2014B8AC9F53D06B2B6A706F7F4A7ED
              663B99FB855B213BF4CD922E251B09ED63D0AD71D4C52970A6426440C84EEC35
              929FFE28214DEAB1B87E7DBB2545C150C740C5DEF6F75232EB801169FB6B9926
              7AEB4DF7030B20574CCD93D04B79D252F8A3F505FD4C9253E1748558919F25A1
              1F7F2E21E7CF0B24A1198FF572DB182215AFC2CC5901F5DC6424CF1C329166FD
              D4384CFE408E43E46B12695DB1B484A081D7C58B5B8C640418FF0D2E65568B38
              0BAE52880C08F891A366B4F0BB12C2E74B28AE298B399A237AA8B15BB21975DC
              6A22830F9A51FCA33C0E91BF4D6A7D0135893B4D048DC823A59F14910FF389BC
              90E338D065A0E9B6BA50C79F416F8ED2E21113B50C4F176E0FCA970E6D359341
              2D79FCE5F71E4C974897268F3B439299A0FF1413F32613F906F442BFA4502D5F
              14AD4E85D810AAC368F240151E35508DBD7E3192B49F8C64482083867CA0635E
              1CA1C62E5DDC7C2BD099A3159023BE2C25457B0442BF47350FE8EA6372CBE05E
              C59D82965E839BB0F8992C89B4C826A8379855BD78FCC55B1A5CAF156D3A5703
              E8B445B240D0CFA088E566720CEA3EBA12932E91AD729FE26E702F15628FBA40
              FAE9537A183E3DB1755C4F1E4F19CEA3B03EA018B925E644D02FCFEFA0B36E02
              429B0492922EC9DFA6FA057818486B8F7B869AA21025D0E9939E9E180DEAC0E2
              1EAD18E41F07754C14349D4320D49519C7A78B2F2FC3EB4D91083A0559E130A5
              48328F4B6817E822099C37026F3BAD5A9DA8C90AB1079D0FA30717D0CF663452
              23542F18A3205F8CFCF418B9F3086B418085F72D9810311612549C43D0F5AB04
              658352E807F8E960DF69205DC4579933E6EF1110FA7F1C2F8A6483B809ED0000
              000049454E44AE426082}
          end>
      end
      item
        Name = 'server-rds-mysql'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
              54000000097048597300000B1300000B1301009A9C18000013B549444154789C
              ED9D797C54D5D9C7BFE7CE4CD6C9BE02595992B089288802868255C08DB62ACA
              0B822056A9FDB455D1DAB7D5BAB4A2F811D1EADB564105D7B6168BB228A8B46C
              15411002610B4BC84676B2CF7ACFFBC72493C4DC494232779280DF3F60EEC99D
              F39C99DF9CED39CF39574829F92E63C6DCDB26AD254655526F94144706111091
              8630F983EA44204195200442012941550DA0A808E1FA9B1402848270AA804428
              2014056977F41346BF3F06C7268D57845223A5DAB6605E4455A5501411929214
              F3B5BFC9F0BF5255F3A504890045601002295554A92285409102104845454809
              085404420A8490180C028BD5C9A9BC521C81D528460952B45B86434FDCD626CD
              A8CFC73D2F62A5CA1229C4022104ED7F04EF23205D51C49D0E2956A3CA478122
              1F17A1154A0FDA8E4788374029061634A6B9AA8DEF902DECCDC5200A85C22A90
              037C588656F48420FD84E44DA1882221C4FC1EB0DF3E82B902F225F2ED9E1046
              7741A4FB1FFA23C42A0551289077E96DB7BB4829E74844BE10E21D20C1577675
              15442200D95F085609290A0462AE9EF6F441CC561079C07B2013F5B6A69B2052
              8A0102B9DAA0C802017D5088EF209885E08C80F700DD84F1BE20820404EF00F9
              20EEF47AFE3D8D14B3403923051F00C9DECEDE9B820C00DE4128792066773D1B
              5F0EB2A0ABE36C21C5ED0A9C16820F902479AB38DD144480205120DE17AE1AD1
              0D21FA2AF27604B920FE81176A8CE6C430D06668F74D8A74605524A08E077587
              70CDD12F6A8410B74A55DE2AA59C8041EE541507AAF3FCAB9FA6207951F51EDF
              208524C81680C42F4D416C40C3F572D1222542B25134F88D35FAF91DF3331AD1
              724DB587A620B951656D1355097E028204215509E6909AC04D8A748409491D10
              DC95F25F7008EA8050B52E605380EA3F3236CCBFA65E01874169F47F758CB62F
              2B4EA38F3229182BAD0416DB08C4B44EC199AC4283CF9D4FBD9F068391643BF6
              75672D725258AD9D08AB0387D2B92F4A5B90C41682B81C9B10E78F7F56157147
              CEBD6509572639153B42F6A42BACF7A228E050D5CC4AAB73556C61EDBC84F23A
              9C4633AEBEB6FD9AA22D88CDD6FC5A4884AA12BCAB928012FBE39610394F152A
              A2856B39392E94E9631219101D4269553D874E97F3F59142AAEB6D1A995FF848
              40416046CE3D17137CF250B8F26441403E0EC58EA18381ADB620A1A1AEFF1505
              9C0D88BA7A2272EAE6280D3C690B3321BEB354F1938983B9715C2A71E14154D4
              581891524EFF28339FEF3D4D6179ED797E1C9FB7814D6D80D7313825D541014F
              584CF2E4E9E0FCB79DE62A0894A07A3627B44601226328A0427D15C11913094A
              1835D15454BE4DA82DD65CA40A8886FF7BFC67A61913D2358575AA9235DB8FB1
              62C3018EE557B45B78A93A518C7EAA39265108A10829D5CE7EEE2EA1AA124511
              3235394606F8191587B37BF68C4603F5F5D6BAD379658A844045B8BE28814045
              C516599459B1BFFFB6B2ADC320AC0114893C9CDE361FCDDC8F1E71BF0CF42F4B
              09353AD737A820155A4DA4AFBA64B0D224C69AEDC73859788ECBD3E299342A11
              45080C8AE0B6CC746ECB4CE7ADCF0EF2EC075F61B53BBBF5C1FB1AAA6B5D9178
              E2D73BCB52469515279EA2D8F3FD1E570C838362081D3935C069366FB488DA50
              97E3B6F53D53C60E3300FC37BB8887FEB2C59D3E203A84DB7F90C1ACC943890E
              0B04E0AEA92398323A89FB966FE2F099F26E7CC4BE45D31A6855B50CF11F56F0
              E990C4924BF3365ED260290DD3BCDF630FA3F807614EBEF413635078866AB76A
              DE63773800301A5A67535056C3B20F7733E9A1F759F6E16E6C8DB5222936940D
              CFDCCA03B78CE1471386306D6C2A999724921AAF5DB80B09A7D5847F787D5AD4
              E8DC75C660EDEF133CF4213157CF0B3298FC971BFDCDF7786CCBA5CA986103AD
              6B5FFC953FC00DBFFD90EC5CED5FFE80E8109E597035999778F65A1FCDAB606F
              4E89DC9B6F65C7910A516BD17784E6AB3EE4BB084562ABF55FE1B4197E796C65
              661B9788660D09884A5C6C0A8EBC47AAEDB7F77BB24FA9BB8F163A015E5C748D
              C7FB0ACA6A98B774032B361EA0CE62D7BC273D3192599333C4F3778E121B7F3B
              91876764101E6C6AD77E5F443A150222EB169A132A166BFD5DB386F49FF6AB25
              021E6D3F67D7286B60C668B9EDA5BB8200566F3EC8EF57ED68F76DA1417E8405
              FB1317114C48901FA1417E2444873071C400AE1CD67A09BBBAC1CECB1B8EF3F7
              9D79EDE6D915DC3524294606F8FBAE863421A57C366BD9B4DFB4C9C7C3FD8ECE
              1624AFA45AFE7AC5769E5B3891B9D78E60F7D1B3ACFBEA84C7FBABEB6D54D7DB
              C82BAD6995FECABFF6302C355E9D35F57271EB950922D0CF4068A089DFDD328C
              EB46C5B364CD614E149FEF9CA657A3F91D7BC5F7F18FADC7F8DBBF5D43E53FFD
              FC87C4860775299F2379153CBFF688BC61C976DEDA72CA9D7EC5E0483E7A6402
              77667A7D81AED7E13567D4A32BFEC389C27300BCB1787AB7F22AAFB1B16CDD31
              7EBC7407DB0E97BAD31F9E91C19F165C4668E085D7B734E155EFE0BCA51B0018
              9E12CDDC6B4778BC6FD4A0586ECD4C67C8808876F33B515CCBFD2BF6F2D80707
              B1D85C038C49C363F8E891098C4E0DF75AB97B135E15A4A0AC86A7DEDE09C0EF
              665F85C9A89DFD806833CFFFF4076C7A6E26E387751C8BB676770133966E67DF
              A94A006242FD59F5F371DC3CB6BFF70ADF4BF0BAFFFCCDCFB22828ABC16454F8
              C9C434CD7B36EC3AC9B31FEC02E0B507A7121CD0711354546961DE2B5FF3FEF6
              33EEB43FDC319285D70CF44EC17B09BA2C68ACD97E1C805993877ABCE7AFEBBE
              A5AACE4A7080094327176F00967C7498673F3AECBEFEC5F543F8C5F543BA5ED8
              5E862E826CCBCA075C7D457B23AE573FDEC7E77B4FB75C37919D09037A6FFB19
              1E79E780FB7AE13503BB2E4A2F5BF1D445903DC78AA8ACB100306D6CAAC7FB5E
              5FBF9F7B967DD6251B9FEE2BE2C155DFBAAF175E3390F9933DDBEA2BE8228894
              B076670E00D75F31480F13007C7EA09887DFDEEFBE7EE0C634A68FEEA79B3D5F
              A0DBA2F83FB71D0560DCD07E8405FBEB6586CFBE3DCB92167DCA73732E6170BC
              59377B7AA39B20074F9791DFE81E997E85BE23A1F7B79F69E5EF5AB1682C4643
              2FEB1C3A89AE6123EF7C910DC0FCA923F53403C01FFE99CDA1BC6A0022CD7EBC
              386FB4EE36F54057413ED8E26A4AD21222183754FFB6FDDEBFEEC1D918803169
              780C3FBAA2C776A675195D05A9AAB3B26AD34100FE383F534F5380CB5DFFEB16
              C3E1A76E1FD1E7D654748F745BFAF7AF51A56450FF707E7673679A91EEB5FD9B
              F69F65FB91E650D867678F6AEFF68EE2D67C8EEE82D45BEC3CB9DAB568F5F0CC
              2BF8B107778A37F9CDBB07DC31E0E3D3A3189F1EADBB4D6FE19358D0D59B0FF1
              D91ED7FAC6B2FB26332C394A577B55F5765EF9F4B8FBFA77B70CD3D59E37F159
              70EE7DCB37712CDFE5ADBD66B4FE0B4DAF7F7E92CA5A974B26212A90B1832275
              B7E90D7C2648809F9170B36B82985370CE27365FFBFCA4FBF5BCC9293EB1D95D
              7C26C8B4B1A9C4860761B33BF9CF81331DBFC10BACD9958FDAD899640E8D213C
              D8CF2776BB83CF04199EE2EA5837EE3E45BDB5D33114DDA2C1E6646B76F312F0
              CCF1BA6F33EF363E132473A4EBCBF8FBBF8F7470A777C7A16F6E39ED7E3D7BA2
              C646A45EB63DD22782C4470493961081C5E6606776812F4CBAD977AA9213675D
              E14311663FA6F5726FB04F04B92C2D0E80AF0EF7CCC9472F6F6C1E022FBA4EBF
              E5006FE013419AA24BB273353693FA802D074B28AC6C00203536B8570F817D22
              4842740800C59575BE30A7C92B1B73DCAF1FB8517F6F4157F1892051A1AE3D22
              350DDA81D6BE60DD378594D7B8268A2392C21891D43BB740F844107F3FD7C910
              7687E768FA1BC60DE2B22171BAAE2ABDF165F34471F1CD6DB793F5067C2288DA
              B84661326A1FD9111F19CCABBF9CCACD570ED25590BFEDCCC3E67045B98F1914
              C9F0C4503DCD75099F08D2B427C4EC21206EF5AF6F00E0CAA1FDD0332EC7E650
              F9C77F9B977A17DF9CA1F4AE59888F0469EACCE322DB9EC0F1A30943DCA3B0B4
              840871F9C0F6E37DBBCBCA2F9AA3EA2F1F1841525480AEF6CE179F08925BEC5A
              EBD60AAE9E3929A3D5F54FAFD5B7D92AABB1F2C99E42F7F5C2CCC45E751C854F
              0AD3B4EB766C7A7CABF4003F23A307C7B64ABB2A2D4A244405EA5A9E173E39EA
              7E3D2A29444C1BA1EFFACCF9E01341F6E594E074AA449803DC4E4680C1FDC309
              F0736DE2FACFFE33ACDD9923011EBA49DF794245AD8D17D71D735FCF9F388097
              66653063742C417EED9F15A6373E11C46273B065BFCBE5DEB2891AD0386104C8
              3A55CAA32BB7A9005346C432304EDF139F567E71924FBF3DEBEED2132203983B
              BE3F7FBE7318774D18407C987EC17DEDE1B3F673F5E64300DCF1830C9AF64326
              C5360BE270AA58ED4EBEC82A9600BFBF6DB8EE657AE4EDFDF2B71F1E533FCF2E
              A7A471D2680E3070D3A531BC3A67280B331308F6F76D8DF19920DBB2F2C92DAE
              C2CF64E089B9135D892D76AA96348EC45EF8E4A804189D1AC19569FAB7ED070B
              6AE5EB5B0B58B43A9BC7FF95C3E6EC726AADAE09ECF491D1BC327B28E30787EB
              5E8E267C3AC278B0F1F88DB9D70E67F1CC2B1897DEEC0ACF29AC0490F9E50DEE
              358CA7EFF0BC2D4E0F0E15D4F2972D79DCB73A9B57BF3C43698D8DD040230F4D
              4D61D1E4443AD8E9EC157C2AC8DEE3C5BCFCD13700DC7FF368AEB9CC15EC60B3
              3BF9F64489FBBEE5EB8FB3EFD439E2C202B8F75ADFBBCB1B6C4EBE3C5CC1CFDF
              3DCCBAFDAE15C71F0E8B62F91D1924EB3C02F4F918FCC57FEEE1A535DFB8E3A6
              EA2D7616BDBCD97D1E4A130BFFBC9BC28A06EE9F3698F8F09E99BC399C9237B7
              17F0D4C727A8A8B3931019C0B23BD2993844BFC96B8F4C8A96AFD9C3A407DF63
              EE73EBC97CF07DBEDC97DBE61EBB5365E6B2FF526F75B2E6E1093D50CA66F6E7
              D5F08B770FB3ED982B8CE981EB92F99F2BF55979ECB1596A5E690DDBB2F229AF
              6EF0784F75839DEB9FD94AA09F8165F32EF55DE13468B0AB2CDF9CCBB24DA7A9
              B53AB9E5F2381E9A9AE2753BBDCA6DA04545AD8DAB1FFB9241F1666EBBAAE7A3
              46761C3FC7BC15596CCC2A63FCE0701EBC2EC5ABF9F786471E7548ADC5C18CE7
              B6F3C88C0CC6A747B1F3A8EF0E401340BF707F6242FC88083211E8A750D5E020
              BFC2829430614838A535FDF9DB9E920EF3EA0CBD5010CFFEF0E73F3EC2FCC9A9
              2842B48A70EF161A43D90093C2D8D430C6A48492161F4C6C48FB0176D34646B3
              3EAB9C5A2FAC50F742413C2325BCB33597A997C6931C134C6EA977D7E88580BB
              AF4E60C290704203B4BF9AD21A1B157576CA6BED9CA9B070B8B0961325F5383A
              78225B67E95382806B91E9933D8504E8E4041C3730AC951859F9351457DBC82E
              ACE348512DC5D5DA27DD193DAC869E2F7D4E90269A0EA3F12652C2D28DA778F6
              D6666FF3FA0365EC3E55E5755B9EE8F5A32C5F73BCB89E8D59CDFDD3E2A92917
              AE2FABAFB0626B3E59F9AEF053A341B87D59661F787EBF17C4034FACCD616BE3
              CC1C5CBEAC97670F65CA507DA31E3D0822FA6CDFE24D5EDA9CCBCA6DCDC1E161
              8146EE9F92C4A3D7A77A636551F33BD614449134F8FEA9B44D08DF06E674B00F
              77C381521E78FF08070B9A0FE01C9B1AC6F25919A44477CDF3DB6850D367A429
              884155970AC95F7BDDD9453DC4990A0BBFFF570E4B379EE250A14B9828B38917
              6E4F273DBE0B4BCD52BE2611CF6BFD495390BC88224B5168E97D7683FC4CF9FE
              A12D6E769DACE2F18F7278EAE313ECCD7585363D73CB904ED71429258A109BC3
              83FDEF8D0EF5EF7C0D91460B4EA3055067A092FD7D3D69CDFEBC1AFEB8EE244B
              D69FA4D6E2E485DBD3090BECB8DB95521E96929B4C46037E26ED1FBA66EAD8C2
              74C6160D24A32AD01AA9044F5343232B1182EF9FC8D69A3DA7AB59F8D621B2F2
              6B796DEE50E2C2FCDBFC76A52A404802A3EBAA8CD135D3EDE62A6B9928E1AC53
              DB19A9296B4DAEEB7C927AD549953F7975E141379A2392770883918ECE83BFD8
              B03B559E589BC3A22949BC70C7D0C099CB2AAC0515CDAD916272A2DA0C947E93
              7C83D5AAE43AD4F68F34D714E4C8E94F5B5D9BFC837646DFF49BD90EC4BBF6AA
              B308A56783C97A23AF6F2D206748AD6D5472B8D2248814922093117B9579CEA1
              8F47ED90F68E9BB54ECD3754A79DF27DEBDE33C6A40C0A8C4E7ECAD3F3442E76
              B61DAB709A9CCD8F4935AA26CA2979BC2A24EF5D461BC0620253CB16664C9B3C
              3A2588D361A7EAC42ECCD69AA723C2D3521B1C96F9AA492074794C54DF7838B1
              16D50D0E793AAF4215125483405583DE2C530A9E3E977008EED9094ACB877801
              AC6C9387B6209327B74DB3D6638D4BA638D1B02028D7906CAAB14F513D9C5C7D
              B1E3300882ECCE2DB1E72A16045547535D792926A9B137E6EEB649DA82CC99D3
              36CD60C46EA9C52E6B08AEB0DD643AEB38680D93A940CFEDE4EC9D045A144E85
              591C3725145592A49831AA91A89D6C4EB405F9EA2BCFEF30082AECD67AFF28AE
              0B7184EF1692F02E14FA82444A192CA12AD264B8CE2F22B0AEC0DFD4DE230B35
              D116E4ECD976AC822D48C5191A94633E17391D2976F2BD8FC585400A29A68518
              0C3986202355E101E7ED99D31624A0A3484107D80D0821BE42D04F4AF5196001
              5ACFD6BB589072B522C4A34211450E15148713531776817BA15796C5A0DE2DA5
              331ED4375C69175585592DA4EC2F90F34076FBEC10EF0D9304C512F56E29D578
              50DF6C4A3C4FA48FC5ECC62198D2258494F300AF1DE2E2C571ABC0F55C4B598C
              54175CC0356695AB46300FE13D219AD069222110B86B4C1CA82B9BD2FB30AB1A
              6BC45D7A08D1844E8234B50302842C91A80BBBD994F524ABDD4278B169F2840F
              A6DAAEA60CD1D494A9F1C8BED094C9169DB5FE4234E143DF478B3EA6B9F3EF15
              C27CA75FD7B58FE8081F3BA35A35652DFB9826614C80CF7CFB020C08F75CCCA7
              4D93277A28DC47E2AE15429620E5DD52AA8F81FA34301E977F4C175F720B1409
              C148B94B201F1348EF3F70B70BFC3F9C434FDE627F724C0000000049454E44AE
              426082}
          end>
      end
      item
        Name = 'logo-sequal'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
              54000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA86400000B4249444154785EED9D0B
              70D4C51DC777F7FFB8BBDC25B93CA1098F189022CA432108C2A430CC54A88EA3
              8D8E7D286AA7D551A9D65A6DED3843B5B5763A0547ADD23AB6B5B454C4DA6955
              AC561115AD4880040AA8A00984242610925CEEFD7F6D7FBFBDA48356920BE8B8
              7F673F3397BDDD7BCCFEF7BBBFC7FE33B74B140AC530D0C1D297A49E6C66E90D
              CDD46E3CCC597998D0804EB8ED12F7FD1E125A5E47C3D7CDE7C6D431DEE0DB15
              9F16E917DE61FD373EA50F56872576C746DDDAD6E69B89E73B0B89AFDAAC15DE
              BAD8C5E75653476DEA0F6F9DC32A23DFF3BAE2A63790F15824C0F5A99526AB88
              3C1CFADAD95B29A57BF1BDD9AD87B4C0BC89E27332E32B41120FBCA6476EAA77
              3CC7AD4EDCF3D2EDCEFB3DD77A7DE920C93A84B0E32EC5E3841607895E534ACC
              F935EB83974CBF0684C9C4EE7A8115AF3C5F6A17E61B41926B1BF5F0F23AC7DA
              DDB920FD44D3ABF68E768D3830B61A7508A56CF06D39F0AA1CCF8378C25834C4
              8C59D5AF16AE3CFF6A10E5E0C0AA5758D1AD8BA415C51782A49FDAA5851A66BA
              F6DEAEF3926BDED80225A3A66E1346208A0F730D6835B66B138D19C10BA625C3
              2B168E05511256639B66D64D90D27D7D78664988D5DCC1500CCEF9B4F486A6D7
              ED3D2046D070410663583110705D446706944EE6E93DE1C47DAF6E84EF294031
              9CC37D524E46E90589FDE01FA24C3DD6F8636B7B3BA5A66613C235D1980FA009
              5888CEC181D94D1DF5D94D07EEC6E6E4EFDE92F2DAA51624FBF20156F1D20D9E
              97CCCEB11BDBBEC9D396185C31C8A38183290574DD3DDC47ECA6F66F8395448A
              7FB2D4B577774A6725520B62ED6817FD4BFD6567BDDB93249431B48E931B4414
              45873C605F77B1DDDCB1189B20964877FD725BC8E603A2CC6C684EF0810CC603
              3A6AEB1802E30D85DC0BBEC73B9ABC4434651C6521F9E2B4F4D0F2E7AE75C0BD
              68C10BCFBC915B90147D34BD1D2D906261A0775A8F25B0EA75C745B34C482B08
              C7C55E8E0009EAB522633AF5349DA385F1941D14155BBECC575A418C33C6F216
              720983499D72F6763D0CD9158C203FD5051DC358A28D2B3E88151A099CAC03FC
              D4903A8694DDF91DD13FC8905A686100D715A73280F859460CCDCA6E697D041B
              9C03479520A3C1985925062C78E9CC340DC13AD0F520309FA4D782CFA18B32CE
              1A1B8FDE7FB1F8DEC84DF54A90D1C0D3B67051817327AED5C645F78214E8B746
              EFF85143D773698149E0713FB8C1637DD73DA99BE78C53828C86F0F23A9E5CDB
              2856E5A1CB66DEAB4DA900911CEF437776F3C30577A79B75E31391DB163F800D
              A1AF4E57F7B24E0610C57D0DE6B8397BFC3A637AD51A561931C0726C7041F9CE
              6E07DEAF6993CB49E8AABACBC03A62B195FF64C1F3A74A671D88F482200B8E8A
              650389DCB0E00698E5BFD1AA8A0D62BBB8A6C05BEFB0E43BCE62F069AEEEC1EB
              C23220161173EE842F1BA7953DDFF7ADC7B5E2BB96A9DBEFA78AB5AB939A8341
              3EB5BEE9CECC73FB6E81D57BA917CF62FEE4520D5440215C8F70C7E334A86BD4
              D489565BBA3D7C73FD0F8DDAF297E3F7BD6214DEB2C8165F2829BE1104C96E3D
              44930FBEC64AD75DE9C24A7E56F6E5F7565A3B0ECF218E378EC7329885115A14
              242C1A021FA76D63E5917B0A6F5BFC347E3676FBD37AF12F2FFADF6A53567C25
              C810F1559BF5C25B178BC1E59C7F21F3ECDE49F6F6768B272DAA9F5DCD834BA7
              6A5A59F84D7CBD9534D0CA3FDFC1C257CC9132887F6E88AFDECC067EB1C918AC
              7E2C033F7B31FFFF9B48822F2DE478C06551ABA983B9FBBAB997B1890EA9B139
              6F223567557B346848994929140A8542A15028140A8542A15028140A8542A150
              28140A8542A15028140A8542A15028140A8542E16F7CF77384F8AF36537BF707
              A3EB39E784150649F4A106F5F304C5E8F09D852437EC8AD8BB3A74E8795EB31D
              2F1037E4D022015E78C792815CABBCF8469023F3EF67956FDEEC0DDCF5C2267B
              77673DA1340E233DF2CFBA29C59F47076951B03DB8E4F4E90557CEC9F6DFF857
              1A7DE85229DD972F7EA72EB0723FA0753B63C53C9ED5793C53C213D9E2111FF1
              6C098FA543ACD08C86AE982DBE439B542E4A19F18F2083F31906D8115B6B50B1
              5F2F6E1A30FC8351173FCA2A0AF107A0E27AF5DA322CA4C4378204164D12EED5
              EB4D0DEDC280F53C1E3CB7AF03257B28A5697CAA8D8F622125BE10C439D8CB8A
              575F8C7BF72ED42795CD17BBCDE5BBDD1F271E3175DCE1F48F583D76F95ADD9C
              3D5ECAF881F84210880562927B3DC931C400CF837B9CE42C6064701FF8A04ECC
              793521AC6A151169C540FC612187FB73E5C15E9BA76CE8F5F1BBCD0C033A2CD7
              E3341220C6DC09016CD26755E5F7D9CF085F08029955AE3CD447D15D51B15F56
              1E139D4300D1186EE734A0D7966ECCB59DF2BE8D9F2AFE10A4B53757BEDFC360
              70D142443D0F30D3424BE9366756BF8B0DA9DF6F532EEB54715B8F8932F3ECBE
              244F5AD06BE8763EC38ABA791ED14F2B33212110D75A70751D16D2E20B41E2EB
              FE25863FD4306329C1BD76F336104A380475ADA6C4829457B82AF3DC89E21559
              F1852013C99FC460B2F2F0C59835C138E72789E771163689DBD6BF1AAB3DCB1E
              D1CC59D5CA657D52D8EF1E4988F89197BBC26D6121C32A2D20E6C2D3C41E8105
              CBE7889764C61782F45FFFA4B008B7A53717A4F301B2296A309D0F645B82174C
              FBBB68B2F08C24B9915E10FB3F9D5A74CD659CA7ADA5B4C09801838AA2E4D76F
              B0247D4A05C68F443BB99E86AF9A2BB5BB42A417C469CB2D0AED3D5D55E20918
              CA60393C6848B8CF7B4DA9D8E7BD9DACC1427AE417645F9728B35B5A523C9E25
              B0D083DA08131DC5B05C8F8D29C4DA6FF1CF99AB5F91FE5A11E93B995EDF2C4A
              AFBDBFC28B6708D120AA8FE478F086229E3B95B00E99F593C46698AC3C227DFC
              40A416C46AEEA0953BBE8F77799936B9FC169E76A0C77945758833103FCE18D3
              6B4E1BD3DD7BF95A2DBC7C8EF4F103915A90A135032EEA9C3D5D2ED5A1BBF99C
              58816F3134A24FAD14F7AF9C9663BE1003915A90F4337B45FFDC23F1D95E6FAA
              5A8831D2A210D71F9643B5AA62A27FB1E2196C2ABC7B693E562505520B421C4F
              F4CF79AF6711A4BC21EE7AB618F1E1C0F547004C29EBEC0CCCABD9B69F2CA0A1
              6567F8661365A905C96EDA2FCAF4134D71B0103CF60EA67F7E2E8B5515BD844F
              2BAE5921F7A4FB08D276D669EFA7D15F37E0296DBA3EB9FCBB5E4C645823F717
              FF21150DE17BD7639516057D133F106905C96C7C7BF019E1EE07F131F9AD3F28
              E78EA769630B63453F5D96C4A6F08A85E225BF20AD20BC3F256285F376F778E7
              9D23C6E04DC5E1E38707F12364106D42740B6466FB633F7A56374EAFF0C5FA63
              086905D1C64545DF9CD6DEAFC32047C115392366589C533C670A5CDC3A51B55D
              5F8981482B48E2C1D7857F72767716F14476E4153ABA2BDB657A6DA91DBCE8AC
              D7B1A9E01BE78897FC849482D8FB8FD0CAAD37E30ABD04ACE37AAF3F8DE7E00E
              DFD7417745187B14DC557BCF858F6AE6ECF1CA423E09528F358A32BBB52D69BF
              DDED0D9EF229DA4E08E71AAC3FE08AA838854DAF29F1557635849482B0F2B088
              15947B4BBC238912B1161C7E788525B08AC8CEA27BBED28ACFF519B9F3AAFC86
              948250531727E3D8BB3ABF04AE0A67BF3D6C404777556010F3BC9ACDE0AEB203
              3F7FD1885C3B5F09F249E0F5246864C54271929AB3FFE8143E143F4E34BC18EA
              3DAED3920248774B1E134D86E6DBF3A6A413C4DAD3252C01027A198B862E82CC
              69E8FFE8E8963EE6411D8C2F7A6DD981C0E2C9E25E4BA861862FAD03914E10BB
              A95D94D61BAD673A078E6AB042A7C4E51A0C3A1EBDFDFF0FC73568D884E53CBF
              17DC95155BF9BCAED796FB569013FBE5CF086BDB21CD9C3BD175DEEBB9D3DADE
              7605B7DC63903941FAF4B14E8B832806A4BB7DA186991762FCC86EDA4F034BA6
              F856102949ADDF39EA8992FADB6EE926D7C920ED4564FFDD4AFBAF7E9CBA5D71
              3CB5F304692F364254B75D5235702FC6148542F1398690FF029A8D9B27B85043
              410000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8-key-100-pink'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
              54000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC100000EC101B8916BED0000001874455874536F667477
              617265005061696E742E4E455420352E312E36FCD1C7AF000000B66558496649
              492A000800000005001A010500010000004A0000001B01050001000000520000
              0028010300010000000200000031010200100000005A00000069870400010000
              006A00000000000000D9760100E8030000D9760100E80300005061696E742E4E
              455420352E312E3600030000900700040000003032333001A003000100000001
              00000005A0040001000000940000000000000002000100020004000000523938
              00020007000400000030313030000000008CF53740E4EAF7DB00000684494441
              54785EED9C5F8C1D6519879FF7DB026B410B3456531A2818439A81201AF14C51
              88240AD1BB12B4DD6E132F4C30263424C6987883E28531D1C4849AA0912BDA6D
              43421B2F309AF897A87310A912185B8D01C28242CB22E05AAAED7EAF177B9A6E
              DF0BB3E7CC3BA7DF9C9927996CF27BBF3DE74C9ECC9CF3FD1BE8E8E8E8E8E8E8
              E8E8F0476C90128F64FDCB227A45844D0A1B053609B256D177016B027269442F
              002E19FCCB62404E45F40DE0B4206F297A029807FE11E0A580BCFC99B2F74FF3
              56C970DE85ECCDFA6BD7C096886E01B600D70EFE5E1D9077D8F61E44F46DE079
              E0087014381A9023A7E1C86CD93B61DB8F93B10AE9678FCAF36CEC297C04F810
              F041E0DA804CD9B6E783882E017F010E034F093C71357FEFF7CA3BD5B6AD8BB1
              083998F52F3C89DE0D7C292057D97ACA44F405E03BD3C80FB695BDFFDABA37B5
              0BD99F15372A3C1C90CCD69A44449F89B06BB6CC9FB6354F6A15B22F2B3E25F0
              48402EB6B52612D145E0AE9932FF89AD79519B90FD59912BFC2C206B6DADC944
              F484C0AD3BCAFC0FB6E6412D420E64C5C5119E0DC8665B9B0422FA5C44AEAFE3
              1759B0810711EE9D54190001B9660A76DBDC03F72BE481AC1FD6A3F301D9686B
              934444E71790CDF794BD686B5570173297153707E43736AF4A44FF031C078E05
              4423FAE6F2C5C8A9802C0EDABC1358038480AC8BA8001B800D01B9D0BE665522
              FAD19932FFADCDAB508790FB02F2359BAF96881E077E073C093C2930BF04AFCE
              96F9EBB6ED30ECCD8ACB81F706D804DC047C18C803F26EDB76B544F4BE9932BF
              DFE655A843C8E301F998CD5743441F9E463E3F8E0E18673BAC3F0CC82E5B5B0D
              117D7CA6CC6FB579155CBFD41FCA8A8B581E161995625C320006EF55D87C086E
              DA9BF52FB061155C85AC85EBEBB857A74A40A6A7D0EB6C5E0557210A37DA6CD2
              D1E54152375C85D04221C0076C50056F21D7D860482EB7C118586F8321A97ACE
              E7E02DE47D3618924FDA600CDC618321711D917013F240D60FC095361F8680DC
              329715B336AF8BB9ACD815909B6D3E24AE42DCFA2107B26203C8AB361F96889E
              06BE1960CFF6323F66EB1EECCD8AF784E5B1A8AF78CC569E46D757EDB89EC14D
              C8FEACBF5996E7A93D7933A2AE63450109C03A9B57E4AAED65EF451B8E82DB2D
              6B308EE4CDBA805CE679D420C3F5DCDD8484B34B715A8782DB249C9B1071B817
              379529E4229B8D8A9B1085459BB588B76D302A6E42585E21D84A14FE6DB35171
              1312A0B542229A9E9088BC66B3B6A0C882CD46C54DC88EB27732A2AFD87CD289
              E882E7EA133721035EB0C1A41310D773F616F29C0D269D88BA8E4E780BF9B30D
              5AC0511B54C15588402DCB2B13E7B00DAAE02DE48F369B7402F294CDAAE02A64
              7B991FF3BEA7A64C445FF11AE53D83AB90013FB7C104F32B1B54A513528D5FD8
              A02AEE42D6203F8DE8299B4F1A115505F78D3BEE42065B8E1FB3F904F2CB9D65
              3E6FC3AAB80B6179F4F31BDE53AFA921E0BAC8FA0CB508D959E687816FDB7C52
              88E8433BCAFCD736F7A0162100D3C85723FA239B379D883E11915A764F51A790
              6D656F29227745744F44C7B6F1BE4E22FAE388DCEE39BA6B715B06F4FF98CB8A
              5B04B95FC0752FC5B888E83181AFBF863CE8BD85CD32162167D89715EF17F874
              40B646746B40AEB06D52607045FF0DF83DF09820877694BD93B65D1D8C5588E5
              40D6BF32A25B811B800CB80ED81C90B17DAE882E0C466C8F002570780AFEF4D9
              327FCBB61D07633BF1D57230EB5F7212FD5640BE686B9E44742EC2BDB3657EDC
              D6CE27B57DA98FCAB6B2B728C8AA3A5C11E5758E9F734456FDFBE1C5D46490A2
              906159E2D43947D369BC9049A31392189D90C4E88424462B850C3A7EB53E196E
              545A276420E39E99323F606B29D02A212B647CCFD652A135429A2083360901BE
              9FBA0C5A26E473735951F52101B5D31A210199060EA52EA53542688894560961
              85947D59719BADA540EB84309022F0099BA7402B85A44C272431DA2C64D5538B
              E3A49542225A06F8AECD53A0754206326EABEB595C55699590D465D02621112D
              237C3C6519B44908F0D214F22F1BA6466B8404E476450FEDCFFAD3B69612AD11
              C2B2943B5297D22A2134404AEB847056CA976D9E02AD1432C0EDC1959EB45948
              9274421223492111FD6B9DFB12BB857243B2B3CC0F02BBEB903278CDDDDD42B9
              219929F33DDE5256C8D8636BA990AC109CA5344106A90BC1494A5364D0042154
              94D22419344508234A699A0C9A248421A534510629EE535F0D7359F105E04E45
              A7DE60E18695B54B59FFB4204BC0A33365FEE0CA5A4747474747474747475BF9
              1F7FA73D2F7ABAF21F0000000049454E44AE426082}
          end>
      end>
    Left = 201
    Top = 147
  end
  object qryX2IrisQuery: TX2IrisQuery
    RestClient = RESTClient
    Active = False
    SQL.Strings = (
      'SELECT * FROM %Dictionary.ClassDefinition')
    Left = 94
    Top = 142
  end
  object RESTClient: TRESTClient
    Authenticator = BaseAuthenticator
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://localhost:52773/csp/clientapp'
    ContentType = 'application/json'
    Params = <>
    SynchronizedEvents = False
    Left = 24
    Top = 74
  end
  object ActionList1: TActionList
    Images = VirtualImageListMain
    Left = 22
    Top = 142
    object acRefresh: TAction
      Caption = 'Refresh'
      Hint = 'Refresh'
      ImageIndex = 0
      OnExecute = acRefreshExecute
    end
    object acSysTools: TAction
      Caption = 'acSysTools'
      Hint = 'SysTools'
      ImageIndex = 39
      OnExecute = acSysToolsExecute
    end
    object acDesigner: TAction
      Caption = 'Designer'
      Hint = 'Designer'
      ImageIndex = 115
      OnExecute = acDesignerExecute
    end
  end
  object BaseAuthenticator: THTTPBasicAuthenticator
    Username = 'restuser'
    Password = 'AS2EvXx32i.x.99'
    Left = 56
    Top = 218
  end
  object dsrMain: TDataSource
    Left = 184
    Top = 218
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
end
