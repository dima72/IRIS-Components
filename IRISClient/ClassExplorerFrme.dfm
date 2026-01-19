object ClassExplorerFrame: TClassExplorerFrame
  Left = 0
  Top = 0
  Width = 705
  Height = 445
  TabOrder = 0
  object spltDBtree: TSplitter
    Left = 249
    Top = 0
    Width = 6
    Height = 445
    Cursor = crSizeWE
    ResizeStyle = rsUpdate
    ExplicitLeft = 257
    ExplicitTop = -111
    ExplicitHeight = 609
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 249
    Height = 445
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object DBtree: TVirtualStringTree
      Left = 0
      Top = 0
      Width = 249
      Height = 445
      Align = alClient
      Constraints.MinWidth = 40
      DefaultNodeHeight = 19
      DragMode = dmAutomatic
      DragType = dtVCL
      Header.AutoSizeIndex = 0
      Header.Options = [hoAutoResize, hoColumnResize, hoDrag]
      HintMode = hmTooltip
      HotCursor = crHandPoint
      IncrementalSearch = isInitializedOnly
      Indent = 12
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
  object pnlRight: TPanel
    Left = 255
    Top = 0
    Width = 450
    Height = 445
    Align = alClient
    TabOrder = 1
  end
  object qryX2IrisQuery: TX2IrisQuery
    Active = False
    SQL.Strings = (
      'SELECT * FROM %Dictionary.ClassDefinition')
    Left = 22
    Top = 126
  end
end
