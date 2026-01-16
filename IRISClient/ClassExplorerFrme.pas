unit ClassExplorerFrme;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  VirtualTrees.BaseAncestorVCL, VirtualTrees.BaseTree, VirtualTrees.AncestorVCL,
  VirtualTrees, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  X2IrisQuery, REST.Types, REST.Client, REST.Authenticator.Basic,
  Data.Bind.Components, Data.Bind.ObjectScope;

type

  PNodeData = ^TNodeData;
  TNodeData = record
    Key: string;
    Caption: string;
    ClassName: string;
    NodeType: string;
    isPersistent: Boolean;
  end;

  TNodeEvent = procedure(Sender: TObject; NodeData: PNodeData) of object;

  TClassExplorerFrame = class(TFrame)
    pnlLeft: TPanel;
    DBtree: TVirtualStringTree;
    spltDBtree: TSplitter;
    qryX2IrisQuery: TX2IrisQuery;
    pnlRight: TPanel;
    procedure DBtreeCompareNodes(Sender: TBaseVirtualTree; Node1,
      Node2: PVirtualNode; Column: TColumnIndex; var Result: Integer);
    procedure DBtreeFocusChanged(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex);
    procedure DBtreeFreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
    procedure DBtreeGetNodeDataSize(Sender: TBaseVirtualTree;
      var NodeDataSize: Integer);
    procedure DBtreeGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure DBtreeInitChildren(Sender: TBaseVirtualTree; Node: PVirtualNode;
      var ChildCount: Cardinal);
    procedure DBtreeNodeClick(Sender: TBaseVirtualTree;
      const HitInfo: THitInfo);
  private
    { Private declarations }
    FOnNodeSelect: TNodeEvent;
    FClasses: TStringList;
    function GetNamespace: string;
    procedure SetNamespace(const Value: string);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure InitDBTree;
    property  Namespace: string read GetNamespace write SetNamespace;
  published
    property OnNodeSelect: TNodeEvent read FOnNodeSelect write FOnNodeSelect;
  end;
const
  RSScriptGetClassesNodes =
  'Set list="" '+
  'Do ##class(%SYSTEM.OBJ).GetClassList(.list) '+
  'Set class="" '+
  'For { '+
  '  Set class=$Order(list(class)) '+
  '  Quit:class="" '+
  '  Set isPersistent = $classmethod(class, "%Extends", "%Persistent") '+
  '  if isPersistent {Write class,";","P",!} else {Write class,!} '+
  '}';
implementation

{$R *.dfm}


constructor TClassExplorerFrame.Create(AOwner: TComponent);
begin
  inherited;
  FClasses := TStringList.Create;
end;

procedure TClassExplorerFrame.DBtreeCompareNodes(Sender: TBaseVirtualTree;
  Node1, Node2: PVirtualNode; Column: TColumnIndex; var Result: Integer);
var
  NodeData1, NodeData2: PNodeData;
begin
  if not Assigned(Node1) then Exit;
  if not Assigned(Node2) then Exit;
  NodeData1 := Sender.GetNodeData(Node1);
  NodeData2 := Sender.GetNodeData(Node2);
  if NodeData1.NodeType = NodeData2.NodeType then
    Result := CompareText(NodeData1^.Caption, NodeData2^.Caption)
  else if NodeData1.NodeType = 'Package' then
    Result := -1
  else
    Result := 1;
end;

procedure TClassExplorerFrame.DBtreeFocusChanged(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex);
var
  NodeData: PNodeData;
begin
  if not Assigned(Node) then Exit;
  NodeData := Sender.GetNodeData(Node);
  if Assigned(NodeData) and Assigned(FOnNodeSelect) then begin
    FOnNodeSelect(Self, NodeData);
    {
    if NodeData^.NodeType = 'Class' then begin
        //qryX2IrisQuery.DoClassMethod('X2IrisClient.RESTServer', 'GetClassText',
        //  [CurrentNamespace, NodeData^.Key]);
    end
    else if NodeData^.NodeType = 'Package' then begin
      Sender.Expanded[Node] := False;
    end;
    }
  end;
end;

procedure TClassExplorerFrame.DBtreeFreeNode(Sender: TBaseVirtualTree;
  Node: PVirtualNode);
var
  NodeData: PNodeData;
begin
  NodeData := Sender.GetNodeData(Node);
  Finalize(NodeData^);
end;

procedure TClassExplorerFrame.DBtreeGetNodeDataSize(Sender: TBaseVirtualTree;
  var NodeDataSize: Integer);
begin
  NodeDataSize := SizeOf(TNodeData);
end;

procedure TClassExplorerFrame.DBtreeGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
var
  NodeData: PNodeData;
begin
  NodeData := Sender.GetNodeData(Node);
  if Assigned(NodeData) then
    CellText := NodeData^.Caption;
end;

procedure TClassExplorerFrame.DBtreeInitChildren(Sender: TBaseVirtualTree;
  Node: PVirtualNode; var ChildCount: Cardinal);
var
  Child: PVirtualNode;
  NodeData, ChildData: PNodeData;
  I: Integer;
  sRow, sPackage, sClass, sKey: string;
  Unique: TStringList;
begin
  Unique := nil;
  DBtree.BeginUpdate;
  try
    Unique := TStringList.Create;
    Unique.Sorted := True;
    Unique.Duplicates := dupIgnore;
    NodeData := DBtree.GetNodeData(Node);
    if NodeData^.NodeType = 'Root' then begin
      // Extract first segment before dot
      for I := 0 to FClasses.Count - 1 do
      begin
        sRow := FClasses[I];
        sPackage := Fetch(sRow, '.');  // returns text before first dot
        if Unique.IndexOf(sPackage) = -1 then begin
          Unique.Add(sPackage);
          Child := DBtree.AddChild(Node);
          ChildData := Sender.GetNodeData(Child);
          ChildData.Caption := sPackage;
          ChildData.Key := ChildData.Caption + '.';
          ChildData.NodeType := 'Package';
          DBtree.HasChildren[Child] := True;
          ChildCount := ChildCount+1;
        end
      end;
    end
    else if NodeData^.NodeType = 'Package' then begin
      for I := 0 to FClasses.Count - 1 do
      begin
        sRow := FClasses[I];
        if Pos(NodeData^.Key, sRow) = 1 then begin
          Fetch(sRow, NodeData^.Key);
          if Pos('.', sRow) = 0 then begin // this is Node Class
            Child := DBtree.AddChild(Node);
            ChildData := Sender.GetNodeData(Child);
            ChildData.NodeType := 'Class';
            sClass := Fetch(sRow, ';');
            ChildData.Caption := sClass;
            ChildData.isPersistent := Trim(sRow) = 'P';
            sKey := FClasses[I];
            sKey := Fetch(sKey, ';');
            ChildData.Key := sKey;
            ChildData.ClassName := sKey;
            DBtree.HasChildren[Child] := False;
            ChildCount := ChildCount+1;
          end
          else begin
            sPackage := Fetch(sRow, '.');
            if Unique.IndexOf(sPackage) = -1 then begin
              Unique.Add(sPackage);
              Child := DBtree.AddChild(Node);
              ChildData := Sender.GetNodeData(Child);
              ChildData.Caption := sPackage;
              ChildData.Key := NodeData^.Key + sPackage + '.';
              ChildData.NodeType := 'Package';
              DBtree.HasChildren[Child] := True;
              ChildCount := ChildCount+1;
            end
          end;
        end
      end;
    end;
    if ChildCount > 2 then
      DBtree.Sort(Node, 0, sdAscending, True);
  finally
    Unique.Free;
    DBtree.EndUpdate;
  end;
end;

procedure TClassExplorerFrame.DBtreeNodeClick(Sender: TBaseVirtualTree;
  const HitInfo: THitInfo);
begin
  if Assigned(HitInfo.HitNode) and not (THitPosition.hiOnItemButton in HitInfo.HitPositions)
     and not (THitPosition.hiOnItemButtonExact in HitInfo.HitPositions) then
    Sender.ToggleNode(HitInfo.HitNode);
end;

destructor TClassExplorerFrame.Destroy;
begin
  FClasses.Free;
  inherited;
end;

function TClassExplorerFrame.GetNamespace: string;
begin
  Result := qryX2IrisQuery.Namespace;
end;

procedure TClassExplorerFrame.SetNamespace(const Value: string);
begin
  qryX2IrisQuery.Namespace := Value;
end;


procedure TClassExplorerFrame.InitDBTree;
var
  RootNode: PVirtualNode;
  NodeData: PNodeData;
begin
  DBtree.BeginUpdate;
  try
    DBtree.Clear;
    RootNode := DBtree.AddChild(nil);
    NodeData := DBtree.GetNodeData(RootNode);
    NodeData^.Caption := 'Classes';
    NodeData^.NodeType := 'Root';
    NodeData^.Key := '';
    DBtree.HasChildren[RootNode] := True;
    FClasses.Text := qryX2IrisQuery.DoClassMethod('X2IrisClient.RESTServer',
    'RunScript', [Namespace, RSScriptGetClassesNodes]);
  finally
    DBtree.EndUpdate;
  end;
end;


end.
