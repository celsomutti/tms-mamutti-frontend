unit acerp.view.components.sidebar2;

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
  FMX.Layouts, acerp.view.components.buttonmenu;

type
  TComponentSidebar2 = class(TForm)
    Layout1: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    class function New(AOwner: TComponent): TComponentSidebar2;
    function Component: TFMXObject;
  end;

var
  ComponentSidebar2: TComponentSidebar2;

implementation

{$R *.fmx}

function TComponentSidebar2.Component: TFMXObject;
begin
  Result := Layout1;
end;

procedure TComponentSidebar2.FormCreate(Sender: TObject);
begin
  Layout1.AddObject(TComponentButtonMenu.New(Self).Component);
end;

class function TComponentSidebar2.New(AOwner: TComponent): TComponentSidebar2;
begin
  Result := Self.Create(AOwner);
end;

end.
