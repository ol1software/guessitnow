unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, Spin, ExtCtrls;

type
  TForm6 = class(TForm)
    listafich: TFileListBox;
    contenido: TMemo;
    contenido2: TMemo;
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    niv: TSpinEdit;
    Label3: TLabel;
    temp: TSpinEdit;
    fic: TEdit;
    Label4: TLabel;
    Button1: TButton;
    Label5: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label6: TLabel;
    Memo1: TMemo;
    SaveDialog1: TSaveDialog;
    Button5: TButton;
    procedure CargarFichero(i: integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure contenido2Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm6.CargarFichero(i: integer);
begin
  listafich.Directory:='.';
  listafich.Update;
  contenido.Lines.LoadFromFile(listafich.Items[i]);
  edit1.text:=contenido.lines[0];
  niv.value:=strtoint(contenido.lines[1]);
  temp.value:=strtoint(contenido.lines[2]);
  fic.text:=listafich.Items[i];

  contenido2.lines:=contenido.lines;
  contenido2.Lines.Delete(0);
  contenido2.Lines.Delete(0);
  contenido2.Lines.Delete(0);
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
if MessageDlg('ATENCIÓN, antes cargar un nuevo fichero, asegúrese de haber guardado los cambios si estaba editando un tema. PULSE OK PARA CONTINUAR o CANCEL PARA ABORTAR!!',
    mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then exit;

contenido.lines.clear;
CargarFichero(listafich.ItemIndex);

    
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
if edit1.text='' then begin ShowMessage('Cargue un tema o cree uno nuevo'); exit; end;
if MessageDlg('¿Desea guardar el tema actual?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then exit;

contenido.Lines.Clear;
contenido.Lines:=contenido2.lines;
contenido.Lines.Insert(0,edit1.text);
contenido.lines.Insert(1,inttostr(niv.value));
contenido.lines.Insert(2,inttostr(temp.value));
contenido.Lines.SaveToFile(fic.text);

listafich.Update;


end;

procedure TForm6.contenido2Change(Sender: TObject);
begin
niv.Value:=contenido2.Lines.Count;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
close;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.CargarTemas;
end;

procedure TForm6.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Form2.CargarTemas;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
fic.Text:=Inputbox('1/2 Nombre de fichero', 'Por favor, indique el nombre del fichero a crear', 'sinnombre.prb');
edit1.Text:=Inputbox('2/2 Nombre de fichero', 'Por favor, indique el título del tema', 'Sin Título');
contenido2.Lines.Clear;

ShowMessage('SI CREAS TUS PROPIOS TEMAS,PUEDES MANDARLOS A: JA@JAOJSOFT.COM PARA INCLUIRLOS EN LA SIGUIENTE VERSIÓN DE PROBE (utiliza GUARDAR COMO...). GRACIAS.');

end;

procedure TForm6.FormShow(Sender: TObject);
begin
  listafich.Directory:='.';
  listafich.Update;

end;

procedure TForm6.Button5Click(Sender: TObject);
begin
if SaveDialog1.Execute then Begin
contenido.Lines.Clear;
contenido.Lines:=contenido2.lines;
contenido.Lines.Insert(0,edit1.text);
contenido.lines.Insert(1,inttostr(niv.value));
contenido.lines.Insert(2,inttostr(temp.value));
        contenido.Lines.SaveToFile(savedialog1.FileName);
listafich.Update;

                            End;
end;

end.
