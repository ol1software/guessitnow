unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Math, Menus, ComCtrls, LcdDisplay,
   jpeg;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    NuevoJuego1: TMenuItem;
    opRankings1: TMenuItem;
    Panel3: TPanel;
    cnivel: TProgressBar;
    Label3: TLabel;
    Panel4: TPanel;
    franking: TMemo;
    Memo1: TMemo;
    Image1: TImage;
    Panel5: TPanel;
    Panel6: TPanel;
    cletras: TStaticText;
    Panel7: TPanel;
    ctiempo: TLabel;
    ctema: TStaticText;
    corigen: TStaticText;
    ctexto: TEdit;
    ctexto2: TStaticText;
    cpuntos: TStaticText;
    StaticText1: TStaticText;
    iretirar: TImage;
    pista: TStaticText;
    StaticText2: TStaticText;
    procedure Timer1Timer(Sender: TObject);
    procedure ctextoChange(Sender: TObject);
    procedure Juego;
    procedure FormShow(Sender: TObject);
    procedure GameOver;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure iresolutorClick(Sender: TObject);
    procedure iretirarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  xtema = record
        nombre, fichero: string;
        niveles, tiempo: integer;
         end;

var
  Form1: TForm1;
  tema: array[1..300] of xtema;
  tiempo, orden,nivel,puntos,niveles, tiempomaximo,
  numtema, comodines: integer;
  cad: string;

implementation

uses Unit3, Unit2;

{$R *.dfm}

procedure TForm1.GameOver;
var c: string;
begin
if form1.Visible=false then exit;
orden:=0;
timer1.enabled:=false;
c:=InputBox('GAME OVER!', 'Thanks for playing', 'OL1 SOFTWARE')+'('+ctema.caption+')';
form1.close;
form2.Show;



end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if tiempo>0 then tiempo:=tiempo-1 else begin
                orden:=0;
                timer1.enabled:=false;
                GameOver;
                end;

ctiempo.caption:=inttostr(tiempo);
end;

procedure TForm1.Juego;
var i, x, lcad: integer;
bucle: array[1..22] of boolean;
tpista: string;
begin
nivel:=nivel+1;
cpuntos.caption:=inttostr(puntos);
cnivel.Position:=nivel;
cad:=memo1.Lines[orden];
pista.Caption:=memo1.Lines[orden+niveles];

lcad:=length(cad);
cletras.Caption:=inttostr(lcad);
corigen.caption:='';
for i:=1 to 21 do bucle[i]:=false;
Randomize;
for i:=1 to lcad do Begin
Repeat
  x:=Random(lcad)+1;
Until bucle[x]=false;
bucle[x]:=true;
corigen.Caption:=corigen.caption+cad[x];
                           End;

ctexto.MaxLength:=lcad;
ctexto.Text:='';
ctexto2.Caption:='';
for i:=1 to lcad
  do if cad[i]=' ' then
        ctexto2.caption:=ctexto2.caption+'   '
        else
        ctexto2.caption:=ctexto2.caption+'*';

if nivel=1 then
tiempo:=tiempo+tiempomaximo
           else
           tiempo:=tiempo+(tiempomaximo div dificultad);

tiempo:=50;

timer1.Enabled:=true;

end;

procedure TForm1.ctextoChange(Sender: TObject);
var i: integer;
cadresultado, cadusuario: string;
longresultado, longusuario: integer;
begin
cadresultado:=UpperCase(memo1.Lines[orden]);
cadusuario:=UpperCase(ctexto.Text);
ctexto2.Caption:='';

longusuario:=length(cadusuario);
longresultado:=length(cadresultado);
if longusuario<longresultado then
  for i:=longusuario to longresultado do cadusuario:=cadusuario+cadresultado[i];

for i:=1 to longresultado
  do if cadusuario[i]=cadresultado[i] then
        ctexto2.caption:=ctexto2.caption+' '+cadresultado[i]+' '
        else
          if cadresultado[i]=' ' then
                  ctexto2.caption:=ctexto2.caption+' '
                                 else
                  ctexto2.caption:=ctexto2.caption+'*';


if UpperCase(ctexto.Text)=UpperCase(memo1.Lines[orden]) then Begin
   //     ShowMessage('ok');
        puntos:=puntos+(tiempo*5);
        orden:=orden+1;
        if orden>=niveles then GameOver;
        Juego;                  End;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
cnivel.Max:=niveles;
ctema.Caption:=tema[numtema].nombre;
orden:=0;
nivel:=0;
puntos:=0;
tiempo:=0;


if form2.mopc.Lines[3]='0' then pista.Visible:=false else
                                pista.Visible:=true;

if dificultad=1 then comodines:=20 else comodines:=7-(dificultad*2);

Juego;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.Reproducir(false);
iretirarClick(self);
end;

procedure TForm1.iresolutorClick(Sender: TObject);
var c: string[30];
d: string;
a, i: integer;
begin



ctexto2.Caption:=d;



end;

procedure TForm1.iretirarClick(Sender: TObject);
begin
GameOver;
end;

end.
