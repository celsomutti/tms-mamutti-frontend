unit mamutti.view.components.edits;

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
  FMX.Controls.Presentation,
  FMX.Layouts,
  FMX.Edit,
  FMX.Objects,
  FMX.Effects,
  mamutti.view.components.interfaces;

type
  TComponentEdit = class(TFrame,iEdits)
    lytContainer: TLayout;
    lblTitulo: TLabel;
    Rectangle1: TRectangle;
    edtText: TEdit;
    procedure edtTextChange(Sender: TObject);
  private
    FChange: TProc<TObject>;
  public
    class function New(AWOner: TComponent): iEdits;
    function Nome(Value: String): iEdits;
    function Text(Value: String): iEdits;
    function FontColor(Value: TAlphaColor = $FF000000): iEdits;
    function BackgroundColot(VAlue: TAlphaColor = $FFFFFFFF): iEdits;
    function Enable(Value: Boolean = False): iEdits;
    function Change(Value: TProc<TObject>): iEdits;
    function Alinhamento(Value: TAlignLayout): iEdits;
    function VertText(VAlue: TTextAlign): iEdits;
    function HorzText(Value: TTextAlign): iEdits;
    function Largura(Value: Integer): iEdits;
    function Margem(Value: TEditMargins): iEdits;
    function Titulo(Value: String): iEdits;
    function FontColorTitulo(Value: TAlphaColor = $FFE3E3E3):iEdits;
    function PlaceHolder(Value: String): iEdits;
    function Image(Value: string): iEdits;
    function ImageColor(Value: TAlphaColor): iEdits;
    function Password(Value: Boolean): iEdits;
    function Build: TFMXObject;
  end;

implementation

{$R *.fmx}

{ TComponentEdit }

function TComponentEdit.Alinhamento(Value: TAlignLayout): iEdits;
begin
  Result := Self;
  lytContainer.Align := TAlignLayout.None;
  lytContainer.Align := Value;
end;

function TComponentEdit.BackgroundColot(VAlue: TAlphaColor): iEdits;
begin
  Result := Self;
  Rectangle1.Fill.Color := VAlue;
end;

function TComponentEdit.Build: TFMXObject;
begin
  Result := lytContainer;
end;

function TComponentEdit.Change(Value: TProc<TObject>): iEdits;
begin
  Result := Self;
  FChange := Value;
end;

procedure TComponentEdit.edtTextChange(Sender: TObject);
begin
  if Assigned(FChange) then
    FChange(Sender);
end;

function TComponentEdit.Enable(Value: Boolean): iEdits;
begin
  Result := Self;
  Rectangle1.Fill.Color := $FFE3E3E3;
  edtText.Enabled := Value;
end;

function TComponentEdit.FontColor(Value: TAlphaColor): iEdits;
begin
  Result := Self;
  edtText.TextSettings.FontColor := VAlue;
end;

function TComponentEdit.FontColorTitulo(Value: TAlphaColor): iEdits;
begin
  Result := Self;
  lblTitulo.TextSettings.FontColor := Value;
end;

function TComponentEdit.HorzText(Value: TTextAlign): iEdits;
begin
  Result := Self;
  edtText.TextSettings.HorzAlign := Value;
end;

function TComponentEdit.Image(Value: string): iEdits;
begin
  Result := sELF;
end;

function TComponentEdit.ImageColor(Value: TAlphaColor): iEdits;
begin
  Result := sELF;
end;

function TComponentEdit.Largura(Value: Integer): iEdits;
begin
  Result := Self;
  lytContainer.Width := Value;
end;

function TComponentEdit.Margem(Value: TEditMargins): iEdits;
begin
  Result := Self;
  lytContainer.Margins.Left := Value.Left;
  lytContainer.Margins.Right := Value.Right;
  lytContainer.Margins.Bottom := Value.Bottom;
  lytContainer.Margins.Top := Value.Top;
end;

class function TComponentEdit.New(AWOner: TComponent): iEdits;
begin
  Result := Self.Create(AWOner);
end;

function TComponentEdit.Nome(Value: String): iEdits;
begin
  Result := Self;
  Self.Name := Value;
end;

function TComponentEdit.Password(Value: Boolean): iEdits;
begin
  Result := sELF;
end;

function TComponentEdit.PlaceHolder(Value: String): iEdits;
begin
  Result := Self;
  edtText.TextPrompt := Value;
end;

function TComponentEdit.Text(Value: String): iEdits;
begin
  Result := Self;
  edtText.Text := Value;
end;

function TComponentEdit.Titulo(Value: String): iEdits;
begin
  Result := Self;
  lblTitulo.Text := Value;
end;

function TComponentEdit.VertText(VAlue: TTextAlign): iEdits;
begin
  Result := Self;
  edtText.TextSettings.VertAlign := Value;
end;

end.
