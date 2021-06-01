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
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 321
    Height = 386
    Align = alLeft
    Alignment = taCenter
    Color = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Lines.Strings = (
      'ESPA'#209'OL!'
      ''
      ''
      '*GUESS IT NOW*'
      ' El juego '
      'de las palabras con letras '
      'desordenadas'
      ''
      '-El prop'#243'sito de este juego es '
      'el de averiguar '
      'una palabra, en la cual sus '
      'letras se hayan '
      'desordenadas.'
      ''
      '-El juego se divide en temas.'
      ''
      '-Tambi'#233'n se dispone de 5 '
      'comodines, con los '
      'que obtenemos la primera letra '
      'de la palabra.'
      ''
      ''
      '#EJEMPLO'
      ''
      '-Si elegimos por ejemplo el '
      'tema '#39'Planetas del '
      'Sistema Solar'#39', deberemos '
      'averiguar las palabras '
      'con '
      'letras desordenadas que '
      'corresponden a '
      'planetas del sistema solar.'
      ''
      ''
      '$#EDITOR'
      ''
      '-contiene un editor para '
      'crear/editar tus propios '
      'temas, accesible desde el '
      'men'#250' principal.'
      ''
      '-Su funcionamiento es muy '
      'sencillo, explicado '
      'en el mismo editor.'
      ''
      '-Si creas tus propios temas, por '
      'favor m'#225'ndalos '
      'al twitter @ol1software '
      'haciendo tweet, para incluirlo '
      'en la '
      'pr'#243'xima '
      'versi'#243'n '
      'del juego'
      '(Utiliza GUARDAR COMO... y '
      'nos mandas el '
      'fichero que guardes)'
      ''
      ''
      ''
      ''
      ''
      '$#AGRADECIMIENTOS'
      ''
      '*Gracias a Luis Iglesias por su '
      'componente '
      'gratuito '#39'LCDDisplay'#39'.'
      ''
      '-Si te gusta este programa, es '
      'de agradecer un '
      'mensaje en twitter '
      '@ol1software'
      'o un mensaje en el libro de '
      'visitas'
      '(www.ol1software.com)'
      ''
      ''
      ''
      'twitter e instagram:'
      '@ol1software'
      ''
      'http://www.ol1software.com'
      ''
      'Visita la web para obtener '#233'ste '
      'y m'#225's juegos '
      'freeware.')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    OnClick = Memo1Click
    ExplicitHeight = 406
  end
  object Memo2: TMemo
    Left = 321
    Top = 0
    Width = 355
    Height = 386
    Align = alClient
    Color = clInactiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Niagara Solid'
    Font.Style = []
    Lines.Strings = (
      'ENGLISH!'
      ''
      '*GUESS IT NOW* '
      'The word game with letters'
      'messy'
      ''
      '-The purpose of this game is to find out'
      'a word, in which its letters have been'
      'messy.'
      ''
      '-The game is divided into themes.'
      ''
      '-There are also 5 wildcards, with the'
      'we get the first letter of the word.'
      ''
      ''
      '#EXAMPLE'
      ''
      '-If we choose for example the theme '#39'Planets of '
      'the'
      'Solar System '#39', we must figure out the words'
      'with'
      'jumbled letters that correspond to'
      'planets of the solar system.'
      ''
      ''
      '$ # EDITOR'
      ''
      '-contains an editor to create / edit your own'
      'themes, accessible from the main menu.'
      ''
      '-Its operation is very simple, explained'
      'in the same editor.'
      ''
      '-If you create your own themes, please send '
      'them'
      'to twitter @ ol1software making tweet, to include '
      'it '
      'in the'
      'next'
      'version'
      'of the game'
      '(Use SAVE AS ... and send us the'
      'file you save)'
      ''
      ''
      ''
      ''
      ''
      '$ # THANKS'
      ''
      '* Thanks to Luis Iglesias for his component'
      'free '#39'LCDDisplay'#39'.'
      ''
      '-If you like this program, it is appreciated a'
      'message on twitter @ ol1software'
      'or a message in the guestbook'
      '(www.ol1software.com)'
      ''
      ''
      ''
      'twitter and instagram:'
      '@ ol1software'
      ''
      'http://www.ol1software.com'
      ''
      'Visit the web to get this and more games'
      'freeware.')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
    ExplicitHeight = 347
  end
  object Panel1: TPanel
    Left = 0
    Top = 386
    Width = 676
    Height = 41
    Align = alBottom
    Caption = 'OK !!'
    TabOrder = 2
    OnClick = Panel1Click
    ExplicitLeft = 168
    ExplicitTop = 288
    ExplicitWidth = 185
  end
end
