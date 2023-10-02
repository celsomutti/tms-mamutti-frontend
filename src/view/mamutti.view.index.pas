unit mamutti.view.index;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts;

type
  TPageIndex = class(TForm)
    lytContainer: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageIndex: TPageIndex;

implementation

{$R *.fmx}

uses
  Router4D, mamutti.view.pages.home;

procedure TPageIndex.FormCreate(Sender: TObject);
begin
  TRouter4D.Render<TPageHome>.SetELement(lytContainer,lytContainer);
end;

end.
