unit mamutti.view.components.expandmenubutton;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects;

type
  TComponentExpandMenuButton = class(TFrame)
    LayoutContainer: TLayout;
    LayoutButton: TLayout;
    ImageExpand: TImage;
  private
     FProc: TProc<TObject>;
    procedure BuildButton;
  public
    class function New(AOwner: TComponent): TComponentExpandMenuButton;
    function Click(Value: TProc<TObject>): TComponentExpandMenuButton;
    function Component: TFMXObject;
  end;

implementation

{$R *.fmx}

uses mamutti.services.utils;

{ TComponentExpandMenuButton }

function TComponentExpandMenuButton.Click(Value: TProc<TObject>)
  : TComponentExpandMenuButton;
begin
  Result := Self;
  FProc := Value;
end;

function TComponentExpandMenuButton.Component: TFMXObject;
begin
  BuildButton;
  Result := LayoutContainer;
end;

procedure TComponentExpandMenuButton.BuildButton;
begin
  TUtils.ResourceImage('menu', ImageExpand);
  TUtils.ImageColor(ImageExpand, $FFFFFFFF);
end;

class function TComponentExpandMenuButton.New(AOwner: TComponent)
  : TComponentExpandMenuButton;
begin
  Result := Self.Create(AOwner);
end;

end.
