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
    Memo1: TMemo;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure omusikClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure oresolutorClick(Sender: TObject);
    procedure ipistasClick(Sender: TObject);
    procedure Memo1Click(Sender: TObject);
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

//form2.mopc.Lines[1]:=inttostr(trackbar.Position);



procedure TForm7.ToolButton1Click(Sender: TObject);
begin
//form2.mopc.Lines.SaveToFile(ExtractFilePath(paramstr(0))+'opc.pro');
form2.CargaOpciones;
close;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
//form2.mopc.Lines.LoadFromFile(ExtractFilePath(paramstr(0))+'opc.pro');
 //form2.mopc.Lines[0]='0' then omusik.Checked:=false else omusik.checked:=true;
 //form2.mopc.Lines[2]='0' then oresolutor.Checked:=false else

 //form2.mopc.Lines[3]='0' then ipistas.Checked:=false else





end;

procedure TForm7.omusikClick(Sender: TObject);
begin
 //form2.mopc.Lines[0]:='1' else //form2.mopc.Lines[0]:='0';
end;

procedure TForm7.ToolButton2Click(Sender: TObject);
begin
close;
end;

procedure TForm7.oresolutorClick(Sender: TObject);
begin
//if oresolutor.Checked then //form2.mopc.Lines[2]:='1' else //form2.mopc.Lines[2]:='0';

end;

procedure TForm7.ipistasClick(Sender: TObject);
begin
//if ipistas.Checked then //form2.mopc.Lines[3]:='1' else //form2.mopc.Lines[3]:='0';

end;

procedure TForm7.Memo1Click(Sender: TObject);
begin
form7.Close;
end;

end.
