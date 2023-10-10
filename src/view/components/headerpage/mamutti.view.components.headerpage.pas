unit mamutti.view.components.headerpage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Effects, FMX.Objects;

type
  TComponentHeaderPage = class(TFrame)
    LayoutContainer: TLayout;
    RectangleHeaderPage: TRectangle;
    ShadowEffect1: TShadowEffect;
    LayoutUser: TLayout;
  private
    { Private declarations }
  public
    class function New(AOwner: TComponent): TComponentHeaderPage;
    function Component: TFMXObject;
  end;

implementation

{$R *.fmx}

uses
  Router4D,
  System.Generics.Collections;

{ TComponentHeaderPage }

function TComponentHeaderPage.Component: TFMXObject;
begin
  Result := LayoutContainer;
end;

class function TComponentHeaderPage.New(AOwner: TComponent)
  : TComponentHeaderPage;
begin
  Result := Self.Create(AOwner);
end;

end.
