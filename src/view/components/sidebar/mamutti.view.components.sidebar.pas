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
      .Nome('empresas')
      .SingleButton
      .Descricao('Empresas')
      .ColorDefault($FFFFFFFF)
//      .Click(procedure (Sender: TObject)
//      begin
//        TRouter4D.Link.&To('Empresas');
//      end)
      .Component);

  lListaBotoes.Add(
    TComponentButton.New(Self)
      .Nome('clientes')
      .SingleButton
      .Descricao('Clientes')
      .ColorDefault($FFFFFFFF)
      .Component);

  lListaBotoes.Add(
    TComponentButton.New(Self)
      .Nome('fornecedor')
      .SingleButton
      .Descricao('Fornecedores')
      .ColorDefault($FFFFFFFF)
      .Component);

  lListaBotoes.Add(
    TComponentButton.New(Self)
      .Nome('agente')
      .SingleButton
      .Descricao('Bases')
      .ColorDefault($FFFFFFFF)
      .Component);

    lListaBotoes.Add(
    TComponentButton.New(Self)
      .Nome('contratados')
      .SingleButton
      .Descricao('Contratados')
      .ColorDefault($FFFFFFFF)
      .Component);

    lListaBotoes.Add(
    TComponentButton.New(Self)
      .Nome('funcionarios')
      .SingleButton
      .Descricao('Funcionários')
      .ColorDefault($FFFFFFFF)
      .Component);

    lListaBotoes.Add(
    TComponentButton.New(Self)
      .Nome('motorista')
      .SingleButton
      .Descricao('Motoristas')
      .ColorDefault($FFFFFFFF)
      .Component);

    lListaBotoes.Add(
    TComponentButton.New(Self)
      .Nome('veiculos')
      .SingleButton
      .Descricao('Veículoas')
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

//  lytMenu.AddObject(
//    TComponentButton.New(Self)
//    .Nome('dashboard')
//    .SingleButton
//    .Descricao('Dashboard')
//    .Image('banco')
//    .ColorDefault($FFFFFFFF)
//    .Alinhamento(TAlignLayout.Top)
//    .Click(procedure (Sender: TObject)
//      begin
//        TRouter4D.Link.&To('Home');
//      end)
//    .Component);

  lytMenu.AddObject(
    TComponentButton.New(Self)
    .Nome('cadastros')
    .CompositeButton
    .SubMenu(lListaBotoes)
    .Descricao('Cadastros')
    .Image('cadastro')
    .ColorDefault($FFFFFFFF)
    .Alinhamento(TAlignLayout.Top)
    .Component);
end;

procedure TComponentSidebar.ConstruirPerfil;
begin
  lytProfile.AddObject(
    TComponentButton.New(Self)
      .Nome('perfil')
      .Perfil('perfil')
      .Descricao('Celso Mutti')
      .ColorDefault($FFFFFFFF)
      .Component);
end;

class function TComponentSidebar.New(AOwner: TComponent): TComponentSidebar;
begin
  Result := Self.Create(AOwner);
end;

end.
