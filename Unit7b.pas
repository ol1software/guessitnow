unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin;

type
  TForm7 = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    omusik: TCheckBox;
    TrackBar: TTrackBar;
    Label1: TLabel;
    oresolutor: TCheckBox;
    ipistas: TCheckBox;
    procedure TrackBarChange(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure omusikClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure oresolutorClick(Sender: TObject);
    procedure ipistasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm7.TrackBarChange(Sender: TObject);
begin

case trackbar.Position of
        1: label1.Caption:='Dificultad (Baja)';
        2: label1.Caption:='Dificultad (Normal)';
        3: label1.Caption:='Dificultad (Alta)';
end;

form2.mopc.Lines[1]:=inttostr(trackbar.Position);

end;

procedure TForm7.ToolButton1Click(Sender: TObject);
begin
form2.mopc.Lines.SaveToFile(ExtractFilePath(paramstr(0))+'opc.pro');
form2.CargaOpciones;
close;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
form2.mopc.Lines.LoadFromFile(ExtractFilePath(paramstr(0))+'opc.pro');
if form2.mopc.Lines[0]='0' then omusik.Checked:=false else omusik.checked:=true;
if form2.mopc.Lines[2]='0' then oresolutor.Checked:=false else
                                oresolutor.checked:=true;
if form2.mopc.Lines[3]='0' then ipistas.Checked:=false else
                                ipistas.checked:=true;


trackbar.Position:=strtoint(form2.mopc.lines[1]);

end;

procedure TForm7.omusikClick(Sender: TObject);
begin
if omusik.Checked then form2.mopc.Lines[0]:='1' else form2.mopc.Lines[0]:='0';
end;

procedure TForm7.ToolButton2Click(Sender: TObject);
begin
close;
end;

procedure TForm7.oresolutorClick(Sender: TObject);
begin
if oresolutor.Checked then form2.mopc.Lines[2]:='1' else form2.mopc.Lines[2]:='0';

end;

procedure TForm7.ipistasClick(Sender: TObject);
begin
if ipistas.Checked then form2.mopc.Lines[3]:='1' else form2.mopc.Lines[3]:='0';

end;

end.
