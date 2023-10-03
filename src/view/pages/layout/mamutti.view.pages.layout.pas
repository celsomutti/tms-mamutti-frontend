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
  Router4D.Interfaces, FMX.StdCtrls, mamutti.view.components.sidebar;

type
  TPageLayout = class(TForm, iRouter4DComponent)
    lytContainer: TLayout;
    MultiView1: TMultiView;
    lytSideBar: TLayout;
    lytMain: TLayout;
    lytHeader: TLayout;
    lytBody: TLayout;
    recBackground: TRectangle;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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

fprocedure TPageLayout.Button1Click(Sender: TObject);
begin

end;

unction TPageLayout.Render: TFMXObject;
begin
  RenderSidebar;
  TRouter4D.Render<TPageHome>.SetELement(lytBody);
  Result := lytContainer;
end;

procedure TPageLayout.RenderSidebar;
begin
  lytSideBar.AddObject(TComponentSidebar.New(Self).Component);
end;

procedure TPageLayout.UnRender;
begin

end;

end.
