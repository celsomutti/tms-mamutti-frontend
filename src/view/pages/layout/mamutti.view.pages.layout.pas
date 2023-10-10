unit mamutti.view.pages.layout;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Layouts,
  FMX.Objects,
  FMX.Controls.Presentation,
  FMX.MultiView,
  Router4D.Interfaces, FMX.StdCtrls, mamutti.view.components.sidebar,
  FMX.Effects;

type
  TPageLayout = class(TForm, iRouter4DComponent)
    LayoutContainer: TLayout;
    LayoutSideBar: TLayout;
    LayoutMain: TLayout;
    LayoutHeader: TLayout;
    VertScrollBox: TVertScrollBox;
    LayoutFooter: TLayout;
    LayoutBody: TLayout;
    RectangleHeader: TRectangle;
    ShadowEffect1: TShadowEffect;
  private
    procedure RenderSidebar;
  public
    function Render: TFMXObject;
    procedure UnRender;
  end;

implementation

{$R *.fmx}

uses
  Router4D,
  mamutti.view.pages.home;

{ TPageLayout }

function TPageLayout.Render: TFMXObject;
begin
  RenderSidebar;
  TRouter4D.Render<TPageHome>.SetELement(LayoutBody);
  Result := LayoutContainer;
end;

procedure TPageLayout.RenderSidebar;
begin
  LayoutSideBar.AddObject(TComponentSidebar.New(Self).Component);
end;

procedure TPageLayout.UnRender;
begin
end;

end.
