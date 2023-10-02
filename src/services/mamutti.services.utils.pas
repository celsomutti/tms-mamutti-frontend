unit mamutti.services.utils;

interface

uses
  FMX.Objects,
  FMX.Types,
  System.UITypes;

type
  TUtils = class
  private
  public
    class procedure ResourceImage(Resource: String; Image: TImage); overload;
    class procedure ResourceImage(Resource: String; Image: TFMXObject);
      overload;
    class function UpperCameCase(Value: String): String;
    class procedure ImageColor(Image: TImage; Color: TAlphaColor);
  end;

implementation

uses
  System.SysUtils,
  System.Classes,
  System.Types;

{ TUtils }

class procedure TUtils.ResourceImage(Resource: String; Image: TImage);
begin
  var
  lResource := TResourceStream.Create(HInstance, Resource, RT_RCDATA);
  try
    Image.Bitmap.LoadFromStream(lResource);
  finally
    lResource.Free;
  end;
end;

class procedure TUtils.ImageColor(Image: TImage; Color: TAlphaColor);
begin
  Image.Bitmap.ReplaceOpaqueColor(Color);
end;

class procedure TUtils.ResourceImage(Resource: String; Image: TFMXObject);
begin
  var
  lResource := TResourceStream.Create(HInstance, Resource, RT_RCDATA);
  try
    TShape(Image).Fill.Bitmap.Bitmap.LoadFromStream(lResource);
  finally
    lResource.Free;
  end;
end;

class function TUtils.UpperCameCase(Value: String): String;
begin
  Result := UpperCase(Copy(Value,1,1)) +
    LowerCase(Copy(Value, 2, Length(Value)));
end;

end.
