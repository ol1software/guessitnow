unit LcdDisplay;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TLcdDisplay = class(TGraphicControl)
  private
    FNumDigits, FValue, FDigitHeight, FDigitWidth, FLineWidth: integer;
    FBackGroundColor, FLightOnColor, FLightOffColor: TColor;
    FDigit: array [0..9] of TBitmap;
    FsegCl: array [0..9, 1..7] of TColor;
    FBitmap: TBitmap;

    procedure setNumDigits (newValue: integer);
    procedure setValue (newValue: integer);
    procedure setDigitHeight (newValue: integer);
    procedure setDigitWidth (newValue: integer);
    procedure setLineWidth (newValue: integer);
    procedure setBackgroundColor (newValue: TColor);
    procedure setLightOnColor (newValue: TColor);
    procedure setLightOffColor (newValue: TColor);

    procedure regenBitMaps;
    procedure assignColors (seg: integer; s1,s2,s3,s4,s5,s6,s7: Boolean);

  protected
    procedure paint; override;

  public
    constructor Create (AOwner: TComponent); override;
    destructor Destroy; override;

  published
    property Align default alNone;
    property Width default 168;
    property Height default 36;

    property NumDigits: integer read FNumDigits write setNumDigits default 6;
    property Value: integer read FValue write setValue default 0;
    property DigitHeight: integer read FDigitHeight write setDigitHeight default 30;
    property DigitWidth: integer read FDigitWidth write setDigitWidth default 20;
    property DigitLineWidth: integer read FLineWidth write setLineWidth default 5;
    property BackgroundColor: TColor read FBackgroundColor write setBackgroundColor default clOlive;
    property LightOnColor: TColor read FLightOnColor write setLightOnColor default cllime;
    property LightOffColor: TColor read FLightOffColor write setLightOffColor default clGreen;
  end;

procedure Register;

implementation

procedure TLcdDisplay.assignColors (seg: integer; s1,s2,s3,s4,s5,s6,s7: Boolean);
var
   c: integer;
begin
if s1 = true then
   FSegCl[seg, 1] := FLightOnColor
else
   FSegCl[seg, 1] := FLightOffColor;
if s2 = true then
   FSegCl[seg, 2] := FLightOnColor
else
   FSegCl[seg, 2] := FLightOffColor;
if s3 = true then
   FSegCl[seg, 3] := FLightOnColor
else
   FSegCl[seg, 3] := FLightOffColor;
if s4 = true then
   FSegCl[seg, 4] := FLightOnColor
else
   FSegCl[seg, 4] := FLightOffColor;
if s5 = true then
   FSegCl[seg, 5] := FLightOnColor
else
   FSegCl[seg, 5] := FLightOffColor;
if s6 = true then
   FSegCl[seg, 6] := FLightOnColor
else
   FSegCl[seg, 6] := FLightOffColor;
if s7 = true then
   FSegCl[seg, 7] := FLightOnColor
else
   FSegCl[seg, 7] := FLightOffColor;
end;

procedure TLcdDisplay.regenBitmaps;
var
TL, TR, TBL, TBR,
ML, MTL, MTR, MR, MBL, MBR,
BL, BTL, BTR, BR: TPoint;
v: array [1..6] of TPoint;


c, wAlt: integer;

begin
wAlt := FDigitHeight;

// Asignar los puntos que definen los 7 segmentos
TL.x := 0; TL.y := 0;
TR.x := FDigitWidth-1; TR.y := 0;
TBL.x := FLineWidth - 1; TBL.y := FLineWidth -1;
TBR.x := FDigitWidth - FlineWidth; TBR.y := TBL.y;
ML.x := 0; ML.y := wAlt div 2;
MTL.x := TBL.x; MTL.y := ML.y - (FLineWidth div 2);
MTR.x := TBR.x; MTR.y := MTL.y;
MR.x := TR.x; MR.y := ML.y;
MBL.x := TBL.x; MBL.y := ML.y + (FLineWidth div 2);
MBR.x := MTR.x; MBR.y := MBL.y;
BL.x := 0; BL.y := wAlt - 1;
BR.x := TR.x; BR.y := BL.y;
BTL.x := TBL.x; BTL.y := wAlt - FlineWidth;
BTR.x := TBR.x; BTR.y := BTL.y;

// Asignar los colores de cada segmento para cada dígito
{ Identificación de segmentos:
 --1--
|     |
2     3
|     |
 --4--
|     |
5     6
|     |
 --7--
}
assignColors (0,true,true,true,false,true,true,true);
assignColors (1,false,false,true,false,false,true,false);
assignColors (2,true,false,true,true,true,false,true);
assignColors (3,true,false,true,true,false,true,true);
assignColors (4,false,true,true,true,false,true,false);
assignColors (5,true,true,false,true,false,true,true);
assignColors (6,true,true,false,true,true,true,true);
assignColors (7,true,false,true,false,false,true,false);
assignColors (8,true,true,true,true,true,true,true);
assignColors (9,true,true,true,true,false,true,true);

// Generar cada bitmap
for c := 0 to 9 do
    begin
    FDigit[c].free;
    FDigit[c] := TBitmap.create;
    FDigit[c].width := FDigitWidth;
    FDigit[c].height := wAlt;
    with FDigit[c].canvas do
         begin
         pen.width := 1;
         pen.color := FBackGroundColor;
         brush.color := FBackGroundColor;
         brush.style := bsSolid;
         rectangle (TL.x, TL.y, BR.x, BR.y);
         // Segmento 1
         v[1] := TL; v[2] := TR; v[3] := TBR; v[4] := TBL;
         brush.color := FSegCl[c, 1]; polygon (slice (v, 4));
         // Segmento 2
         v[1] := TL; v[2] := TBL; v[3] := MTL; v[4] := ML;
         brush.color := FSegCl[c, 2]; polygon (slice (v, 4));
         // Segmento 3
         v[1] := TR; v[2] := MR; v[3] := MTR; v[4] := TBR;
         brush.color := FSegCl[c, 3]; polygon (slice (v, 4));
         // Segmento 4
         v[1] := ML; v[2] := MTL; v[3] := MTR; v[4] := MR;
         v[5] := MBR; v[6] := MBL;
         brush.color := FSegCl[c, 4]; polygon (v);
         // Segmento 5
         v[1] := ML; v[2] := MBL; v[3] := BTL; v[4] := BL;
         brush.color := FSegCl[c, 5]; polygon (slice (v, 4));
         // Segmento 6
         v[1] := MR; v[2] := BR; v[3] := BTR; v[4] := MBR;
         brush.color := FSegCl[c, 6]; polygon (slice (v, 4));
         // Segmento 7
         v[1] := BL; v[2] := BTL; v[3] := BTR; v[4] := BR;
         brush.color := FSegCl[c, 7]; polygon (slice (v, 4));
         end;
    //FDigit[c].saveToFile (format('DIGIT%d.BMP',[c]));
    end;
end;

constructor TLcdDisplay.Create (AOwner: TComponent);
begin
inherited Create (AOwner);
controlStyle := [csOpaque];
FBitmap := TBitmap.create;

width := 168;
Height := 36;

NumDigits:= 6;
Value:= 0;
DigitHeight := 30;
DigitWidth:= 20;
DigitLineWidth:= 5;
BackgroundColor:= clOlive;
LightOnColor:= clLime;
LightOffColor:= clGreen;

regenBitMaps;
end;

destructor TLcdDisplay.Destroy;
var
   c: integer;
begin
for c := 0 to 9 do FDigit[c].free;
FBitmap.free;

inherited destroy;
end;

procedure TLcdDisplay.setNumDigits (newValue: integer);
begin
FNumDigits := newValue;
invalidate;
end;

procedure TLcdDisplay.setValue (newValue: integer);
begin
FValue := NewValue;
invalidate;
end;

procedure TLcdDisplay.setDigitHeight (newValue: integer);
begin
FDigitHeight := newValue;
regenBitmaps;
invalidate;
end;

procedure TLcdDisplay.setDigitWidth (newValue: integer);
begin
FDigitWidth := newValue;
regenBitmaps;
invalidate;
end;

procedure TLcdDisplay.setLineWidth (newValue: integer);
begin
FLineWidth := newValue;
regenBitmaps;
invalidate;
end;

procedure TLcdDisplay.setBackgroundColor (newValue: TColor);
begin
FBackgroundColor := NewValue;
regenBitmaps;
invalidate;
end;

procedure TLcdDisplay.setLightOnColor (newValue: TColor);
begin
FLightOnColor := newValue;
regenBitmaps;
invalidate;
end;

procedure TLcdDisplay.setLightOffColor (newValue: TColor);
begin
FLightOffColor := newValue;
regenBitmaps;
invalidate;
end;

procedure TLcdDisplay.paint;
var
   area: TRect;
   cad, cadFormat: string;
   anchoPosi, anchoCar, posiLeft, PosiTop, c: integer;
begin
area := getClientRect;
cadFormat := format ('%%%d.%dd', [FNumDigits, FNumDigits]);
cad := format (cadFormat, [FValue]);
FBitmap.height := height;
FBitmap.width := width;
with FBitmap.canvas do
     begin
     brush.color := FBackgroundColor;
     fillRect (area);
     anchoPosi := self.width div FNumDigits;
     PosiTop := (self.height - FDigitHeight) div 2;
     posiLeft := (anchoPosi - FDigitwidth) div 2;
     for c := 1 to FNumDigits do
         begin
         draw (posiLeft, posiTop, FDigit[strToInt(cad[c])]);
         inc (posiLeft, anchoPosi);
         end;
     end;
canvas.draw (0, 0, FBitmap);
end;

//////////////////////////////////////////////
procedure Register;
begin
  RegisterComponents('Samples', [TLcdDisplay]);
end;

end.
