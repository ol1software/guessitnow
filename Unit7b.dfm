object Form7: TForm7
  Left = 310
  Top = 24
  BorderStyle = bsDialog
  ClientHeight = 254
  ClientWidth = 301
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
    Top = 229
    Width = 301
    Height = 25
    Align = alBottom
    AutoSize = True
    ButtonHeight = 21
    ButtonWidth = 55
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Caption = ' Ok '
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 55
      Top = 2
      Caption = ' Cancelar '
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 301
    Height = 229
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Opciones'
      object Label1: TLabel
        Left = 16
        Top = 120
        Width = 92
        Height = 13
        Caption = 'Dificultad (Baja)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object omusik: TCheckBox
        Left = 8
        Top = 32
        Width = 105
        Height = 17
        Caption = 'M'#250'sica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = omusikClick
      end
      object TrackBar: TTrackBar
        Left = 16
        Top = 144
        Width = 150
        Height = 45
        Max = 3
        Min = 1
        Position = 1
        TabOrder = 1
        OnChange = TrackBarChange
      end
      object oresolutor: TCheckBox
        Left = 8
        Top = 56
        Width = 185
        Height = 17
        Caption = 'Utilizar <Resolutor>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = oresolutorClick
      end
      object ipistas: TCheckBox
        Left = 8
        Top = 80
        Width = 185
        Height = 17
        Caption = 'Utilizar Pistas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = ipistasClick
      end
    end
  end
end
