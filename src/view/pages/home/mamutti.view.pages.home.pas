unit mamutti.view.pages.home;

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
  Router4D.Interfaces;

type
  TPageHome = class(TForm, iRouter4DComponent)
    lytContainer: TLayout;
  private
    { Private declarations }
  public
    function Render: TFmxObject;
    procedure UnRender;
  end;


implementation

{$R *.fmx}

{ TPageHome }

function TPageHome.Render: TFmxObject;
begin
  Result := lytContainer;
end;

procedure TPageHome.UnRender;
begin
  Self.Free;
end;

end.
