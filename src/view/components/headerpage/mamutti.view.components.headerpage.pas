unit mamutti.view.components.headerpage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Effects, FMX.Objects, FMX.Controls.Presentation,
  mamutti.view.components.button;

type
  TComponentHeaderPage = class(TFrame)
    LayoutContainer: TLayout;
    LayoutCompany: TLayout;
    LayoutLogoCompany: TLayout;
    ImageLogoCompany: TImage;
    LayoutComanyName: TLayout;
    LabelCompanyName: TLabel;
    LayoutUserButon: TLayout;
  private
    procedure BuildImageLogo;
    procedure BuilderUserButton;
  public
    class function New(AOwner: TComponent): TComponentHeaderPage;
    function Component: TFMXObject;
  end;

implementation

{$R *.fmx}

uses
  Router4D,
  System.Generics.Collections, mamutti.view.components.expandmenubutton,
  mamutti.services.utils;

{ TComponentHeaderPage }

procedure TComponentHeaderPage.BuilderUserButton;
begin
  LayoutUserButon.AddObject(
    TComponentButton.New(Self)
      .Nome('perfil')
      .CompositeButton
      .Perfil('userface')
      .Descricao('Admin Admin Admin')
      .ColorDefault($FF556574)
      .Component);

end;

procedure TComponentHeaderPage.BuildImageLogo;
begin
  TUtils.ResourceImage('logocompany', ImageLogoCompany);
end;

function TComponentHeaderPage.Component: TFMXObject;
begin
  BuildImageLogo;
  BuilderUserButton;
  Result := LayoutContainer;
end;

class function TComponentHeaderPage.New(AOwner: TComponent)
  : TComponentHeaderPage;
begin
  Result := Self.Create(AOwner);
end;

end.
