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
    LayoutHeader: TLayout;
    VertScrollBox: TVertScrollBox;
    LayoutFooter: TLayout;
    LayoutBody: TLayout;
    LayoutExpandMenu: TLayout;
  private
    procedure RenderExpandMenu;
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
  RenderExpandMenu;
  TRouter4D.Render<TPageHome>.SetELement(LayoutBody);
  Result := LayoutContainer;
end;

procedure TPageLayout.RenderExpandMenu;
begin
  LayoutExpandMenu.AddObject(TComponentExpandMenuButton.New(Self)
  .Click(procedure (Sender: TObject)
      begin
        if LayoutSideBar.Width > 100 then
          LayoutSideBar.Width := 50
        else
          LayoutSideBar.Width := 160;
      end)
  .Component);
end;

procedure TPageLayout.RenderHeaderPage;
begin
  LayoutHeader.AddObject(TComponentHeaderPage.New(Self).Component);
end;

procedure TPageLayout.RenderSidebar;
begin
  LayoutSideBar.AddObject(TComponentSidebar.New(Self).Component);
end;

procedure TPageLayout.UnRender;
begin
end;

end.
