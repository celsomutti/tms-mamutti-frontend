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
  FMX.Effects, mamutti.view.components.headerpage,
  mamutti.view.components.expandmenubutton;

type
  TPageLayout = class(TForm, iRouter4DComponent)
    LayoutContainer: TLayout;
    LayoutSideBar: TLayout;
    LayoutMain: TLayout;
    VertScrollBox: TVertScrollBox;
    LayoutFooter: TLayout;
    LayoutBody: TLayout;
    LayoutHeader: TLayout;
    Line1: TLine;
    LayoutHeaderPage: TLayout;
    multiView: TMultiView;
    MasterButton: TSpeedButton;
  private
    procedure RenderSidebar;
    procedure RenderHeaderPage;
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
  RenderHeaderPage;
  TRouter4D.Render<TPageHome>.SetELement(LayoutBody);
  Result := LayoutContainer;
end;

procedure TPageLayout.RenderHeaderPage;
begin
  LayoutHeaderPage.AddObject(TComponentHeaderPage.New(Self).Component);
end;

procedure TPageLayout.RenderSidebar;
begin
  LayoutSideBar.AddObject(TComponentSidebar.New(Self).Component);
end;

procedure TPageLayout.UnRender;
begin

end;

end.
