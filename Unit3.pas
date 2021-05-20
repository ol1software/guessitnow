unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ValEdit, StdCtrls, Math, TeEngine, TeeFunci, Series,
  ExtCtrls, TeeProcs, Chart, VclTee.TeeGDIPlus;

type
  TForm3 = class(TForm)
    ranking: TMemo;
    Chart1: TChart;
    TeeFunction1: THighTeeFunction;
    Series1: TBarSeries;
    procedure FormShow(Sender: TObject);
    procedure Chart1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormShow(Sender: TObject);
type
xlista = record
        valor: integer;
        nombre: string;
         end;
var i, x, n, posmayor, valormayor, num: integer;
lista1: array[1..50] of xlista;
begin
ranking.Lines.Clear;
ranking.Lines.LoadFromFile('ranking.prr');

i:=0;
x:=1;
n:=ranking.lines.count;
num:=n div 2;
Series1.Clear;

if n<3 then Begin
  Series1.Add( strtoint(ranking.lines[1]) , ranking.lines[0]    , clTeeColor );
            Exit;
            End;

Repeat
lista1[x].nombre:=ranking.lines[i];
lista1[x].valor:=strtoint(ranking.lines[i+1]);
x:=x+1;
i:=i+2;
Until i>=n;

for i:=1 to num do Begin
        valormayor:=-1;
        for x:=1 to num do if valormayor<lista1[x].valor then Begin
                                                posmayor:=x;
                                                valormayor:=lista1[x].valor;
                                                   End;
Series1.Add( lista1[posmayor].valor , lista1[posmayor].nombre    , clTeeColor );
        lista1[posmayor].valor:=0;
                 End;


end;

procedure TForm3.Chart1Click(Sender: TObject);
begin
form3.close;
end;

end.
