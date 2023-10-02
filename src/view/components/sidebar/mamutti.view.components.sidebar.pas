unit mamutti.view.components.sidebar;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Graphics,
  FMX.Controls,
  FMX.Forms,
  FMX.Dialogs,
  FMX.StdCtrls,
  FMX.Layouts, mamutti.view.components.button, FMX.Objects;

type
  TComponentSidebar = class(TFrame)
    lytContainer: TLayout;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Line1: TLine;
    Line2: TLine;
    lytProfile: TLayout;
    lytMenu: TLayout;
    Rectangle1: TRectangle;
  private
    procedure ConstruirPerfil;
    procedure ConstruirMenu;
  public
    class function New(AOwner: TComponent): TComponentSidebar;
    function Component: TFMXObject;
  end;

implementation

uses
  Router4D,
  System.Generics.Collections;
{$R *.fmx}

{ TComponentSidebar }

function TComponentSidebar.Component: TFMXObject;
begin
  ConstruirMenu;
  ConstruirPerfil;
  Result := lytContainer;
end;

procedure TComponentSidebar.ConstruirMenu;
begin
  var lListaBotoes := TObjectList<TFMXObject>.Create;
  lListaBotoes.Add(
    TComponentButton.New(Self)
      .Nome('pessoas')
      .SingleButton
      .Descricao('Pessoas')
      .ColorDefault($FFFFFFFF)
      .Click(procedure (Sender: TObject)
      begin
        TRouter4D.Link.&To('Pessoas');
      end)
      .Component);

  lListaBotoes.Add(
    TComponentButton.New(Self)
      .Nome('empresas')
      .SingleButton
      .Descricao('Empresas')
      .ColorDefault($FFFFFFFF)
      .Component);

  lListaBotoes.Add(
    TComponentButton.New(Self)
      .Nome('mercadorias')
      .SingleButton
      .Descricao('Mercadorias')
      .ColorDefault($FFFFFFFF)
      .Component);

  lListaBotoes.Add(
    TComponentButton.New(Self)
      .Nome('caixa')
      .SingleButton
      .Descricao('Caixa')
      .ColorDefault($FFFFFFFF)
      .Component);


    lListaBotoes.Add(
    TComponentButton.New(Self)
      .Nome('turno')
      .SingleButton
      .Descricao('Turno')
      .ColorDefault($FFFFFFFF)
      .Component);

//  lListaBotoes.Add(
//    TComponentButton.New(Self)
//      .Nome('pessoas')
//      .SingleButton
//      .Descricao('Pessoas')
//      .Image('pessoas')
//      .ColorDefault($FFFFFFFF)
//      .Component);

  lytMenu.AddObject(
    TComponentButton.New(Self)
    .Nome('dashboard')
    .SingleButton
    .Descricao('Dashboard')
    .Image('banco')
    .ColorDefault($FFFFFFFF)
    .Alinhamento(TAlignLayout.Top)
    .Click(procedure (Sender: TObject)
      begin
        TRouter4D.Link.&To('Home');
      end)
    .Component);

  lytMenu.AddObject(
    TComponentButton.New(Self)
    .Nome('cadastros')
    .CompositeButton
    .SubMenu(lListaBotoes)
    .Descricao('Cadastros')
    .Image('cadastros')
    .ColorDefault($FFFFFFFF)
    .Alinhamento(TAlignLayout.Top)
    .Component);
end;

procedure TComponentSidebar.ConstruirPerfil;
begin
  lytProfile.AddObject(
    TComponentButton.New(Self)
      .Nome('perfil')
      .Perfil('darth')
      .Descricao('Darth Vader')
      .ColorDefault($FFFFFFFF)
      .Component);
end;

class function TComponentSidebar.New(AOwner: TComponent): TComponentSidebar;
begin
  Result := Self.Create(AOwner);
end;

end.
