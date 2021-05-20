unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, jpeg, ExtCtrls;

type
  TForm5 = class(TForm)
    Image1: TImage;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    procedure ToolButton1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm5.ToolButton1Click(Sender: TObject);
begin
close;
end;

procedure TForm5.Image1Click(Sender: TObject);
begin
close;
end;

end.
