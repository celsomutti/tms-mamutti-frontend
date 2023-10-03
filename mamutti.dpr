program mamutti;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  mamutti.view.index in 'src\view\mamutti.view.index.pas' {PageIndex},
  mamutti.view.pages.layout in 'src\view\pages\layout\mamutti.view.pages.layout.pas' {PageLayout},
  mamutti.view.components.sidebar in 'src\view\components\sidebar\mamutti.view.components.sidebar.pas' {ComponentSidebar: TFrame},
  mamutti.view.components.button in 'src\view\components\buttonmenu\mamutti.view.components.button.pas' {ComponentButton: TFrame},
  mamutti.services.charts in 'src\services\mamutti.services.charts.pas',
  mamutti.services.chats.interfaces in 'src\services\mamutti.services.chats.interfaces.pas',
  mamutti.services.enums in 'src\services\mamutti.services.enums.pas',
  mamutti.services.utils in 'src\services\mamutti.services.utils.pas',
  mamutti.view.components.interfaces in 'src\view\components\mamutti.view.components.interfaces.pas',
  mamutti.view.components.cards in 'src\view\components\cards\mamutti.view.components.cards.pas' {ComponentCard: TFrame},
  mamutti.view.components.cardsgraficos in 'src\view\components\cardsgraficos\mamutti.view.components.cardsgraficos.pas' {ComponentCardGraficos: TFrame},
  mamutti.view.components.edits in 'src\view\components\edit\mamutti.view.components.edits.pas' {ComponentEdit: TFrame},
  mamutti.view.components.editImage in 'src\view\components\editImagem\mamutti.view.components.editImage.pas' {ComponentEditImage: TFrame},
  mamutti.view.pages.home in 'src\view\pages\home\mamutti.view.pages.home.pas' {PageHome},
  mamutti.view.router in 'src\view\router\mamutti.view.router.pas',
  mamutti.view.components.buttonmenu in 'src\view\components\buttonmenu\mamutti.view.components.buttonmenu.pas' {ComponentButtonMenu: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TPageIndex, PageIndex);
  Application.Run;
end.
