unit mamutti.view.components.interfaces;

interface

uses
  System.UITypes, FMX.Types, System.SysUtils;

type
  TEditMargins = record
    Left: Integer;
    Top: Integer;
    Right: Integer;
    Bottom: Integer;
    class operator Initialize(out Dest: TEditMargins);
  end;


type
  iEdits = interface
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

{ TEditMargins }

class operator TEditMargins.Initialize(out Dest: TEditMargins);
begin
  Dest.Left := 0;
  Dest.Top := 0;
  Dest.Right := 0;
  Dest.Bottom := 0;
end;

end.
