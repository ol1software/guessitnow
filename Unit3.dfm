object Form3: TForm3
  Left = 145
  Top = 156
  BorderIcons = [biSystemMenu]
  ClientHeight = 338
  ClientWidth = 683
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ranking: TMemo
    Left = 192
    Top = 32
    Width = 161
    Height = 137
    TabOrder = 0
    Visible = False
    WordWrap = False
  end
  object Chart1: TChart
    Left = 0
    Top = 0
    Width = 683
    Height = 338
    Hint = 'PULSA PARA CERRAR'
    Gradient.EndColor = clBlue
    Gradient.Visible = True
    Legend.Alignment = laBottom
    Title.Font.Height = -16
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Top Puntuaciones')
    LeftAxis.StartPosition = 9.000000000000000000
    LeftAxis.Title.Caption = 'Top'
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    Align = alClient
    BevelOuter = bvLowered
    BorderWidth = 5
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = Chart1Click
    ExplicitWidth = 120
    ExplicitHeight = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      ColorEachPoint = True
      SeriesColor = clRed
      Title = 'Top puntuaciones'
      BarStyle = bsCilinder
      BarWidthPercent = 20
      SideMargins = False
      UseYOrigin = False
      XValues.Name = 'X'
      XValues.Order = loNone
      YValues.Name = 'Bar'
      YValues.Order = loNone
      object TeeFunction1: THighTeeFunction
        CalcByValue = False
        Period = 10.000000000000000000
      end
    end
  end
end
