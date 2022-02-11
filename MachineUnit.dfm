object Machine: TMachine
  Left = 343
  Top = 138
  AlphaBlend = True
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Machine'
  ClientHeight = 540
  ClientWidth = 1284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 1284
    Height = 540
    SkinData.SkinSection = 'FORM'
    Align = alClient
    BevelWidth = 2
    BorderWidth = 4
    DoubleBuffered = False
    TabOrder = 0
    object sPanel2: TsPanel
      Left = 6
      Top = 6
      Width = 141
      Height = 528
      Align = alLeft
      BevelWidth = 4
      DoubleBuffered = False
      TabOrder = 0
      object StartButton: TsSpeedButton
        Left = 39
        Top = 190
        Width = 64
        Height = 64
        AllowAllUp = True
        GroupIndex = 1
        Caption = #1055#1059#1057#1050
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = StartButtonClick
        OnPaint = StartButtonPaint
        SkinData.CustomFont = True
        SkinData.SkinSection = 'BUTTON_HUGE'
        Reflected = True
      end
      object AutoButton: TsSpeedButton
        Left = 39
        Top = 336
        Width = 64
        Height = 64
        AllowAllUp = True
        GroupIndex = 2
        Caption = #1056#1059#1063
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = AutoButtonClick
        OnPaint = AutoButtonPaint
        SkinData.CustomFont = True
        SkinData.SkinSection = 'BUTTON_HUGE'
        Reflected = True
      end
      object AutoIndicator: TAdvSmoothStatusIndicator
        Left = 14
        Top = 298
        Width = 113
        Height = 30
        Caption = '0'
        Version = '1.0.1.0'
        Appearance.Fill.Color = 54528
        Appearance.Fill.ColorMirror = clNone
        Appearance.Fill.ColorMirrorTo = clNone
        Appearance.Fill.GradientType = gtSolid
        Appearance.Fill.GradientMirrorType = gtRadial
        Appearance.Fill.BorderColor = clBlack
        Appearance.Fill.Rounding = 14
        Appearance.Fill.ShadowOffset = 2
        Appearance.Fill.ShadowType = stSurround
        Appearance.Fill.Glow = gmNone
        Appearance.Font.Charset = DEFAULT_CHARSET
        Appearance.Font.Color = clWhite
        Appearance.Font.Height = -11
        Appearance.Font.Name = 'Tahoma'
        Appearance.Font.Style = []
      end
      object StartIndicator: TAdvSmoothStatusIndicator
        Left = 14
        Top = 152
        Width = 113
        Height = 30
        Caption = '0'
        Version = '1.0.1.0'
        Appearance.Fill.Color = 54528
        Appearance.Fill.ColorMirror = clNone
        Appearance.Fill.ColorMirrorTo = clNone
        Appearance.Fill.GradientType = gtSolid
        Appearance.Fill.GradientMirrorType = gtRadial
        Appearance.Fill.BorderColor = clBlack
        Appearance.Fill.Rounding = 14
        Appearance.Fill.ShadowOffset = 2
        Appearance.Fill.ShadowType = stSurround
        Appearance.Fill.Glow = gmNone
        Appearance.Font.Charset = DEFAULT_CHARSET
        Appearance.Font.Color = clWhite
        Appearance.Font.Height = -11
        Appearance.Font.Name = 'Tahoma'
        Appearance.Font.Style = []
      end
      object MachineNumLED: TsLabelFX
        Left = 4
        Top = 4
        Width = 133
        Height = 77
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = '7'
        ParentFont = False
        Layout = tlCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -80
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Angle = 0
        Shadow.OffsetKeeper.LeftTop = -1
        Shadow.OffsetKeeper.RightBottom = 3
      end
    end
    object sPanel3: TsPanel
      Left = 147
      Top = 6
      Width = 1131
      Height = 528
      Align = alClient
      BevelWidth = 4
      DoubleBuffered = False
      TabOrder = 1
      object sPanel4: TsPanel
        Left = 4
        Top = 34
        Width = 1123
        Height = 8
        Align = alTop
        BevelOuter = bvNone
        BevelWidth = 4
        DoubleBuffered = False
        TabOrder = 0
      end
      object sPanel5: TsPanel
        Left = 4
        Top = 4
        Width = 1123
        Height = 30
        HelpContext = 32
        SkinData.SkinSection = 'PANEL_LOW'
        Align = alTop
        BevelOuter = bvNone
        DoubleBuffered = False
        TabOrder = 1
        object StatusLabel: TsSpeedButton
          Left = 0
          Top = 0
          Width = 1123
          Height = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = StatusLabelClick
          Align = alClient
          SkinData.CustomFont = True
          SkinData.SkinSection = 'BUTTON'
          SkinData.OuterEffects.Visibility = ovAlways
        end
      end
      object MainPager: TsPageControl
        Left = 4
        Top = 42
        Width = 1123
        Height = 482
        ActivePage = StartTabSheet
        Align = alClient
        TabOrder = 2
        ActiveTabEnlarged = False
        SkinData.OuterEffects.Visibility = ovAlways
        object MainTabSheet: TsTabSheet
          Caption = 'MainTabSheet'
          object sPanel7: TsPanel
            Left = 0
            Top = 79
            Width = 473
            Height = 375
            Align = alLeft
            DoubleBuffered = False
            TabOrder = 0
            object sPanel17: TsPanel
              Left = 1
              Top = 1
              Width = 471
              Height = 294
              SkinData.CustomFont = True
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 2
              DoubleBuffered = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clLime
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object sLabelFX8: TsLabelFX
                Left = 2
                Top = 2
                Width = 467
                Height = 18
                Align = alTop
                Alignment = taCenter
                AutoSize = False
                Caption = #1059#1055#1056#1040#1042#1051#1045#1053#1048#1045
                Color = clBtnFace
                ParentColor = False
                ParentFont = False
                Layout = tlBottom
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Angle = 0
                Kind.KindType = ktCustom
                Kind.Color = clSilver
                Shadow.OffsetKeeper.LeftTop = -1
                Shadow.OffsetKeeper.RightBottom = 3
                Shadow.Mode = smCustom
                Shadow.BlurCount = 2
              end
              object sPanel18: TsPanel
                Left = 2
                Top = 20
                Width = 467
                Height = 102
                SkinData.CustomColor = True
                SkinData.SkinSection = 'PANEL_LOW'
                Align = alTop
                Color = clBlack
                DoubleBuffered = False
                TabOrder = 0
                object LZ_Speed_Ind: TiSevenSegmentAnalog
                  Left = 32
                  Top = 7
                  Width = 104
                  Height = 36
                  AutoSize = False
                  DigitSpacing = 8
                  SegmentMargin = 6
                  SegmentColor = clLime
                  SegmentOffColor = 10240
                  AutoSegmentOffColor = False
                  Precision = 1
                end
                object CZ_Speed_Ind: TiSevenSegmentAnalog
                  Left = 189
                  Top = 7
                  Width = 104
                  Height = 36
                  AutoSize = False
                  DigitSpacing = 8
                  SegmentMargin = 6
                  SegmentColor = clLime
                  SegmentOffColor = 10240
                  AutoSegmentOffColor = False
                  Precision = 1
                end
                object RZ_Speed_Ind: TiSevenSegmentAnalog
                  Left = 342
                  Top = 7
                  Width = 104
                  Height = 36
                  AutoSize = False
                  DigitSpacing = 8
                  SegmentMargin = 6
                  SegmentColor = clLime
                  SegmentOffColor = 10240
                  AutoSegmentOffColor = False
                  Precision = 1
                end
                object sPanel20: TsPanel
                  Left = 4
                  Top = 50
                  Width = 147
                  Height = 39
                  SkinData.CustomColor = True
                  BevelOuter = bvNone
                  Color = clBlack
                  DoubleBuffered = False
                  TabOrder = 3
                  object VrScale1: TVrScale
                    Left = 15
                    Top = 21
                    Width = 134
                    Height = 22
                    Ticks = 4
                    ScaleColor = clLime
                    PeakLevel = 0
                    ShowSign = False
                    TickMarks = tmTopLeft
                    ScaleOffset = 1
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Height = -11
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                  end
                  object LZ_ProgressiLedBar: TiLedBar
                    Left = 26
                    Top = 10
                    Width = 110
                    Height = 10
                    PositionMax = 100.000000000000000000
                    CurrentMax = 100.000000000000000000
                    SectionColor2 = clLime
                    SectionColor3 = clLime
                    SectionEnd1 = 50.000000000000000000
                    SectionEnd2 = 75.000000000000000000
                    SegmentDirection = idRight
                    SegmentMargin = 1
                    SegmentSize = 2
                    SegmentSpacing = 1
                    PositionMax_2 = 100.000000000000000000
                    SectionEnd1_2 = 50.000000000000000000
                    SectionEnd2_2 = 75.000000000000000000
                  end
                end
                object sPanel21: TsPanel
                  Left = 162
                  Top = 50
                  Width = 147
                  Height = 39
                  SkinData.CustomColor = True
                  BevelOuter = bvNone
                  Color = clBlack
                  DoubleBuffered = False
                  TabOrder = 4
                  object VrScale3: TVrScale
                    Left = 15
                    Top = 21
                    Width = 134
                    Height = 22
                    Ticks = 4
                    ScaleColor = clLime
                    PeakLevel = 0
                    ShowSign = False
                    TickMarks = tmTopLeft
                    ScaleOffset = 1
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Height = -11
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                  end
                  object CZ_ProgressiLedBar: TiLedBar
                    Left = 26
                    Top = 10
                    Width = 110
                    Height = 10
                    PositionMax = 100.000000000000000000
                    CurrentMax = 100.000000000000000000
                    SectionColor2 = clLime
                    SectionColor3 = clLime
                    SectionEnd1 = 50.000000000000000000
                    SectionEnd2 = 75.000000000000000000
                    SegmentDirection = idRight
                    SegmentMargin = 1
                    SegmentSize = 2
                    SegmentSpacing = 1
                    PositionMax_2 = 100.000000000000000000
                    SectionEnd1_2 = 50.000000000000000000
                    SectionEnd2_2 = 75.000000000000000000
                  end
                end
                object sPanel22: TsPanel
                  Left = 314
                  Top = 50
                  Width = 149
                  Height = 39
                  SkinData.CustomColor = True
                  BevelOuter = bvNone
                  Color = clBlack
                  DoubleBuffered = False
                  TabOrder = 5
                  object VrScale4: TVrScale
                    Left = 15
                    Top = 21
                    Width = 134
                    Height = 22
                    Ticks = 4
                    ScaleColor = clLime
                    PeakLevel = 0
                    ShowSign = False
                    TickMarks = tmTopLeft
                    ScaleOffset = 1
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Height = -11
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                  end
                  object RZ_ProgressiLedBar: TiLedBar
                    Left = 26
                    Top = 10
                    Width = 110
                    Height = 10
                    PositionMax = 100.000000000000000000
                    CurrentMax = 100.000000000000000000
                    SectionColor2 = clLime
                    SectionColor3 = clLime
                    SectionEnd1 = 50.000000000000000000
                    SectionEnd2 = 75.000000000000000000
                    SegmentDirection = idRight
                    SegmentMargin = 1
                    SegmentSize = 2
                    SegmentSpacing = 1
                    PositionMax_2 = 100.000000000000000000
                    SectionEnd1_2 = 50.000000000000000000
                    SectionEnd2_2 = 75.000000000000000000
                  end
                end
              end
              object HeaterRollOutPanel: TsRollOutPanel
                Left = 2
                Top = 122
                Width = 467
                Height = 74
                SkinData.CustomFont = True
                SkinData.SkinSection = 'BAR'
                Align = alTop
                BevelOuter = bvNone
                Caption = #1055#1056#1054#1043#1056#1045#1042
                DoubleBuffered = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 1
                Collapsed = True
                TitleSkin = 'BUTTON'
                OnAfterCollapse = HeaterRollOutPanelAfterCollapse
                object LZ_Heater_TrackBar: TsTrackBar
                  Left = 20
                  Top = 8
                  Width = 133
                  Height = 37
                  Max = 100
                  Frequency = 11
                  TabOrder = 0
                  OnChange = LZ_Heater_TrackBarChange
                  SkinData.CustomFont = True
                  ShowProgress = True
                  PosByClick = True
                end
                object CZ_Heater_TrackBar: TsTrackBar
                  Left = 174
                  Top = 8
                  Width = 133
                  Height = 37
                  Max = 100
                  Frequency = 11
                  TabOrder = 1
                  OnChange = CZ_Heater_TrackBarChange
                  SkinData.CustomFont = True
                  ShowProgress = True
                  PosByClick = True
                end
                object RZ_Heater_TrackBar: TsTrackBar
                  Left = 326
                  Top = 8
                  Width = 133
                  Height = 37
                  Max = 100
                  Frequency = 11
                  TabOrder = 2
                  OnChange = RZ_Heater_TrackBarChange
                  SkinData.CustomFont = True
                  ShowProgress = True
                  PosByClick = True
                end
              end
              object ControlRollOutPanel: TsRollOutPanel
                Left = 2
                Top = 196
                Width = 467
                Height = 76
                SkinData.CustomFont = True
                SkinData.SkinSection = 'BAR'
                Align = alTop
                BevelOuter = bvNone
                Caption = #1050#1054#1053#1058#1056#1054#1051#1068
                DoubleBuffered = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                Collapsed = True
                TitleSkin = 'BUTTON'
                object sPanel19: TsPanel
                  Left = 6
                  Top = 5
                  Width = 129
                  Height = 44
                  SkinData.SkinSection = 'PANEL_LOW'
                  DoubleBuffered = False
                  TabOrder = 0
                  object Control_Temp_Ind: TiSevenSegmentAnalog
                    Left = 1
                    Top = 1
                    Width = 128
                    Height = 42
                    AutoSize = False
                    DigitSpacing = 8
                    SegmentMargin = 6
                    SegmentColor = clLime
                    SegmentOffColor = 10240
                    AutoSegmentOffColor = False
                    Precision = 1
                    ShowSign = False
                    DigitCount = 5
                  end
                end
              end
            end
            object sPanel15: TsPanel
              Left = 1
              Top = 334
              Width = 471
              Height = 40
              Align = alBottom
              DoubleBuffered = False
              TabOrder = 1
              object RegimeButton: TsSpeedButton
                Left = 28
                Top = 6
                Width = 109
                Height = 29
                Caption = #1056#1045#1046#1048#1052
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = RegimeButtonClick
                SkinData.CustomFont = True
                SkinData.SkinSection = 'BUTTON'
              end
              object TuneButton: TsSpeedButton
                Left = 180
                Top = 6
                Width = 109
                Height = 29
                Caption = #1053#1040#1057#1058#1056#1054#1049#1050#1048
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = TuneButtonClick
                SkinData.CustomFont = True
                SkinData.SkinSection = 'BUTTON'
              end
              object HistoryButton: TsSpeedButton
                Left = 332
                Top = 6
                Width = 109
                Height = 29
                Caption = #1048#1057#1058#1054#1056#1048#1071
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = HistoryButtonClick
                SkinData.CustomFont = True
                SkinData.SkinSection = 'BUTTON'
              end
            end
          end
          object sPanel8: TsPanel
            Left = 473
            Top = 79
            Width = 642
            Height = 375
            Align = alClient
            BevelOuter = bvSpace
            DoubleBuffered = False
            TabOrder = 1
            object sPanel16: TsPanel
              Left = 1
              Top = 1
              Width = 640
              Height = 373
              Align = alClient
              BevelOuter = bvNone
              BorderWidth = 4
              DoubleBuffered = False
              TabOrder = 0
              object ActivePager: TsPageControl
                Left = 4
                Top = 4
                Width = 632
                Height = 365
                ActivePage = ChartTab
                Align = alClient
                TabOrder = 0
                object ChartTab: TsTabSheet
                  Caption = 'ChartTab'
                  object sPanel24: TsPanel
                    Left = 0
                    Top = 0
                    Width = 624
                    Height = 337
                    Align = alClient
                    BorderWidth = 2
                    DoubleBuffered = False
                    TabOrder = 0
                    object Chart: TChart
                      Left = 3
                      Top = 3
                      Width = 618
                      Height = 331
                      AnimatedZoom = True
                      BackWall.Brush.Color = clWhite
                      BackWall.Brush.Style = bsClear
                      BackWall.Color = clSilver
                      BottomWall.Brush.Color = clWhite
                      LeftWall.Brush.Color = clWhite
                      MarginBottom = 2
                      MarginLeft = 2
                      MarginRight = 2
                      Title.Text.Strings = (
                        'TChart')
                      Title.Visible = False
                      BackColor = clSilver
                      BottomAxis.Axis.Color = clLime
                      BottomAxis.Axis.Width = 1
                      BottomAxis.AxisValuesFormat = '#0.##'
                      BottomAxis.ExactDateTime = False
                      BottomAxis.Grid.Color = 1447446
                      BottomAxis.Grid.Style = psSolid
                      BottomAxis.LabelsFont.Charset = RUSSIAN_CHARSET
                      BottomAxis.LabelsFont.Color = clLime
                      BottomAxis.LabelsFont.Height = -11
                      BottomAxis.LabelsFont.Name = 'Tahoma'
                      BottomAxis.LabelsFont.Style = []
                      BottomAxis.LabelsSeparation = 20
                      BottomAxis.LabelStyle = talValue
                      BottomAxis.MinorTicks.Visible = False
                      BottomAxis.Ticks.Color = clLime
                      BottomAxis.TicksInner.Visible = False
                      LeftAxis.Axis.Color = clLime
                      LeftAxis.Axis.Width = 1
                      LeftAxis.ExactDateTime = False
                      LeftAxis.Grid.Color = 1447446
                      LeftAxis.Grid.Style = psSolid
                      LeftAxis.LabelsFont.Charset = RUSSIAN_CHARSET
                      LeftAxis.LabelsFont.Color = clLime
                      LeftAxis.LabelsFont.Height = -11
                      LeftAxis.LabelsFont.Name = 'Tahoma'
                      LeftAxis.LabelsFont.Style = []
                      LeftAxis.LabelsSeparation = 20
                      LeftAxis.MinorTicks.Visible = False
                      LeftAxis.Ticks.Color = clLime
                      LeftAxis.TicksInner.Visible = False
                      Legend.Color = clBlack
                      Legend.ColorWidth = 20
                      Legend.DividingLines.Color = clLime
                      Legend.Font.Charset = DEFAULT_CHARSET
                      Legend.Font.Color = clWhite
                      Legend.Font.Height = -11
                      Legend.Font.Name = 'Arial'
                      Legend.Font.Style = []
                      Legend.Frame.Color = clGreen
                      Legend.HorizMargin = 1
                      Legend.ResizeChart = False
                      Legend.ShadowSize = 0
                      Legend.TopPos = 4
                      Legend.Visible = False
                      View3D = False
                      View3DWalls = False
                      OnAfterDraw = ChartAfterDraw
                      Align = alClient
                      BevelOuter = bvNone
                      Color = clBlack
                      TabOrder = 0
                      OnDblClick = ChartDblClick
                      object Legend: TPanel
                        Left = 536
                        Top = 8
                        Width = 73
                        Height = 65
                        BevelOuter = bvNone
                        Color = clBackground
                        Enabled = False
                        TabOrder = 0
                        Visible = False
                        object Image1: TImage
                          Left = 0
                          Top = 0
                          Width = 72
                          Height = 66
                          AutoSize = True
                          Picture.Data = {
                            0A544A504547496D616765D33E0000FFD8FFE10CC24578696600004D4D002A00
                            000008000C010000030000000100480000010100030000000100420000010200
                            03000000030000009E0106000300000001000200000112000300000001000100
                            00011500030000000100030000011A000500000001000000A4011B0005000000
                            01000000AC0128000300000001000200000131000200000022000000B4013200
                            0200000014000000D68769000400000001000000EC0000012400080008000800
                            0AFC8000002710000AFC800000271041646F62652050686F746F73686F702043
                            432032303138202857696E646F77732900323032303A31303A32372030353A35
                            323A35370000000004900000070000000430323231A001000300000001FFFF00
                            00A00200040000000100000048A0030004000000010000004200000000000000
                            06010300030000000100060000011A00050000000100000172011B0005000000
                            010000017A012800030000000100020000020100040000000100000182020200
                            040000000100000B380000000000000048000000010000004800000001FFD8FF
                            ED000C41646F62655F434D0002FFEE000E41646F626500648000000001FFDB00
                            84000C08080809080C09090C110B0A0B11150F0C0C0F1518131315131318110C
                            0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
                            0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C1111
                            0C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
                            0C0C0CFFC00011080042004803012200021101031101FFDD00040005FFC4013F
                            0000010501010101010100000000000000030001020405060708090A0B010001
                            0501010101010100000000000000010002030405060708090A0B100001040103
                            0204020507060805030C33010002110304211231054151611322718132061491
                            A1B14223241552C16233347282D14307259253F0E1F163733516A2B283264493
                            546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5
                            B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F7110002
                            0201020404030405060707060535010002110321311204415161712213053281
                            9114A1B14223C152D1F0332462E1728292435315637334F1250616A2B2830726
                            35C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B495C4D4E4
                            F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA00
                            0C03010002110311003F00F3BA8E263F4CA6FB316BC9B6EBAE61758EB4436B6E
                            396068A2DA5BFE19EA1F6FC2FF00CADC7FF3F23FF7A535FF00F22E1FFE18C9FF
                            00A8C4573F6A7D5CFF00CA4FFD9AB7FF0022AB6B57C19325CA7F24F8787867A7
                            CF971350DD717065CA4CF20FD5E4E0E1E1C928C74C99B0FF00CC69FDBF0BFF00
                            2B71FF00CFC8FF00DE956F2E9BF06BAEDCDE8231ABBB5A9F70CAADAFD27F46EB
                            2F6EFF00A5F9AA96664615F92C7E163FD82B0002DF51D6FBA4FE977B86FF00F3
                            57514331D98F4E1F52CBC22723A8D3659915DE32864B47AFEA65F5161C8F531D
                            B57AADD9BDFD37D4F5ECFB4D366CF5289638C188278E24D7A4CE57BFF5272658
                            E2898824648684F0CB24F887F89927179AFB7E17FE56E3FF009F91FF00BD297D
                            BF0BFF002B71FF00CFC8FF00DE95DA6560E1DBFE53C1AFA6B2EA70BD2B2BB6EE
                            9CFA5B956643FD0166DAF13A53EFFB0D7759FD1FF9BABFC25BFA545B30FA1537
                            753AAF1D3DB5E43B29CC21F88C35B5D8EDBBA73B1FD517DF6D77BAD63F17F667
                            D86BA5FF00D22DC8FE66B5ED475D65A027E79FE8FF0085FA5FA2BBD88779EF5F
                            CE65EDFDF785FB7E17FE56E3FF009F91FF00BD297DBF0BFF002B71FF00CFC8FF
                            00DE95D6E33BEA9BB22967A78EC78B7A5FAD65B652EA5CD357EBBE953E8D7E8B
                            5B67F4FDF7DFFA5FE7BD34F8AEFAB0D752DA198B6DD4E1D95D21EFC7A8597332
                            1CC7DD7DBD469CBC26DB76287DB47DBA8FE6BF99F4ECF451F6A37BCB7AF9F27E
                            EF17EF23D98D6F3E9FE5327E97F86F2B69C4C8E9975F5E2578D6D3752C0EADD6
                            996D8DC82F0E17DB737FC0B12573AB9C52DEAE71195D747DB28D8CA5FEA543DB
                            97BBD1B7D3C7DF5EFF00A1B29AEBFF0047FA34943D786E55EE57CD2E2AF678F8
                            78BFBCC5C3EBF6F8A5C3EEF0FCD3E2E1F638FE6E2E3F9DFFD0F37BFF00E45C3F
                            FC3193FF005188A92BB7FF00C8B87FF86327FEA311687FCF9FAD3FF737FF0002
                            A7FF004926E011E13C448F54F61C5FE525FD68B584B308FEAA109FAF2F17B992
                            586BF5B2AE1E0C59F89C4AD86C7B583971004F9ABF95D0B33146597398F38594
                            30AC6B0B89758EF560D5ED1BABFD5DFF00CB50CDEB39FD4B32ACBEA36FAD6540
                            343835ADF6825FB76D4DADBF49EE5D457F583EAFD7766752C5BAFB2D1D429EA7
                            F66C8A6AA7700FB2B7E3536372B2FD4B5ADCCF5777A1FE0148447A1EBFB61FF7
                            3EE33C0CF86E604675AC632E38DFAB69F0E3FEA7E83CB6474FEB584DB717271B
                            2719A032FBE9B18FAC0009AA9BEDADE1BEDDF6BEAAAD7FFA4477FD5EFAD17B7D
                            77F4DCEB58C6EDF54D16B806D63D2DBBF67D1A5B5FA7FF0007B16C647D6EC4AE
                            BBABC42EBC1C6F46937E161D55073B22BCA7CE050CB31B67A557F3967DA1FF00
                            68FD27E8150EABD7B1337F6C9AD9634F52C9A6FA6434436BF5B78B36BBDAEFD3
                            376EC4DE8BDCCC8E97D4F171D99593897D18D6C0AAEB2B7B18E246F6FA763DA1
                            8FDCCF7AAABAAFAC1D5BA67D8EEC6C6B6DC8C9CCC7C06583D868AC63D2CDDE95
                            CCB6C7D96EFF00D17A7E8D3E87E9FE9AE552EA7CD1D07886ED1FF22E67FE18C6
                            FF00A8CB492A3FE45CCFFC318DFF0051969283FCA7FD57FF005035BFCAFF00D5
                            BFF7D9FFD1F38BFF00E45C3FFC3193FF005188A3FB1FA97FA1FF00A4DFFC927B
                            FF00E45C3FFC3193FF005188A928A025C3E9207AA7B8E2FF00292FEB455C9CB0
                            88CBDD84E7EB9F0FB792386BF5B3BE2E3C59F892E462DF8CF0CBDBB1C448120E
                            9FD92574997F55F0ACC7AE9E98CBDDD41D6E153FA5B58EADEECCC77659D95B68
                            A5F4FA6F6ECF7DF72E62AB3D3B59616B5FB1C1DB1E25A60CED78FDD5AE7EB5F5
                            1179BAA6554BBD6A2FAC35A4861C5ADD8D8D533D57DBBAAF45FB5FEB7AB659FE
                            914B1DBD5A9D36D3AEBFF353331322600C614786333C72FEADCA31C7FF0041BD
                            FF008DEF5AFB57D9CBD83F42721AF34E5CB9ADB1B8EF63717EC5FB437B5EF67F
                            DA3F4FD3FD27A8878DF51BAAE4F54BFA5D7753F68A05648DB7927D601ECDD433
                            19F978CD66EFD3D99B8F8B563FF877D6AB37EB3063AD0DE9782DC6BEAF46CC56
                            B6E6B08F51B95EA3AD664B731D67AAC67D3CAF4D95FE8D95A3D1F5D7368B43DB
                            878AEAEA7E3D98D4385C6BA5D8AD7578EEABF5916D9EDB1FFD2ACC8491DFF06B
                            FF00CD8C91D3DD98FCAA19636839470CFABEB7A42DFB26F9147D93F9DFCCFB56
                            F58CB65DF5AFA99C3BB019B2AC2BEB75766330BC565CEB1B90FCA2C758EDF95B
                            99B3D57FF82FD1AC6493A7E3F83768FF0091733FF0C637FD465A4951FF0022E6
                            7FE18C6FFA8CB4941FE53FEABFFA81ABFE57FEADFF00BECFFFD2F37BFF00E45C
                            3FFC3193FF005188B77FE6EFD44FFE7BBFF85B91FF009358D58C4C8E99451665
                            D78D6D375CF2DB1B6996D8DA1AC2D3455737FC0BD0FEC185FF009658FF00E664
                            7FEF3286131104112BE29FE84CEF397F55831E411063213BE39FE86497CD9252
                            1AC629FA960F48C4EA5453D2BA8FED6C6735AE7DE687E3C3CB9CD753E95E5CE7
                            7B1AC7EFFF00845D3E4E1E2F55CDCAE9B7514514B3AD558753F171E8A2C6D2FF
                            00B5B1D5B6CA2963ACFE6ABFE7BD45C90C1C36904753C7046A086647FEF32BB8
                            794FC4CD666B7ABD36D8CBDB92E6DA329CD7DAC24B6DB87A0DF51FEF7FBFE9FB
                            D49EF4680A97F893FDE87F57FA8BBDE8EB427FF85E4ED2FEA3A58FF56BA25CDA
                            B39DF69C7C0754F7595DD6B43DB632E6E1B1CEBE9C4BEDF4AE759ECAE8E97936
                            FAFF00A2FE6BF58AED0FAA1F56F1F21F8B9D93636D7750BF0A8FD2B984B2B348
                            ACB6BAFA6E732CBBF58F7FAD918357FDF310E7E7FDA4E58FAC6E19259E89BB7E
                            5EFF004E777A3EAFA3BFD2DDFE0D4EAEA9D529F53D1FACD657EAB8BEDD96E637
                            7388DAE7D9B69F7BDDB7E9390F763A692D8DFA27DFFBA939A17A09EFFE6F2F6F
                            EE3719F553A78E8B7DF7DB653D428A7ED25AE7023D3FB4370B77D9E9A6FAF66D
                            F53DCEEA75DFEB33FA1FA1FA741FAD1F57BA774BC3AF230DB6B0BB26DA36DB91
                            4DE4B18DA9F5DAFAF1A9C7B30AD7FABEFC4C9FD3D4AAD599994E3B7169FAC26B
                            C6649650C7E5B6B12EF53DB5B68D9FCE7E93FAEAB59532D6165BD62A7B0BDD69
                            6B864906C747A96EB8FF00CE3F6FBDE91CB1ED2FF1327FDEA8668769FF00E179
                            3B7F73F79151FF0022E67FE18C6FFA8CB4912C1898FD32FA2BCBAF26DBAEA5E1
                            B5B6D10DADB7B5E5C6FAA96FF86624A2BF57154ABDCBF96575ECF07CBF37CCC3
                            7EAE3E1970FBB7F24F8B87D8E0BE0E1E3F9DFFD3F2B7FD23F1EDC26492492772
                            A4924924292492494A4924925292492494FF00FFD9FFED145650686F746F7368
                            6F7020332E30003842494D04040000000000071C020000020000003842494D04
                            25000000000010E8F15CF32FC118A1A27B67ADC564D5BA3842494D043A000000
                            0000F7000000100000000100000000000B7072696E744F757470757400000005
                            0000000050737453626F6F6C0100000000496E7465656E756D00000000496E74
                            6500000000436C726D0000000F7072696E745369787465656E426974626F6F6C
                            000000000B7072696E7465724E616D65544558540000000100000000000F7072
                            696E7450726F6F6653657475704F626A6300000015041F043004400430043C04
                            3504420440044B00200446043204350442043E043F0440043E0431044B000000
                            00000A70726F6F6653657475700000000100000000426C746E656E756D000000
                            0C6275696C74696E50726F6F660000000970726F6F66434D594B003842494D04
                            3B00000000022D00000010000000010000000000127072696E744F7574707574
                            4F7074696F6E7300000017000000004370746E626F6F6C0000000000436C6272
                            626F6F6C00000000005267734D626F6F6C000000000043726E43626F6F6C0000
                            000000436E7443626F6F6C00000000004C626C73626F6F6C00000000004E6774
                            76626F6F6C0000000000456D6C44626F6F6C0000000000496E7472626F6F6C00
                            0000000042636B674F626A630000000100000000000052474243000000030000
                            000052642020646F7562406FE000000000000000000047726E20646F7562406F
                            E0000000000000000000426C2020646F7562406FE00000000000000000004272
                            6454556E744623526C74000000000000000000000000426C6420556E74462352
                            6C7400000000000000000000000052736C74556E74462350786C405200000000
                            00000000000A766563746F7244617461626F6F6C010000000050675073656E75
                            6D00000000506750730000000050675043000000004C656674556E744623526C
                            74000000000000000000000000546F7020556E744623526C7400000000000000
                            000000000053636C20556E74462350726340590000000000000000001063726F
                            705768656E5072696E74696E67626F6F6C000000000E63726F7052656374426F
                            74746F6D6C6F6E67000000000000000C63726F70526563744C6566746C6F6E67
                            000000000000000D63726F705265637452696768746C6F6E6700000000000000
                            0B63726F7052656374546F706C6F6E6700000000003842494D03ED0000000000
                            10004800000001000100480000000100013842494D042600000000000E000000
                            000000000000003F8000003842494D040D0000000000040000001E3842494D04
                            190000000000040000001E3842494D03F3000000000009000000000000000001
                            003842494D271000000000000A000100000000000000013842494D03F5000000
                            000048002F66660001006C66660006000000000001002F6666000100A1999A00
                            06000000000001003200000001005A0000000600000000000100350000000100
                            2D000000060000000000013842494D03F80000000000700000FFFFFFFFFFFFFF
                            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFF
                            FFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFFFF03E800003842494D040800000000001000000001000002400000024000
                            0000003842494D041E000000000004000000003842494D041A00000000033900
                            0000060000000000000000000000420000004800000002003100310000000100
                            0000000000000000000000000000000000000100000000000000000000004800
                            0000420000000000000000000000000000000001000000000000000000000000
                            0000000000000010000000010000000000006E756C6C0000000200000006626F
                            756E64734F626A6300000001000000000000526374310000000400000000546F
                            70206C6F6E6700000000000000004C6566746C6F6E6700000000000000004274
                            6F6D6C6F6E670000004200000000526768746C6F6E670000004800000006736C
                            69636573566C4C73000000014F626A6300000001000000000005736C69636500
                            00001200000007736C69636549446C6F6E67000000000000000767726F757049
                            446C6F6E6700000000000000066F726967696E656E756D0000000C45536C6963
                            654F726967696E0000000D6175746F47656E6572617465640000000054797065
                            656E756D0000000A45536C6963655479706500000000496D672000000006626F
                            756E64734F626A6300000001000000000000526374310000000400000000546F
                            70206C6F6E6700000000000000004C6566746C6F6E6700000000000000004274
                            6F6D6C6F6E670000004200000000526768746C6F6E6700000048000000037572
                            6C54455854000000010000000000006E756C6C54455854000000010000000000
                            004D7367655445585400000001000000000006616C7454616754455854000000
                            0100000000000E63656C6C54657874497348544D4C626F6F6C01000000086365
                            6C6C546578745445585400000001000000000009686F727A416C69676E656E75
                            6D0000000F45536C696365486F727A416C69676E0000000764656661756C7400
                            00000976657274416C69676E656E756D0000000F45536C69636556657274416C
                            69676E0000000764656661756C740000000B6267436F6C6F7254797065656E75
                            6D0000001145536C6963654247436F6C6F7254797065000000004E6F6E650000
                            0009746F704F75747365746C6F6E67000000000000000A6C6566744F75747365
                            746C6F6E67000000000000000C626F74746F6D4F75747365746C6F6E67000000
                            000000000B72696768744F75747365746C6F6E6700000000003842494D042800
                            000000000C000000023FF00000000000003842494D0411000000000001010038
                            42494D0414000000000004000000013842494D040C000000000B540000000100
                            00004800000042000000D8000037B000000B3800180001FFD8FFED000C41646F
                            62655F434D0002FFEE000E41646F626500648000000001FFDB0084000C080808
                            09080C09090C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C0C11
                            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B
                            0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C
                            110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000
                            11080042004803012200021101031101FFDD00040005FFC4013F000001050101
                            0101010100000000000000030001020405060708090A0B010001050101010101
                            0100000000000000010002030405060708090A0B100001040103020402050706
                            0805030C33010002110304211231054151611322718132061491A1B142232415
                            52C16233347282D14307259253F0E1F163733516A2B283264493546445C2A374
                            3617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F556
                            66768696A6B6C6D6E6F637475767778797A7B7C7D7E7F7110002020102040403
                            04050607070605350100021103213112044151617122130532819114A1B14223
                            C152D1F0332462E1728292435315637334F1250616A2B283072635C2D2449354
                            A317644555367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5
                            F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA000C0301000211
                            0311003F00F3BA8E263F4CA6FB316BC9B6EBAE61758EB4436B6E396068A2DA5B
                            FE19EA1F6FC2FF00CADC7FF3F23FF7A535FF00F22E1FFE18C9FF00A8C4573F6A
                            7D5CFF00CA4FFD9AB7FF0022AB6B57C19325CA7F24F8787867A7CF971350DD71
                            7065CA4CF20FD5E4E0E1E1C928C74C99B0FF00CC69FDBF0BFF002B71FF00CFC8
                            FF00DE956F2E9BF06BAEDCDE8231ABBB5A9F70CAADAFD27F46EB2F6EFF00A5F9
                            AA96664615F92C7E163FD82B0002DF51D6FBA4FE977B86FF00F357514331D98F
                            4E1F52CBC22723A8D3659915DE32864B47AFEA65F5161C8F531DB57AADD9BDFD
                            37D4F5ECFB4D366CF5289638C188278E24D7A4CE57BFF5272658E28988246486
                            84F0CB24F887F89927179AFB7E17FE56E3FF009F91FF00BD297DBF0BFF002B71
                            FF00CFC8FF00DE95DA6560E1DBFE53C1AFA6B2EA70BD2B2BB6EE9CFA5B956643
                            FD0166DAF13A53EFFB0D7759FD1FF9BABFC25BFA545B30FA1537753AAF1D3DB5
                            E43B29CC21F88C35B5D8EDBBA73B1FD517DF6D77BAD63F17F667D86BA5FF00D2
                            2DC8FE66B5ED475D65A027E79FE8FF0085FA5FA2BBD88779EF5FCE65EDFDF785
                            FB7E17FE56E3FF009F91FF00BD297DBF0BFF002B71FF00CFC8FF00DE95D6E33B
                            EA9BB22967A78EC78B7A5FAD65B652EA5CD357EBBE953E8D7E8B5B67F4FDF7DF
                            FA5FE7BD34F8AEFAB0D752DA198B6DD4E1D95D21EFC7A85973321CC7DD7DBD46
                            9CBC26DB76287DB47DBA8FE6BF99F4ECF451F6A37BCB7AF9F27EEF17EF23D98D
                            6F3E9FE5327E97F86F2B69C4C8E9975F5E2578D6D3752C0EADD6996D8DC82F0E
                            17DB737FC0B12573AB9C52DEAE71195D747DB28D8CA5FEA543DB97BBD1B7D3C7
                            DF5EFF00A1B29AEBFF0047FA34943D786E55EE57CD2E2AF678F878BFBCC5C3EB
                            F6F8A5C3EEF0FCD3E2E1F638FE6E2E3F9DFFD0F37BFF00E45C3FFC3193FF0051
                            88A92BB7FF00C8B87FF86327FEA311687FCF9FAD3FF737FF0002A7FF004926E0
                            11E13C448F54F61C5FE525FD68B584B308FEAA109FAF2F17B992586BF5B2AE1E
                            0C59F89C4AD86C7B583971004F9ABF95D0B33146597398F3859430AC6B0B8975
                            8EF560D5ED1BABFD5DFF00CB50CDEB39FD4B32ACBEA36FAD6540343835ADF682
                            5FB76D4DADBF49EE5D457F583EAFD7766752C5BAFB2D1D429EA7F66C8A6AA770
                            0FB2B7E3536372B2FD4B5ADCCF5777A1FE0148447A1EBFB61FF73EE33C0CF86E
                            604675AC632E38DFAB69F0E3FEA7E83CB6474FEB584DB717271B2719A032FBE9
                            B18FAC0009AA9BEDADE1BEDDF6BEAAAD7FFA4477FD5EFAD17B7D77F4DCEB58C6
                            EDF54D16B806D63D2DBBF67D1A5B5FA7FF0007B16C647D6EC4AEBBABC42EBC1C
                            6F46937E161D55073B22BCA7CE050CB31B67A557F3967DA1FF0068FD27E8150E
                            ABD7B1337F6C9AD9634F52C9A6FA6434436BF5B78B36BBDAEFD3376EC4DE8BDC
                            CC8E97D4F171D99593897D18D6C0AAEB2B7B18E246F6FA763DA18FDCCF7AAABA
                            AFAC1D5BA67D8EEC6C6B6DC8C9CCC7C06583D868AC63D2CDDE95CCB6C7D96EFF
                            00D17A7E8D3E87E9FE9AE552EA7CD1D07886ED1FF22E67FE18C6FF00A8CB492A
                            3FE45CCFFC318DFF0051969283FCA7FD57FF005035BFCAFF00D5BFF7D9FFD1F3
                            8BFF00E45C3FFC3193FF005188A3FB1FA97FA1FF00A4DFFC927BFF00E45C3FFC
                            3193FF005188A928A025C3E9207AA7B8E2FF00292FEB455C9CB088CBDD84E7EB
                            9F0FB792386BF5B3BE2E3C59F892E462DF8CF0CBDBB1C448120E9FD92574997F
                            55F0ACC7AE9E98CBDDD41D6E153FA5B58EADEECCC77659D95B68A5F4FA6F6ECF
                            7DF72E62AB3D3B59616B5FB1C1DB1E25A60CED78FDD5AE7EB5F51179BAA6554B
                            BD6A2FAC35A4861C5ADD8D8D533D57DBBAAF45FB5FEB7AB659FE914B1DBD5A9D
                            36D3AEBFF353331322600C614786333C72FEADCA31C7FF0041BDFF008DEF5AFB
                            57D9CBD83F42721AF34E5CB9ADB1B8EF63717EC5FB437B5EF67FDA3F4FD3FD27
                            A8878DF51BAAE4F54BFA5D7753F68A05648DB7927D601ECDD43319F978CD66EF
                            D3D99B8F8B563FF877D6AB37EB3063AD0DE9782DC6BEAF46CC56B6E6B08F51B9
                            5EA3AD664B731D67AAC67D3CAF4D95FE8D95A3D1F5D7368B43DB878AEAEA7E3D
                            98D4385C6BA5D8AD7578EEABF5916D9EDB1FFD2ACC8491DFF06BFF00CD8C91D3
                            DD98FCAA19636839470CFABEB7A42DFB26F9147D93F9DFCCFB56F58CB65DF5AF
                            A99C3BB019B2AC2BEB75766330BC565CEB1B90FCA2C758EDF95B99B3D57FF82F
                            D1AC6493A7E3F83768FF0091733FF0C637FD465A4951FF0022E67FE18C6FFA8C
                            B4941FE53FEABFFA81ABFE57FEADFF00BECFFFD2F37BFF00E45C3FFC3193FF00
                            5188B77FE6EFD44FFE7BBFF85B91FF009358D58C4C8E99451665D78D6D375CF2
                            DB1B6996D8DA1AC2D3455737FC0BD0FEC185FF009658FF00E6647FEF32861311
                            04112BE29FE84CEF397F55831E411063213BE39FE86497CD92521AC629FA960F
                            48C4EA5453D2BA8FED6C6735AE7DE687E3C3CB9CD753E95E5CE77B1AC7EFFF00
                            845D3E4E1E2F55CDCAE9B7514514B3AD558753F171E8A2C6D2FF00B5B1D5B6CA
                            2963ACFE6ABFE7BD45C90C1C36904753C7046A086647FEF32BB8794FC4CD666B
                            7ABD36D8CBDB92E6DA329CD7DAC24B6DB87A0DF51FEF7FBFE9FBD49EF4680A97
                            F893FDE87F57FA8BBDE8EB427FF85E4ED2FEA3A58FF56BA25CDAB39DF69C7C07
                            54F7595DD6B43DB632E6E1B1CEBE9C4BEDF4AE759ECAE8E97936FAFF00A2FE6B
                            F58AED0FAA1F56F1F21F8B9D93636D7750BF0A8FD2B984B2B348ACB6BAFA6E73
                            2CBBF58F7FAD918357FDF310E7E7FDA4E58FAC6E19259E89BB7E5EFF004E777A
                            3EAFA3BFD2DDFE0D4EAEA9D529F53D1FACD657EAB8BEDD96E6377388DAE7D9B6
                            9F7BDDB7E9390F763A692D8DFA27DFFBA939A17A09EFFE6F2F6FEE3719F553A7
                            8E8B7DF7DB653D428A7ED25AE7023D3FB4370B77D9E9A6FAF66DF53DCEEA75DF
                            EB33FA1FA1FA741FAD1F57BA774BC3AF230DB6B0BB26DA36DB914DE4B18DA9F5
                            DAFAF1A9C7B30AD7FABEFC4C9FD3D4AAD599994E3B7169FAC26BC6649650C7E5
                            B6B12EF53DB5B68D9FCE7E93FAEAB59532D6165BD62A7B0BDD696B864906C747
                            A96EB8FF00CE3F6FBDE91CB1ED2FF1327FDEA8668769FF00E1793B7F73F79151
                            FF0022E67FE18C6FFA8CB4912C1898FD32FA2BCBAF26DBAEA5E1B5B6D10DADB7
                            B5E5C6FAA96FF86624A2BF57154ABDCBF96575ECF07CBF37CCC37EAE3E1970FB
                            B7F24F8B87D8E0BE0E1E3F9DFFD3F2B7FD23F1EDC26492492772A49249242924
                            92494A4924925292492494FF00FFD93842494D042100000000005D0000000101
                            0000000F00410064006F00620065002000500068006F0074006F00730068006F
                            00700000001700410064006F00620065002000500068006F0074006F00730068
                            006F00700020004300430020003200300031003800000001003842494D040600
                            00000000070004000000010100FFE10DC3687474703A2F2F6E732E61646F6265
                            2E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D22EF
                            BBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964
                            223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E73
                            3A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F726520
                            352E362D633134322037392E3136303932342C20323031372F30372F31332D30
                            313A30363A33392020202020202020223E203C7264663A52444620786D6C6E73
                            3A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F
                            32322D7264662D73796E7461782D6E7323223E203C7264663A44657363726970
                            74696F6E207264663A61626F75743D222220786D6C6E733A786D704D4D3D2268
                            7474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F2220
                            786D6C6E733A73744576743D22687474703A2F2F6E732E61646F62652E636F6D
                            2F7861702F312E302F73547970652F5265736F757263654576656E7423222078
                            6D6C6E733A64633D22687474703A2F2F7075726C2E6F72672F64632F656C656D
                            656E74732F312E312F2220786D6C6E733A70686F746F73686F703D2268747470
                            3A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F2220
                            786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F78
                            61702F312E302F2220786D704D4D3A446F63756D656E7449443D2261646F6265
                            3A646F6369643A70686F746F73686F703A39313031643630342D643933352D63
                            3734642D613362372D6639303865643662333962322220786D704D4D3A496E73
                            74616E636549443D22786D702E6969643A64356338313837352D363931362D34
                            6234622D383361622D6364623562376132643337642220786D704D4D3A4F7269
                            67696E616C446F63756D656E7449443D22463330354235394345353742433334
                            4345373939383246333934343130313836222064633A666F726D61743D22696D
                            6167652F6A706567222070686F746F73686F703A436F6C6F724D6F64653D2233
                            222070686F746F73686F703A49434350726F66696C653D222220786D703A4372
                            65617465446174653D22323032302D31302D32375430353A33333A35332B3033
                            3A30302220786D703A4D6F64696679446174653D22323032302D31302D323754
                            30353A35323A35372B30333A30302220786D703A4D6574616461746144617465
                            3D22323032302D31302D32375430353A35323A35372B30333A3030223E203C78
                            6D704D4D3A486973746F72793E203C7264663A5365713E203C7264663A6C6920
                            73744576743A616374696F6E3D227361766564222073744576743A696E737461
                            6E636549443D22786D702E6969643A38626532333730342D373331342D303434
                            352D393830392D643236323463306637366630222073744576743A7768656E3D
                            22323032302D31302D32375430353A34393A34342B30333A3030222073744576
                            743A736F6674776172654167656E743D2241646F62652050686F746F73686F70
                            2043432032303138202857696E646F777329222073744576743A6368616E6765
                            643D222F222F3E203C7264663A6C692073744576743A616374696F6E3D227361
                            766564222073744576743A696E7374616E636549443D22786D702E6969643A64
                            356338313837352D363931362D346234622D383361622D636462356237613264
                            333764222073744576743A7768656E3D22323032302D31302D32375430353A35
                            323A35372B30333A3030222073744576743A736F6674776172654167656E743D
                            2241646F62652050686F746F73686F702043432032303138202857696E646F77
                            7329222073744576743A6368616E6765643D222F222F3E203C2F7264663A5365
                            713E203C2F786D704D4D3A486973746F72793E203C2F7264663A446573637269
                            7074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E2020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            2020202020202020202020202020202020202020202020202020202020202020
                            202020202020202020202020202020202020202020202020202020202020203C
                            3F787061636B657420656E643D2277223F3EFFEE000E41646F62650064000000
                            0001FFDB0084000604040405040605050609060506090B080606080B0C0A0A0B
                            0A0A0C100C0C0C0C0C0C100C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
                            0C0C0C0C0C0C0C010707070D0C0D18101018140E0E0E14140E0E0E0E14110C0C
                            0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
                            0C0C0C0C0C0C0C0CFFC00011080042004803011100021101031101FFDD000400
                            09FFC401A2000000070101010101000000000000000004050302060100070809
                            0A0B0100020203010101010100000000000000010002030405060708090A0B10
                            0002010303020402060703040206027301020311040005211231415106136122
                            7181143291A10715B14223C152D1E1331662F0247282F12543345392A2B26373
                            C235442793A3B33617546474C3D2E2082683090A181984944546A4B456D35528
                            1AF2E3F3C4D4E4F465758595A5B5C5D5E5F566768696A6B6C6D6E6F637475767
                            778797A7B7C7D7E7F738485868788898A8B8C8D8E8F82939495969798999A9B9
                            C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFA1100020201020305050405060408
                            03036D0100021103042112314105511361220671819132A1B1F014C1D1E12342
                            15526272F1332434438216925325A263B2C20773D235E2448317549308090A18
                            192636451A2764745537F2A3B3C32829D3E3F38494A4B4C4D4E4F465758595A5
                            B5C5D5E5F5465666768696A6B6C6D6E6F6475767778797A7B7C7D7E7F7384858
                            68788898A8B8C8D8E8F839495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAA
                            BACADAEAFAFFDA000C03010002110311003F00F3BDB369361E59B2BD9F4A8350
                            B9BBBBBB89A4B892E578A411DB940A209615EB33D6A335F319279E51139638C2
                            1097A463FE3964FF005484FF009917559065C9A894239258A30C78E5E818BEAC
                            92CBC5FDEE3C9FEA7150FD3DA2FF00D4B561FF0023750FFB2AC9FE5727FAAE4F
                            F4B87FEA9367E4F37FABE5FF004BA7FF00AA0EFD3FA2FF00D4B561FF0023750F
                            FB2AC7F2B93FD5727FA5C3FF005497F279BFD5F2FF00A5D3FF00D504D756B3BE
                            D1ADEDEE757F21AE9D6D762B693DDA6AB024A280D63692E143ECC0FC389D2E40
                            6BC5C9FE970FFD5251A2CC45F8F97FD2E9FF00EA8A55FA7B45FF00A96AC3FE46
                            EA1FF6558FE5727FAAE4FF004B87FEA92FE4F37FABE5FF004BA7FF00AA0EFD3D
                            A37FD4B561FF0023750FFB2AC7F2B93FD5727FA5C3FF005497F279BFD5F2FF00
                            A5D3FF00D5077E9FD1BFEA5AB0FF0091BA87FD9563F95C9FEAB93FD2E1FF00AA
                            4BF93CDFEAF97FD2E9FF00EA83BF4FE8BFF52D587FC8DD43FECAB1FCAE4FF55C
                            9FE970FF00D525FC9E6FF57CBFE974FF00F5415EE5B49BFF002CDEDEC1A541A7
                            DCDA5DDA44B25BC972DC9278EE0B8613CD32F58529419087890CF1899CB24670
                            9CBD431FF04B1FFA9C21FCF935E31971EA2309649658CF1E497AC62FAB1CB170
                            FF00758F1FFAA49FFFD0F385EFFCA19A47FCC7EA1FF26ACF30B1FF008CCFFE17
                            8BFDD6675D8BFC6F27FC2B0FFBBD426DFE28FCBAFF00A927FEE6975FF34E627E
                            4B59FF00291FF4A71B83FC9FAFFF0094AFFAF7C5FAD24D6750D16F751825D1F4
                            EFD076EAAAAE86E25B9F8F913EAF361CC6C57E151FB39B0D1E3CB8C5649F8B2B
                            FAF8063FF631765A3C39B1C08CB3FCC4AFEAE08E1F4FF37860F51B1874E86C2C
                            B4AF30EABA396BED7ECEE27D420BD5D4D3518C7AFEA5DEA286E0C96EB17AAAA9
                            CDF4D6916793EB30C8E9EA4197FC50007D3C5E9FE6B9B2FA6446F7C29EEA7A1E
                            91735F3168B079762BCB5D1C5B5CDBDCDDF9766B58F529F50904024E31DA694F
                            3FD4639A414B7FEEE2FB524BFBD68D54A5FCD95707FBE6762E37E7C48AB8D1BC
                            896977E65B6BC5D0920BE9353921226D2213047269EB369CD6FEAACF3CB1CED2
                            A3DAFE8C6B18E17E5F5896E3E1863AE57E0FF4FF0087FD32217E2127E94934D7
                            FCA89351B4885B584532DD79685EDC5CDC59BDA4919B53F5DF4A1F463F45564F
                            F7BF9CF3ABCBFDF7A797485CE35F4EED5B8C5FD2FDABF4B7FCB18E5B24B3834C
                            B9BCB5D26782CC4D3E9F6AB717716A0C8F34F2EA305DD92CB35A87960FAF41FD
                            D32243E9C9E8F18C493C47FAACF20A94474DD8179B9F4C78FCDADA5C36F0589D
                            5ECBD18ACE5FAC5B0FDD5E72F465F4ADC3C7CF970E10C71F1FEED7D3E39AE3FE
                            318FFE1797FDD6170351FE398FFE159BFDD69DFFD1F385EFFCA19A47FCC7EA1F
                            F26ACF30B1FF008CCFFE178BFDD6675D8BFC6F27FC2B0FFBBD424799AEC552DE
                            169A78E1520348C1413D2A4D32708191A0891A169FEA9E45D634E4D59A478666
                            D1F535D1EE1222ECCF70FEB50C40A8E51FFA3BFDAE2FF63E0C80DC448FE3BFF6
                            2CCC6AFF00A287D43CBFE74D222BAD3751D3751D3A3558AF2F6CAE219E001033
                            450CF2C6E17E1E72BC514AE3ED48C89F6F0DDFC11FA51F2FE5F7E685EC46F65F
                            2D6B7731449E99B96B2BB7554B75F482F3284058563F4F8D7F76A9C3F6704B6E
                            681BEC129D43CADE66D374F8352D4348BDB3D3AE8A8B6BDB8B79628642CBCD44
                            723A847E49F18E27ECFC58914A374AF154F2CBFE50CD5FFE63F4FF00F9357998
                            593FC661FF000BCBFEEB0BAECBFE378FFE159BFDDE9DFFD2F385EFFCA19A47FC
                            C7EA1FF26ACF30B1FF008CCFFE178BFDD6675D8BFC6F27FC2B0FFBBD4320FF00
                            95E7F9A7FF0057BFFA75B4FF00AA39B9FE50CDFCEFB23FA9D5FF00A10ECDFF00
                            52FF00A599BFEAA241ACF9CB5DF306B36BAA6BD746F2E2D9522590471464448E
                            5F8F189635FB4ED901A994A6253374ED745D99834B8CE3C31F0E323C5CE53F57
                            D3FC7297F35EA36FE7FF00204177ACF9874DBCBE9EEC6BD69E641A6DFDA5B5A0
                            915279637B68645BBBB324AAB7865E5E871E307C49FCB8F0DB807FA9F17FB376
                            193D425FD3E1FF006095EA1F9B9A5416F796FA5B3DE87D38DA591BDD1B46B6B6
                            5964D422BA706C20492DB87A517F7921B877B8FDE2A418E3DAFF00A49951944F
                            F3521F34F9F349D5CF9C4C10CE87CC5A95A5F59F348D42476FEBF3120572158F
                            ACBC5539AE57185088FE6717FB24995DA71F981E6DF2D7E88BCD3B4FBBB9BFD4
                            755B1D0A2B904446CADC5859C65BD2992591E4979FEE9A36861F43F7EBCDF2CC
                            82E761862DB1807A7EB795E04A7965FF002866AFFF0031FA7FFC9ABCCC2C9FE3
                            30FF0085E5FF007585D765FF001BC7FF000ACDFEEF4EFF00FFD3F385EFFCA19A
                            47FCC7EA1FF26ACF30B1FF008CCFFE178BFDD6675D8BFC6F27FC2B0FFBBD42DF
                            F07798FF00E593FE4A45FF003561FE50C3FCEFB25FA9ED7FD08F697FA97FD2CC
                            3FF5512FD434CBED3A558AF22F4A465E6ABC95BE1A915F849F0CBF1668E41713
                            6EA75FD9B9F49310CD1E094871F38CFD3FE6193D2756FCAFD12E34FB6B4F2E41
                            7CFE617B9D1AD09B9B9864B799F57B06BB3C235B785E1F4DD787C73CDF0664CE
                            1EA881FC7C5FEC5D7C25FBB323D160FF009C7AF3AFE94360D344BFE86D7F1CC6
                            D356E4F1A4EB6EE8B6BF51FD21CD5DD1BFDE3F4FD3FDE7A9C72B8EF7FD1652D8
                            81FCE42E9BF919E6AD43CCF7DE5C82EED3F48588B7254A5EB337D6D03A72812D
                            9EEED9539289E4BDB7B58ADD9956778F9A7246E2D4900A567F2C7525D01F5697
                            53B18AE63B16D4DB476FAD7D73EAAB73F54E75101B4AFABFB1F5AE7C7F670CF6
                            BFE8FD5FE726312481FCEFA586E0427965FF002866AFFF0031FA7FFC9ABCCC2C
                            9FE330FF0085E5FF007585D765FF001BC7FF000ACDFEEF4EFF00FFD4F385EFFC
                            A19A47FCC7EA1FF26ACF30B1FF008CCFFE178BFDD6675D8BFC6F27FC2B0FFBBD
                            424799AEC55AD2716F750CE6349844EAFE8CA3946FC4D78B814AA9FDAC20A965
                            AFF9ABE6217AD796D0DADAC9F5CB1BE8163476585B4C81ADADA2412BCBCA210B
                            F17F5BD5924E3F149F6B91E2DE24FF0005FF00B24708E1311C8AE8BF32D2292E
                            923F2B68B1E9B796BF53B8D2E34BD8E171F595BAF51A54BA5BC693D544E3CEE9
                            A348D7D348D5322391F3644EE0F508FB0FCEBD6ECAED264D1B4B920B79AC6E34
                            DB1916F0C1692E988D1DBB454B912C9F0C8FCBEB525C7C5F678E48CAE5C47EAF
                            E731E11C2623E99734BA4FCD6F339D1EEF4484456DA35EDBBDBDC69B099840D2
                            493ADC3DD14695B9DD16409EABF3E117EED115721C3E9A67C5EAE2FE2619858A
                            7965FF002866AFFF0031FA7FFC9ABCCC2C9FE330FF0085E5FF007585D765FF00
                            1BC7FF000ACDFEEF4EFF00FFD5F385EFFCA19A47FCC7EA1FF26ACF30B1FF008C
                            CFFE178BFDD6675D8BFC6F27FC2B0FFBBD4339FF009577F913FF009773FF000D
                            DD43FE6BCCD762C4FCC9A1F9474BF32595A796BCC23CD1A6C891BCD7A6CA6B00
                            B2B48CAD0FA539666E28A8FCFECB7A9C7F672ED38066016190D44BD3F51D1F4C
                            F336B7A9F97EEEC6CACED21F395AE936D2E97A7D8D95CC76929BC468D6482046
                            9368A3FEFBD4F8932980B18CFF003C4F8BFCD6DCA7804EBF878121B0FCB6F24D
                            DC56DACB8D46C74292D677B882EEE6312C73C37AB668CD3C3673CA6299A45548
                            E0D2EE6559F944FF00BAE7711CB10E3247FA56397D32114D57F287F2E2C35097
                            4DD6B52B88EEA4D7AF747B0FF4A7859E2B7684465638F4CBE4926FF48F8FD6B8
                            B18B971F89579BA4315E48C787EA95AC8D4A57F4C292687F2A7CBC3C957B7B79
                            73716BE60B3B4FD20F1C922B27D5C6A2B645BEAF0C13C7C38FA9C59B538E7699
                            3FDE3F438CEF28989F747EA500D803F8FE8427E67FE5F7977CB9A4417DA54775
                            0BBEA3756452EAFED2F99A2812278E578EDA1B792CA5712FC76973FBF8BF6F22
                            4D577CAFFCD650008911BF0D7A988597FCA19ABFFCC7E9FF00F26AF330F27F8C
                            C3FE1797FDD6175997FC6F1FFC2B37FBBD3BFFD6F3BDB2E937FE59B2B29F5683
                            4FB9B4BBBB95E3B88EE5B924F1DBAA15304532F585EB539AE99C90CF29084B24
                            670847D271FF0001C9FEA9387F3DD5643971EA25318E59633C78E3E8962FAB1C
                            B2F17F7B931FFAA4543F4068BFF532D87FC8AD43FEC972CFCD64FF0052C9FE9B
                            0FFD556CFCE66FF50CBFE9B4FF00F55DB4D0F48460E9E66B15653556116A0082
                            3FE8D711ABCA3FC964FF004D87FEAAAFE732FF00A865FF004DA7FF00AAE9DE8D
                            AA4DA5EB506AE9E6EB3BAB88AF63D4A48AE57549239AEA22C565980814C8FF00
                            1BFC7CB9FC6FF17C5846AF28AFDD64DBCF0FFD5544B5998837872EFF00D2D3FF
                            00D565C75FD7BF49B6A83F315C6A4F07D55AF44DABFAE6DEBCBD1F57D0E7E972
                            DFD3E5C307E6F2EFFBAC9BFF004B0FFD556475B9BFD432FF00A6D3FF00D5654B
                            6F3479A6D44E2D7F3327B7175234D7222B9D613D59580567938C239BB055059B
                            E2C7F3592ABC29D7BF0FFD5540D665BBF032FF00A6D3FF00D5643DB6AFACDA69
                            D1E996BF986D6FA6C4498ACA29756481497F50F18D60082B27EF3ECFDBF8B13A
                            BCA7FC964FF4D87FEAAAFE7337FA865FF4DA7FFAAC97DC5AC173134373E70B69
                            A2699EE5A3917526533C80092520DB7F78FC579BFDA6C7F3593FD4B27FA6C3FF
                            005553F9DCDFEA397FD369FF00EAB2CB95D26C3CB37B6506AB06A1737777692A
                            476F1DCAF14823B8572C678A15EB3252872B81C93CF19184B1C6109C7D471FF1
                            9C7FEA739FF31AB19CB9351199C72C51863C91F5CB17D59258B87FBAC993FD4E
                            4FFFD7F2BCDFDEB74EBDBA7D1803297359858BB15762AEC55D8ABB15762AEC55
                            FFD9}
                        end
                      end
                      object Series1: TLineSeries
                        Marks.ArrowLength = 8
                        Marks.Visible = False
                        SeriesColor = 4259584
                        Title = #1047#1072#1076#1072#1085#1080#1077
                        Pointer.InflateMargins = True
                        Pointer.Style = psRectangle
                        Pointer.Visible = False
                        XValues.DateTime = False
                        XValues.Name = 'X'
                        XValues.Multiplier = 1.000000000000000000
                        XValues.Order = loAscending
                        YValues.DateTime = False
                        YValues.Name = 'Y'
                        YValues.Multiplier = 1.000000000000000000
                        YValues.Order = loNone
                      end
                      object Series2: TLineSeries
                        Marks.ArrowLength = 8
                        Marks.Visible = False
                        SeriesColor = clAqua
                        Title = #1062#1077#1085#1090#1088
                        Pointer.InflateMargins = True
                        Pointer.Style = psRectangle
                        Pointer.Visible = False
                        XValues.DateTime = False
                        XValues.Name = 'X'
                        XValues.Multiplier = 1.000000000000000000
                        XValues.Order = loAscending
                        YValues.DateTime = False
                        YValues.Name = 'Y'
                        YValues.Multiplier = 1.000000000000000000
                        YValues.Order = loNone
                      end
                      object Series3: TLineSeries
                        Marks.ArrowLength = 8
                        Marks.Visible = False
                        SeriesColor = clRed
                        Title = #1051#1077#1074#1072#1103
                        Pointer.InflateMargins = True
                        Pointer.Style = psRectangle
                        Pointer.Visible = False
                        XValues.DateTime = False
                        XValues.Name = 'X'
                        XValues.Multiplier = 1.000000000000000000
                        XValues.Order = loAscending
                        YValues.DateTime = False
                        YValues.Name = 'Y'
                        YValues.Multiplier = 1.000000000000000000
                        YValues.Order = loNone
                      end
                      object Series4: TLineSeries
                        Marks.ArrowLength = 8
                        Marks.Visible = False
                        SeriesColor = clWhite
                        Title = #1055#1088#1072#1074#1072#1103
                        Pointer.InflateMargins = True
                        Pointer.Style = psRectangle
                        Pointer.Visible = False
                        XValues.DateTime = False
                        XValues.Name = 'X'
                        XValues.Multiplier = 1.000000000000000000
                        XValues.Order = loAscending
                        YValues.DateTime = False
                        YValues.Name = 'Y'
                        YValues.Multiplier = 1.000000000000000000
                        YValues.Order = loNone
                      end
                    end
                  end
                end
                object TableTab: TsTabSheet
                  Caption = 'TableTab'
                  object RegimeInfoGrid: TAdvColumnGrid
                    Left = 0
                    Top = 0
                    Width = 624
                    Height = 337
                    Cursor = crDefault
                    Align = alClient
                    ColCount = 8
                    FixedCols = 0
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    ScrollBars = ssNone
                    TabOrder = 0
                    HoverRowCells = [hcNormal, hcSelected]
                    ActiveCellFont.Charset = DEFAULT_CHARSET
                    ActiveCellFont.Color = clWindowText
                    ActiveCellFont.Height = -11
                    ActiveCellFont.Name = 'Tahoma'
                    ActiveCellFont.Style = [fsBold]
                    ColumnHeaders.Strings = (
                      #1084#1080#1085
                      #1101#1090#1072#1087
                      #1084#1080#1085
                      #1051#1047
                      #1062#1047
                      #1055#1047
                      #176#1057'/'#1084#1080#1085
                      #1093#1093#1093)
                    ColumnSize.Stretch = True
                    ColumnSize.StretchAll = True
                    ControlLook.FixedGradientHoverFrom = clGray
                    ControlLook.FixedGradientHoverTo = clWhite
                    ControlLook.FixedGradientDownFrom = clGray
                    ControlLook.FixedGradientDownTo = clSilver
                    ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
                    ControlLook.DropDownHeader.Font.Color = clWindowText
                    ControlLook.DropDownHeader.Font.Height = -11
                    ControlLook.DropDownHeader.Font.Name = 'Tahoma'
                    ControlLook.DropDownHeader.Font.Style = []
                    ControlLook.DropDownHeader.Visible = True
                    ControlLook.DropDownHeader.Buttons = <>
                    ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
                    ControlLook.DropDownFooter.Font.Color = clWindowText
                    ControlLook.DropDownFooter.Font.Height = -11
                    ControlLook.DropDownFooter.Font.Name = 'Tahoma'
                    ControlLook.DropDownFooter.Font.Style = []
                    ControlLook.DropDownFooter.Visible = True
                    ControlLook.DropDownFooter.Buttons = <>
                    Filter = <>
                    FilterDropDown.Font.Charset = DEFAULT_CHARSET
                    FilterDropDown.Font.Color = clWindowText
                    FilterDropDown.Font.Height = -11
                    FilterDropDown.Font.Name = 'Tahoma'
                    FilterDropDown.Font.Style = []
                    FilterDropDown.TextChecked = 'Checked'
                    FilterDropDown.TextUnChecked = 'Unchecked'
                    FilterDropDownClear = '(All)'
                    FilterEdit.TypeNames.Strings = (
                      'Starts with'
                      'Ends with'
                      'Contains'
                      'Not contains'
                      'Equal'
                      'Not equal'
                      'Larger than'
                      'Smaller than'
                      'Clear')
                    FixedColWidth = 78
                    FixedRowHeight = 22
                    FixedFont.Charset = DEFAULT_CHARSET
                    FixedFont.Color = clWindowText
                    FixedFont.Height = -11
                    FixedFont.Name = 'Tahoma'
                    FixedFont.Style = [fsBold]
                    FloatFormat = '%.2f'
                    HoverButtons.Buttons = <>
                    HoverButtons.Position = hbLeftFromColumnLeft
                    HTMLSettings.ImageFolder = 'images'
                    HTMLSettings.ImageBaseName = 'img'
                    PrintSettings.DateFormat = 'dd/mm/yyyy'
                    PrintSettings.Font.Charset = DEFAULT_CHARSET
                    PrintSettings.Font.Color = clWindowText
                    PrintSettings.Font.Height = -11
                    PrintSettings.Font.Name = 'Tahoma'
                    PrintSettings.Font.Style = []
                    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
                    PrintSettings.FixedFont.Color = clWindowText
                    PrintSettings.FixedFont.Height = -11
                    PrintSettings.FixedFont.Name = 'Tahoma'
                    PrintSettings.FixedFont.Style = []
                    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
                    PrintSettings.HeaderFont.Color = clWindowText
                    PrintSettings.HeaderFont.Height = -11
                    PrintSettings.HeaderFont.Name = 'Tahoma'
                    PrintSettings.HeaderFont.Style = []
                    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
                    PrintSettings.FooterFont.Color = clWindowText
                    PrintSettings.FooterFont.Height = -11
                    PrintSettings.FooterFont.Name = 'Tahoma'
                    PrintSettings.FooterFont.Style = []
                    PrintSettings.PageNumSep = '/'
                    SearchFooter.FindNextCaption = 'Find &next'
                    SearchFooter.FindPrevCaption = 'Find &previous'
                    SearchFooter.Font.Charset = DEFAULT_CHARSET
                    SearchFooter.Font.Color = clWindowText
                    SearchFooter.Font.Height = -11
                    SearchFooter.Font.Name = 'Tahoma'
                    SearchFooter.Font.Style = []
                    SearchFooter.HighLightCaption = 'Highlight'
                    SearchFooter.HintClose = 'Close'
                    SearchFooter.HintFindNext = 'Find next occurrence'
                    SearchFooter.HintFindPrev = 'Find previous occurrence'
                    SearchFooter.HintHighlight = 'Highlight occurrences'
                    SearchFooter.MatchCaseCaption = 'Match case'
                    SortSettings.DefaultFormat = ssAutomatic
                    Version = '3.1.4.2'
                    Columns = <
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edNone
                        FilterCaseSensitive = False
                        Fixed = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #1084#1080#1085
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -13
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = True
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 78
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edNone
                        FilterCaseSensitive = False
                        Fixed = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #1101#1090#1072#1087
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -13
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = True
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 78
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edNone
                        FilterCaseSensitive = False
                        Fixed = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #1084#1080#1085
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -13
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = True
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 78
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edNone
                        FilterCaseSensitive = False
                        Fixed = False
                        FloatFormat = '%.1f'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #1051#1047
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -13
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = True
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 78
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edNone
                        FilterCaseSensitive = False
                        Fixed = False
                        FloatFormat = '%.1f'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #1062#1047
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -13
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = True
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 77
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edNone
                        FilterCaseSensitive = False
                        Fixed = False
                        FloatFormat = '%.1f'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #1055#1047
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -13
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = True
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 77
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edNone
                        FilterCaseSensitive = False
                        Fixed = False
                        FloatFormat = '%.1f'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #176#1057'/'#1084#1080#1085
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -13
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = True
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 77
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edNone
                        FilterCaseSensitive = False
                        Fixed = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #1093#1093#1093
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -13
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = True
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 77
                      end>
                    ColWidths = (
                      78
                      78
                      78
                      78
                      77
                      77
                      77
                      77)
                  end
                end
                object RegimeTab: TsTabSheet
                  Caption = 'RegimeTab'
                  object TableInfoGrid: TAdvColumnGrid
                    Left = 0
                    Top = 0
                    Width = 624
                    Height = 337
                    Cursor = crDefault
                    Align = alClient
                    ColCount = 7
                    DefaultColWidth = 40
                    RowCount = 30
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    ScrollBars = ssNone
                    TabOrder = 0
                    ActiveRowShow = True
                    ActiveRowColor = 15393241
                    HoverRowCells = [hcNormal, hcSelected]
                    ActiveCellFont.Charset = DEFAULT_CHARSET
                    ActiveCellFont.Color = clWindowText
                    ActiveCellFont.Height = -11
                    ActiveCellFont.Name = 'Tahoma'
                    ActiveCellFont.Style = [fsBold]
                    ActiveCellColor = 15387318
                    ColumnHeaders.Strings = (
                      #8470
                      #176'C'
                      #176#1057'/'#1084#1080#1085
                      #1042#1088#1077#1084#1103', '#1084#1080#1085
                      #1060#1080#1082#1089'. '#1074#1088#1077#1084#1103', '#1089#1077#1082
                      #1050#1086#1076
                      #1057#1076#1074#1080#1078#1082#1072', '#1089#1077#1082)
                    ColumnSize.Stretch = True
                    ColumnSize.StretchAll = True
                    ControlLook.FixedGradientFrom = clWhite
                    ControlLook.FixedGradientTo = clSilver
                    ControlLook.FixedGradientHoverFrom = 13619409
                    ControlLook.FixedGradientHoverTo = 12502728
                    ControlLook.FixedGradientHoverMirrorFrom = 12502728
                    ControlLook.FixedGradientHoverMirrorTo = 11254975
                    ControlLook.FixedGradientDownFrom = 8816520
                    ControlLook.FixedGradientDownTo = 7568510
                    ControlLook.FixedGradientDownMirrorFrom = 7568510
                    ControlLook.FixedGradientDownMirrorTo = 6452086
                    ControlLook.FixedGradientDownBorder = 11440207
                    ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
                    ControlLook.DropDownHeader.Font.Color = clWindowText
                    ControlLook.DropDownHeader.Font.Height = -11
                    ControlLook.DropDownHeader.Font.Name = 'Tahoma'
                    ControlLook.DropDownHeader.Font.Style = []
                    ControlLook.DropDownHeader.Visible = True
                    ControlLook.DropDownHeader.Buttons = <>
                    ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
                    ControlLook.DropDownFooter.Font.Color = clWindowText
                    ControlLook.DropDownFooter.Font.Height = -11
                    ControlLook.DropDownFooter.Font.Name = 'Tahoma'
                    ControlLook.DropDownFooter.Font.Style = []
                    ControlLook.DropDownFooter.Visible = True
                    ControlLook.DropDownFooter.Buttons = <>
                    DefaultAlignment = taCenter
                    Filter = <>
                    FilterDropDown.Font.Charset = DEFAULT_CHARSET
                    FilterDropDown.Font.Color = clWindowText
                    FilterDropDown.Font.Height = -11
                    FilterDropDown.Font.Name = 'Tahoma'
                    FilterDropDown.Font.Style = []
                    FilterDropDown.TextChecked = 'Checked'
                    FilterDropDown.TextUnChecked = 'Unchecked'
                    FilterDropDownClear = '(All)'
                    FilterEdit.TypeNames.Strings = (
                      'Starts with'
                      'Ends with'
                      'Contains'
                      'Not contains'
                      'Equal'
                      'Not equal'
                      'Larger than'
                      'Smaller than'
                      'Clear')
                    FixedColWidth = 40
                    FixedRowHeight = 22
                    FixedRowAlways = True
                    FixedColAlways = True
                    FixedFont.Charset = DEFAULT_CHARSET
                    FixedFont.Color = clBlack
                    FixedFont.Height = -11
                    FixedFont.Name = 'Tahoma'
                    FixedFont.Style = [fsBold]
                    FloatFormat = '%.2f'
                    HoverButtons.Buttons = <>
                    HoverButtons.Position = hbLeftFromColumnLeft
                    HTMLSettings.ImageFolder = 'images'
                    HTMLSettings.ImageBaseName = 'img'
                    Look = glTMS
                    Navigation.AdvanceOnEnter = True
                    Navigation.AdvanceAuto = True
                    PrintSettings.DateFormat = 'dd/mm/yyyy'
                    PrintSettings.Font.Charset = DEFAULT_CHARSET
                    PrintSettings.Font.Color = clWindowText
                    PrintSettings.Font.Height = -11
                    PrintSettings.Font.Name = 'Tahoma'
                    PrintSettings.Font.Style = []
                    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
                    PrintSettings.FixedFont.Color = clWindowText
                    PrintSettings.FixedFont.Height = -11
                    PrintSettings.FixedFont.Name = 'Tahoma'
                    PrintSettings.FixedFont.Style = []
                    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
                    PrintSettings.HeaderFont.Color = clWindowText
                    PrintSettings.HeaderFont.Height = -11
                    PrintSettings.HeaderFont.Name = 'Tahoma'
                    PrintSettings.HeaderFont.Style = []
                    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
                    PrintSettings.FooterFont.Color = clWindowText
                    PrintSettings.FooterFont.Height = -11
                    PrintSettings.FooterFont.Name = 'Tahoma'
                    PrintSettings.FooterFont.Style = []
                    PrintSettings.PageNumSep = '/'
                    SearchFooter.ColorTo = 15790320
                    SearchFooter.FindNextCaption = 'Find &next'
                    SearchFooter.FindPrevCaption = 'Find &previous'
                    SearchFooter.Font.Charset = DEFAULT_CHARSET
                    SearchFooter.Font.Color = clWindowText
                    SearchFooter.Font.Height = -11
                    SearchFooter.Font.Name = 'Tahoma'
                    SearchFooter.Font.Style = []
                    SearchFooter.HighLightCaption = 'Highlight'
                    SearchFooter.HintClose = 'Close'
                    SearchFooter.HintFindNext = 'Find next occurrence'
                    SearchFooter.HintFindPrev = 'Find previous occurrence'
                    SearchFooter.HintHighlight = 'Highlight occurrences'
                    SearchFooter.MatchCaseCaption = 'Match case'
                    SortSettings.DefaultFormat = ssAutomatic
                    SortSettings.HeaderColorTo = 16579058
                    SortSettings.HeaderMirrorColor = 16380385
                    SortSettings.HeaderMirrorColorTo = 16182488
                    Version = '3.1.4.2'
                    Columns = <
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edNone
                        FilterCaseSensitive = False
                        Fixed = True
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #8470
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -11
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = []
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = False
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 40
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edNone
                        FilterCaseSensitive = False
                        Fixed = False
                        FloatFormat = '%.1f'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #176'C'
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -11
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = False
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 97
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edNone
                        FilterCaseSensitive = False
                        Fixed = False
                        FloatFormat = '%.2f'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #176#1057'/'#1084#1080#1085
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -11
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = False
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 97
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edNone
                        FilterCaseSensitive = False
                        Fixed = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #1042#1088#1077#1084#1103', '#1084#1080#1085
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -11
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = False
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 97
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edNone
                        FilterCaseSensitive = False
                        Fixed = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #1060#1080#1082#1089'. '#1074#1088#1077#1084#1103', '#1089#1077#1082
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -11
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = False
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 97
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edNone
                        FilterCaseSensitive = False
                        Fixed = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #1050#1086#1076
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -11
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = False
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 96
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edNone
                        FilterCaseSensitive = False
                        Fixed = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #1057#1076#1074#1080#1078#1082#1072', '#1089#1077#1082
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -11
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = False
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 96
                      end>
                    ColWidths = (
                      40
                      97
                      97
                      97
                      97
                      96
                      96)
                  end
                end
              end
            end
          end
          object sPanel9: TsPanel
            Left = 0
            Top = 0
            Width = 1115
            Height = 79
            Align = alTop
            DoubleBuffered = False
            TabOrder = 2
            object sPanel11: TsPanel
              Left = 755
              Top = 1
              Width = 359
              Height = 77
              Align = alClient
              BorderWidth = 2
              DoubleBuffered = False
              TabOrder = 0
              object sLabelFX6: TsLabelFX
                Left = 3
                Top = 3
                Width = 353
                Height = 18
                Align = alTop
                Alignment = taCenter
                AutoSize = False
                Caption = #1057#1044#1042#1048#1046#1050#1040
                Color = clBtnFace
                ParentColor = False
                ParentFont = False
                Layout = tlBottom
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Angle = 0
                Kind.KindType = ktCustom
                Kind.Color = clSilver
                Shadow.OffsetKeeper.LeftTop = -1
                Shadow.OffsetKeeper.RightBottom = 3
                Shadow.Mode = smCustom
                Shadow.BlurCount = 2
              end
              object sPanel12: TsPanel
                Left = 3
                Top = 21
                Width = 353
                Height = 53
                SkinData.CustomColor = True
                SkinData.SkinSection = 'PANEL_LOW'
                Align = alClient
                Color = clBlack
                DoubleBuffered = False
                TabOrder = 0
                object iSevenSegmentInteger4: TiSevenSegmentInteger
                  Left = 10
                  Top = 5
                  Width = 55
                  Height = 42
                  DigitSpacing = 8
                  SegmentMargin = 6
                  SegmentColor = clLime
                  SegmentOffColor = 10240
                  AutoSegmentOffColor = False
                  Value = 0
                  ShowSign = False
                  DigitCount = 2
                end
                object iSevenSegmentCharacter1: TiSevenSegmentCharacter
                  Left = 66
                  Top = 5
                  Width = 23
                  Height = 42
                  Character = ' '
                  ShowOffSegments = False
                  SegmentBits = 64
                  UseSegmentBits = True
                  SegGOn = True
                  Value = sscBlank
                end
                object iSevenSegmentInteger2: TiSevenSegmentInteger
                  Left = 90
                  Top = 5
                  Width = 55
                  Height = 42
                  DigitSpacing = 8
                  SegmentMargin = 6
                  SegmentColor = clLime
                  SegmentOffColor = 10240
                  AutoSegmentOffColor = False
                  Value = 0
                  ShowSign = False
                  DigitCount = 2
                end
                object iSevenSegmentClock1: TiSevenSegmentClock
                  Left = 160
                  Top = 5
                  Width = 107
                  Height = 42
                  SegmentMargin = 6
                  SegmentColor = clLime
                  PowerOff = True
                  SegmentOffColor = 10240
                  AutoSegmentOffColor = False
                  ShowSeconds = False
                end
                object iLedArrow1: TiLedArrow
                  Left = 274
                  Top = 17
                  Active = True
                  InactiveColor = clGreen
                  BevelStyle = ibsNone
                  AutoSize = False
                  ArrowBodyLength = 0
                  ArrowHeadSize = 18
                  BackGroundColor = clBlack
                end
                object SliderSpeedometer: TiSevenSegmentClock
                  Left = 318
                  Top = 14
                  Width = 76
                  Height = 28
                  Visible = False
                  ShowOffSegments = False
                  ShowHours = False
                  CountDirection = icdUp
                end
              end
            end
            object sPanel6: TsPanel
              Left = 1
              Top = 1
              Width = 472
              Height = 77
              Align = alLeft
              BorderWidth = 2
              DoubleBuffered = False
              TabOrder = 1
              object sLabelFX4: TsLabelFX
                Left = 3
                Top = 3
                Width = 466
                Height = 18
                Align = alTop
                Alignment = taCenter
                AutoSize = False
                Caption = #1058#1045#1052#1055#1045#1056#1040#1058#1059#1056#1040
                Color = clBtnFace
                ParentColor = False
                ParentFont = False
                Layout = tlBottom
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Angle = 0
                Kind.KindType = ktCustom
                Kind.Color = clSilver
                Shadow.OffsetKeeper.LeftTop = -1
                Shadow.OffsetKeeper.RightBottom = 3
                Shadow.Mode = smCustom
                Shadow.BlurCount = 2
              end
              object sPanel10: TsPanel
                Left = 3
                Top = 21
                Width = 466
                Height = 53
                SkinData.CustomColor = True
                SkinData.SkinSection = 'PANEL_LOW'
                Align = alClient
                Color = clBlack
                DoubleBuffered = False
                TabOrder = 0
                object LZ_Temp_Ind: TiSevenSegmentAnalog
                  Left = 10
                  Top = 5
                  Width = 128
                  Height = 42
                  AutoSize = False
                  DigitSpacing = 8
                  SegmentMargin = 6
                  SegmentColor = clLime
                  SegmentOffColor = 10240
                  AutoSegmentOffColor = False
                  Precision = 1
                  ShowSign = False
                  DigitCount = 5
                end
                object CZ_Temp_Ind: TiSevenSegmentAnalog
                  Left = 165
                  Top = 5
                  Width = 129
                  Height = 42
                  AutoSize = False
                  DigitSpacing = 8
                  SegmentMargin = 6
                  SegmentColor = clLime
                  SegmentOffColor = 10240
                  AutoSegmentOffColor = False
                  Precision = 1
                  ShowSign = False
                  DigitCount = 5
                end
                object RZ_Temp_Ind: TiSevenSegmentAnalog
                  Left = 320
                  Top = 5
                  Width = 128
                  Height = 42
                  AutoSize = False
                  DigitSpacing = 8
                  SegmentMargin = 6
                  SegmentColor = clLime
                  SegmentOffColor = 10240
                  AutoSegmentOffColor = False
                  Precision = 1
                  ShowSign = False
                  DigitCount = 5
                end
              end
            end
            object sPanel13: TsPanel
              Left = 473
              Top = 1
              Width = 282
              Height = 77
              Align = alLeft
              BorderWidth = 2
              DoubleBuffered = False
              TabOrder = 2
              object sLabelFX5: TsLabelFX
                Left = 3
                Top = 3
                Width = 276
                Height = 18
                Align = alTop
                Alignment = taCenter
                AutoSize = False
                Caption = #1069#1058#1040#1055
                Color = clBtnFace
                ParentColor = False
                ParentFont = False
                Layout = tlBottom
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Angle = 0
                Kind.KindType = ktCustom
                Kind.Color = clSilver
                Shadow.OffsetKeeper.LeftTop = -1
                Shadow.OffsetKeeper.RightBottom = 3
                Shadow.Mode = smCustom
                Shadow.BlurCount = 2
              end
              object sPanel14: TsPanel
                Left = 3
                Top = 21
                Width = 276
                Height = 53
                SkinData.CustomColor = True
                SkinData.SkinSection = 'PANEL_LOW'
                Align = alClient
                Color = clBlack
                DoubleBuffered = False
                TabOrder = 0
                object iSevenSegmentInteger3: TiSevenSegmentInteger
                  Left = 10
                  Top = 5
                  Width = 55
                  Height = 42
                  DigitSpacing = 8
                  SegmentMargin = 6
                  SegmentColor = clLime
                  SegmentOffColor = 10240
                  AutoSegmentOffColor = False
                  Value = 0
                  ShowSign = False
                  DigitCount = 2
                end
                object iSevenSegmentCharacter2: TiSevenSegmentCharacter
                  Left = 66
                  Top = 5
                  Width = 23
                  Height = 42
                  Character = ' '
                  ShowOffSegments = False
                  SegmentBits = 64
                  UseSegmentBits = True
                  SegGOn = True
                  Value = sscBlank
                end
                object iSevenSegmentInteger1: TiSevenSegmentInteger
                  Left = 90
                  Top = 5
                  Width = 55
                  Height = 42
                  DigitSpacing = 8
                  SegmentMargin = 6
                  SegmentColor = clLime
                  SegmentOffColor = 10240
                  AutoSegmentOffColor = False
                  Value = 0
                  ShowSign = False
                  DigitCount = 2
                end
                object iSevenSegmentClock2: TiSevenSegmentClock
                  Left = 160
                  Top = 5
                  Width = 107
                  Height = 42
                  SegmentMargin = 6
                  SegmentColor = clLime
                  PowerOff = True
                  SegmentOffColor = 10240
                  AutoSegmentOffColor = False
                  ShowSeconds = False
                end
              end
            end
          end
        end
        object RegimeTabSheet: TsTabSheet
          Caption = 'RegimeTabSheet'
          object sPanel39: TsPanel
            Left = 0
            Top = 0
            Width = 1115
            Height = 454
            Align = alClient
            BevelOuter = bvNone
            BorderWidth = 2
            DoubleBuffered = False
            TabOrder = 0
            object sPanel33: TsPanel
              Left = 928
              Top = 2
              Width = 185
              Height = 450
              Align = alRight
              DoubleBuffered = False
              TabOrder = 0
              object OKRegimeButton: TsSpeedButton
                Left = 56
                Top = 196
                Width = 72
                Height = 35
                Caption = #1042#1042#1054#1044
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = OKRegimeButtonClick
                SkinData.SkinSection = 'BUTTON'
              end
              object sSpeedButton14: TsSpeedButton
                Left = 58
                Top = 69
                Width = 69
                Height = 26
                Caption = #1088#1077#1078#1080#1084#1099
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = sSpeedButton14Click
                SkinData.SkinSection = 'BUTTON'
              end
              object ClearRegimeGrid: TsSpeedButton
                Left = 58
                Top = 109
                Width = 69
                Height = 26
                Caption = '>0<'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = ClearRegimeGridClick
                SkinData.SkinSection = 'BUTTON'
              end
              object sPanel34: TsPanel
                Left = 36
                Top = 14
                Width = 112
                Height = 44
                BevelOuter = bvLowered
                DoubleBuffered = False
                TabOrder = 0
                object ProcessClock: TiSevenSegmentClock
                  Left = 2
                  Top = 2
                  Width = 107
                  Height = 40
                  SegmentMargin = 6
                  SegmentColor = clLime
                  SegmentOffColor = 10240
                  ShowSeconds = False
                end
              end
            end
            object sPanel40: TsPanel
              Left = 2
              Top = 2
              Width = 926
              Height = 450
              Align = alClient
              DoubleBuffered = False
              TabOrder = 1
              object RegimeGrid: TAdvColumnGrid
                Left = 1
                Top = 1
                Width = 924
                Height = 448
                Cursor = crDefault
                Align = alClient
                ColCount = 7
                RowCount = 30
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
                ParentFont = False
                ScrollBars = ssNone
                TabOrder = 0
                OnKeyDown = RegimeGridKeyDown
                OnKeyPress = RegimeGridKeyPress
                ActiveRowShow = True
                ActiveRowColor = 15393241
                HoverRowCells = [hcNormal, hcSelected]
                OnGetCellColor = RegimeGridGetCellColor
                OnAutoAddRow = RegimeGridAutoAddRow
                OnCellValidate = RegimeGridCellValidate
                OnGetFloatFormat = RegimeGridGetFloatFormat
                ActiveCellFont.Charset = DEFAULT_CHARSET
                ActiveCellFont.Color = clWindowText
                ActiveCellFont.Height = -11
                ActiveCellFont.Name = 'Tahoma'
                ActiveCellFont.Style = [fsBold]
                ActiveCellColor = 15387318
                ColumnHeaders.Strings = (
                  #8470
                  #176'C'
                  #176#1057'/'#1084#1080#1085
                  #1042#1088#1077#1084#1103', '#1084#1080#1085
                  #1060#1080#1082#1089'. '#1074#1088#1077#1084#1103', '#1089#1077#1082
                  #1050#1086#1076
                  #1057#1076#1074#1080#1078#1082#1072', '#1089#1077#1082)
                ColumnSize.Stretch = True
                ColumnSize.StretchAll = True
                ControlLook.FixedGradientFrom = clWhite
                ControlLook.FixedGradientTo = clSilver
                ControlLook.FixedGradientHoverFrom = 13619409
                ControlLook.FixedGradientHoverTo = 12502728
                ControlLook.FixedGradientHoverMirrorFrom = 12502728
                ControlLook.FixedGradientHoverMirrorTo = 11254975
                ControlLook.FixedGradientDownFrom = 8816520
                ControlLook.FixedGradientDownTo = 7568510
                ControlLook.FixedGradientDownMirrorFrom = 7568510
                ControlLook.FixedGradientDownMirrorTo = 6452086
                ControlLook.FixedGradientDownBorder = 11440207
                ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
                ControlLook.DropDownHeader.Font.Color = clWindowText
                ControlLook.DropDownHeader.Font.Height = -11
                ControlLook.DropDownHeader.Font.Name = 'Tahoma'
                ControlLook.DropDownHeader.Font.Style = []
                ControlLook.DropDownHeader.Visible = True
                ControlLook.DropDownHeader.Buttons = <>
                ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
                ControlLook.DropDownFooter.Font.Color = clWindowText
                ControlLook.DropDownFooter.Font.Height = -11
                ControlLook.DropDownFooter.Font.Name = 'Tahoma'
                ControlLook.DropDownFooter.Font.Style = []
                ControlLook.DropDownFooter.Visible = True
                ControlLook.DropDownFooter.Buttons = <>
                DefaultAlignment = taCenter
                Filter = <>
                FilterDropDown.Font.Charset = DEFAULT_CHARSET
                FilterDropDown.Font.Color = clWindowText
                FilterDropDown.Font.Height = -11
                FilterDropDown.Font.Name = 'Tahoma'
                FilterDropDown.Font.Style = []
                FilterDropDown.TextChecked = 'Checked'
                FilterDropDown.TextUnChecked = 'Unchecked'
                FilterDropDownClear = '(All)'
                FilterEdit.TypeNames.Strings = (
                  'Starts with'
                  'Ends with'
                  'Contains'
                  'Not contains'
                  'Equal'
                  'Not equal'
                  'Larger than'
                  'Smaller than'
                  'Clear')
                FixedRowHeight = 22
                FixedRowAlways = True
                FixedColAlways = True
                FixedFont.Charset = DEFAULT_CHARSET
                FixedFont.Color = clBlack
                FixedFont.Height = -11
                FixedFont.Name = 'Tahoma'
                FixedFont.Style = [fsBold]
                FloatFormat = '%.2f'
                HoverButtons.Buttons = <>
                HoverButtons.Position = hbLeftFromColumnLeft
                HTMLSettings.ImageFolder = 'images'
                HTMLSettings.ImageBaseName = 'img'
                Look = glTMS
                Navigation.AlwaysEdit = True
                Navigation.AdvanceOnEnter = True
                Navigation.AdvanceAuto = True
                PrintSettings.DateFormat = 'dd/mm/yyyy'
                PrintSettings.Font.Charset = DEFAULT_CHARSET
                PrintSettings.Font.Color = clWindowText
                PrintSettings.Font.Height = -11
                PrintSettings.Font.Name = 'Tahoma'
                PrintSettings.Font.Style = []
                PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
                PrintSettings.FixedFont.Color = clWindowText
                PrintSettings.FixedFont.Height = -11
                PrintSettings.FixedFont.Name = 'Tahoma'
                PrintSettings.FixedFont.Style = []
                PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
                PrintSettings.HeaderFont.Color = clWindowText
                PrintSettings.HeaderFont.Height = -11
                PrintSettings.HeaderFont.Name = 'Tahoma'
                PrintSettings.HeaderFont.Style = []
                PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
                PrintSettings.FooterFont.Color = clWindowText
                PrintSettings.FooterFont.Height = -11
                PrintSettings.FooterFont.Name = 'Tahoma'
                PrintSettings.FooterFont.Style = []
                PrintSettings.PageNumSep = '/'
                SearchFooter.ColorTo = 15790320
                SearchFooter.FindNextCaption = 'Find &next'
                SearchFooter.FindPrevCaption = 'Find &previous'
                SearchFooter.Font.Charset = DEFAULT_CHARSET
                SearchFooter.Font.Color = clWindowText
                SearchFooter.Font.Height = -11
                SearchFooter.Font.Name = 'Tahoma'
                SearchFooter.Font.Style = []
                SearchFooter.HighLightCaption = 'Highlight'
                SearchFooter.HintClose = 'Close'
                SearchFooter.HintFindNext = 'Find next occurrence'
                SearchFooter.HintFindPrev = 'Find previous occurrence'
                SearchFooter.HintHighlight = 'Highlight occurrences'
                SearchFooter.MatchCaseCaption = 'Match case'
                SortSettings.DefaultFormat = ssAutomatic
                SortSettings.HeaderColorTo = 16579058
                SortSettings.HeaderMirrorColor = 16380385
                SortSettings.HeaderMirrorColorTo = 16182488
                Version = '3.1.4.2'
                Columns = <
                  item
                    AutoMinSize = 0
                    AutoMaxSize = 0
                    Alignment = taCenter
                    Borders = []
                    BorderPen.Color = clSilver
                    CheckFalse = 'N'
                    CheckTrue = 'Y'
                    Color = clWindow
                    ColumnPopupType = cpFixedCellsRClick
                    DropDownCount = 8
                    EditLength = 0
                    Editor = edNone
                    FilterCaseSensitive = False
                    Fixed = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    Header = #8470
                    HeaderAlignment = taCenter
                    HeaderFont.Charset = DEFAULT_CHARSET
                    HeaderFont.Color = clWindowText
                    HeaderFont.Height = -11
                    HeaderFont.Name = 'Tahoma'
                    HeaderFont.Style = []
                    MinSize = 0
                    MaxSize = 0
                    Password = False
                    PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                    PrintColor = clWhite
                    PrintFont.Charset = DEFAULT_CHARSET
                    PrintFont.Color = clWindowText
                    PrintFont.Height = -11
                    PrintFont.Name = 'Tahoma'
                    PrintFont.Style = []
                    ReadOnly = False
                    ShowBands = False
                    SortStyle = ssAutomatic
                    SpinMax = 0
                    SpinMin = 0
                    SpinStep = 1
                    Tag = 0
                    Width = 64
                  end
                  item
                    AutoMinSize = 0
                    AutoMaxSize = 0
                    Alignment = taCenter
                    Borders = []
                    BorderPen.Color = clSilver
                    CheckFalse = 'N'
                    CheckTrue = 'Y'
                    Color = clWindow
                    ColumnPopupType = cpFixedCellsRClick
                    DropDownCount = 8
                    EditLength = 0
                    Editor = edPositiveFloat
                    FilterCaseSensitive = False
                    Fixed = False
                    FloatFormat = '%.1f'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    Header = #176'C'
                    HeaderAlignment = taCenter
                    HeaderFont.Charset = DEFAULT_CHARSET
                    HeaderFont.Color = clWindowText
                    HeaderFont.Height = -11
                    HeaderFont.Name = 'Tahoma'
                    HeaderFont.Style = [fsBold]
                    MinSize = 0
                    MaxSize = 0
                    Password = False
                    PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                    PrintColor = clWhite
                    PrintFont.Charset = DEFAULT_CHARSET
                    PrintFont.Color = clWindowText
                    PrintFont.Height = -11
                    PrintFont.Name = 'Tahoma'
                    PrintFont.Style = []
                    ReadOnly = False
                    ShowBands = False
                    SortStyle = ssAutomatic
                    SpinMax = 0
                    SpinMin = 0
                    SpinStep = 1
                    Tag = 0
                    Width = 143
                  end
                  item
                    AutoMinSize = 0
                    AutoMaxSize = 0
                    Alignment = taCenter
                    Borders = []
                    BorderPen.Color = clSilver
                    CheckFalse = 'N'
                    CheckTrue = 'Y'
                    Color = clWindow
                    ColumnPopupType = cpFixedCellsRClick
                    DropDownCount = 8
                    EditLength = 0
                    Editor = edPositiveFloat
                    FilterCaseSensitive = False
                    Fixed = False
                    FloatFormat = '%.1f'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    Header = #176#1057'/'#1084#1080#1085
                    HeaderAlignment = taCenter
                    HeaderFont.Charset = DEFAULT_CHARSET
                    HeaderFont.Color = clWindowText
                    HeaderFont.Height = -11
                    HeaderFont.Name = 'Tahoma'
                    HeaderFont.Style = [fsBold]
                    MinSize = 0
                    MaxSize = 0
                    Password = False
                    PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                    PrintColor = clWhite
                    PrintFont.Charset = DEFAULT_CHARSET
                    PrintFont.Color = clWindowText
                    PrintFont.Height = -11
                    PrintFont.Name = 'Tahoma'
                    PrintFont.Style = []
                    ReadOnly = False
                    ShowBands = False
                    SortStyle = ssAutomatic
                    SpinMax = 0
                    SpinMin = 0
                    SpinStep = 1
                    Tag = 0
                    Width = 143
                  end
                  item
                    AutoMinSize = 0
                    AutoMaxSize = 0
                    Alignment = taCenter
                    Borders = []
                    BorderPen.Color = clSilver
                    CheckFalse = 'N'
                    CheckTrue = 'Y'
                    Color = clWindow
                    ColumnPopupType = cpFixedCellsRClick
                    DropDownCount = 8
                    EditLength = 0
                    Editor = edPositiveNumeric
                    FilterCaseSensitive = False
                    Fixed = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    Header = #1042#1088#1077#1084#1103', '#1084#1080#1085
                    HeaderAlignment = taCenter
                    HeaderFont.Charset = DEFAULT_CHARSET
                    HeaderFont.Color = clWindowText
                    HeaderFont.Height = -11
                    HeaderFont.Name = 'Tahoma'
                    HeaderFont.Style = [fsBold]
                    MinSize = 0
                    MaxSize = 0
                    Password = False
                    PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                    PrintColor = clWhite
                    PrintFont.Charset = DEFAULT_CHARSET
                    PrintFont.Color = clWindowText
                    PrintFont.Height = -11
                    PrintFont.Name = 'Tahoma'
                    PrintFont.Style = []
                    ReadOnly = False
                    ShowBands = False
                    SortStyle = ssAutomatic
                    SpinMax = 0
                    SpinMin = 0
                    SpinStep = 1
                    Tag = 0
                    Width = 143
                  end
                  item
                    AutoMinSize = 0
                    AutoMaxSize = 0
                    Alignment = taCenter
                    Borders = []
                    BorderPen.Color = clSilver
                    CheckFalse = 'N'
                    CheckTrue = 'Y'
                    Color = clWindow
                    ColumnPopupType = cpFixedCellsRClick
                    DropDownCount = 8
                    EditLength = 0
                    Editor = edPositiveNumeric
                    FilterCaseSensitive = False
                    Fixed = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    Header = #1060#1080#1082#1089'. '#1074#1088#1077#1084#1103', '#1089#1077#1082
                    HeaderAlignment = taCenter
                    HeaderFont.Charset = DEFAULT_CHARSET
                    HeaderFont.Color = clWindowText
                    HeaderFont.Height = -11
                    HeaderFont.Name = 'Tahoma'
                    HeaderFont.Style = [fsBold]
                    MinSize = 0
                    MaxSize = 0
                    Password = False
                    PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                    PrintColor = clWhite
                    PrintFont.Charset = DEFAULT_CHARSET
                    PrintFont.Color = clWindowText
                    PrintFont.Height = -11
                    PrintFont.Name = 'Tahoma'
                    PrintFont.Style = []
                    ReadOnly = False
                    ShowBands = False
                    SortStyle = ssAutomatic
                    SpinMax = 0
                    SpinMin = 0
                    SpinStep = 1
                    Tag = 0
                    Width = 143
                  end
                  item
                    AutoMinSize = 0
                    AutoMaxSize = 0
                    Alignment = taCenter
                    Borders = []
                    BorderPen.Color = clSilver
                    CheckFalse = 'N'
                    CheckTrue = 'Y'
                    Color = clWindow
                    ColumnPopupType = cpFixedCellsRClick
                    DropDownCount = 8
                    EditLength = 0
                    Editor = edPositiveNumeric
                    FilterCaseSensitive = False
                    Fixed = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    Header = #1050#1086#1076
                    HeaderAlignment = taCenter
                    HeaderFont.Charset = DEFAULT_CHARSET
                    HeaderFont.Color = clWindowText
                    HeaderFont.Height = -11
                    HeaderFont.Name = 'Tahoma'
                    HeaderFont.Style = [fsBold]
                    MinSize = 0
                    MaxSize = 0
                    Password = False
                    PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                    PrintColor = clWhite
                    PrintFont.Charset = DEFAULT_CHARSET
                    PrintFont.Color = clWindowText
                    PrintFont.Height = -11
                    PrintFont.Name = 'Tahoma'
                    PrintFont.Style = []
                    ReadOnly = False
                    ShowBands = False
                    SortStyle = ssAutomatic
                    SpinMax = 0
                    SpinMin = 0
                    SpinStep = 1
                    Tag = 0
                    Width = 142
                  end
                  item
                    AutoMinSize = 0
                    AutoMaxSize = 0
                    Alignment = taCenter
                    Borders = []
                    BorderPen.Color = clSilver
                    CheckFalse = 'N'
                    CheckTrue = 'Y'
                    Color = clWindow
                    ColumnPopupType = cpFixedCellsRClick
                    DropDownCount = 8
                    EditLength = 0
                    Editor = edPositiveNumeric
                    FilterCaseSensitive = False
                    Fixed = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    Header = #1057#1076#1074#1080#1078#1082#1072', '#1089#1077#1082
                    HeaderAlignment = taCenter
                    HeaderFont.Charset = DEFAULT_CHARSET
                    HeaderFont.Color = clWindowText
                    HeaderFont.Height = -11
                    HeaderFont.Name = 'Tahoma'
                    HeaderFont.Style = [fsBold]
                    MinSize = 0
                    MaxSize = 0
                    Password = False
                    PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                    PrintColor = clWhite
                    PrintFont.Charset = DEFAULT_CHARSET
                    PrintFont.Color = clWindowText
                    PrintFont.Height = -11
                    PrintFont.Name = 'Tahoma'
                    PrintFont.Style = []
                    ReadOnly = False
                    ShowBands = False
                    SortStyle = ssAutomatic
                    SpinMax = 0
                    SpinMin = 0
                    SpinStep = 1
                    Tag = 0
                    Width = 142
                  end>
                ColWidths = (
                  64
                  143
                  143
                  143
                  143
                  142
                  142)
              end
            end
          end
        end
        object TuneTabSheet: TsTabSheet
          Caption = 'TuneTabSheet'
          object sPanel32: TsPanel
            Left = 309
            Top = 0
            Width = 218
            Height = 454
            Align = alLeft
            BorderWidth = 1
            DoubleBuffered = False
            TabOrder = 0
            object sPanel25: TsPanel
              Left = 2
              Top = 2
              Width = 214
              Height = 405
              Align = alClient
              BevelOuter = bvNone
              BorderWidth = 1
              DoubleBuffered = False
              TabOrder = 0
              object sGroupBox3: TsGroupBox
                Left = 1
                Top = 1
                Width = 212
                Height = 403
                Align = alClient
                Caption = '                                             '
                TabOrder = 0
                SkinData.SkinSection = 'PANEL'
                object sLabelFX23: TsLabelFX
                  Left = 4
                  Top = -5
                  Width = 140
                  Height = 20
                  Caption = '  '#1057#1082#1086#1088#1086#1089#1090#1100' '#1089#1076#1074#1080#1078#1082#1080' '
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Layout = tlBottom
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sPanel31: TsPanel
                  Left = 2
                  Top = 15
                  Width = 208
                  Height = 386
                  Align = alClient
                  BevelOuter = bvNone
                  BorderWidth = 4
                  DoubleBuffered = False
                  TabOrder = 0
                  object SliderSpeedGrid: TAdvColumnGrid
                    Left = 4
                    Top = 4
                    Width = 200
                    Height = 378
                    Cursor = crDefault
                    Align = alClient
                    ColCount = 2
                    RowCount = 30
                    ScrollBars = ssNone
                    TabOrder = 0
                    HoverRowCells = [hcNormal, hcSelected]
                    ActiveCellFont.Charset = DEFAULT_CHARSET
                    ActiveCellFont.Color = clWindowText
                    ActiveCellFont.Height = -11
                    ActiveCellFont.Name = 'Tahoma'
                    ActiveCellFont.Style = [fsBold]
                    ActiveCellColor = 15387318
                    ColumnHeaders.Strings = (
                      #1089#1077#1082
                      #1053#1072#1087#1088#1103#1078#1077#1085#1080#1077', '#1042)
                    ColumnSize.Stretch = True
                    ControlLook.FixedGradientFrom = clWhite
                    ControlLook.FixedGradientTo = clSilver
                    ControlLook.FixedGradientHoverFrom = 13619409
                    ControlLook.FixedGradientHoverTo = 12502728
                    ControlLook.FixedGradientHoverMirrorFrom = 12502728
                    ControlLook.FixedGradientHoverMirrorTo = 11254975
                    ControlLook.FixedGradientDownFrom = 8816520
                    ControlLook.FixedGradientDownTo = 7568510
                    ControlLook.FixedGradientDownMirrorFrom = 7568510
                    ControlLook.FixedGradientDownMirrorTo = 6452086
                    ControlLook.FixedGradientDownBorder = 11440207
                    ControlLook.ControlStyle = csClassic
                    ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
                    ControlLook.DropDownHeader.Font.Color = clWindowText
                    ControlLook.DropDownHeader.Font.Height = -11
                    ControlLook.DropDownHeader.Font.Name = 'Tahoma'
                    ControlLook.DropDownHeader.Font.Style = []
                    ControlLook.DropDownHeader.Visible = True
                    ControlLook.DropDownHeader.Buttons = <>
                    ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
                    ControlLook.DropDownFooter.Font.Color = clWindowText
                    ControlLook.DropDownFooter.Font.Height = -11
                    ControlLook.DropDownFooter.Font.Name = 'Tahoma'
                    ControlLook.DropDownFooter.Font.Style = []
                    ControlLook.DropDownFooter.Visible = True
                    ControlLook.DropDownFooter.Buttons = <>
                    Filter = <>
                    FilterDropDown.Font.Charset = DEFAULT_CHARSET
                    FilterDropDown.Font.Color = clWindowText
                    FilterDropDown.Font.Height = -11
                    FilterDropDown.Font.Name = 'Tahoma'
                    FilterDropDown.Font.Style = []
                    FilterDropDown.TextChecked = 'Checked'
                    FilterDropDown.TextUnChecked = 'Unchecked'
                    FilterDropDownClear = '(All)'
                    FilterEdit.TypeNames.Strings = (
                      'Starts with'
                      'Ends with'
                      'Contains'
                      'Not contains'
                      'Equal'
                      'Not equal'
                      'Larger than'
                      'Smaller than'
                      'Clear')
                    FixedRowHeight = 22
                    FixedRowAlways = True
                    FixedColAlways = True
                    FixedFont.Charset = DEFAULT_CHARSET
                    FixedFont.Color = clBlack
                    FixedFont.Height = -11
                    FixedFont.Name = 'Tahoma'
                    FixedFont.Style = [fsBold]
                    FloatFormat = '%.2f'
                    FloatingFooter.Color = clGray
                    FloatingFooter.Column = 1
                    HoverButtons.Buttons = <>
                    HoverButtons.Position = hbLeftFromColumnLeft
                    HTMLSettings.ImageFolder = 'images'
                    HTMLSettings.ImageBaseName = 'img'
                    Look = glTMS
                    PrintSettings.DateFormat = 'dd/mm/yyyy'
                    PrintSettings.Font.Charset = DEFAULT_CHARSET
                    PrintSettings.Font.Color = clWindowText
                    PrintSettings.Font.Height = -11
                    PrintSettings.Font.Name = 'Tahoma'
                    PrintSettings.Font.Style = []
                    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
                    PrintSettings.FixedFont.Color = clWindowText
                    PrintSettings.FixedFont.Height = -11
                    PrintSettings.FixedFont.Name = 'Tahoma'
                    PrintSettings.FixedFont.Style = []
                    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
                    PrintSettings.HeaderFont.Color = clWindowText
                    PrintSettings.HeaderFont.Height = -11
                    PrintSettings.HeaderFont.Name = 'Tahoma'
                    PrintSettings.HeaderFont.Style = []
                    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
                    PrintSettings.FooterFont.Color = clWindowText
                    PrintSettings.FooterFont.Height = -11
                    PrintSettings.FooterFont.Name = 'Tahoma'
                    PrintSettings.FooterFont.Style = []
                    PrintSettings.PageNumSep = '/'
                    RowHeaders.Strings = (
                      #1089#1077#1082
                      '1'
                      '2'
                      '3'
                      '4'
                      '5'
                      '6'
                      '7'
                      '8'
                      '9'
                      '10')
                    SearchFooter.ColorTo = 15790320
                    SearchFooter.FindNextCaption = 'Find &next'
                    SearchFooter.FindPrevCaption = 'Find &previous'
                    SearchFooter.Font.Charset = DEFAULT_CHARSET
                    SearchFooter.Font.Color = clWindowText
                    SearchFooter.Font.Height = -11
                    SearchFooter.Font.Name = 'Tahoma'
                    SearchFooter.Font.Style = []
                    SearchFooter.HighLightCaption = 'Highlight'
                    SearchFooter.HintClose = 'Close'
                    SearchFooter.HintFindNext = 'Find next occurrence'
                    SearchFooter.HintFindPrev = 'Find previous occurrence'
                    SearchFooter.HintHighlight = 'Highlight occurrences'
                    SearchFooter.MatchCaseCaption = 'Match case'
                    SortSettings.DefaultFormat = ssAutomatic
                    SortSettings.HeaderColorTo = 16579058
                    SortSettings.HeaderMirrorColor = 16380385
                    SortSettings.HeaderMirrorColorTo = 16182488
                    Version = '3.1.4.2'
                    Columns = <
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = cl3DLight
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edNone
                        FilterCaseSensitive = False
                        Fixed = True
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #1089#1077#1082
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -11
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = []
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = False
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 64
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taLeftJustify
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edPositiveFloat
                        FilterCaseSensitive = False
                        Fixed = False
                        FloatFormat = '%.2f'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #1053#1072#1087#1088#1103#1078#1077#1085#1080#1077', '#1042
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -11
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = False
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 132
                      end>
                    ColWidths = (
                      64
                      132)
                  end
                end
              end
            end
            object sPanel23: TsPanel
              Left = 2
              Top = 407
              Width = 214
              Height = 45
              Align = alBottom
              DoubleBuffered = False
              TabOrder = 1
              object SliderTestButtonLeft: TsSpeedButton
                Left = 12
                Top = 10
                Width = 49
                Height = 26
                Caption = '<'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = SliderTestButtonLeftClick
                SkinData.SkinSection = 'BUTTON'
              end
              object SliderTestButtonRight: TsSpeedButton
                Left = 152
                Top = 10
                Width = 49
                Height = 26
                Caption = '>'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = SliderTestButtonRightClick
                SkinData.SkinSection = 'BUTTON'
              end
              object SliderSpeedClock: TiSevenSegmentClock
                Left = 69
                Top = 9
                Width = 76
                Height = 28
                BorderStyle = ibsLowered
                ShowHours = False
                CountDirection = icdUp
              end
            end
          end
          object sPanel26: TsPanel
            Left = 989
            Top = 0
            Width = 126
            Height = 454
            Align = alRight
            BorderWidth = 1
            DoubleBuffered = False
            TabOrder = 1
            object OKTuneButton: TsSpeedButton
              Left = 27
              Top = 199
              Width = 72
              Height = 35
              Caption = #1042#1042#1054#1044
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = OKTuneButtonClick
              SkinData.SkinSection = 'BUTTON'
            end
          end
          object sPanel35: TsPanel
            Left = 0
            Top = 0
            Width = 309
            Height = 454
            Align = alLeft
            BorderWidth = 1
            DoubleBuffered = False
            TabOrder = 2
            object sPanel36: TsPanel
              Left = 2
              Top = 262
              Width = 305
              Height = 174
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 1
              DoubleBuffered = False
              TabOrder = 0
              object sGroupBox5: TsGroupBox
                Left = 1
                Top = 1
                Width = 303
                Height = 172
                Align = alClient
                Caption = '                                '
                TabOrder = 0
                SkinData.SkinSection = 'PANEL'
                object sLabelFX31: TsLabelFX
                  Left = 4
                  Top = -5
                  Width = 101
                  Height = 20
                  Caption = '  '#1055#1088#1072#1074#1072#1103' '#1079#1086#1085#1072' '
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Layout = tlBottom
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX32: TsLabelFX
                  Left = 10
                  Top = 21
                  Width = 94
                  Height = 17
                  Alignment = taCenter
                  Caption = #1058#1080#1087' '#1090#1077#1088#1084#1086#1087#1072#1088#1099
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX33: TsLabelFX
                  Left = 10
                  Top = 75
                  Width = 85
                  Height = 17
                  Alignment = taCenter
                  Caption = #1057#1084#1077#1097#1077#1085#1080#1077' , '#176#1057
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX34: TsLabelFX
                  Left = 158
                  Top = 21
                  Width = 137
                  Height = 17
                  Alignment = taCenter
                  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1088#1077#1075#1091#1083#1103#1090#1086#1088#1072
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX35: TsLabelFX
                  Left = 158
                  Top = 43
                  Width = 12
                  Height = 17
                  Alignment = taCenter
                  Caption = #1055
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX36: TsLabelFX
                  Left = 158
                  Top = 69
                  Width = 12
                  Height = 17
                  Alignment = taCenter
                  Caption = #1048
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX37: TsLabelFX
                  Left = 158
                  Top = 95
                  Width = 14
                  Height = 17
                  Alignment = taCenter
                  Caption = #1044
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object RZtp_ComboBox: TsComboBox
                  Tag = 2
                  Left = 12
                  Top = 40
                  Width = 93
                  Height = 21
                  AllowMouseWheel = False
                  BoundLabel.Caption = 'sComboBox1'
                  SkinData.SkinSection = 'EDIT'
                  ShowFocus = False
                  Style = csDropDownList
                  ItemHeight = 15
                  ItemIndex = 1
                  TabOrder = 0
                  Text = #1058#1055#1055' (S)'
                  OnChange = LZtp_ComboBoxChange
                  Items.Strings = (
                    #1058#1055#1056' (B)'
                    #1058#1055#1055' (S)')
                end
                object RZ_shiftTP_edit: TsDecimalSpinEdit
                  Tag = 2
                  Left = 12
                  Top = 93
                  Width = 93
                  Height = 21
                  TabOrder = 1
                  OnChange = LZ_shiftTP_editChange
                  SkinData.SkinSection = 'COMBOBOX'
                  ShowSpinButtons = False
                  Increment = 1.000000000000000000
                end
                object RZCoeff_P_edit: TsDecimalSpinEdit
                  Tag = 2
                  Left = 188
                  Top = 41
                  Width = 93
                  Height = 21
                  TabOrder = 2
                  Text = '1.1523'
                  OnChange = LZCoeff_P_editChange
                  SkinData.SkinSection = 'COMBOBOX'
                  ShowSpinButtons = False
                  Increment = 1.000000000000000000
                  Value = 1.152300000000000000
                  DecimalPlaces = 4
                end
                object RZCoeff_I_edit: TsDecimalSpinEdit
                  Tag = 2
                  Left = 188
                  Top = 67
                  Width = 93
                  Height = 21
                  TabOrder = 3
                  Text = '1.1523'
                  OnChange = LZCoeff_I_editChange
                  SkinData.SkinSection = 'COMBOBOX'
                  ShowSpinButtons = False
                  Increment = 1.000000000000000000
                  Value = 1.152300000000000000
                  DecimalPlaces = 4
                end
                object RZCoeff_D_edit: TsDecimalSpinEdit
                  Tag = 2
                  Left = 188
                  Top = 93
                  Width = 93
                  Height = 21
                  TabOrder = 4
                  Text = '1.1523'
                  OnChange = LZCoeff_D_editChange
                  SkinData.SkinSection = 'COMBOBOX'
                  ShowSpinButtons = False
                  Increment = 1.000000000000000000
                  Value = 1.152300000000000000
                  DecimalPlaces = 4
                end
              end
            end
            object sPanel37: TsPanel
              Left = 2
              Top = 132
              Width = 305
              Height = 130
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 1
              DoubleBuffered = False
              TabOrder = 1
              object sGroupBox6: TsGroupBox
                Left = 1
                Top = 1
                Width = 303
                Height = 128
                Align = alClient
                Caption = '                                            '
                TabOrder = 0
                SkinData.SkinSection = 'PANEL'
                object sLabelFX38: TsLabelFX
                  Left = 4
                  Top = -5
                  Width = 144
                  Height = 20
                  Caption = '  '#1062#1077#1085#1090#1088#1072#1083#1100#1085#1072#1103' '#1079#1086#1085#1072'  '
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Layout = tlBottom
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX39: TsLabelFX
                  Left = 10
                  Top = 21
                  Width = 94
                  Height = 17
                  Alignment = taCenter
                  Caption = #1058#1080#1087' '#1090#1077#1088#1084#1086#1087#1072#1088#1099
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX40: TsLabelFX
                  Left = 10
                  Top = 75
                  Width = 85
                  Height = 17
                  Alignment = taCenter
                  Caption = #1057#1084#1077#1097#1077#1085#1080#1077' , '#176#1057
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX41: TsLabelFX
                  Left = 158
                  Top = 21
                  Width = 137
                  Height = 17
                  Alignment = taCenter
                  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1088#1077#1075#1091#1083#1103#1090#1086#1088#1072
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX42: TsLabelFX
                  Left = 158
                  Top = 43
                  Width = 12
                  Height = 17
                  Alignment = taCenter
                  Caption = #1055
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX43: TsLabelFX
                  Left = 158
                  Top = 69
                  Width = 12
                  Height = 17
                  Alignment = taCenter
                  Caption = #1048
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX44: TsLabelFX
                  Left = 158
                  Top = 95
                  Width = 14
                  Height = 17
                  Alignment = taCenter
                  Caption = #1044
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object CZtp_ComboBox: TsComboBox
                  Tag = 1
                  Left = 12
                  Top = 40
                  Width = 93
                  Height = 21
                  AllowMouseWheel = False
                  BoundLabel.Caption = 'sComboBox1'
                  SkinData.SkinSection = 'EDIT'
                  ShowFocus = False
                  Style = csDropDownList
                  ItemHeight = 15
                  ItemIndex = 1
                  TabOrder = 0
                  Text = #1058#1055#1055' (S)'
                  OnChange = LZtp_ComboBoxChange
                  Items.Strings = (
                    #1058#1055#1056' (B)'
                    #1058#1055#1055' (S)')
                end
                object CZ_shiftTP_edit: TsDecimalSpinEdit
                  Tag = 1
                  Left = 12
                  Top = 93
                  Width = 93
                  Height = 21
                  TabOrder = 1
                  OnChange = LZ_shiftTP_editChange
                  SkinData.SkinSection = 'COMBOBOX'
                  ShowSpinButtons = False
                  Increment = 1.000000000000000000
                end
                object CZCoeff_P_edit: TsDecimalSpinEdit
                  Tag = 1
                  Left = 188
                  Top = 41
                  Width = 93
                  Height = 21
                  TabOrder = 2
                  Text = '1.1523'
                  OnChange = LZCoeff_P_editChange
                  SkinData.SkinSection = 'COMBOBOX'
                  ShowSpinButtons = False
                  Increment = 1.000000000000000000
                  Value = 1.152300000000000000
                  DecimalPlaces = 4
                end
                object CZCoeff_I_edit: TsDecimalSpinEdit
                  Tag = 1
                  Left = 188
                  Top = 67
                  Width = 93
                  Height = 21
                  TabOrder = 3
                  Text = '1.1523'
                  OnChange = LZCoeff_I_editChange
                  SkinData.SkinSection = 'COMBOBOX'
                  ShowSpinButtons = False
                  Increment = 1.000000000000000000
                  Value = 1.152300000000000000
                  DecimalPlaces = 4
                end
                object CZCoeff_D_edit: TsDecimalSpinEdit
                  Tag = 1
                  Left = 188
                  Top = 93
                  Width = 93
                  Height = 21
                  TabOrder = 4
                  Text = '1.1523'
                  OnChange = LZCoeff_D_editChange
                  SkinData.SkinSection = 'COMBOBOX'
                  ShowSpinButtons = False
                  Increment = 1.000000000000000000
                  Value = 1.152300000000000000
                  DecimalPlaces = 4
                end
              end
            end
            object sPanel38: TsPanel
              Left = 2
              Top = 2
              Width = 305
              Height = 130
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 1
              DoubleBuffered = False
              TabOrder = 2
              object sGroupBox7: TsGroupBox
                Left = 1
                Top = 1
                Width = 303
                Height = 128
                Align = alClient
                Caption = '                              '
                TabOrder = 0
                SkinData.SkinSection = 'PANEL'
                object sLabelFX45: TsLabelFX
                  Left = 4
                  Top = -5
                  Width = 93
                  Height = 20
                  Caption = '  '#1051#1077#1074#1072#1103' '#1079#1086#1085#1072' '
                  Color = clSkyBlue
                  ParentColor = False
                  ParentFont = False
                  TransparentForMouse = True
                  Layout = tlBottom
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX46: TsLabelFX
                  Left = 10
                  Top = 21
                  Width = 94
                  Height = 17
                  Alignment = taCenter
                  Caption = #1058#1080#1087' '#1090#1077#1088#1084#1086#1087#1072#1088#1099
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX47: TsLabelFX
                  Left = 10
                  Top = 75
                  Width = 85
                  Height = 17
                  Alignment = taCenter
                  Caption = #1057#1084#1077#1097#1077#1085#1080#1077' , '#176#1057
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX48: TsLabelFX
                  Left = 158
                  Top = 21
                  Width = 137
                  Height = 17
                  Alignment = taCenter
                  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1088#1077#1075#1091#1083#1103#1090#1086#1088#1072
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX49: TsLabelFX
                  Left = 158
                  Top = 43
                  Width = 12
                  Height = 17
                  Alignment = taCenter
                  Caption = #1055
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX50: TsLabelFX
                  Left = 158
                  Top = 69
                  Width = 12
                  Height = 17
                  Alignment = taCenter
                  Caption = #1048
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object sLabelFX51: TsLabelFX
                  Left = 158
                  Top = 95
                  Width = 14
                  Height = 17
                  Alignment = taCenter
                  Caption = #1044
                  Color = clBtnFace
                  ParentColor = False
                  ParentFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Angle = 0
                  Kind.KindType = ktCustom
                  Kind.Color = clSilver
                  Shadow.OffsetKeeper.LeftTop = -1
                  Shadow.OffsetKeeper.RightBottom = 3
                  Shadow.Mode = smCustom
                  Shadow.BlurCount = 2
                end
                object LZtp_ComboBox: TsComboBox
                  Left = 12
                  Top = 40
                  Width = 93
                  Height = 21
                  AllowMouseWheel = False
                  BoundLabel.Caption = 'sComboBox1'
                  SkinData.SkinSection = 'EDIT'
                  ShowFocus = False
                  Style = csDropDownList
                  ItemHeight = 15
                  ItemIndex = 1
                  TabOrder = 0
                  Text = #1058#1055#1055' (S)'
                  OnChange = LZtp_ComboBoxChange
                  Items.Strings = (
                    #1058#1055#1056' (B)'
                    #1058#1055#1055' (S)')
                end
                object LZ_shiftTP_edit: TsDecimalSpinEdit
                  Left = 12
                  Top = 93
                  Width = 93
                  Height = 21
                  TabOrder = 1
                  OnChange = LZ_shiftTP_editChange
                  SkinData.SkinSection = 'COMBOBOX'
                  ShowSpinButtons = False
                  Increment = 1.000000000000000000
                end
                object LZCoeff_P_edit: TsDecimalSpinEdit
                  Left = 188
                  Top = 41
                  Width = 93
                  Height = 21
                  TabOrder = 2
                  Text = '1.1523'
                  OnChange = LZCoeff_P_editChange
                  SkinData.SkinSection = 'COMBOBOX'
                  ShowSpinButtons = False
                  Increment = 1.000000000000000000
                  Value = 1.152300000000000000
                  DecimalPlaces = 4
                end
                object LZCoeff_I_edit: TsDecimalSpinEdit
                  Left = 188
                  Top = 67
                  Width = 93
                  Height = 21
                  TabOrder = 3
                  Text = '1.1523'
                  OnChange = LZCoeff_I_editChange
                  SkinData.SkinSection = 'COMBOBOX'
                  ShowSpinButtons = False
                  Increment = 1.000000000000000000
                  Value = 1.152300000000000000
                  DecimalPlaces = 4
                end
                object LZCoeff_D_edit: TsDecimalSpinEdit
                  Left = 188
                  Top = 93
                  Width = 93
                  Height = 21
                  TabOrder = 4
                  Text = '1.1523'
                  OnChange = LZCoeff_D_editChange
                  SkinData.SkinSection = 'COMBOBOX'
                  ShowSpinButtons = False
                  Increment = 1.000000000000000000
                  Value = 1.152300000000000000
                  DecimalPlaces = 4
                end
              end
            end
          end
          object sPanel41: TsPanel
            Left = 527
            Top = 0
            Width = 462
            Height = 454
            Align = alClient
            BorderWidth = 2
            DoubleBuffered = False
            TabOrder = 3
            object sGroupBox1: TsGroupBox
              Left = 3
              Top = 3
              Width = 456
              Height = 448
              Align = alClient
              Caption = 
                '                                                                ' +
                '    '
              TabOrder = 0
              SkinData.SkinSection = 'PANEL'
              object sLabelFX9: TsLabelFX
                Left = 4
                Top = -5
                Width = 204
                Height = 20
                Caption = ' '#1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
                Color = clBtnFace
                ParentColor = False
                ParentFont = False
                Layout = tlBottom
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Angle = 0
                Kind.KindType = ktCustom
                Kind.Color = clSilver
                Shadow.OffsetKeeper.LeftTop = -1
                Shadow.OffsetKeeper.RightBottom = 3
                Shadow.Mode = smCustom
                Shadow.BlurCount = 2
              end
              object sPanel42: TsPanel
                Left = 2
                Top = 15
                Width = 452
                Height = 431
                Align = alClient
                BevelOuter = bvNone
                BorderWidth = 4
                DoubleBuffered = False
                TabOrder = 0
              end
            end
          end
        end
        object StartTabSheet: TsTabSheet
          Caption = 'StartTabSheet'
          object sPanel28: TsPanel
            Left = 393
            Top = 144
            Width = 305
            Height = 145
            BevelOuter = bvNone
            DoubleBuffered = False
            TabOrder = 0
            object SecondsStartButton: TsSpeedButton
              Left = 220
              Top = 80
              Width = 27
              Height = 27
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clLime
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SecondsStartButtonClick
              SkinData.CustomFont = True
              SkinData.SkinSection = 'BUTTON'
            end
            object sPanel29: TsPanel
              Left = 28
              Top = 6
              Width = 225
              Height = 67
              SkinData.SkinSection = 'PANEL_LOW'
              DoubleBuffered = False
              TabOrder = 0
              object StartClock: TiSevenSegmentClock
                Left = 2
                Top = 2
                Width = 221
                Height = 62
                AutoSize = False
                SegmentColor = clLime
                SegmentSize = 2
                SegmentOffColor = 10240
                AutoSegmentOffColor = False
                HourStyle = ichs12
                OnCountDownComplete = StartClockCountDownComplete
              end
            end
            object sPanel27: TsPanel
              Left = 16
              Top = 80
              Width = 77
              Height = 53
              BevelOuter = bvNone
              DoubleBuffered = False
              TabOrder = 1
              object sLabelFX3: TsLabelFX
                Left = 0
                Top = 0
                Width = 52
                Height = 53
                Align = alClient
                Alignment = taCenter
                AutoSize = False
                Caption = #1063#1040#1057
                Color = clBtnFace
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Angle = 0
                Kind.KindType = ktCustom
                Kind.Color = clSilver
                Shadow.OffsetKeeper.LeftTop = -1
                Shadow.OffsetKeeper.RightBottom = 3
                Shadow.Mode = smCustom
                Shadow.BlurCount = 2
              end
              object HoursUpDown: TsUpDown
                Left = 52
                Top = 0
                Width = 25
                Height = 53
                Align = alRight
                Max = 59
                TabOrder = 0
                Thousands = False
                OnClick = HoursUpDownClick
                ButtonSkin = 'BUTTON'
                ShowInaccessibility = False
              end
            end
            object sPanel30: TsPanel
              Left = 94
              Top = 80
              Width = 77
              Height = 53
              BevelOuter = bvNone
              DoubleBuffered = False
              TabOrder = 2
              object sLabelFX7: TsLabelFX
                Left = 0
                Top = 0
                Width = 52
                Height = 53
                Align = alClient
                Alignment = taCenter
                AutoSize = False
                Caption = #1052#1048#1053
                Color = clBtnFace
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Angle = 0
                Kind.KindType = ktCustom
                Kind.Color = clSilver
                Shadow.OffsetKeeper.LeftTop = -1
                Shadow.OffsetKeeper.RightBottom = 3
                Shadow.Mode = smCustom
                Shadow.BlurCount = 2
              end
              object MinutesUpDown: TsUpDown
                Left = 52
                Top = 0
                Width = 25
                Height = 53
                Align = alRight
                Max = 59
                TabOrder = 0
                OnClick = MinutesUpDownClick
                ButtonSkin = 'BUTTON'
                ShowInaccessibility = False
              end
            end
          end
        end
        object HistoryTabSheet: TsTabSheet
          Caption = 'HistoryTabSheet'
          object sPanel43: TsPanel
            Left = 989
            Top = 0
            Width = 126
            Height = 454
            Align = alRight
            DoubleBuffered = False
            TabOrder = 0
            object HistoryOKButton: TsSpeedButton
              Left = 27
              Top = 200
              Width = 72
              Height = 35
              Caption = #1042#1042#1054#1044
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = HistoryOKButtonClick
              SkinData.SkinSection = 'BUTTON'
            end
          end
          object HistoryPager: TsPageControl
            Left = 0
            Top = 0
            Width = 989
            Height = 454
            ActivePage = iRegimeTab
            Align = alClient
            TabOrder = 1
            ActiveTabEnlarged = False
            object iGraphTab: TsTabSheet
              Caption = 'iGraphTab'
              object sPanel44: TsPanel
                Left = 0
                Top = 0
                Width = 981
                Height = 426
                Align = alClient
                BorderWidth = 2
                Caption = 'sPanel44'
                DoubleBuffered = False
                TabOrder = 0
                object HistoryChart: TChart
                  Left = 3
                  Top = 3
                  Width = 975
                  Height = 420
                  AnimatedZoom = True
                  BackWall.Brush.Color = clWhite
                  BackWall.Brush.Style = bsClear
                  BackWall.Color = clSilver
                  BottomWall.Brush.Color = clWhite
                  LeftWall.Brush.Color = clWhite
                  MarginBottom = 2
                  MarginLeft = 2
                  MarginRight = 2
                  Title.Text.Strings = (
                    'TChart')
                  Title.Visible = False
                  BackColor = clSilver
                  BottomAxis.Axis.Color = clLime
                  BottomAxis.Axis.Width = 1
                  BottomAxis.AxisValuesFormat = '#0.##'
                  BottomAxis.Grid.Color = 1447446
                  BottomAxis.Grid.Style = psSolid
                  BottomAxis.LabelsFont.Charset = RUSSIAN_CHARSET
                  BottomAxis.LabelsFont.Color = clLime
                  BottomAxis.LabelsFont.Height = -11
                  BottomAxis.LabelsFont.Name = 'Tahoma'
                  BottomAxis.LabelsFont.Style = []
                  BottomAxis.LabelsSeparation = 20
                  BottomAxis.LabelStyle = talValue
                  BottomAxis.MinorTicks.Visible = False
                  BottomAxis.Ticks.Color = clLime
                  BottomAxis.TicksInner.Visible = False
                  LeftAxis.Axis.Color = clLime
                  LeftAxis.Axis.Width = 1
                  LeftAxis.Grid.Color = 1447446
                  LeftAxis.Grid.Style = psSolid
                  LeftAxis.LabelsFont.Charset = RUSSIAN_CHARSET
                  LeftAxis.LabelsFont.Color = clLime
                  LeftAxis.LabelsFont.Height = -11
                  LeftAxis.LabelsFont.Name = 'Tahoma'
                  LeftAxis.LabelsFont.Style = []
                  LeftAxis.LabelsSeparation = 20
                  LeftAxis.MinorTicks.Visible = False
                  LeftAxis.Ticks.Color = clLime
                  LeftAxis.TicksInner.Visible = False
                  Legend.Color = clBlack
                  Legend.ColorWidth = 20
                  Legend.DividingLines.Color = clLime
                  Legend.Font.Charset = DEFAULT_CHARSET
                  Legend.Font.Color = clWhite
                  Legend.Font.Height = -11
                  Legend.Font.Name = 'Arial'
                  Legend.Font.Style = []
                  Legend.Frame.Color = clGreen
                  Legend.Frame.Visible = False
                  Legend.HorizMargin = 1
                  Legend.ResizeChart = False
                  Legend.ShadowSize = 0
                  Legend.TopPos = 4
                  Legend.Visible = False
                  View3D = False
                  View3DWalls = False
                  OnAfterDraw = HistoryChartAfterDraw
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clBlack
                  TabOrder = 0
                  OnDblClick = ChartDblClick
                  object FastLineSeries1: TFastLineSeries
                    Marks.ArrowLength = 8
                    Marks.Visible = False
                    SeriesColor = 4259584
                    Title = #1047#1072#1076#1072#1085#1080#1077
                    LinePen.Color = 4259584
                    XValues.DateTime = False
                    XValues.Name = 'X'
                    XValues.Multiplier = 1.000000000000000000
                    XValues.Order = loAscending
                    YValues.DateTime = False
                    YValues.Name = 'Y'
                    YValues.Multiplier = 1.000000000000000000
                    YValues.Order = loNone
                  end
                  object FastLineSeries2: TFastLineSeries
                    Marks.ArrowLength = 8
                    Marks.Visible = False
                    SeriesColor = clBlue
                    Title = #1062#1077#1085#1090#1088
                    LinePen.Color = clBlue
                    XValues.DateTime = False
                    XValues.Name = 'X'
                    XValues.Multiplier = 1.000000000000000000
                    XValues.Order = loAscending
                    YValues.DateTime = False
                    YValues.Name = 'Y'
                    YValues.Multiplier = 1.000000000000000000
                    YValues.Order = loNone
                  end
                  object FastLineSeries3: TFastLineSeries
                    Marks.ArrowLength = 8
                    Marks.Visible = False
                    SeriesColor = clRed
                    Title = #1051#1077#1074#1072#1103
                    LinePen.Color = clRed
                    XValues.DateTime = False
                    XValues.Name = 'X'
                    XValues.Multiplier = 1.000000000000000000
                    XValues.Order = loAscending
                    YValues.DateTime = False
                    YValues.Name = 'Y'
                    YValues.Multiplier = 1.000000000000000000
                    YValues.Order = loNone
                  end
                  object FastLineSeries4: TFastLineSeries
                    Marks.ArrowLength = 8
                    Marks.Visible = False
                    SeriesColor = clWhite
                    Title = #1055#1088#1072#1074#1072#1103
                    LinePen.Color = clWhite
                    XValues.DateTime = False
                    XValues.Name = 'X'
                    XValues.Multiplier = 1.000000000000000000
                    XValues.Order = loAscending
                    YValues.DateTime = False
                    YValues.Name = 'Y'
                    YValues.Multiplier = 1.000000000000000000
                    YValues.Order = loNone
                  end
                end
              end
            end
            object iTableTab: TsTabSheet
              Caption = 'iTableTab'
              object sPanel45: TsPanel
                Left = 0
                Top = 0
                Width = 981
                Height = 426
                Align = alClient
                BorderWidth = 2
                DoubleBuffered = False
                TabOrder = 0
                object HistoryTableGrid: TAdvColumnGrid
                  Left = 3
                  Top = 3
                  Width = 975
                  Height = 420
                  Cursor = crDefault
                  Align = alClient
                  ColCount = 8
                  FixedCols = 0
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ScrollBars = ssNone
                  TabOrder = 0
                  HoverRowCells = [hcNormal, hcSelected]
                  ActiveCellFont.Charset = DEFAULT_CHARSET
                  ActiveCellFont.Color = clWindowText
                  ActiveCellFont.Height = -11
                  ActiveCellFont.Name = 'Tahoma'
                  ActiveCellFont.Style = [fsBold]
                  ColumnHeaders.Strings = (
                    #1084#1080#1085
                    #1101#1090#1072#1087
                    #1084#1080#1085
                    #1051#1047
                    #1062#1047
                    #1055#1047
                    #176#1057'/'#1084#1080#1085
                    #1093#1093#1093)
                  ColumnSize.Stretch = True
                  ColumnSize.StretchAll = True
                  ControlLook.FixedGradientHoverFrom = clGray
                  ControlLook.FixedGradientHoverTo = clWhite
                  ControlLook.FixedGradientDownFrom = clGray
                  ControlLook.FixedGradientDownTo = clSilver
                  ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
                  ControlLook.DropDownHeader.Font.Color = clWindowText
                  ControlLook.DropDownHeader.Font.Height = -11
                  ControlLook.DropDownHeader.Font.Name = 'Tahoma'
                  ControlLook.DropDownHeader.Font.Style = []
                  ControlLook.DropDownHeader.Visible = True
                  ControlLook.DropDownHeader.Buttons = <>
                  ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
                  ControlLook.DropDownFooter.Font.Color = clWindowText
                  ControlLook.DropDownFooter.Font.Height = -11
                  ControlLook.DropDownFooter.Font.Name = 'Tahoma'
                  ControlLook.DropDownFooter.Font.Style = []
                  ControlLook.DropDownFooter.Visible = True
                  ControlLook.DropDownFooter.Buttons = <>
                  Filter = <>
                  FilterDropDown.Font.Charset = DEFAULT_CHARSET
                  FilterDropDown.Font.Color = clWindowText
                  FilterDropDown.Font.Height = -11
                  FilterDropDown.Font.Name = 'Tahoma'
                  FilterDropDown.Font.Style = []
                  FilterDropDown.TextChecked = 'Checked'
                  FilterDropDown.TextUnChecked = 'Unchecked'
                  FilterDropDownClear = '(All)'
                  FilterEdit.TypeNames.Strings = (
                    'Starts with'
                    'Ends with'
                    'Contains'
                    'Not contains'
                    'Equal'
                    'Not equal'
                    'Larger than'
                    'Smaller than'
                    'Clear')
                  FixedColWidth = 78
                  FixedRowHeight = 22
                  FixedFont.Charset = DEFAULT_CHARSET
                  FixedFont.Color = clWindowText
                  FixedFont.Height = -11
                  FixedFont.Name = 'Tahoma'
                  FixedFont.Style = [fsBold]
                  FloatFormat = '%.2f'
                  HoverButtons.Buttons = <>
                  HoverButtons.Position = hbLeftFromColumnLeft
                  HTMLSettings.ImageFolder = 'images'
                  HTMLSettings.ImageBaseName = 'img'
                  PrintSettings.DateFormat = 'dd/mm/yyyy'
                  PrintSettings.Font.Charset = DEFAULT_CHARSET
                  PrintSettings.Font.Color = clWindowText
                  PrintSettings.Font.Height = -11
                  PrintSettings.Font.Name = 'Tahoma'
                  PrintSettings.Font.Style = []
                  PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
                  PrintSettings.FixedFont.Color = clWindowText
                  PrintSettings.FixedFont.Height = -11
                  PrintSettings.FixedFont.Name = 'Tahoma'
                  PrintSettings.FixedFont.Style = []
                  PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
                  PrintSettings.HeaderFont.Color = clWindowText
                  PrintSettings.HeaderFont.Height = -11
                  PrintSettings.HeaderFont.Name = 'Tahoma'
                  PrintSettings.HeaderFont.Style = []
                  PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
                  PrintSettings.FooterFont.Color = clWindowText
                  PrintSettings.FooterFont.Height = -11
                  PrintSettings.FooterFont.Name = 'Tahoma'
                  PrintSettings.FooterFont.Style = []
                  PrintSettings.PageNumSep = '/'
                  SearchFooter.FindNextCaption = 'Find &next'
                  SearchFooter.FindPrevCaption = 'Find &previous'
                  SearchFooter.Font.Charset = DEFAULT_CHARSET
                  SearchFooter.Font.Color = clWindowText
                  SearchFooter.Font.Height = -11
                  SearchFooter.Font.Name = 'Tahoma'
                  SearchFooter.Font.Style = []
                  SearchFooter.HighLightCaption = 'Highlight'
                  SearchFooter.HintClose = 'Close'
                  SearchFooter.HintFindNext = 'Find next occurrence'
                  SearchFooter.HintFindPrev = 'Find previous occurrence'
                  SearchFooter.HintHighlight = 'Highlight occurrences'
                  SearchFooter.MatchCaseCaption = 'Match case'
                  SortSettings.DefaultFormat = ssAutomatic
                  Version = '3.1.4.2'
                  Columns = <
                    item
                      AutoMinSize = 0
                      AutoMaxSize = 0
                      Alignment = taCenter
                      Borders = []
                      BorderPen.Color = clSilver
                      CheckFalse = 'N'
                      CheckTrue = 'Y'
                      Color = clWindow
                      ColumnPopupType = cpFixedCellsRClick
                      DropDownCount = 8
                      EditLength = 0
                      Editor = edNone
                      FilterCaseSensitive = False
                      Fixed = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header = #1084#1080#1085
                      HeaderAlignment = taCenter
                      HeaderFont.Charset = DEFAULT_CHARSET
                      HeaderFont.Color = clWindowText
                      HeaderFont.Height = -13
                      HeaderFont.Name = 'Tahoma'
                      HeaderFont.Style = [fsBold]
                      MinSize = 0
                      MaxSize = 0
                      Password = False
                      PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                      PrintColor = clWhite
                      PrintFont.Charset = DEFAULT_CHARSET
                      PrintFont.Color = clWindowText
                      PrintFont.Height = -11
                      PrintFont.Name = 'Tahoma'
                      PrintFont.Style = []
                      ReadOnly = True
                      ShowBands = False
                      SortStyle = ssAutomatic
                      SpinMax = 0
                      SpinMin = 0
                      SpinStep = 1
                      Tag = 0
                      Width = 78
                    end
                    item
                      AutoMinSize = 0
                      AutoMaxSize = 0
                      Alignment = taCenter
                      Borders = []
                      BorderPen.Color = clSilver
                      CheckFalse = 'N'
                      CheckTrue = 'Y'
                      Color = clWindow
                      ColumnPopupType = cpFixedCellsRClick
                      DropDownCount = 8
                      EditLength = 0
                      Editor = edNone
                      FilterCaseSensitive = False
                      Fixed = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header = #1101#1090#1072#1087
                      HeaderAlignment = taCenter
                      HeaderFont.Charset = DEFAULT_CHARSET
                      HeaderFont.Color = clWindowText
                      HeaderFont.Height = -13
                      HeaderFont.Name = 'Tahoma'
                      HeaderFont.Style = [fsBold]
                      MinSize = 0
                      MaxSize = 0
                      Password = False
                      PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                      PrintColor = clWhite
                      PrintFont.Charset = DEFAULT_CHARSET
                      PrintFont.Color = clWindowText
                      PrintFont.Height = -11
                      PrintFont.Name = 'Tahoma'
                      PrintFont.Style = []
                      ReadOnly = True
                      ShowBands = False
                      SortStyle = ssAutomatic
                      SpinMax = 0
                      SpinMin = 0
                      SpinStep = 1
                      Tag = 0
                      Width = 78
                    end
                    item
                      AutoMinSize = 0
                      AutoMaxSize = 0
                      Alignment = taCenter
                      Borders = []
                      BorderPen.Color = clSilver
                      CheckFalse = 'N'
                      CheckTrue = 'Y'
                      Color = clWindow
                      ColumnPopupType = cpFixedCellsRClick
                      DropDownCount = 8
                      EditLength = 0
                      Editor = edNone
                      FilterCaseSensitive = False
                      Fixed = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header = #1084#1080#1085
                      HeaderAlignment = taCenter
                      HeaderFont.Charset = DEFAULT_CHARSET
                      HeaderFont.Color = clWindowText
                      HeaderFont.Height = -13
                      HeaderFont.Name = 'Tahoma'
                      HeaderFont.Style = [fsBold]
                      MinSize = 0
                      MaxSize = 0
                      Password = False
                      PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                      PrintColor = clWhite
                      PrintFont.Charset = DEFAULT_CHARSET
                      PrintFont.Color = clWindowText
                      PrintFont.Height = -11
                      PrintFont.Name = 'Tahoma'
                      PrintFont.Style = []
                      ReadOnly = True
                      ShowBands = False
                      SortStyle = ssAutomatic
                      SpinMax = 0
                      SpinMin = 0
                      SpinStep = 1
                      Tag = 0
                      Width = 78
                    end
                    item
                      AutoMinSize = 0
                      AutoMaxSize = 0
                      Alignment = taCenter
                      Borders = []
                      BorderPen.Color = clSilver
                      CheckFalse = 'N'
                      CheckTrue = 'Y'
                      Color = clWindow
                      ColumnPopupType = cpFixedCellsRClick
                      DropDownCount = 8
                      EditLength = 0
                      Editor = edNone
                      FilterCaseSensitive = False
                      Fixed = False
                      FloatFormat = '%.1f'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header = #1051#1047
                      HeaderAlignment = taCenter
                      HeaderFont.Charset = DEFAULT_CHARSET
                      HeaderFont.Color = clWindowText
                      HeaderFont.Height = -13
                      HeaderFont.Name = 'Tahoma'
                      HeaderFont.Style = [fsBold]
                      MinSize = 0
                      MaxSize = 0
                      Password = False
                      PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                      PrintColor = clWhite
                      PrintFont.Charset = DEFAULT_CHARSET
                      PrintFont.Color = clWindowText
                      PrintFont.Height = -11
                      PrintFont.Name = 'Tahoma'
                      PrintFont.Style = []
                      ReadOnly = True
                      ShowBands = False
                      SortStyle = ssAutomatic
                      SpinMax = 0
                      SpinMin = 0
                      SpinStep = 1
                      Tag = 0
                      Width = 78
                    end
                    item
                      AutoMinSize = 0
                      AutoMaxSize = 0
                      Alignment = taCenter
                      Borders = []
                      BorderPen.Color = clSilver
                      CheckFalse = 'N'
                      CheckTrue = 'Y'
                      Color = clWindow
                      ColumnPopupType = cpFixedCellsRClick
                      DropDownCount = 8
                      EditLength = 0
                      Editor = edNone
                      FilterCaseSensitive = False
                      Fixed = False
                      FloatFormat = '%.1f'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header = #1062#1047
                      HeaderAlignment = taCenter
                      HeaderFont.Charset = DEFAULT_CHARSET
                      HeaderFont.Color = clWindowText
                      HeaderFont.Height = -13
                      HeaderFont.Name = 'Tahoma'
                      HeaderFont.Style = [fsBold]
                      MinSize = 0
                      MaxSize = 0
                      Password = False
                      PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                      PrintColor = clWhite
                      PrintFont.Charset = DEFAULT_CHARSET
                      PrintFont.Color = clWindowText
                      PrintFont.Height = -11
                      PrintFont.Name = 'Tahoma'
                      PrintFont.Style = []
                      ReadOnly = True
                      ShowBands = False
                      SortStyle = ssAutomatic
                      SpinMax = 0
                      SpinMin = 0
                      SpinStep = 1
                      Tag = 0
                      Width = 77
                    end
                    item
                      AutoMinSize = 0
                      AutoMaxSize = 0
                      Alignment = taCenter
                      Borders = []
                      BorderPen.Color = clSilver
                      CheckFalse = 'N'
                      CheckTrue = 'Y'
                      Color = clWindow
                      ColumnPopupType = cpFixedCellsRClick
                      DropDownCount = 8
                      EditLength = 0
                      Editor = edNone
                      FilterCaseSensitive = False
                      Fixed = False
                      FloatFormat = '%.1f'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header = #1055#1047
                      HeaderAlignment = taCenter
                      HeaderFont.Charset = DEFAULT_CHARSET
                      HeaderFont.Color = clWindowText
                      HeaderFont.Height = -13
                      HeaderFont.Name = 'Tahoma'
                      HeaderFont.Style = [fsBold]
                      MinSize = 0
                      MaxSize = 0
                      Password = False
                      PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                      PrintColor = clWhite
                      PrintFont.Charset = DEFAULT_CHARSET
                      PrintFont.Color = clWindowText
                      PrintFont.Height = -11
                      PrintFont.Name = 'Tahoma'
                      PrintFont.Style = []
                      ReadOnly = True
                      ShowBands = False
                      SortStyle = ssAutomatic
                      SpinMax = 0
                      SpinMin = 0
                      SpinStep = 1
                      Tag = 0
                      Width = 77
                    end
                    item
                      AutoMinSize = 0
                      AutoMaxSize = 0
                      Alignment = taCenter
                      Borders = []
                      BorderPen.Color = clSilver
                      CheckFalse = 'N'
                      CheckTrue = 'Y'
                      Color = clWindow
                      ColumnPopupType = cpFixedCellsRClick
                      DropDownCount = 8
                      EditLength = 0
                      Editor = edNone
                      FilterCaseSensitive = False
                      Fixed = False
                      FloatFormat = '%.1f'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header = #176#1057'/'#1084#1080#1085
                      HeaderAlignment = taCenter
                      HeaderFont.Charset = DEFAULT_CHARSET
                      HeaderFont.Color = clWindowText
                      HeaderFont.Height = -13
                      HeaderFont.Name = 'Tahoma'
                      HeaderFont.Style = [fsBold]
                      MinSize = 0
                      MaxSize = 0
                      Password = False
                      PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                      PrintColor = clWhite
                      PrintFont.Charset = DEFAULT_CHARSET
                      PrintFont.Color = clWindowText
                      PrintFont.Height = -11
                      PrintFont.Name = 'Tahoma'
                      PrintFont.Style = []
                      ReadOnly = True
                      ShowBands = False
                      SortStyle = ssAutomatic
                      SpinMax = 0
                      SpinMin = 0
                      SpinStep = 1
                      Tag = 0
                      Width = 77
                    end
                    item
                      AutoMinSize = 0
                      AutoMaxSize = 0
                      Alignment = taCenter
                      Borders = []
                      BorderPen.Color = clSilver
                      CheckFalse = 'N'
                      CheckTrue = 'Y'
                      Color = clWindow
                      ColumnPopupType = cpFixedCellsRClick
                      DropDownCount = 8
                      EditLength = 0
                      Editor = edNone
                      FilterCaseSensitive = False
                      Fixed = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header = #1093#1093#1093
                      HeaderAlignment = taCenter
                      HeaderFont.Charset = DEFAULT_CHARSET
                      HeaderFont.Color = clWindowText
                      HeaderFont.Height = -13
                      HeaderFont.Name = 'Tahoma'
                      HeaderFont.Style = [fsBold]
                      MinSize = 0
                      MaxSize = 0
                      Password = False
                      PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                      PrintColor = clWhite
                      PrintFont.Charset = DEFAULT_CHARSET
                      PrintFont.Color = clWindowText
                      PrintFont.Height = -11
                      PrintFont.Name = 'Tahoma'
                      PrintFont.Style = []
                      ReadOnly = True
                      ShowBands = False
                      SortStyle = ssAutomatic
                      SpinMax = 0
                      SpinMin = 0
                      SpinStep = 1
                      Tag = 0
                      Width = 77
                    end>
                  ColWidths = (
                    78
                    78
                    78
                    78
                    77
                    77
                    77
                    77)
                end
              end
            end
            object iRegimeTab: TsTabSheet
              Caption = 'iRegimeTab'
              object sPanel46: TsPanel
                Left = 0
                Top = 0
                Width = 981
                Height = 426
                Align = alClient
                BevelOuter = bvNone
                BorderWidth = 2
                DoubleBuffered = False
                TabOrder = 0
                object sPanel49: TsPanel
                  Left = 2
                  Top = 2
                  Width = 977
                  Height = 422
                  Align = alClient
                  DoubleBuffered = False
                  TabOrder = 0
                  object HistoryRegimeGrid: TAdvColumnGrid
                    Left = 1
                    Top = 1
                    Width = 975
                    Height = 420
                    Cursor = crDefault
                    Align = alClient
                    ColCount = 7
                    RowCount = 30
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ScrollBars = ssNone
                    TabOrder = 0
                    OnKeyDown = RegimeGridKeyDown
                    OnKeyPress = RegimeGridKeyPress
                    ActiveRowShow = True
                    ActiveRowColor = 15393241
                    HoverRowCells = [hcNormal, hcSelected]
                    OnGetCellColor = RegimeGridGetCellColor
                    OnAutoAddRow = RegimeGridAutoAddRow
                    OnCellValidate = RegimeGridCellValidate
                    OnGetFloatFormat = RegimeGridGetFloatFormat
                    ActiveCellFont.Charset = DEFAULT_CHARSET
                    ActiveCellFont.Color = clWindowText
                    ActiveCellFont.Height = -11
                    ActiveCellFont.Name = 'Tahoma'
                    ActiveCellFont.Style = [fsBold]
                    ActiveCellColor = 15387318
                    ColumnHeaders.Strings = (
                      #8470
                      #176'C'
                      #176#1057'/'#1084#1080#1085
                      #1042#1088#1077#1084#1103', '#1084#1080#1085
                      #1060#1080#1082#1089'. '#1074#1088#1077#1084#1103', '#1089#1077#1082
                      #1050#1086#1076
                      #1057#1076#1074#1080#1078#1082#1072', '#1089#1077#1082)
                    ColumnSize.Stretch = True
                    ColumnSize.StretchAll = True
                    ControlLook.FixedGradientFrom = clWhite
                    ControlLook.FixedGradientTo = clSilver
                    ControlLook.FixedGradientHoverFrom = 13619409
                    ControlLook.FixedGradientHoverTo = 12502728
                    ControlLook.FixedGradientHoverMirrorFrom = 12502728
                    ControlLook.FixedGradientHoverMirrorTo = 11254975
                    ControlLook.FixedGradientDownFrom = 8816520
                    ControlLook.FixedGradientDownTo = 7568510
                    ControlLook.FixedGradientDownMirrorFrom = 7568510
                    ControlLook.FixedGradientDownMirrorTo = 6452086
                    ControlLook.FixedGradientDownBorder = 11440207
                    ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
                    ControlLook.DropDownHeader.Font.Color = clWindowText
                    ControlLook.DropDownHeader.Font.Height = -11
                    ControlLook.DropDownHeader.Font.Name = 'Tahoma'
                    ControlLook.DropDownHeader.Font.Style = []
                    ControlLook.DropDownHeader.Visible = True
                    ControlLook.DropDownHeader.Buttons = <>
                    ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
                    ControlLook.DropDownFooter.Font.Color = clWindowText
                    ControlLook.DropDownFooter.Font.Height = -11
                    ControlLook.DropDownFooter.Font.Name = 'Tahoma'
                    ControlLook.DropDownFooter.Font.Style = []
                    ControlLook.DropDownFooter.Visible = True
                    ControlLook.DropDownFooter.Buttons = <>
                    DefaultAlignment = taCenter
                    Filter = <>
                    FilterDropDown.Font.Charset = DEFAULT_CHARSET
                    FilterDropDown.Font.Color = clWindowText
                    FilterDropDown.Font.Height = -11
                    FilterDropDown.Font.Name = 'Tahoma'
                    FilterDropDown.Font.Style = []
                    FilterDropDown.TextChecked = 'Checked'
                    FilterDropDown.TextUnChecked = 'Unchecked'
                    FilterDropDownClear = '(All)'
                    FilterEdit.TypeNames.Strings = (
                      'Starts with'
                      'Ends with'
                      'Contains'
                      'Not contains'
                      'Equal'
                      'Not equal'
                      'Larger than'
                      'Smaller than'
                      'Clear')
                    FixedRowHeight = 22
                    FixedRowAlways = True
                    FixedColAlways = True
                    FixedFont.Charset = DEFAULT_CHARSET
                    FixedFont.Color = clBlack
                    FixedFont.Height = -11
                    FixedFont.Name = 'Tahoma'
                    FixedFont.Style = [fsBold]
                    FloatFormat = '%.2f'
                    HoverButtons.Buttons = <>
                    HoverButtons.Position = hbLeftFromColumnLeft
                    HTMLSettings.ImageFolder = 'images'
                    HTMLSettings.ImageBaseName = 'img'
                    Look = glTMS
                    PrintSettings.DateFormat = 'dd/mm/yyyy'
                    PrintSettings.Font.Charset = DEFAULT_CHARSET
                    PrintSettings.Font.Color = clWindowText
                    PrintSettings.Font.Height = -11
                    PrintSettings.Font.Name = 'Tahoma'
                    PrintSettings.Font.Style = []
                    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
                    PrintSettings.FixedFont.Color = clWindowText
                    PrintSettings.FixedFont.Height = -11
                    PrintSettings.FixedFont.Name = 'Tahoma'
                    PrintSettings.FixedFont.Style = []
                    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
                    PrintSettings.HeaderFont.Color = clWindowText
                    PrintSettings.HeaderFont.Height = -11
                    PrintSettings.HeaderFont.Name = 'Tahoma'
                    PrintSettings.HeaderFont.Style = []
                    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
                    PrintSettings.FooterFont.Color = clWindowText
                    PrintSettings.FooterFont.Height = -11
                    PrintSettings.FooterFont.Name = 'Tahoma'
                    PrintSettings.FooterFont.Style = []
                    PrintSettings.PageNumSep = '/'
                    SearchFooter.ColorTo = 15790320
                    SearchFooter.FindNextCaption = 'Find &next'
                    SearchFooter.FindPrevCaption = 'Find &previous'
                    SearchFooter.Font.Charset = DEFAULT_CHARSET
                    SearchFooter.Font.Color = clWindowText
                    SearchFooter.Font.Height = -11
                    SearchFooter.Font.Name = 'Tahoma'
                    SearchFooter.Font.Style = []
                    SearchFooter.HighLightCaption = 'Highlight'
                    SearchFooter.HintClose = 'Close'
                    SearchFooter.HintFindNext = 'Find next occurrence'
                    SearchFooter.HintFindPrev = 'Find previous occurrence'
                    SearchFooter.HintHighlight = 'Highlight occurrences'
                    SearchFooter.MatchCaseCaption = 'Match case'
                    SortSettings.DefaultFormat = ssAutomatic
                    SortSettings.HeaderColorTo = 16579058
                    SortSettings.HeaderMirrorColor = 16380385
                    SortSettings.HeaderMirrorColorTo = 16182488
                    Version = '3.1.4.2'
                    Columns = <
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edNone
                        FilterCaseSensitive = False
                        Fixed = True
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #8470
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -11
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = []
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = False
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 64
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edPositiveFloat
                        FilterCaseSensitive = False
                        Fixed = False
                        FloatFormat = '%.1f'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #176'C'
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -11
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = False
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 152
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edPositiveFloat
                        FilterCaseSensitive = False
                        Fixed = False
                        FloatFormat = '%.1f'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #176#1057'/'#1084#1080#1085
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -11
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = False
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 151
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edPositiveNumeric
                        FilterCaseSensitive = False
                        Fixed = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #1042#1088#1077#1084#1103', '#1084#1080#1085
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -11
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = False
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 151
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edPositiveNumeric
                        FilterCaseSensitive = False
                        Fixed = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #1060#1080#1082#1089'. '#1074#1088#1077#1084#1103', '#1089#1077#1082
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -11
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = False
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 151
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edPositiveNumeric
                        FilterCaseSensitive = False
                        Fixed = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #1050#1086#1076
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -11
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = False
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 151
                      end
                      item
                        AutoMinSize = 0
                        AutoMaxSize = 0
                        Alignment = taCenter
                        Borders = []
                        BorderPen.Color = clSilver
                        CheckFalse = 'N'
                        CheckTrue = 'Y'
                        Color = clWindow
                        ColumnPopupType = cpFixedCellsRClick
                        DropDownCount = 8
                        EditLength = 0
                        Editor = edPositiveNumeric
                        FilterCaseSensitive = False
                        Fixed = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Header = #1057#1076#1074#1080#1078#1082#1072', '#1089#1077#1082
                        HeaderAlignment = taCenter
                        HeaderFont.Charset = DEFAULT_CHARSET
                        HeaderFont.Color = clWindowText
                        HeaderFont.Height = -11
                        HeaderFont.Name = 'Tahoma'
                        HeaderFont.Style = [fsBold]
                        MinSize = 0
                        MaxSize = 0
                        Password = False
                        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                        PrintColor = clWhite
                        PrintFont.Charset = DEFAULT_CHARSET
                        PrintFont.Color = clWindowText
                        PrintFont.Height = -11
                        PrintFont.Name = 'Tahoma'
                        PrintFont.Style = []
                        ReadOnly = False
                        ShowBands = False
                        SortStyle = ssAutomatic
                        SpinMax = 0
                        SpinMin = 0
                        SpinStep = 1
                        Tag = 0
                        Width = 151
                      end>
                    ColWidths = (
                      64
                      152
                      151
                      151
                      151
                      151
                      151)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  object sSkinProvider1: TsSkinProvider
    DrawNonClientArea = False
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'Tahoma'
    AddedTitle.Font.Style = []
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'FORM'
    SkinData.OuterEffects.Visibility = ovAlways
    TitleButtons = <>
    Left = 28
    Top = 426
  end
  object SkinZip: TspSkinZip
    Left = 66
    Top = 426
  end
  object SkinUnZip: TspSkinUnZip
    Left = 106
    Top = 426
  end
  object FilterLZ: TKalmanFiltering
    FilterExponent = 2
    Mode = mdRecursive
    SizeTeachingSequence = 30
    OnNextItem = FilterLZNextItem
    Left = 12
    Top = 260
  end
  object FilterCZ: TKalmanFiltering
    FilterExponent = 2
    Mode = mdRecursive
    SizeTeachingSequence = 30
    OnNextItem = FilterCZNextItem
    Left = 52
    Top = 260
  end
  object FilterRZ: TKalmanFiltering
    FilterExponent = 2
    Mode = mdRecursive
    SizeTeachingSequence = 30
    OnNextPosterioriEstimation = FilterRZNextPosterioriEstimation
    Left = 92
    Top = 260
  end
  object ResetTimer: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = ResetTimerTimer
    Left = 38
    Top = 94
  end
end
