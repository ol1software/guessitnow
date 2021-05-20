object Form7: TForm7
  Left = 310
  Top = 24
  BorderStyle = bsDialog
  ClientHeight = 427
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 385
    Width = 676
    Height = 21
    Align = alBottom
    AutoSize = True
    ButtonHeight = 21
    ButtonWidth = 55
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 0
    ExplicitTop = 406
    ExplicitWidth = 484
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = ' Ok '
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 55
      Top = 0
      Caption = ' Cancelar '
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 676
    Height = 406
    Align = alClient
    Alignment = taCenter
    Color = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Lines.Strings = (
      'ADIVINALO AHORA El juego de las palabras con letras '
      'desordenadas'
      ''
      '-El prop'#243'sito de este juego es el de averiguar '
      'una palabra, en la cual sus letras se hayan '
      'desordenadas.'
      ''
      '-El juego se divide en temas.'
      ''
      '-Tambi'#233'n se dispone de 5 comodines, con los '
      'que obtenemos la primera letra de la palabra.'
      ''
      ''
      '#EJEMPLO'
      ''
      '-Si elegimos por ejemplo el tema '#39'Planetas del '
      'Sistema Solar'#39', deberemos averiguar las palabras '
      'con '
      'letras desordenadas que corresponden a '
      'planetas del sistema solar.'
      ''
      ''
      '$#EDITOR'
      ''
      '-contiene un editor para crear/editar tus propios '
      'temas, accesible desde el men'#250' principal.'
      ''
      '-Su funcionamiento es muy sencillo, explicado '
      'en el mismo editor.'
      ''
      '-Si creas tus propios temas, por favor m'#225'ndalos '
      'al twitter @ol1software haciendo tweet, para incluirlo en la '
      'pr'#243'xima '
      'versi'#243'n '
      'del juego'
      '(Utiliza GUARDAR COMO... y nos mandas el '
      'fichero que guardes)'
      ''
      ''
      ''
      ''
      ''
      '$#AGRADECIMIENTOS'
      ''
      '*Gracias a Luis Iglesias por su componente '
      'gratuito '#39'LCDDisplay'#39'.'
      ''
      '-Si te gusta este programa, es de agradecer un '
      'mensaje en twitter @ol1software'
      'o un mensaje en el libro de visitas'
      '(www.ol1software.com)'
      ''
      ''
      ''
      ''
      ''
      '$#CONTACTO'
      ''
      'twitter e instagram:'
      '@ol1software'
      ''
      'http://www.ol1software.com'
      ''
      'Visita la web para obtener '#233'ste y m'#225's juegos '
      'freeware.'
      '')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
    OnClick = Memo1Click
  end
end
