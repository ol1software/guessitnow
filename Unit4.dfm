object Form4: TForm4
  Left = 219
  Top = 125
  BorderIcons = [biSystemMenu]
  ClientHeight = 332
  ClientWidth = 543
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StaticText1: TStaticText
    Left = 0
    Top = 0
    Width = 543
    Height = 20
    Cursor = crHandPoint
    Hint = 'Pulse aqu'#237' para visitar la web'
    Align = alTop
    Alignment = taCenter
    Caption = 'Adivinalo Ahora      ****un juego original de OL1 SOFTWARE'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    ExplicitWidth = 361
  end
  object StaticText2: TStaticText
    Left = 0
    Top = 20
    Width = 543
    Height = 106
    Align = alClient
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 
      ' juego consistente en averiguar la palabra con letras desordenad' +
      'as dentro de un tiempo determinado. Se dispone de varios temas y' +
      ' niveles.           '
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 873
    ExplicitHeight = 20
  end
  object Memo1: TMemo
    Left = 0
    Top = 126
    Width = 543
    Height = 206
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Lines.Strings = (
      'Licencia de uso'
      '-------------------------'
      '1) Juego GRATIS y  de libre '
      'distribuci'#243'n y uso, quedando totalmente prohibida su venta como '
      'tal. '
      ''
      
        '2) Est'#225' prohibida la modificaci'#243'n de cualquiera de los programas' +
        ', '
      'ya sea el EXE o alguno de los componentes de la aplicaci'#243'n.'
      ''
      '3) Los programas se ofrecer'#225'n sin ning'#250'n tipo de garant'#237'a ni '
      'soporte, llevar'#225'n documentaci'#243'n de ayuda, aunque no '
      
        'necesariamente. El usuario se hace responsable del uso de los pr' +
        'ogramas.'
      ''
      
        '4) Puedes encontrar este juego y m'#225's en mi web www.ol1software.c' +
        'om'
      ''
      
        '*Si te gusta o es '#250'til, se agradece un mensaje en el libro de vi' +
        'sitas o '
      'en el twitter @ol1software')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
    Visible = False
  end
  object Button1: TButton
    Left = 88
    Top = 64
    Width = 353
    Height = 25
    Cursor = crAppStart
    Caption = '&Cerrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 88
    Top = 95
    Width = 353
    Height = 25
    Caption = 'Licencia'
    TabOrder = 4
    OnClick = Button2Click
  end
end
