unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, LcdDisplay, Grids, ValEdit, jpeg, ExtCtrls,
  ComCtrls, Vcl.Imaging.GIFImg, Vcl.Imaging.pngimage;

type
  TForm2 = class(TForm)
    listafich: TFileListBox;
    contenido: TMemo;
    lfichero: TLabel;
    Image4: TImage;
    Image6: TImage;
    imgempezar: TImage;
    StatusBar1: TStatusBar;
    Image1: TImage;
    barra: TStatusBar;
    fmidi: TFileListBox;
    mopc: TMemo;
    tabs: TTabControl;
    lista: TListBox;
    Panel1: TPanel;
    cniveles: TLcdDisplay;
    Label1: TLabel;
    Panel2: TPanel;
    ctiempoxnivel: TLcdDisplay;
    Label2: TLabel;
    Image2: TImage;
    LinkLabel1: TLinkLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    procedure listaClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure imgempezarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure CargarTemas;
    procedure Image1Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Reproducir(b: boolean);
    procedure Image7Click(Sender: TObject);
    procedure CargaOpciones;
    procedure Image7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure imgempezarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure tabsChange(Sender: TObject);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  Dificultad: integer;
  Musica, Resolutor: boolean;

implementation

uses Unit1, Unit3, Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}

procedure TForm2.CargaOpciones;
begin
mopc.Lines.LoadFromFile(ExtractFilePath(paramstr(0))+'opc.pro');
if mopc.Lines[0]='0' then Musica:=false else Musica:=true;
if mopc.Lines[2]='0' then Resolutor:=false else Resolutor:=true;

Dificultad:=strtoint(mopc.lines[1]);

end;

procedure TForm2.Reproducir(b: boolean);
var c: string;
i: integer;
begin

if Musica=false then exit;


end;

procedure TForm2.StaticText1Click(Sender: TObject);
begin
form4.showmodal;
end;

procedure TForm2.CargarTemas;
var i: integer;
a: string;
begin
lista.items.clear;
Case Tabs.TabIndex of
   0: a:='*.prb';
   1: a:='*.cin';
   2: a:='*.coc';
End;

listafich.Mask:=a;

for i:=0 to listafich.Items.Count-1 do Begin
     contenido.Lines.LoadFromFile(listafich.Items[i]);
     tema[i+1].nombre:=contenido.lines[0];
     tema[i+1].niveles:=strtoint(contenido.lines[1]);
     tema[i+1].tiempo:=strtoint(contenido.lines[2]);
     tema[i+1].fichero:=listafich.Items[i];
     lista.Items.add(contenido.Lines[0]);
                                     End;

end;

procedure TForm2.listaClick(Sender: TObject);
var a: integer;
begin
a:=lista.ItemIndex+1;
lfichero.Caption:=tema[a].fichero;
cniveles.Value:=tema[a].niveles;
ctiempoxnivel.Value:=tema[a].tiempo;
imgempezar.visible:=true;
end;

procedure TForm2.Image3Click(Sender: TObject);
begin
form3.showmodal;
end;

procedure TForm2.Image6Click(Sender: TObject);
begin
Reproducir(false);
close;
end;

procedure TForm2.imgempezarClick(Sender: TObject);
begin
if PChar(lfichero.caption)='lfichero' then
               Begin
Application.MessageBox( 'Select a theme',
   '@ol1software',  MB_OK  );
          exit;
               End;
Reproducir(false);
niveles:=cniveles.Value;
tiempomaximo:=ctiempoxnivel.value;
numtema:=lista.itemindex+1;
contenido.Lines.LoadFromFile(lfichero.Caption);

contenido.Lines.Delete(0);
contenido.Lines.Delete(0);
contenido.Lines.Delete(0);


Reproducir(true);

form1.Memo1.Lines.Clear;
form1.Memo1.Lines:=contenido.Lines;
form2.Hide;
form1.ShowModal;
    
end;

procedure TForm2.FormShow(Sender: TObject);
var i: integer;
begin


CargarTemas;

CargaOpciones;


end;

procedure TForm2.Image2Click(Sender: TObject);
begin
  if Application.MessageBox(
   'www.twitter.com/ol1software',
   '@ol1software',  MB_OK  ) = 1 then
   begin
     // Respuesta Yes
   end;
end;

procedure TForm2.Image4Click(Sender: TObject);
begin
form7.ShowModal;
end;

procedure TForm2.Image1Click(Sender: TObject);
begin
form6.showmodal;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  if Application.MessageBox(
   'Free game by... OL1 SOFTWARE. If you like, please tweet !<<<',
   '@ol1software',  MB_OK  ) = 1 then
   begin
     // Respuesta Yes
   end;

end;

procedure TForm2.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
barra.simpletext:='Select theme and play';
end;

procedure TForm2.Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
barra.simpletext:='Ranking de los mejores jugadores';
end;

procedure TForm2.Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
barra.simpletext:='Sobre Probe...';
end;

procedure TForm2.Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
barra.simpletext:='Help';

end;

procedure TForm2.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
barra.simpletext:='Editor';

end;

procedure TForm2.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
barra.simpletext:='www.ol1software.com';

end;

procedure TForm2.Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
barra.simpletext:='exit';

end;

procedure TForm2.Image7Click(Sender: TObject);
begin
form7.showmodal;
end;

procedure TForm2.Image7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
barra.simpletext:='www.ol1software.com';
end;

procedure TForm2.imgempezarMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
barra.simpletext:='click play';
end;

procedure TForm2.tabsChange(Sender: TObject);
begin
CargarTemas;

end;

procedure TForm2.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
barra.simpletext:='levels';

end;

procedure TForm2.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
barra.simpletext:='Level time in sec';

end;

end.
