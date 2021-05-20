unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm4 = class(TForm)
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Image2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Image2Click(Sender: TObject);
begin
//executefile('http://www.jaojsoft.com','','.',1);

end;

procedure TForm4.Button1Click(Sender: TObject);
begin
close;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
memo1.Visible:=not(memo1.Visible);
form4.Resize;

end;

end.
