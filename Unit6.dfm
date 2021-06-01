object Form6: TForm6
  Left = 64
  Top = 75
  Caption = ' Editor'
  ClientHeight = 440
  ClientWidth = 605
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 16
    Top = 208
    Width = 196
    Height = 13
    Caption = 'Edite aqu'#237' las palabras (niveles) del tema:'
  end
  object Label6: TLabel
    Left = 256
    Top = 8
    Width = 89
    Height = 13
    Caption = 'AVAILABLE FILES'
  end
  object listafich: TFileListBox
    Left = 256
    Top = 24
    Width = 337
    Height = 177
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    Mask = '*.prb'
    ParentFont = False
    TabOrder = 0
  end
  object contenido: TMemo
    Left = 72
    Top = 224
    Width = 185
    Height = 137
    Lines.Strings = (
      'contenido')
    TabOrder = 1
    Visible = False
  end
  object contenido2: TMemo
    Left = 16
    Top = 224
    Width = 233
    Height = 217
    Color = clGradientActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'contenido')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 2
    OnChange = contenido2Change
  end
  object Panel1: TPanel
    Left = 32
    Top = 24
    Width = 193
    Height = 177
    TabOrder = 3
    object Label1: TLabel
      Left = 18
      Top = 8
      Width = 31
      Height = 13
      Caption = 'NAME'
    end
    object Label2: TLabel
      Left = 13
      Top = 56
      Width = 40
      Height = 13
      Caption = 'LEVELS'
    end
    object Label3: TLabel
      Left = 117
      Top = 56
      Width = 68
      Height = 13
      Caption = 'Tiempo x nivel'
      Visible = False
    end
    object Label4: TLabel
      Left = 18
      Top = 101
      Width = 53
      Height = 13
      Caption = 'FILENAME'
    end
    object Edit1: TEdit
      Left = 16
      Top = 24
      Width = 161
      Height = 21
      TabOrder = 0
    end
    object niv: TSpinEdit
      Left = 16
      Top = 72
      Width = 57
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 1
      Value = 0
    end
    object temp: TSpinEdit
      Left = 120
      Top = 72
      Width = 57
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 5
      Visible = False
    end
    object fic: TEdit
      Left = 16
      Top = 120
      Width = 161
      Height = 21
      TabOrder = 3
    end
  end
  object Button1: TButton
    Left = 336
    Top = 208
    Width = 177
    Height = 25
    Caption = 'LOAD FILE'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 280
    Width = 193
    Height = 25
    Caption = 'SAVE'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 528
    Top = 232
    Width = 75
    Height = 105
    Caption = 'CLOSE'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 255
    Top = 249
    Width = 193
    Height = 25
    Caption = 'NEW SUBJECT'
    TabOrder = 7
    OnClick = Button4Click
  end
  object Memo1: TMemo
    Left = 256
    Top = 344
    Width = 353
    Height = 105
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'INSTRUCTIONS'
      'To create a new Topic, click on '#39'New'
      'Subject '#39', indicate the'
      'name of the file to create and the title of the theme (for'
      'example: '#39'maresesp.prb'#39
      'Y'
      #39'Seas of Spain'#39').'
      'Then add the words (levels) you want'
      'In the box'
      'blue. You can also change the time you want'
      'assign to each word'
      '(or level) in '#39'Time x level'#39'.'
      'When you are done click on '#39'Save topic'
      'current'#39'.'
      ''
      ''
      'To edit an existing topic, click on the box'
      'red in the file'
      'you want to edit and then click on '#39'Upload file'
      'selected'#39'. Edit what'
      'then click on '#39'Save current topic'#39'.'
      ''
      ''
      ''
      ''
      'INSTRUCCIONES'
      'Para crear un nuevo Tema, haga click en '#39'Nuevo '
      'Tema'#39', indique el '
      'nombre del fichero a crear y el t'#237'tulo del tema (por '
      'ejemplo: '#39'maresesp.prb'#39' '
      'y '
      #39'Mares de Espa'#241'a'#39').'
      'A continuaci'#243'n a'#241'ada las palabras (niveles) que desee '
      'en el recuadro '
      'azul. Tambi'#233'n puede cambiar el tiempo que desea '
      'asignar a cada palabra'
      '(o nivel) en '#39'Tiempo x nivel'#39'. '
      'Cuando haya terminado haga click en '#39'Guardar tema '
      'actual'#39'.'
      ''
      ''
      'Para editar un tema existente, haga click en el recuadro '
      'rojo en el fichero '
      'que desea editar y luego click en '#39'Cargar fichero '
      'seleccionado'#39'. Edite lo que'
      'desee y despu'#233's haga click en '#39'Guardar tema actual'#39'.')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 8
  end
  object Button5: TButton
    Left = 296
    Top = 312
    Width = 113
    Height = 25
    Caption = 'SAVE AS'
    TabOrder = 9
    OnClick = Button5Click
  end
  object SaveDialog1: TSaveDialog
    Filter = '*.prb|*.prb'
    InitialDir = '.'
    Left = 272
    Top = 208
  end
end
