object Logo: TLogo
  Left = 836
  Top = 454
  Align = alClient
  AlphaBlend = True
  AlphaBlendValue = 125
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Logo'
  ClientHeight = 223
  ClientWidth = 355
  Color = clBlack
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDefault
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 355
    Height = 223
    Align = alClient
    Alignment = taCenter
    AutoSize = False
    Caption = #1047#1072#1087#1091#1089#1082' '#1040#1057#1059' '#1040#1056#1043#1040#1051
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object Timer1: TTimer
    Interval = 15000
    OnTimer = Timer1Timer
    Left = 16
    Top = 8
  end
end
