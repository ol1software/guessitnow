object Form6: TForm6
  Left = 64
  Top = 75
  Width = 621
  Height = 479
  Caption = 'Probe - Editor'
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
    Width = 132
    Height = 13
    Caption = 'Ficheros (temas) disponibles'
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
      Width = 71
      Height = 13
      Caption = 'T'#237'tulo del tema'
    end
    object Label2: TLabel
      Left = 13
      Top = 56
      Width = 84
      Height = 13
      Caption = 'Niveles (palabras)'
    end
    object Label3: TLabel
      Left = 117
      Top = 56
      Width = 68
      Height = 13
      Caption = 'Tiempo x nivel'
    end
    object Label4: TLabel
      Left = 17
      Top = 104
      Width = 72
      Height = 13
      Caption = 'Nombre fichero'
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
    Caption = 'Cargar fichero seleccionado'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 280
    Width = 193
    Height = 25
    Caption = 'Guardar tema actual'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 528
    Top = 232
    Width = 75
    Height = 105
    Caption = 'Cerrar'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 256
    Top = 248
    Width = 193
    Height = 25
    Caption = 'Nuevo Tema...'
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
    Caption = 'Guardar como...'
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
