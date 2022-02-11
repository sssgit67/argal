unit MachineUnit;
{Q+}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CommonUnit, sSkinProvider, ExtCtrls, sPanel, ComCtrls,
  StdCtrls, Buttons, sBitBtn, sSpeedButton, VrControls, VrLeds,
  acArcControls, VrDigit, sLabel, VrEdit, sPageControl, sBevel, VrLcd,
  iComponent, iSevenSegmentDisplay, iSevenSegmentAnalog, Math, sUpDown,
  iTimers, sEdit, sSpinEdit, sComboBox, sGroupBox, Grids, AdvObj, BaseGrid,
  AdvGrid, AdvCGrid, iLed, iLedArrow, iSevenSegmentClock,
  iSevenSegmentCharacter, iSevenSegmentInteger, iPlotComponent, iXYPlot,
  sTrackBar, iPositionComponent, iProgressComponent, iLedBar, VrScale,
  AdvSmoothStatusIndicator,
  Matrices, regress,

   AdvSmoothButton, sMemo, IniFiles, RegimeUnit, iMath, iPlot,
   MessageUnit, spSkinUnZip, spSkinZip,
   CalendarUnit, ActnList, KalmanFiltering,
   DateUtils,
   MMSystem, sSkinManager, TeeProcs, TeEngine, Chart, Series, jpeg;

type

  TChartDataPoints = record
    Series: integer;
    X: array [0..99] of single;
    Y: array [0..99] of single;
  end;

  TMachineParameters = record
    LZTCType: integer;
    CZTCType: integer;
    RZTCType: integer;
    CTCType:  integer;

    LZShift: extended;
    CZShift: extended;
    RZShift: extended;

    SliderSpeed: array [1..30] of single;

    LZCoeffP: extended;
    LZCoeffI: extended;
    LZCoeffD: extended;
    CZCoeffP: extended;
    CZCoeffI: extended;
    CZCoeffD: extended;
    RZCoeffP: extended;
    RZCoeffI: extended;
    RZCoeffD: extended;

    AIAddress: byte;
    AOFAddress: byte;
    AOSAddress: byte;
    DIAddress: byte;
    DOAddress: byte;

    Ch_AI_LZ: byte;
    Ch_AI_CZ: byte;
    Ch_AI_RZ: byte;

    Ch_DI_Power: byte;
    Ch_DI_LS: byte;
    Ch_DI_RS: byte;
    Ch_DI_LF: byte;
    Ch_DI_RF: byte;
    DI_Invert: boolean;

    Ch_AO_LZ: byte;
    Ch_AO_CZ: byte;
    Ch_AO_RZ: byte;

    Ch_DO_LS: byte;
    Ch_DO_RS: byte;
    Ch_DO_LF: byte;
    Ch_DO_RF: byte;
    Ch_DO_AUTO: byte;

    Filter_On: boolean;
    Filter_Exponent: integer;
    Filter_Size: integer;
  end;

  TMechPosition = (mpLeft,mpCenter,mpRight);
  TMechDirection = (mdNone,mdLeftToRight,mdRightToLeft);

  TProcessParameters = record
    StartTime: string;
    AUTO: boolean;
    TEST: boolean;
    Running: boolean;
    Resetting: boolean;
    DeadTimeMS: DWORD;   // интервал между измерениями мсек
    Data: array [0..9,0..5] of extended;
    // 1 индекс - момент времени
    // 2 индекс - 0 : значение LZ,°C
    //            1 : значение CZ,°C
    //            2 : значение RZ,°C
    //            3 : ошибка = (реал - задание) LZ, °C
    //            4 : ошибка = (реал - задание) CZ, °C
    //            5 : ошибка = (реал - задание) RZ, °C
    RegimeTemperature: extended;
    SliderStartPosition: TMechPosition;
    SliderFinishPosition: TMechPosition;
  end;

type
  TMachine = class(TForm)
    sSkinProvider1: TsSkinProvider;
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sPanel3: TsPanel;
    sPanel4: TsPanel;
    StartButton: TsSpeedButton;
    sPanel5: TsPanel;
    StatusLabel: TsSpeedButton;
    AutoButton: TsSpeedButton;
    MainPager: TsPageControl;
    MainTabSheet: TsTabSheet;
    sPanel7: TsPanel;
    sPanel8: TsPanel;
    sPanel9: TsPanel;
    sPanel11: TsPanel;
    sLabelFX6: TsLabelFX;
    sPanel12: TsPanel;
    sPanel6: TsPanel;
    sLabelFX4: TsLabelFX;
    sPanel10: TsPanel;
    LZ_Temp_Ind: TiSevenSegmentAnalog;
    CZ_Temp_Ind: TiSevenSegmentAnalog;
    RZ_Temp_Ind: TiSevenSegmentAnalog;
    iSevenSegmentInteger4: TiSevenSegmentInteger;
    iSevenSegmentCharacter1: TiSevenSegmentCharacter;
    iSevenSegmentInteger2: TiSevenSegmentInteger;
    iSevenSegmentClock1: TiSevenSegmentClock;
    sPanel13: TsPanel;
    sLabelFX5: TsLabelFX;
    sPanel14: TsPanel;
    iSevenSegmentInteger3: TiSevenSegmentInteger;
    iSevenSegmentCharacter2: TiSevenSegmentCharacter;
    iSevenSegmentInteger1: TiSevenSegmentInteger;
    iSevenSegmentClock2: TiSevenSegmentClock;
    iLedArrow1: TiLedArrow;
    sPanel17: TsPanel;
    sLabelFX8: TsLabelFX;
    sPanel18: TsPanel;
    LZ_Speed_Ind: TiSevenSegmentAnalog;
    CZ_Speed_Ind: TiSevenSegmentAnalog;
    RZ_Speed_Ind: TiSevenSegmentAnalog;
    sPanel16: TsPanel;
    sPanel20: TsPanel;
    VrScale1: TVrScale;
    LZ_ProgressiLedBar: TiLedBar;
    sPanel21: TsPanel;
    VrScale3: TVrScale;
    CZ_ProgressiLedBar: TiLedBar;
    sPanel22: TsPanel;
    VrScale4: TVrScale;
    RZ_ProgressiLedBar: TiLedBar;
    TuneTabSheet: TsTabSheet;
    RegimeTabSheet: TsTabSheet;
    StartTabSheet: TsTabSheet;
    sPanel28: TsPanel;
    sPanel29: TsPanel;
    StartClock: TiSevenSegmentClock;
    sPanel27: TsPanel;
    HoursUpDown: TsUpDown;
    sLabelFX3: TsLabelFX;
    sPanel30: TsPanel;
    sLabelFX7: TsLabelFX;
    MinutesUpDown: TsUpDown;
    SecondsStartButton: TsSpeedButton;
    sPanel32: TsPanel;
    HeaterRollOutPanel: TsRollOutPanel;
    LZ_Heater_TrackBar: TsTrackBar;
    CZ_Heater_TrackBar: TsTrackBar;
    RZ_Heater_TrackBar: TsTrackBar;
    ControlRollOutPanel: TsRollOutPanel;
    sPanel19: TsPanel;
    Control_Temp_Ind: TiSevenSegmentAnalog;
    sPanel15: TsPanel;
    RegimeButton: TsSpeedButton;
    TuneButton: TsSpeedButton;
    HistoryButton: TsSpeedButton;
    AutoIndicator: TAdvSmoothStatusIndicator;
    sPanel25: TsPanel;
    sGroupBox3: TsGroupBox;
    sLabelFX23: TsLabelFX;
    sPanel26: TsPanel;
    sPanel35: TsPanel;
    sPanel36: TsPanel;
    sGroupBox5: TsGroupBox;
    sLabelFX31: TsLabelFX;
    sLabelFX32: TsLabelFX;
    sLabelFX33: TsLabelFX;
    sLabelFX34: TsLabelFX;
    sLabelFX35: TsLabelFX;
    sLabelFX36: TsLabelFX;
    sLabelFX37: TsLabelFX;
    RZtp_ComboBox: TsComboBox;
    RZ_shiftTP_edit: TsDecimalSpinEdit;
    RZCoeff_P_edit: TsDecimalSpinEdit;
    RZCoeff_I_edit: TsDecimalSpinEdit;
    RZCoeff_D_edit: TsDecimalSpinEdit;
    sPanel37: TsPanel;
    sGroupBox6: TsGroupBox;
    sLabelFX38: TsLabelFX;
    sLabelFX39: TsLabelFX;
    sLabelFX40: TsLabelFX;
    sLabelFX41: TsLabelFX;
    sLabelFX42: TsLabelFX;
    sLabelFX43: TsLabelFX;
    sLabelFX44: TsLabelFX;
    CZtp_ComboBox: TsComboBox;
    CZ_shiftTP_edit: TsDecimalSpinEdit;
    CZCoeff_P_edit: TsDecimalSpinEdit;
    CZCoeff_I_edit: TsDecimalSpinEdit;
    CZCoeff_D_edit: TsDecimalSpinEdit;
    sPanel38: TsPanel;
    sGroupBox7: TsGroupBox;
    sLabelFX45: TsLabelFX;
    sLabelFX46: TsLabelFX;
    sLabelFX47: TsLabelFX;
    sLabelFX48: TsLabelFX;
    sLabelFX49: TsLabelFX;
    sLabelFX50: TsLabelFX;
    sLabelFX51: TsLabelFX;
    LZtp_ComboBox: TsComboBox;
    LZ_shiftTP_edit: TsDecimalSpinEdit;
    LZCoeff_P_edit: TsDecimalSpinEdit;
    LZCoeff_I_edit: TsDecimalSpinEdit;
    LZCoeff_D_edit: TsDecimalSpinEdit;
    sPanel23: TsPanel;
    sPanel31: TsPanel;
    StartIndicator: TAdvSmoothStatusIndicator;
    SliderSpeedGrid: TAdvColumnGrid;
    SliderSpeedClock: TiSevenSegmentClock;
    SliderTestButtonLeft: TsSpeedButton;
    SliderTestButtonRight: TsSpeedButton;
    OKTuneButton: TsSpeedButton;
    sPanel39: TsPanel;
    sPanel33: TsPanel;
    OKRegimeButton: TsSpeedButton;
    sSpeedButton14: TsSpeedButton;
    sPanel34: TsPanel;
    ProcessClock: TiSevenSegmentClock;
    sPanel40: TsPanel;
    RegimeGrid: TAdvColumnGrid;
    ClearRegimeGrid: TsSpeedButton;
    sPanel41: TsPanel;
    sGroupBox1: TsGroupBox;
    sLabelFX9: TsLabelFX;
    sPanel42: TsPanel;
    SkinZip: TspSkinZip;
    SkinUnZip: TspSkinUnZip;
    FilterLZ: TKalmanFiltering;
    FilterCZ: TKalmanFiltering;
    FilterRZ: TKalmanFiltering;
    ResetTimer: TTimer;
    HistoryTabSheet: TsTabSheet;
    sPanel43: TsPanel;
    HistoryOKButton: TsSpeedButton;
    HistoryPager: TsPageControl;
    iGraphTab: TsTabSheet;
    iTableTab: TsTabSheet;
    iRegimeTab: TsTabSheet;
    ActivePager: TsPageControl;
    TableTab: TsTabSheet;
    RegimeInfoGrid: TAdvColumnGrid;
    RegimeTab: TsTabSheet;
    sPanel44: TsPanel;
    sPanel45: TsPanel;
    TableInfoGrid: TAdvColumnGrid;
    ChartTab: TsTabSheet;
    sPanel24: TsPanel;
    Chart: TChart;
    sPanel46: TsPanel;
    sPanel49: TsPanel;
    HistoryRegimeGrid: TAdvColumnGrid;
    HistoryChart: TChart;
    FastLineSeries1: TFastLineSeries;
    FastLineSeries2: TFastLineSeries;
    FastLineSeries3: TFastLineSeries;
    FastLineSeries4: TFastLineSeries;
    SliderSpeedometer: TiSevenSegmentClock;
    MachineNumLED: TsLabelFX;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Legend: TPanel;
    Image1: TImage;
    HistoryTableGrid: TAdvColumnGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RegimeButtonClick(Sender: TObject);
    procedure OKTuneButtonClick(Sender: TObject);
    procedure OKRegimeButtonClick(Sender: TObject);
    procedure RegimeGridCellValidate(Sender: TObject; ACol, ARow: Integer;
      var Value: String; var Valid: Boolean);
    procedure LZ_Heater_TrackBarChange(Sender: TObject);
    procedure FilterRZNextPosterioriEstimation(Sender: TObject;
      Estimation: Double);
    procedure FilterCZNextItem(Sender: TObject; Estimation: Double);
    procedure FilterLZNextItem(Sender: TObject; Estimation: Double);
    procedure StartButtonClick(Sender: TObject);
    procedure TuneButtonClick(Sender: TObject);
    procedure StartClockCountDownComplete(Sender: TObject);
    procedure SecondsStartButtonClick(Sender: TObject);
    procedure StartButtonPaint(Sender: TObject; Bmp: TBitmap);
    procedure AutoButtonClick(Sender: TObject);
    procedure AutoButtonPaint(Sender: TObject; Bmp: TBitmap);
    procedure CZ_Heater_TrackBarChange(Sender: TObject);
    procedure RZ_Heater_TrackBarChange(Sender: TObject);
    procedure HeaterRollOutPanelAfterCollapse(Sender: TObject);
    procedure ResetTimerTimer(Sender: TObject);
    procedure HistoryButtonClick(Sender: TObject);
    procedure sSpeedButton14Click(Sender: TObject);
    procedure HistoryOKButtonClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SliderTestButtonLeftClick(Sender: TObject);
    procedure SliderTestButtonRightClick(Sender: TObject);
    procedure RegimeGridAutoAddRow(Sender: TObject; ARow: Integer);
    procedure RegimeGridGetFloatFormat(Sender: TObject; ACol,
      ARow: Integer; var IsFloat: Boolean; var FloatFormat: String);
    procedure RegimeGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RegimeGridKeyPress(Sender: TObject; var Key: Char);
    procedure RegimeGridGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure ClearRegimeGridClick(Sender: TObject);
    procedure ChartAfterDraw(Sender: TObject);
    procedure ChartDblClick(Sender: TObject);
    procedure HistoryChartAfterDraw(Sender: TObject);
    procedure StatusLabelClick(Sender: TObject);
    procedure HistoryTableGridGetFloatFormat(Sender: TObject; ACol,
      ARow: Integer; var IsFloat: Boolean; var FloatFormat: String);
    procedure LZ_shiftTP_editChange(Sender: TObject);
    procedure LZtp_ComboBoxChange(Sender: TObject);
    procedure LZCoeff_P_editChange(Sender: TObject);
    procedure LZCoeff_I_editChange(Sender: TObject);
    procedure LZCoeff_D_editChange(Sender: TObject);
    procedure MinutesUpDownClick(Sender: TObject; Button: TUDBtnType);
    procedure HoursUpDownClick(Sender: TObject; Button: TUDBtnType);
  private
    { Private declarations }
    FRegimeFile: string;
    FProcessDuration: DWORD;
    FZonesTemperature: TZonesDataArray;

    FAZonesTemperature: TZonesDataArray;
    T: TZonesDataArray;

    FZonesSpeed: TZonesDataArray;
    FRegulatorsVoltage: TZonesDataArray;
    FSliderPosition: TMechPosition;
    FSliderDirection: TMechDirection;
    FCode: integer;
    FSlideDone: integer;
    FProcessLeftTime: TDateTime;
    FStageLeftTime: TDateTime;
    FBeforeSlideTime: TDateTime;
    FAlarm: boolean;
    FLongAlarm: boolean;
    ESCPressed: boolean;
    FCTP: Extended;

    procedure SetRegimeFile(AValue: string);
    procedure SetProcessDuration(AValue: DWORD);
    procedure SetZonesTemperature(Value: TZonesDataArray);
    procedure SetAZonesTemperature(Value: TZonesDataArray);
    procedure SetSliderPosition(AValue: TMechPosition);
    procedure SetSliderDirection(AValue: TMechDirection);
    procedure SetCode(AValue: integer);
    procedure SetSlideDone(AValue: integer);
    procedure SetProcessLeftTime(AValue: TDateTime);
    procedure SetStageLeftTime(AValue: TDateTime);
    procedure SetBeforeSlideTime(AValue: TDateTime);
    procedure SetAlarm(AAlarm: boolean);
    procedure SetCTP(AValue: Extended);
    procedure SetLongAlarm(AAlarm: boolean);

  protected
    Slides: array of double;
    HistorySlides: array of double;
    procedure LoadParameters;
    function BuildRegime: boolean;
    procedure StartProcess;
    procedure StopProcess(Condition: boolean);
    procedure PrepareGraph;
    procedure SaveProcessData;
    procedure LoadProcessData(AFile: string);
    procedure SaveChartToFile(AFile: string);
    procedure LoadChartFromFile(AChart: TChart; AFile: string);
    procedure SaveResetData;
    function LoadResetData: boolean;
    procedure ResetToStart;

    procedure FillEditors;

  public
    { Public declarations }
    Parameters: TMachineParameters;
    Process: TProcessParameters;
    Regime: TRegime;
    SlideBuffer: TFIFOBuffer;
    SlideFlag: boolean;
    SlideRunning: boolean;
    SlideInfo: TSlideInfo;
    SlideStartTime: DWORD;
    DeadTime: double; // интервал между измерениями сек
    PowerON: Boolean;


    procedure Command(AValue: Word; Shift: TShiftState);
    procedure ResetProcess;
    procedure Stop;


    property RegimeFile: string read FRegimeFile write SetRegimeFile;
    property ProcessDuration: DWORD read FProcessDuration write SetProcessDuration;
    property ZonesTemperature: TZonesDataArray read FZonesTemperature write SetZonesTemperature;
    property AZonesTemperature: TZonesDataArray read FAZonesTemperature write SetAZonesTemperature;
    property ZonesSpeed: TZonesDataArray read FZonesSpeed;
    property RegulatorsVoltage: TZonesDataArray read FRegulatorsVoltage;
    property SliderPosition: TMechPosition read FSliderPosition write SetSliderPosition;
    property SliderDirection: TMechDirection read FSliderDirection write SetSliderDirection;
    property Code: integer read FCode write SetCode;
    property SlideDone: integer read FSlideDone write SetSlideDone;
    property ProcessLeftTime: TDateTime read FProcessLeftTime write SetProcessLeftTime;
    property StageLeftTime: TDateTime read FStageLeftTime write SetStageLeftTime;
    property BeforeSlideTime: TDateTime read FBeforeSlideTime write SetBeforeSlideTime;
    property Alarm: boolean read FAlarm write SetAlarm;
    property LongAlarm: boolean read FLongAlarm write SetLongAlarm;
    property CTP: Extended read FCTP write SetCTP;
  end;

var
  Machine: TMachine;

implementation

{$R *.dfm}

//------------------------------------------------------------------------------
procedure TMachine.FormCreate(Sender: TObject);
begin
  SlideBuffer:= TFIFOBuffer.Create;
  Regime:= TRegime.Create;
  PowerON:= True;
  FRegulatorsVoltage[0]:= 10;
  FRegulatorsVoltage[1]:= 10;
  FRegulatorsVoltage[2]:= 10;

//  Create.DataView[0].
end;

//------------------------------------------------------------------------------
procedure TMachine.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SlideBuffer.Free;
  Slides:= nil;
  HistorySlides:= nil;
  Regime.Free;
  Action:= caFree;
end;

//------------------------------------------------------------------------------
procedure TMachine.FormShow(Sender: TObject);
var
  Directory: string;
  ParamsPath: string;
  i: Integer;
begin
  for i:=1 to MainPager.PageCount-1 do MainPager.Pages[i].Visible:= False;
  for i:=0 to MainPager.PageCount-1 do MainPager.Pages[i].TabVisible:= False;
  MainPager.ActivePageIndex:= 0;

  for i:=1 to HistoryPager.PageCount-1 do HistoryPager.Pages[i].Visible:= False;
  for i:=0 to HistoryPager.PageCount-1 do HistoryPager.Pages[i].TabVisible:= False;
  HistoryPager.ActivePageIndex:= 0;

  for i:=1 to ActivePager.PageCount-1 do ActivePager.Pages[i].Visible:= False;
  for i:=0 to ActivePager.PageCount-1 do ActivePager.Pages[i].TabVisible:= False;
  ActivePager.ActivePageIndex:= 0;

  ParamsPath:= 'Machine'+IntToStr(Tag);

//*****************************
Series1.XValues.DateTime:=True;
Series2.XValues.DateTime:=True;
Series3.XValues.DateTime:=True;
Series4.XValues.DateTime:=True;
Chart.BottomAxis.DateTimeFormat:='hh:mm';
FastLineSeries1.XValues.DateTime:=True;
FastLineSeries2.XValues.DateTime:=True;
FastLineSeries3.XValues.DateTime:=True;
FastLineSeries4.XValues.DateTime:=True;
HistoryChart.BottomAxis.DateTimeFormat:='hh:mm';

  MachineNumLED.Caption:= IntToStr(Params.ReadInteger(ParamsPath,'Number',Tag));
  StartIndicator.Caption:='';
  AutoIndicator.Caption:='';

  RegimeGrid.DefaultColWidth:= RegimeGrid.Width div RegimeGrid.ColCount;
  RegimeGrid.Columns[0].Width:= 50;
  RegimeGrid.AutoNumberCol(0);

  TableInfoGrid.DefaultColWidth:= TableInfoGrid.Width div TableInfoGrid.ColCount;
  TableInfoGrid.Columns[0].Width:= 40;

  RegimeInfoGrid.DefaultColWidth:= RegimeInfoGrid.Width div RegimeInfoGrid.ColCount;
  RegimeInfoGrid.Columns[1].Width:= 50;

  LoadParameters;
  FillEditors;

  Directory:= ExtractFilePath(Application.ExeName)+'Processes\';
  if not DirectoryExists(Directory) then CreateDir(Directory);
  Directory:= Directory+'Machine'+ IntToStr(Tag)+'\';
  if not DirectoryExists(Directory) then CreateDir(Directory);
  RegimeFile:= Directory + 'regime.dat';

  BuildRegime;


  // RESET
  Directory:= ExtractFilePath(Application.ExeName)+ 'Processes\Machine'+ IntToStr(Tag) + '\';
  if (FileExists(Directory+'reset.ini') and FileExists(Directory+'reset.rgm') and FileExists(Directory+'reset.tee')) then
  begin
    Process.Resetting:= true;
    ResetProcess;
    Process.Resetting:= false;
  end;

//  ControlTP:= false;

end;

//------------------------------------------------------------------------------
procedure TMachine.FillEditors;
var
  i: Integer;
begin
//
with Parameters do
  begin
  LZTP_ComboBox.ItemIndex:= LZTCType;
  CZTP_ComboBox.ItemIndex:= CZTCType;
  RZTP_ComboBox.ItemIndex:= RZTCType;

  LZ_ShiftTP_edit.Value:= LZShift;
  CZ_ShiftTP_edit.Value:= CZShift;
  RZ_ShiftTP_edit.Value:= RZShift;

  for i:=1 to  high(SliderSpeed) do
  begin
    SliderSpeedGrid.Ints[0,i]:= i;
    SliderSpeedGrid.Floats[1,i]:= SliderSpeed[i];
  end;

  LZCoeff_P_edit.Value:= LZCoeffP;
  CZCoeff_P_edit.Value:= CZCoeffP;
  RZCoeff_P_edit.Value:= RZCoeffP;

  LZCoeff_I_edit.Value:= LZCoeffI;
  CZCoeff_I_edit.Value:= CZCoeffI;
  RZCoeff_I_edit.Value:= RZCoeffI;

  LZCoeff_D_edit.Value:= LZCoeffD;
  CZCoeff_D_edit.Value:= CZCoeffD;
  RZCoeff_D_edit.Value:= RZCoeffD;
  end;


//  iSevenSegmentInteger4.Value:= Regime.StageCount-1;
  iSevenSegmentInteger2.Value:= Regime.SlideCount;
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
procedure TMachine.RegimeButtonClick(Sender: TObject);
begin
  MainPager.ActivePageIndex:= 1;
  StatusLabel.Caption:= 'ТАБЛИЦА ТЕМПЕРАТУРНО-ВРЕМЕННОГО РЕЖИМА';
  RegimeGrid.Col:= 1;
  RegimeGrid.Row:= 1;
  RegimeGrid.SetFocus;
  BuildRegime;
end;

//------------------------------------------------------------------------------
procedure TMachine.OKTuneButtonClick(Sender: TObject);
var
  i: integer;
  ParamsPath: string;
begin
  ParamsPath:= 'Machine'+IntToStr(Tag);
  with Parameters do
  begin
    Params.WriteInteger(ParamsPath,'LZTCType',LZTCType);
    Params.WriteInteger(ParamsPath,'CZTCType',CZTCType);
    Params.WriteInteger(ParamsPath,'RZTCType',RZTCType);

    Params.WriteFloat(ParamsPath,'LZShift',LZShift);
    Params.WriteFloat(ParamsPath,'CZShift',CZShift);
    Params.WriteFloat(ParamsPath,'RZShift',RZShift);

    for i:=1 to high(SliderSpeed) do Params.WriteFloat(ParamsPath,'SliderSpeed_'+ IntToStr(i),SliderSpeed[i]);

    Params.WriteFloat(ParamsPath,'LZCoeffP',LZCoeffP);
    Params.WriteFloat(ParamsPath,'LZCoeffI',LZCoeffI);
    Params.WriteFloat(ParamsPath,'LZCoeffD',LZCoeffD);
    Params.WriteFloat(ParamsPath,'CZCoeffP',CZCoeffP);
    Params.WriteFloat(ParamsPath,'CZCoeffI',CZCoeffI);
    Params.WriteFloat(ParamsPath,'CZCoeffD',CZCoeffD);
    Params.WriteFloat(ParamsPath,'RZCoeffP',RZCoeffP);
    Params.WriteFloat(ParamsPath,'RZCoeffI',RZCoeffI);
    Params.WriteFloat(ParamsPath,'RZCoeffD',RZCoeffD);

    Params.WriteInteger(ParamsPath,'AIAddress',AIAddress);
    Params.WriteInteger(ParamsPath,'AOFAddress',AOFAddress);
    Params.WriteInteger(ParamsPath,'AOSAddress',AOSAddress);
    Params.WriteInteger(ParamsPath,'DIAddress',DIAddress);
    Params.WriteInteger(ParamsPath,'DOAddress',DOAddress);

    Params.WriteInteger(ParamsPath,'Ch_AI_LZ',Ch_AI_LZ);
    Params.WriteInteger(ParamsPath,'Ch_AI_CZ',Ch_AI_CZ);
    Params.WriteInteger(ParamsPath,'Ch_AI_RZ',Ch_AI_RZ);

    Params.WriteInteger(ParamsPath,'Ch_DI_Power',Ch_DI_Power);
    Params.WriteInteger(ParamsPath,'Ch_DI_LS',Ch_DI_LS);
    Params.WriteInteger(ParamsPath,'Ch_DI_RS',Ch_DI_RS);
    Params.WriteInteger(ParamsPath,'Ch_DI_LF',Ch_DI_LF);
    Params.WriteInteger(ParamsPath,'Ch_DI_RF',Ch_DI_RF);
    Params.WriteBool(ParamsPath,'DI_Invert',DI_Invert);

    Params.WriteInteger(ParamsPath,'Ch_AO_LZ',Ch_AO_LZ);
    Params.WriteInteger(ParamsPath,'Ch_AO_CZ',Ch_AO_CZ);
    Params.WriteInteger(ParamsPath,'Ch_AO_RZ',Ch_AO_RZ);

    Params.WriteInteger(ParamsPath,'Ch_DO_LS',Ch_DO_LS);
    Params.WriteInteger(ParamsPath,'Ch_DO_RS',Ch_DO_RS);
    Params.WriteInteger(ParamsPath,'Ch_DO_LF',Ch_DO_LF);
    Params.WriteInteger(ParamsPath,'Ch_DO_RF',Ch_DO_RF);
    Params.WriteInteger(ParamsPath,'Ch_DO_AUTO',Ch_DO_AUTO);

    Params.WriteBool(ParamsPath,'Filter_On',Filter_On);
    Params.WriteInteger(ParamsPath,'Filter_Exponent',Filter_Exponent);
    Params.WriteInteger(ParamsPath,'Filter_Size',Filter_Size);
  end;
  MainPager.ActivePageIndex:= 0;
  StatusLabel.Caption:= '';
end;

//------------------------------------------------------------------------------
procedure TMachine.OKRegimeButtonClick(Sender: TObject);
var
  Directory: string;
begin
  if BuildRegime then
  begin
    Directory:= ExtractFilePath(Application.ExeName)+'Processes\';
    if not DirectoryExists(Directory) then CreateDir(Directory);
    Directory:= Directory+'Machine'+ IntToStr(Tag)+'\';
    if not DirectoryExists(Directory) then CreateDir(Directory);
    FRegimeFile:= Directory + 'regime.dat';
    RegimeGrid.SaveToFile(RegimeFile);
    MainPager.ActivePageIndex:= 0;
    StatusLabel.Caption:= '';
  end
  else
  begin
    ShowMessageA('Ошибка', 'Режим содержит ошибки.', true, false);
    MainPager.ActivePageIndex:= 1;
    RegimeGrid.SetFocus;
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.LoadParameters;
var
  i: integer;
  ParamsPath: string;
begin
  ParamsPath:= 'Machine'+IntToStr(Tag);
  with Parameters do
  begin
    LZTCType:= Params.ReadInteger(ParamsPath,'LZTCType',0);
    CZTCType:= Params.ReadInteger(ParamsPath,'CZTCType',0);
    RZTCType:= Params.ReadInteger(ParamsPath,'RZTCType',0);
    CTCType:= Params.ReadInteger(ParamsPath,'CTCType',0);

    LZShift:= Params.ReadFloat(ParamsPath,'LZShift',0);
    CZShift:= Params.ReadFloat(ParamsPath,'CZShift',0);
    RZShift:= Params.ReadFloat(ParamsPath,'RZShift',0);

    LZCoeffP:= Params.ReadFloat(ParamsPath,'LZCoeffP',1);
    LZCoeffI:= Params.ReadFloat(ParamsPath,'LZCoeffI',0.2);
    LZCoeffD:= Params.ReadFloat(ParamsPath,'LZCoeffD',1.25);

    CZCoeffP:= Params.ReadFloat(ParamsPath,'CZCoeffP',1);
    CZCoeffI:= Params.ReadFloat(ParamsPath,'CZCoeffI',0.2);
    CZCoeffD:= Params.ReadFloat(ParamsPath,'CZCoeffD',1.25);

    RZCoeffP:= Params.ReadFloat(ParamsPath,'RZCoeffP',1);
    RZCoeffI:= Params.ReadFloat(ParamsPath,'RZCoeffI',0.2);
    RZCoeffD:= Params.ReadFloat(ParamsPath,'RZCoeffD',1.25);

    for i:=1 to high(SliderSpeed) do SliderSpeed[i]:= Params.ReadFloat(ParamsPath,'SliderSpeed_'+ IntToStr(i),10);

    AIAddress:= Params.ReadInteger(ParamsPath,'AIAddress',0);
    AOFAddress:= Params.ReadInteger(ParamsPath,'AOFAddress',0);
    AOSAddress:= Params.ReadInteger(ParamsPath,'AOSAddress',0);
    DIAddress:= Params.ReadInteger(ParamsPath,'DIAddress',0);
    DOAddress:= Params.ReadInteger(ParamsPath,'DOAddress',0);

    Ch_AI_LZ:= Params.ReadInteger(ParamsPath,'Ch_AI_LZ',0);
    Ch_AI_CZ:= Params.ReadInteger(ParamsPath,'Ch_AI_CZ',1);
    Ch_AI_RZ:= Params.ReadInteger(ParamsPath,'Ch_AI_RZ',2);

    Ch_DI_Power:= Params.ReadInteger(ParamsPath,'Ch_DI_Power',0);
    Ch_DI_LS:= Params.ReadInteger(ParamsPath,'Ch_DI_LS',1);
    Ch_DI_RS:= Params.ReadInteger(ParamsPath,'Ch_DI_RS',2);
    Ch_DI_LF:= Params.ReadInteger(ParamsPath,'Ch_DI_LF',3);
    Ch_DI_RF:= Params.ReadInteger(ParamsPath,'Ch_DI_RF',4);
    DI_Invert:= Params.ReadBool(ParamsPath,'DI_Invert',false);

    Ch_AO_LZ:= Params.ReadInteger(ParamsPath,'Ch_AO_LZ',0);
    Ch_AO_CZ:= Params.ReadInteger(ParamsPath,'Ch_AO_CZ',1);
    Ch_AO_RZ:= Params.ReadInteger(ParamsPath,'Ch_AO_RZ',2);

    Ch_DO_LS:= Params.ReadInteger(ParamsPath,'Ch_DO_LS',0);
    Ch_DO_RS:= Params.ReadInteger(ParamsPath,'Ch_DO_RS',1);
    Ch_DO_LF:= Params.ReadInteger(ParamsPath,'Ch_DO_LF',2);
    Ch_DO_RF:= Params.ReadInteger(ParamsPath,'Ch_DO_RF',3);
    Ch_DO_AUTO:= Params.ReadInteger(ParamsPath,'Ch_DO_AUTO',4);

    Filter_On:= Params.ReadBool(ParamsPath,'Filter_On',True);
    Filter_Exponent:= Params.ReadInteger(ParamsPath,'Filter_Exponent',2);
    Filter_Size:= Params.ReadInteger(ParamsPath,'Filter_Size',20);

    FilterCZ.FilterExponent:= Filter_Exponent;
    FilterLZ.FilterExponent:= Filter_Exponent;
    FilterRZ.FilterExponent:= Filter_Exponent;
    FilterCZ.SizeTeachingSequence:= Filter_Size;
    FilterLZ.SizeTeachingSequence:= Filter_Size;
    FilterRZ.SizeTeachingSequence:= Filter_Size;
  end;
end;

//------------------------------------------------------------------------------
function TMachine.BuildRegime: boolean;
var
  ACol, ARow: integer;
begin
  if RegimeGrid.Cells[1,1] = '' then begin Result:= false; exit; end;

  Result:= true;
  Regime.Empty;
  Regime.AddItem(RegimeGrid.Floats[1,1], 0, 0, 0, 0, 0);
  ARow:= 1;
  with RegimeGrid do
  try
    while Regime.AddItem(Floats[1,ARow], Floats[2,ARow], Ints[3,ARow], Ints[4,ARow], Ints[5,ARow], Ints[6,ARow]) do Inc(ARow);
    for ARow:= 1 to Regime.StageCount-1 do
    begin
      Floats[1,ARow]:= Regime.Item[ARow].Temperature;
      Floats[2,ARow]:= abs(Regime.Item[ARow].Speed);
      Ints[3,ARow]:= Regime.Item[ARow].Time;
      Ints[4,ARow]:= Regime.Item[ARow].FixTime;
      Ints[5,ARow]:= Regime.Item[ARow].Code;
      Ints[6,ARow]:= Regime.Item[ARow].SlideSpeed;
    end;
    for ARow:= Regime.StageCount to RowCount-1 do
    for ACol:= 1 to ColCount-1 do Cells[ACol,ARow]:= '';
  except
    Result:= false;
    exit;
  end;

  if Result then with TableInfoGrid do
  if Regime.StageCount > 0 then
  begin
    RowCount:= Regime.StageCount+1;
    for ACol:= 0 to ColCount-1 do
    for ARow:= 1 to Regime.StageCount-1 do Cells[ACol,ARow]:= RegimeGrid.Cells[ACol,ARow];
    for ARow:= Regime.StageCount to RowCount-1 do
    for ACol:= 1 to ColCount-1 do Cells[ACol,ARow]:= '';
  end;

  if ((Result) and (Regime.StageCount > 0)) then
  begin
    ProcessDuration:= Regime.ProcessDuration;
    PrepareGraph;
  end;

  iSevenSegmentInteger1.Value:= Regime.StageCount-1;
  iSevenSegmentInteger2.Value:= Regime.SlideCount;

end;

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

procedure TMachine.RegimeGridCellValidate(Sender: TObject; ACol,
  ARow: Integer; var Value: String; var Valid: Boolean);
var
  i, Duration: integer;
  ErrorText: string;
begin
  with RegimeGrid do
  case ACol of
    1: begin // Температура °C
         if ((Floats[ACol,ARow] < 350) or (Floats[ACol,ARow] > 1300)) then
         begin
           if Floats[ACol,ARow] < 350 then Floats[ACol,ARow]:= 350;
           Valid:= false;
           ErrorText:= 'Значение темературы на этапе ' + IntToStr(ARow) + #13+' вне допустимого диапазона ( 350 - 1300 °C ).'
         end else
         begin
           if ((Floats[2,ARow]<>0) and (ARow > 1)) then Ints[3,ARow]:= Ceil( abs(Floats[1,ARow-1]-Floats[1,ARow])/Floats[2,ARow] );
         end;
       end;
    2: begin // Скорость °С/мин
         if ((Floats[ACol,ARow] < 0) or (Floats[ACol,ARow] > 5)) then
         begin
           Valid:= false;
           ErrorText:= 'Значение скорости на этапе ' + IntToStr(ARow) + #13+' вне допустимого диапазона ( 0 - 5 °?/??? ).'
         end else
         begin
           if ((Floats[2,ARow]<>0) and (ARow > 1)) then Ints[3,ARow]:= Ceil( abs(Floats[1,ARow-1]-Floats[1,ARow])/Floats[2,ARow] );
         end;
       end;
    3: begin // Время
         if ((Ints[ACol,ARow] < 0) or (Ints[ACol,ARow] > 600)) then
         begin
           Valid:= false;
           ErrorText:= 'Значение времени на этапе ' + IntToStr(ARow) + #13+' вне допустимого диапазона ( 0 - 600 ??? ).'
         end else
         begin
           if Ints[4,ARow] > 0 then Ints[3,ARow]:= 0 else if ((Floats[2,ARow]<>0) and (ARow > 1)) then Ints[3,ARow]:= Ceil( abs(Floats[1,ARow-1]-Floats[1,ARow])/Floats[2,ARow] );
         end;
       end;
    4: begin // Фикс. время
         if ((Ints[ACol,ARow] < 0) or (Ints[ACol,ARow] > 300)) then
         begin
           Valid:= false;
           ErrorText:= 'Значение фиксированного времени на этапе ' + IntToStr(ARow) + #13+' вне допустимого диапазона ( 0 - 300 ??? ).'
         end else
         begin
           if Ints[ACol,ARow] <> 0 then Ints[3,ARow]:= 0 else if ((Floats[2,ARow]<>0) and (ARow > 1)) then Ints[3,ARow]:= Ceil( abs(Floats[1,ARow-1]-Floats[1,ARow])/Floats[2,ARow] );
         end;
       end;
    5: begin // Код
         if (Ints[ACol,ARow] < 0) then
         begin
           Valid:= false;
           ErrorText:= 'Значение кода на этапе ' + IntToStr(ARow) + #13+' вне допустимого диапазона.'
         end else
         begin
         end;
       end;
    6: begin // Скорость сдвижки
         if ((Ints[ACol,ARow] < 0) or (Ints[ACol,ARow] > 30)) then
         begin
           Valid:= false;
           ErrorText:= 'Значение скорости сдвижки на этапе ' + IntToStr(ARow) + #13+' вне допустимого диапазона ( 0 - 30 ??? ).'
         end else
         begin
         end;
       end;
  end;
  if not Valid then
  begin
//    MainPagerPanel.BringToFront;
  //  spSkinPageControl1.ActivePageIndex:= 0;
    ShowMessageA('Ошибка',ErrorText,true,false);
    RegimeGrid.SetFocus;
  end
  else
  begin
    Duration:= 0;
    for i:=1 to RegimeGrid.RowCount-1 do if RegimeGrid.Ints[3,i]<>0 then Duration:= Duration + RegimeGrid.Ints[3,i]*60000;
    ProcessDuration:= Duration;
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.SetZonesTemperature(Value: TZonesDataArray);
var
  C,i,j: integer;
  T: double;
  X,Y,B: TVector;
  V: TMatrix;
  N: integer;
  RegResult: integer;
begin
  if Process.Resetting then exit;

  FZonesTemperature[0]:= Trunc(Value[0]*10)/10 - Parameters.LZShift - Parameters.CZShift;
  FZonesTemperature[1]:= Trunc(Value[1]*10)/10 - Parameters.CZShift;
  FZonesTemperature[2]:= Trunc(Value[2]*10)/10 - Parameters.RZShift - Parameters.CZShift;

    // 1 индекс - момент времени
    // 2 индекс - 0 : значение LZ,°C
    //            1 : значение CZ,°C
    //            2 : значение RZ,°C
    //            3 : ошибка = (реал - задание) LZ, °C
    //            4 : ошибка = (реал - задание) CZ, °C
    //            5 : ошибка = (реал - задание) RZ, °C

  with Process do
  begin
    DeadTimeMS:= GetTickCount - DeadTimeMS;
    DeadTime:= Round((DeadTimeMS/1000)*10)/10;
    DeadTimeMS:= GetTickCount;

    Data[0]:= Data[1];
    Data[1]:= Data[2];
    Data[2]:= Data[3];
    Data[3]:= Data[4];
    Data[4]:= Data[5];
    Data[5]:= Data[6];
    Data[6]:= Data[7];
    Data[7]:= Data[8];
    Data[8]:= Data[9];
    Data[9,0]:= FZonesTemperature[0];
    Data[9,1]:= FZonesTemperature[1];
    Data[9,2]:= FZonesTemperature[2];

    if Process.Running  then
    if not ESCPressed then
    if ((FZonesTemperature[0]>1100) or (FZonesTemperature[1]>1100) or (FZonesTemperature[2]>1100)) then  LongAlarm:= true;

    for j:=0 to 2 do
    begin
      N:= 9;
      DimVector(X,N);
      DimVector(Y,N);
      DimVector(B,1);
      DimMatrix(V,1,1);
      for i:=0 to N do
      begin
        X[i]:= i*DeadTime;
        Y[i]:= Data[i,j];
      end;
      try
      RegResult:= LinFit(X,Y,N,B,V);
      if RegResult = MAT_OK then  FZonesSpeed[j]:= Trunc(B[1]*1000)/1000                     // °C/???
      else
        FZonesSpeed[j]:= Trunc((FZonesSpeed[j]*0.3 + 0.7*(Data[9,j]-Data[0,j])/(9*DeadTime))*1000)/1000;      // °C/???
      except
        FZonesSpeed[j]:= Trunc((FZonesSpeed[j]*0.3 + 0.7*(Data[9,j]-Data[0,j])/(9*DeadTime))*1000)/1000;      // °C/???
      end;
      X:= nil;
      Y:= nil;
      B:= nil;
      V:= nil;
    end;

//    DiffV:= (3*Data[2,0]-4*Data[1,0]+Data[0,0])/(2*DeadTime);
//    DiffV:= (25*Data[4,0]-48*Data[3,0]+36*Data[2,0]-16*Data[1,0]+3*Data[0,0])/(12*DeadTime);
  end;

  if Process.Running  then
  begin
    Process.RegimeTemperature:= Regime.GetValue(FZonesTemperature[1],C);
    Code:= C;
  end;

  if Process.Running  then
  begin
    Process.Data[9,3]:= FZonesTemperature[0] - FZonesTemperature[1];//FZonesTemperature[0] - Process.RegimeTemperature;// + FZonesSpeed[0]*DeadTime*20  + 10*(FZonesTemperature[0] - FZonesTemperature[1]);
    Process.Data[9,4]:= FZonesTemperature[1] - Process.RegimeTemperature;// + FZonesSpeed[1]*DeadTime*10;
    Process.Data[9,5]:= FZonesTemperature[2] - FZonesTemperature[1];//FZonesTemperature[2] - Process.RegimeTemperature;// + FZonesSpeed[2]*DeadTime*10  + 10*(FZonesTemperature[2] - FZonesTemperature[1]);


    FRegulatorsVoltage[0]:= Limit(FRegulatorsVoltage[0] + Parameters.LZCoeffP*(
    (1+DeadTime*Parameters.LZCoeffI+Parameters.LZCoeffD/DeadTime)*(Process.Data[9,3])+
    (-1-2*Parameters.LZCoeffD/DeadTime)*(Process.Data[8,3])+
    (Parameters.LZCoeffD/DeadTime)*(Process.Data[7,3])  ), 0, 10);

    FRegulatorsVoltage[1]:= Limit(FRegulatorsVoltage[1] + Parameters.CZCoeffP*(
    (1+DeadTime*Parameters.CZCoeffI+Parameters.CZCoeffD/DeadTime)*(Process.Data[9,4])+
    (-1-2*Parameters.CZCoeffD/DeadTime)*(Process.Data[8,4])+
    (Parameters.CZCoeffD/DeadTime)*(Process.Data[7,4])  ), 0, 10);

    FRegulatorsVoltage[2]:= Limit(FRegulatorsVoltage[2] + Parameters.RZCoeffP*(
    (1+DeadTime*Parameters.RZCoeffI+Parameters.RZCoeffD/DeadTime)*(Process.Data[9,5])+
    (-1-2*Parameters.RZCoeffD/DeadTime)*(Process.Data[8,5])+
    (Parameters.RZCoeffD/DeadTime)*(Process.Data[7,5])  ), 0, 10);


   //Chart *****************************************

    with Chart do
    begin
      T:= HMS(Regime.CurrentProcessTick);
      if Regime.CurrentRegimeTick > 0 then
      begin
        Series3.AddXY(T,FZonesTemperature[0]);
        Series2.AddXY(T,FZonesTemperature[1]);
        Series4.AddXY(T,FZonesTemperature[2]);
      end
      else
      begin
        Series1.AddXY(T,Regime.Item[0].Temperature);
        Series3.AddXY(T,FZonesTemperature[0]);
        Series2.AddXY(T,FZonesTemperature[1]);
        Series4.AddXY(T,FZonesTemperature[2]);
      end;
    end;


    with RegimeInfoGrid do
    begin
      if Regime.CurrentProcessMin > RowCount-3 then
      begin
        InsertRows(RowCount-1,1);
        if Regime.CurrentProcessMin > 1 then Floats[6,Regime.CurrentProcessMin]:= FZonesTemperature[1] - Floats[6,Regime.CurrentProcessMin-1];
      end
      else
      Floats[6,Regime.CurrentProcessMin]:= FZonesSpeed[1]*60;
      Ints[0,Regime.CurrentProcessMin]:= Regime.CurrentProcessMin;
      Ints[1,Regime.CurrentProcessMin]:= Regime.CurrentStage;
      Ints[2,Regime.CurrentProcessMin]:= Regime.CurrentStageMin;
      Floats[3,Regime.CurrentProcessMin]:= FZonesTemperature[0];
      Floats[4,Regime.CurrentProcessMin]:= FZonesTemperature[1];
      Floats[5,Regime.CurrentProcessMin]:= FZonesTemperature[2];
    end;

    if iSevenSegmentInteger3.Value <> Regime.CurrentStage then
    begin
      iSevenSegmentInteger3.Value:= Regime.CurrentStage;
      if Regime.CurrentStage = 1 then PrepareGraph;
    end;

    try
    // StageLeftTime
      iSevenSegmentClock2.PowerOff:= false;
      if Regime.Item[Regime.CurrentStage].Speed = 0 then
      begin
        if Regime.StageLeftTick > 0 then StageLeftTime:= HMS(Regime.StageLeftTick);
      end
      else  StageLeftTime:= HMS( round( abs( (FZonesTemperature[1] - Regime.Item[Regime.CurrentStage].Temperature)/Regime.Item[Regime.CurrentStage].Speed*60 )*1000 ) );

    // ProcessLeftTime
      if Regime.ProcessLeftTick >= Regime.StageLeftTick then ProcessLeftTime:= HMS( Regime.ProcessLeftTick-Regime.StageLeftTick )+StageLeftTime;

    // BeforeSlideTime
      if ((Regime.SlideCount > SlideDone) and (Regime.CurrentStage > 0)) then
      begin
        iSevenSegmentClock1.PowerOff:= false;
        if Regime.BeforeSlideTick >= Regime.StageLeftTick then
        BeforeSlideTime:= HMS( Regime.BeforeSlideTick-Regime.StageLeftTick )+StageLeftTime;
      end
      else
//      if (Regime.CurrentStage > 0) then
      begin
        BeforeSlideTime:= 0;
        iSevenSegmentClock1.PowerOff:= true;

//        Process.AUTO:= False;
//        AutoButton.Down:= False;

      end;
    except
    end;

    // Status Text
    StatusLabel.Caption:= 'Процесс.  Начало в '+ Process.StartTime +'.  Окончание в '+ TimeToStr(Time+ProcessLeftTime,FormatSettings)
  end;

  LZ_Temp_Ind.Value:= RoundTo(FZonesTemperature[0],-1);
  CZ_Temp_Ind.Value:= RoundTo(FZonesTemperature[1],-1);
  RZ_Temp_Ind.Value:= RoundTo(FZonesTemperature[2],-1);

  LZ_Speed_Ind.Value:= RoundTo(FZonesSpeed[0]*60,-1);
  CZ_Speed_Ind.Value:= RoundTo(FZonesSpeed[1]*60,-1);
  RZ_Speed_Ind.Value:= RoundTo(FZonesSpeed[2]*60,-1);

  LZ_ProgressiLedBar.Position:= trunc(10*(10-FRegulatorsVoltage[0]));
  CZ_ProgressiLedBar.Position:= trunc(10*(10-FRegulatorsVoltage[1]));
  RZ_ProgressiLedBar.Position:= trunc(10*(10-FRegulatorsVoltage[2]));

end;


//------------------------------------------------------------------------------
procedure TMachine.LZ_Heater_TrackBarChange(Sender: TObject);
begin
  if (not Process.Running) then
  begin
    LZ_ProgressiLedBar.Position:= LZ_Heater_TrackBar.Position;
    FRegulatorsVoltage[0]:= Limit(10-LZ_Heater_TrackBar.Position/10,0,10);
  end;
end;


//------------------------------------------------------------------------------
procedure TMachine.CZ_Heater_TrackBarChange(Sender: TObject);
begin
  if (not Process.Running) then
  begin
    CZ_ProgressiLedBar.Position:= CZ_Heater_TrackBar.Position;
    FRegulatorsVoltage[1]:= Limit(10-CZ_Heater_TrackBar.Position/10,0,10);
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.RZ_Heater_TrackBarChange(Sender: TObject);
begin
  if (not Process.Running) then
  begin
    RZ_ProgressiLedBar.Position:= RZ_Heater_TrackBar.Position;
    FRegulatorsVoltage[2]:= Limit(10-RZ_Heater_TrackBar.Position/10,0,10);
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.HeaterRollOutPanelAfterCollapse(Sender: TObject);
begin
  LZ_ProgressiLedBar.Position:= 0;
  LZ_Heater_TrackBar.Position:=0;
    FRegulatorsVoltage[0]:= Limit(10,0,10);
  CZ_ProgressiLedBar.Position:= 0;
  CZ_Heater_TrackBar.Position:=0;
    FRegulatorsVoltage[1]:= Limit(10,0,10);
  RZ_ProgressiLedBar.Position:= 0;
  RZ_Heater_TrackBar.Position:=0;
    FRegulatorsVoltage[2]:= Limit(10,0,10);
end;
//------------------------------------------------------------------------------
procedure TMachine.SetAZonesTemperature(Value: TZonesDataArray);
begin
  T:= Value;
  FilterCZ.AddInputDataItem(Value[1]);
  FilterLZ.AddInputDataItem(Value[0]);
  delay(100);
  FilterRZ.AddInputDataItem(Value[2]);
end;

//------------------------------------------------------------------------------
procedure TMachine.SetRegimeFile(AValue: string);
var
  ARow: integer;
begin
  if FileExists(AValue) then
  begin
    FRegimeFile:= AValue;
    RegimeGrid.Clear;//NormalCells;
    RegimeGrid.LoadFromFile(AValue);
  end
  else
  with RegimeGrid do
  begin
    RowCount:= 20;
    for ARow:= 1 to RowCount-1 do
    begin
      Cells[2,ARow]:= '';
      Cells[3,ARow]:= '';
      Cells[5,ARow]:= '';
      Cells[6,ARow]:= '';
    end;
    SaveToFile(AValue);
    FRegimeFile:= AValue;
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.SetProcessDuration(AValue: DWORD);
begin
  FProcessDuration:= AValue;
  ProcessClock.Hours:= Trunc(FProcessDuration/3600000);
  ProcessClock.Minutes:= Ceil((FProcessDuration - Trunc(FProcessDuration/3600000)*3600000)/60000);
end;


//------------------------------------------------------------------------------
procedure TMachine.SetSliderPosition(AValue: TMechPosition);
begin
  if SliderPosition = AValue then exit;
  FSliderPosition:= AValue;
  case FSliderPosition of
    mpLeft  : begin iLedArrow1.ActiveColor:= clLime; iLedArrow1.Style:= ilasLeft; end;
    mpCenter: begin
                iLedArrow1.ActiveColor:= clRed;
                case SliderDirection of
                  mdLeftToRight: iLedArrow1.Style:= ilasRight;
                  mdRightToLeft: iLedArrow1.Style:= ilasLeft;
                end;
              end;
    mpRight : begin iLedArrow1.ActiveColor:= clLime; iLedArrow1.Style:= ilasRight; end;
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.SetSliderDirection(AValue: TMechDirection);
begin
  if SliderDirection = AValue then exit;
  FSliderDirection:= AValue;
end;

//------------------------------------------------------------------------------
procedure TMachine.SetCode(AValue: integer);
var
  CodeStr: string;
  DoSlide: boolean;
begin
  FCode:= AValue;
  CodeStr:= IntToStr(AValue);
  DoSlide:= false;
  while Length(CodeStr) <> 0 do
  begin
    case CodeStr[1] of
      '0' : CodeStr:= StringReplace(CodeStr,'0','',[rfReplaceAll]);
      '1' : begin
              if Process.SliderStartPosition = mpRight then
              SlideBuffer.Push(-1,trunc(SliderSpeedGrid.Floats[1,Regime.Item[Regime.CurrentStage].SlideSpeed]*1000),Regime.Item[Regime.CurrentStage].SlideSpeed)
              else SlideBuffer.Push(-1,4000,3);    //!!!!!!!! +-1..................
              DoSlide:= true;
              CodeStr:= StringReplace(CodeStr,'1','',[]);
            end;
      '2' : begin
              if Process.SliderStartPosition = mpLeft then
              SlideBuffer.Push(1,trunc(SliderSpeedGrid.Floats[1,Regime.Item[Regime.CurrentStage].SlideSpeed]*1000),Regime.Item[Regime.CurrentStage].SlideSpeed)
              else SlideBuffer.Push(1,4000,3);
              DoSlide:= true;
              CodeStr:= StringReplace(CodeStr,'2','',[]);
            end;
      '3' : CodeStr:= StringReplace(CodeStr,'3','',[]);
      '4' : CodeStr:= StringReplace(CodeStr,'4','',[]);
      '5' : CodeStr:= StringReplace(CodeStr,'5','',[]);
      '6' : begin
              Alarm:= true;
              CodeStr:= StringReplace(CodeStr,'6','',[rfReplaceAll]);
            end;
      '7' : begin
              CodeStr:= '';
              StopProcess(true);
              Exit;
            end;
      '8' : CodeStr:= StringReplace(CodeStr,'8','',[]);
      '9' : CodeStr:= StringReplace(CodeStr,'9','',[]);
    end;
  end;
  if DoSlide then
  begin

    Delay(2000);
    if Process.AUTO then
    begin
      SlideFlag:= true;
      SliderSpeedometer.Time:= 0;
      SliderSpeedometer.CountTimerEnabled:= true;
      Alarm:= true;
    end  
    else
    begin
      while (not SlideBuffer.Empty) do SlideInfo:= SlideBuffer.Pop;
      Alarm:= true;
    end;
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.SetSlideDone(AValue: integer);
begin
  FSlideDone:= AValue;
  iSevenSegmentInteger4.Value:= FSlideDone;
  SliderSpeedometer.CountTimerEnabled:= false;
  SliderSpeedClock.CountTimerEnabled:= false;
  if Process.Running then with RegimeInfoGrid do
  begin
    if Regime.CurrentProcessMin > RowCount-3 then InsertRows(RowCount-1,10);
    Cells[7,Regime.CurrentProcessMin]:= IntToStr(FSlideDone)+' -> ' + IntToStr(round((GetTickCount-SlideStartTime)/1000));
  end;

  FAlarm:= false;
end;

//------------------------------------------------------------------------------
procedure TMachine.SetProcessLeftTime(AValue: TDateTime);
begin
  FProcessLeftTime:= AValue;
end;

//------------------------------------------------------------------------------
procedure TMachine.SetStageLeftTime(AValue: TDateTime);
begin
  FStageLeftTime:= AValue;
  iSevenSegmentClock2.PowerOff:= False;
  iSevenSegmentClock2.Time:= FStageLeftTime;
end;

//------------------------------------------------------------------------------
procedure TMachine.SetBeforeSlideTime(AValue: TDateTime);
begin
  FBeforeSlideTime:= AValue;
  iSevenSegmentClock1.PowerOff:= False;
  iSevenSegmentClock1.Time:= FBeforeSlideTime;
end;

//------------------------------------------------------------------------------
procedure TMachine.SetAlarm(AAlarm: boolean);
begin
  if FAlarm = AAlarm then exit;
  if AAlarm then
  begin
    PlaySound(PChar('machine'+IntToStr(Self.Tag)+'.wav'),0,SND_ASYNC);
  end
  else
  begin
    PlaySound(nil,0,0);
  end;
  FAlarm:= AAlarm;
end;

//------------------------------------------------------------------------------
procedure TMachine.SetCTP(AValue: Extended);
begin
  FCTP:= AValue;
  Control_Temp_Ind.Value:= FCTP;
end;

//------------------------------------------------------------------------------
procedure TMachine.StartProcess;
begin
  RegimeInfoGrid.ClearNormalCells;
  RegimeInfoGrid.RowCount:= 20;
  RegimeGrid.Update;
  ProcessLeftTime:= 0;
  StageLeftTime:= 0;
  BeforeSlideTime:= 0;
  SlideDone:= 0;
  FRegulatorsVoltage[0]:= 0;
  FRegulatorsVoltage[1]:= 0;
  FRegulatorsVoltage[2]:= 0;
  Regime.Active:= true;
  Process.Running:= true;

  HeaterRollOutPanel.Collapsed:= True;
  HeaterRollOutPanel.Enabled:= False;

  iSevenSegmentInteger1.Value:= Regime.StageCount-1;
  iSevenSegmentInteger2.Value:= Regime.SlideCount;
  Process.StartTime:= FormatDateTime('h:mm', SystemTimeToDateTime(Regime.ProcessStartTime));
  ESCPressed:= false;

  with Chart do
  begin
    Series1.Clear;
    Series2.Clear;
    Series3.Clear;
    Series4.Clear;
    LeftAxis.SetMinMax(ZonesTemperature[1],Regime.Item[0].Temperature*1.1);
    BottomAxis.SetMinMax(0,10.1/24/60);
  end;

  StatusLabel.Caption:= 'Процесс.';

  Process.SliderStartPosition:= SliderPosition;
  if SliderPosition = mpLeft then
  begin
    Process.SliderFinishPosition:= mpRight;
    iLedArrow1.ActiveColor:= clLime;
    iLedArrow1.Style:= ilasLeft;
  end
  else
  begin
    Process.SliderFinishPosition:= mpLeft;
    iLedArrow1.ActiveColor:= clLime;
    iLedArrow1.Style:= ilasRight;
  end;

  
  SliderDirection:= mdNone;

  Randomize;
  ResetTimer.Interval:= 60000 + random(10000);
  ResetTimer.Enabled:= true;
//  StatusLabel.Enabled:=False;
end;

//------------------------------------------------------------------------------
procedure TMachine.StopProcess(Condition: boolean);
begin
  Application.ProcessMessages;
  ResetTimer.Enabled:= false;

  Regime.Active:= false;
  FRegulatorsVoltage[0]:= 10;
  FRegulatorsVoltage[1]:= 10;
  FRegulatorsVoltage[2]:= 10;

  // Сохранение данных процесса
  SaveProcessData;

  Process.Running:= false;

  if Condition then
  begin
    StatusLabel.Caption:= 'ПРОЦЕСС ЗАКОНЧЕН';
  end
  else StatusLabel.Caption:= 'ПРОЦЕСС ОСТАНОВЛЕН';

  StartButton.Down:= false;
  AutoButton.Down:= False;
  Process.AUTO:= False;
  iSevenSegmentClock1.PowerOff:= true;
  iSevenSegmentClock2.PowerOff:= true;
  HeaterRollOutPanel.Enabled:= True;
  SliderSpeedometer.PowerOff:= true;
//  StatusLabel.Enabled:= True;
  Delay(1000);
end;

//------------------------------------------------------------------------------
procedure TMachine.PrepareGraph;
var
  MaxIndex, i: integer;
  ASlide: boolean;
  Value, T: double;
begin
  Delay(10);
  if ((Regime.CurrentRegimeTick <= 0) and (Process.Running)) then exit;
  if ((Regime.CurrentRegimeTick > 0) and (Process.Running)) then T:= HMS(Regime.RegimeStartTick-Regime.ProcessStartTick) else T:=0;
  begin
    Chart.LeftAxis.SetMinMax(Regime.Item[Regime.StageCount-2].Temperature*0.99,Regime.Item[0].Temperature*1.01);
    Chart.BottomAxis.SetMinMax(0,HMS(ProcessDuration));
  end;

  MaxIndex:= Regime.ProcessDuration div 1000;
  Slides:= nil;
  Series1.Clear;
  if not Process.Running then
  begin
    Series1.Clear;
    Series2.Clear;
    Series3.Clear;
    Series4.Clear;
  end;
  for i:=0 to MaxIndex do
  begin
    Value:= Regime.GetValue2(i,ASlide);
    Series1.AddXY(HMS(i*1000)+T,Value);
    if ASlide then
    begin
      SetLength(Slides,length(Slides)+1);
      Slides[high(Slides)]:= Value;
    end;
  end;
  Chart.LeftAxis.SetMinMax(Regime.Item[Regime.StageCount-2].Temperature*0.99,Regime.Item[0].Temperature*1.01);
  Chart.BottomAxis.SetMinMax(0,HMS(ProcessDuration));
end;

//------------------------------------------------------------------------------
procedure TMachine.SaveProcessData;
var
  FileName: string;
  FileExt: string;
  Dir: string;
  Day: word;
  Month: word;
  Year: word;
  Hour: word;
  Min: word;
  Info: TIniFile;
  S: TStringList;
  i: integer;
begin
  if GetFreeDiskSize('c:\') < 1000 then
  if ShowMessageA('Напоминание','Данные процесса не могут быть сохранены'+#13#10+' из-за нехватки свободного места на диске.'+#13#10+ 'Произвести очистку диска ?'+#13#10,true,true) = mrOK then
  begin
    DeleteFile2(ExtractFilePath(Application.ExeName)+ 'Processes\Machine'+ IntToStr(Tag) + '\Passed\', '');
  end else exit;

  Dir:= ExtractFilePath(Application.ExeName)+ 'Processes\Machine'+ IntToStr(Tag) + '\Passed\';
  if not DirectoryExists(Dir) then CreateDir(Dir);

  S:= TStringList.Create;

  with Regime do
  begin
    Day:= ProcessStartTime.wDay;
    Month:= ProcessStartTime.wMonth;
    Year:= ProcessStartTime.wYear;
    Hour:= ProcessStartTime.wHour;
    Min:= ProcessStartTime.wMinute;
  end;


  FileName:= IntToStr2(Day)+'_'+IntToStr2(Month)+'_'+IntToStr(Year)+'_'+IntToStr2(Hour)+'_'+IntToStr2(Min);
  FileExt:= '.dat';
  RegimeGrid.SaveToFile(Dir+FileName+FileExt);
  S.Add(Dir+FileName+FileExt);
  FileExt:= '.tbl';
  TableInfoGrid.SaveToFile(Dir+FileName+FileExt);
  S.Add(Dir+FileName+FileExt);
  FileExt:= '.rgm';
  RegimeInfoGrid.SaveToFile(Dir+FileName+FileExt);
  S.Add(Dir+FileName+FileExt);
  FileExt:= '.tee';
  SaveChartToFile(Dir+FileName+FileExt);
  S.Add(Dir+FileName+FileExt);
 
  FileExt:= '.ini';
  Info:= TIniFile.Create(Dir+FileName+FileExt);
  Info.WriteInteger('StartTime','Day',Regime.ProcessStartTime.wDay);
  Info.WriteInteger('StartTime','Month',Regime.ProcessStartTime.wMonth);
  Info.WriteInteger('StartTime','Year',Regime.ProcessStartTime.wYear);
  Info.WriteInteger('StartTime','Hour',Regime.ProcessStartTime.wHour);
  Info.WriteInteger('StartTime','Min',Regime.ProcessStartTime.wMinute);
  Info.WriteInteger('StopTime','Day',Regime.ProcessStopTime.wDay);
  Info.WriteInteger('StopTime','Month',Regime.ProcessStopTime.wMonth);
  Info.WriteInteger('StopTime','Year',Regime.ProcessStopTime.wYear);
  Info.WriteInteger('StopTime','Hour',Regime.ProcessStopTime.wHour);
  Info.WriteInteger('StopTime','Min',Regime.ProcessStopTime.wMinute);
  for i:=0 to high(Slides) do
  begin
    Info.WriteInteger('Slides',IntToStr(i+1),round(Slides[i]));
  end;
  S.Add(Dir+FileName+FileExt);
  SkinZip.ZipFiles(Dir+FileName+'.zip',S);
  for i:= 0 to S.Count-1 do DeleteFile(S.Strings[i]);
  Info.Free;
  S.Free;

  DeleteFile2(ExtractFilePath(Application.ExeName)+ 'Processes\Machine'+ IntToStr(Tag) + '\','.dat');
  Delay(1000);
end;


//------------------------------------------------------------------------------
procedure TMachine.LoadProcessData(AFile: string);
var
  FileName: string;
  FileExt: string;
  Dir: string;
  Info: TIniFile;
  i: integer;
  S: TStringList;
begin
  Dir:= ExtractFilePath(AFile);
  FileName:= ExtractFileName(AFile);

  SkinUnZip.UnZipToDir(Dir+FileName,Dir);

  FileName:= ChangeFileExt(FileName,'.ini');
  Info:= TIniFile.Create(Dir+FileName+FileExt);
{
  vrNum1.Value:= Info.ReadInteger('StartTime','Day',0);
  vrNum2.Value:= Info.ReadInteger('StartTime','Month',0);
  vrNum3.Value:= Info.ReadInteger('StartTime','Year',0);
  vrClock1.Hours:= Info.ReadInteger('StartTime','Hour',0);
  vrClock1.Minutes:= Info.ReadInteger('StartTime','Min',0);
  vrClock3.Hours:= Info.ReadInteger('StopTime','Hour',0);
  vrClock3.Minutes:= Info.ReadInteger('StopTime','Min',0);
  }
  S:= TStringList.Create;
  Info.ReadSectionValues('Slides',S);
  HistorySlides:= nil;
  SetLength(HistorySlides,S.Count);
  for i:=0 to S.Count-1 do
  begin
    HistorySlides[i]:= Info.ReadInteger('Slides',IntToStr(i+1),0);
  end;
  FileName:= ChangeFileExt(FileName,'.tbl');
  HistoryTableGrid.Clear;
  HistoryTableGrid.LoadFromFile(Dir+FileName);
  HistoryTableGrid.DefaultColWidth:= 60;
{
  with HistoryTableGrid do
  for i:=1 to High(RowCount) do
  begin
    Ints[0,i]:= StrToInt(Cells[0,i]);
    Ints[1,i]:= StrToInt(Cells[1,i]);
    Ints[2,i]:= StrToInt(Cells[2,i]);
    Floats[3,i]:= StrToFloat(Cells[3,i]);
    Floats[4,i]:= StrToFloat(Cells[4,i]);
    Floats[5,i]:= StrToFloat(Cells[5,i]);
    Floats[6,i]:= StrToFloat(Cells[6,i]);
  end;
}
  FileName:= ChangeFileExt(FileName,'.rgm');
  HistoryRegimeGrid.Clear;
  HistoryRegimeGrid.LoadFromFile(Dir+FileName);
  HistoryRegimeGrid.DefaultColWidth:= 60;
  FileName:= ChangeFileExt(FileName,'.tee');
  LoadChartFromFile(HistoryChart, Dir+FileName);

  S.Free;
  Info.Free;
  DeleteFile2(ExtractFilePath(Application.ExeName)+ 'Processes\Machine'+ IntToStr(Tag)+ '\Passed\','.zip');
end;

//------------------------------------------------------------------------------
procedure TMachine.SaveChartToFile(AFile: string);
var
  i,j,k,l: integer;
  F: File;
  Rec: TChartDataPoints;
begin
  AssignFile(F, AFile);
  Rewrite(F,SizeOf(Rec));
try
  for l:=0 to high(Rec.X) do begin Rec.X[l]:= 0; Rec.Y[l]:= 0;  end;

  for i:=0 to Chart.SeriesCount-1 do
  begin
    k:= 0;
    Rec.Series:= i;
    for j:=0 to Chart.Series[i].Count-1 do
    begin
      Rec.X[k]:= Chart.Series[i].XValue[j];
      Rec.Y[k]:= Chart.Series[i].YValue[j];
      Inc(k);
      if k > high(Rec.X) then
      begin
        BlockWrite(F,Rec,1);
        for l:=0 to high(Rec.X) do begin Rec.X[l]:= 0; Rec.Y[l]:= 0;  end;
        k:= 0;
      end;
    end;
  end;

finally
  CloseFile(F);
end;
end;

//------------------------------------------------------------------------------
procedure TMachine.LoadChartFromFile(AChart: TChart; AFile: string);
var
  i: integer;
  F: File;
  Rec: TChartDataPoints;
begin
  AssignFile(F, AFile);
  Reset(F,SizeOf(Rec));
  for i:=0 to AChart.SeriesCount-1 do AChart.Series[i].Clear;
try
  while not Eof(F) do
  begin
    BlockRead(F,Rec,1);
    for i:=0 to high(Rec.X) do
    begin
      if ((Rec.Series < AChart.SeriesCount) and (Rec.Y[i] <> 0)) then AChart.Series[Rec.Series].AddXY(Rec.X[i],Rec.Y[i]);
    end;
  end;
finally
  CloseFile(F);
end;
end;

//------------------------------------------------------------------------------
procedure TMachine.SaveResetData;
var
  FileName: string;
  FileExt: string;
  Dir: string;
  Info: TIniFile;
  StopTime: TDateTime;
begin
  Dir:= ExtractFilePath(Application.ExeName)+ 'Processes\Machine'+ IntToStr(Tag) + '\';

  FileName:= 'reset';
  FileExt:= '.tbl';
  TableInfoGrid.SaveToFile(Dir+FileName+FileExt);
  FileExt:= '.rgm';
  RegimeInfoGrid.SaveToFile(Dir+FileName+FileExt);
  FileExt:= '.tee';
  SaveChartToFile(Dir+FileName+FileExt);

  StopTime:= Now;
  FileExt:= '.ini';
  Info:= TIniFile.Create(Dir+FileName+FileExt);

  Info.WriteInteger('StartTime','Day',Regime.ProcessStartTime.wDay);
  Info.WriteInteger('StartTime','Month',Regime.ProcessStartTime.wMonth);
  Info.WriteInteger('StartTime','Year',Regime.ProcessStartTime.wYear);
  Info.WriteInteger('StartTime','Hour',Regime.ProcessStartTime.wHour);
  Info.WriteInteger('StartTime','Min',Regime.ProcessStartTime.wMinute);
  Info.WriteInteger('StopTime','Day', DayOf(StopTime));
  Info.WriteInteger('StopTime','Month',MonthOf(StopTime));
  Info.WriteInteger('StopTime','Year',YearOf(StopTime));
  Info.WriteInteger('StopTime','Hour',HourOf(StopTime));
  Info.WriteInteger('StopTime','Min',MinuteOf(StopTime));

  Info.WriteInteger('ResetInfo','Stage',Regime.CurrentStage);
  Info.WriteInteger('ResetInfo','SlideDone',SlideDone);
  Info.WriteFloat('ResetInfo','RegulatorLZ',RegulatorsVoltage[0]);
  Info.WriteFloat('ResetInfo','RegulatorCZ',RegulatorsVoltage[1]);
  Info.WriteFloat('ResetInfo','RegulatorRZ',RegulatorsVoltage[2]);

  Info.WriteInteger('ResetInfo','ProcessStartTick',Regime.ProcessStartTick);
  Info.WriteInteger('ResetInfo','RegimeStartTick',Regime.RegimeStartTick);
  Info.WriteInteger('ResetInfo','StageStartTick',Regime.StageStartTick);
  Info.WriteBool('ResetInfo','AUTO',Process.AUTO);

  case Process.SliderStartPosition of
    mpLeft  : Info.WriteInteger('ResetInfo','SliderStartPosition',0);
    mpRight : Info.WriteInteger('ResetInfo','SliderStartPosition',1);
  end;

  Info.WriteInteger('ResetInfo','LastTick',GetTickCount+ResetTickShift);

  Info.Free;
end;
//------------------------------------------------------------------------------
function TMachine.LoadResetData: boolean;
var
  FileName: string;
  FileExt: string;
  Dir: string;
  Info: TIniFile;
  StopTime: TDateTime;
  Day: word;
  Month: word;
  Year: word;
  p1, p2, p3: DWORD;
  p4: integer;
begin
  Result:= true;
  Dir:= ExtractFilePath(Application.ExeName)+ 'Processes\Machine'+ IntToStr(Tag) + '\';
  FileName:= 'reset';
  FileExt:= '.ini';
  Info:= TIniFile.Create(Dir+FileName+FileExt);

  Day:= Info.ReadInteger('StopTime','Day', 0);
  Month:= Info.ReadInteger('StopTime','Month',0);
  Year:= Info.ReadInteger('StopTime','Year',0);

  StopTime:= Now;
  if not ( (DayOf(StopTime)=Day) and (MonthOf(StopTime)=Month) and (YearOf(StopTime)=Year) ) then
  begin
    Info.Free;
    Result:= false;
    exit;
  end;

  FileExt:= '.tbl';
  TableInfoGrid.LoadFromFile(Dir+FileName+FileExt);
  FileExt:= '.rgm';
  RegimeInfoGrid.LoadFromFile(Dir+FileName+FileExt);
  FileExt:= '.tee';
  LoadChartFromFile(Chart,Dir+FileName+FileExt);

  with Regime.ProcessStartTime do
  begin
    wDay:= Info.ReadInteger('StartTime','Day',DayOf(StopTime));
    wMonth:= Info.ReadInteger('StartTime','Month',MonthOf(StopTime));
    wYear:= Info.ReadInteger('StartTime','Year',YearOf(StopTime));
    wHour:= Info.ReadInteger('StartTime','Hour',HourOf(StopTime));
    wMinute:= Info.ReadInteger('StartTime','Min',MinuteOf(StopTime));
  end;
  Process.StartTime:= FormatDateTime('hh:mm', SystemTimeToDateTime(Regime.ProcessStartTime), FormatSettings);

  FSlideDone:= Info.ReadInteger('ResetInfo','SlideDone',SlideDone);
  iSevenSegmentInteger4.Value:= FSlideDone;

  FRegulatorsVoltage[0]:= Info.ReadFloat('ResetInfo','RegulatorLZ',0);
  FRegulatorsVoltage[1]:= Info.ReadFloat('ResetInfo','RegulatorCZ',0);
  FRegulatorsVoltage[2]:= Info.ReadFloat('ResetInfo','RegulatorRZ',0);

  p1:= Info.ReadInteger('ResetInfo','ProcessStartTick',Regime.ProcessStartTick);
  p2:= Info.ReadInteger('ResetInfo','RegimeStartTick',Regime.RegimeStartTick);
  p3:= Info.ReadInteger('ResetInfo','StageStartTick',Regime.StageStartTick);
  Process.AUTO:= Info.ReadBool('ResetInfo', 'AUTO', true);


  p4:= Info.ReadInteger('ResetInfo', 'SliderStartPosition', 0);
  case p4 of
    0 : begin Process.SliderStartPosition:= mpLeft; Process.SliderFinishPosition:= mpRight; end;
    1 : begin Process.SliderStartPosition:= mpRight; Process.SliderFinishPosition:= mpLeft; end;
  end;

  p4:= Info.ReadInteger('ResetInfo','Stage',0);
  iSevenSegmentInteger3.Value:= p4;

  ResetTickShift:= Info.ReadInteger('ResetInfo','LastTick',0);

  Regime.Reset(p1, p2, p3, p4);

  SlideDone:= Info.ReadInteger('ResetInfo','SlideDone',SlideDone);
  iSevenSegmentInteger4.Value:= FSlideDone;

  Info.Free;
end;

//------------------------------------------------------------------------------
procedure TMachine.ResetProcess;
begin
  if Process.Running then exit;

  if LoadResetData then
  begin

    with RegimeInfoGrid do
    begin
      if Regime.CurrentProcessMin > RowCount-3 then InsertRows(RowCount-1,Regime.CurrentProcessMin - RowCount+3);
      Cells[7,Regime.CurrentProcessMin]:= 'перезапуск';
    end;

    StartButton.Down:= true;
    AutoButton.Down:= Process.AUTO;
    Process.Running:= true;
  end
  else
  begin
    Regime.Active:= false;
    ShowMessageA('Ошибка','Невозможно перезапустить процесс.',true,false);
    exit;
  end;

  ProcessLeftTime:= 0;
  StageLeftTime:= 0;
  BeforeSlideTime:= 0;
  SlideDone:= 0;
  iSevenSegmentInteger1.Value:= Regime.StageCount-1;
  iSevenSegmentInteger2.Value:= Regime.SlideCount;

  StatusLabel.Caption:= 'Перезапуск процесса';

  Randomize;
  ResetTimer.Interval:= 60000 + random(10000);
  ResetTimer.Enabled:= true;
end;

//------------------------------------------------------------------------------
procedure TMachine.ResetToStart;
begin
  StatusLabel.Caption:= '';

  ProcessLeftTime:= 0;
  StageLeftTime:= 0;
  BeforeSlideTime:= 0;
  SlideDone:= 0;
{  FRegulatorsVoltage[0]:= 10;
  FRegulatorsVoltage[1]:= 10;
  FRegulatorsVoltage[2]:= 10;
}  
{  OpenFurnaceAction10.Enabled:= false;
  OpenFurnaceAction20.Enabled:= false;
  OpenFurnaceAction50.Enabled:= false;
  CloseFurnaceAction.Enabled:= false;
}
  iSevenSegmentInteger1.Value:= 0;
  iSevenSegmentInteger2.Value:= 0;
  iSevenSegmentInteger3.Value:= 0;
  iSevenSegmentInteger4.Value:= 0;

  iSevenSegmentClock1.Time:= 0;
  iSevenSegmentClock1.PowerOff:= true;
  iSevenSegmentClock2.Time:= 0;
  iSevenSegmentClock2.PowerOff:= true;
  SliderSpeedometer.Time:= 0;
  SliderSpeedometer.PowerOff:= true;

  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  Series4.Clear;

  Regime.Free;
  Regime:= TRegime.Create;
  BuildRegime;
  SlideBuffer:= nil;
  SlideBuffer:= TFIFOBuffer.Create;

  RegimeInfoGrid.ClearNormalCells;
  RegimeInfoGrid.RowCount:= 20;
end;


//------------------------------------------------------------------------------
procedure TMachine.FilterRZNextPosterioriEstimation(Sender: TObject;
  Estimation: Double);
begin
  T[2]:= Estimation;
  ZonesTemperature:= T;
end;

//------------------------------------------------------------------------------
procedure TMachine.FilterCZNextItem(Sender: TObject; Estimation: Double);
begin
  T[1]:= Estimation;
end;

//------------------------------------------------------------------------------
procedure TMachine.FilterLZNextItem(Sender: TObject; Estimation: Double);
begin
  T[0]:= Estimation;
end;


//------------------------------------------------------------------------------
procedure TMachine.TuneButtonClick(Sender: TObject);
begin
  MainPager.ActivePageIndex:=2;
end;

//------------------------------------------------------------------------------
procedure TMachine.StartButtonClick(Sender: TObject);
var
  T: TSystemTime;
begin
  if StartClock.CountTimerEnabled then
  begin
    MainPager.ActivePageIndex:=0;
    StatusLabel.Caption:= '';
    StartButton.Down:= false;
    StartClock.ResetToZero;
    StartClock.CountTimerEnabled:= false;
    exit;
  end;
  Application.ProcessMessages;
  if StartButton.Down then
  begin
    MinutesUpDown.Position:= 0;
    HoursUpDown.Position:= 0;
    MainPager.ActivePageIndex:=3;
    StatusLabel.Caption:= 'ЗАДЕРЖКА ЗАПУСКА ПРОЦЕССА';
    StartClock.ResetToZero;
    StartClock.Minutes:= 1;
    StartClock.CountTimerEnabled:= true;
  end
  else
  begin
    if Process.Running then if ShowMessageA('Предупреждение','Остановить процесс ?',true,true)=mrOK then StopProcess(false) else StartButton.Down:= true;
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.StartClockCountDownComplete(Sender: TObject);
begin
  MainPager.ActivePageIndex:=0;
  StartProcess;
end;

//------------------------------------------------------------------------------
procedure TMachine.SecondsStartButtonClick(Sender: TObject);
begin
  StartClock.ResetToZero;
  MainPager.ActivePageIndex:=0;
  StartProcess;
end;

//------------------------------------------------------------------------------
procedure TMachine.StartButtonPaint(Sender: TObject; Bmp: TBitmap);
begin
  if StartButton.Down then
  begin
    StartButton.Caption:= 'СТОП';
    StartIndicator.Appearance.Fill.Color:= clRed;
  end
  else
  begin
    StartButton.Caption:= 'ПУСК';
    StartIndicator.Appearance.Fill.Color:= $0000D500;
  end;
end;

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
procedure TMachine.AutoButtonClick(Sender: TObject);
begin
  Application.ProcessMessages;
  Process.AUTO:= AutoButton.Down;
end;

//------------------------------------------------------------------------------
procedure TMachine.AutoButtonPaint(Sender: TObject; Bmp: TBitmap);
begin
  if AutoButton.Down then
  begin
    AutoButton.Caption:= 'АВТ';
    AutoIndicator.Appearance.Fill.Color:= clRed;
  end
  else
  begin
    AutoButton.Caption:= 'РУЧ';
    AutoIndicator.Appearance.Fill.Color:= $0000D500;
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.ResetTimerTimer(Sender: TObject);
begin
  SaveResetData;
end;

//------------------------------------------------------------------------------
procedure TMachine.HistoryButtonClick(Sender: TObject);
var
  CalendarForm: TCalendarForm;
begin
  CalendarForm:= TCalendarForm.Create(Self, Tag);
  try
    if CalendarForm.ShowModal = mrOK then
    begin
      MainPager.ActivePageIndex:= 4;
      LoadProcessData(CalendarForm.FileName);
    //  MainPagerPanel.BringToFront;
    //  spSkinPageControl1.ActivePageIndex:= 2;
      StatusLabel.Caption:= 'ДАННЫЕ ПРОШЕДШЕГО ПРОЦЕССА';
    end
  finally
    CalendarForm.Free;
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.sSpeedButton14Click(Sender: TObject);
var
  CalendarForm: TCalendarForm;
  FileName: string;
  Dir: string;
begin
  CalendarForm:= TCalendarForm.Create(Self, Tag);
  try
    if CalendarForm.ShowModal = mrOK then
    begin
      Dir:= ExtractFilePath(CalendarForm.FileName);
      FileName:= ExtractFileName(CalendarForm.FileName);
      SkinUnZip.UnZipToDir(Dir+FileName,Dir);
      FileName:= ChangeFileExt(FileName,'.dat');
      RegimeFile:= Dir+FileName;
      DeleteFile2(ExtractFilePath(Application.ExeName)+ 'Processes\Machine'+ IntToStr(Tag) + '\Passed\','.zip');
    end;
  finally
    CalendarForm.Free;
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.HistoryOKButtonClick(Sender: TObject);
begin
  MainPager.ActivePageIndex:= 0;
  StatusLabel.Caption:= '';
end;

//------------------------------------------------------------------------------
procedure TMachine.Command(AValue: Word; Shift: TShiftState);
begin
  if Shift = [] then
  case AValue of
    0: begin HistoryPager.ActivePageIndex:= 0; ActivePager.ActivePageIndex:= 0; end;
    1: begin HistoryPager.ActivePageIndex:= 1; ActivePager.ActivePageIndex:= 1;{ RegimeInfoGrid.SetFocus; RegimeInfoGrid.Row:= Regime.CurrentProcessMin;} end;
    2: begin HistoryPager.ActivePageIndex:= 2; ActivePager.ActivePageIndex:= 2; end;
    3: begin Legend.Visible:= not Legend.Visible;    end;
    VK_ESCAPE: begin
                 Alarm:= false;
                 LongAlarm:= false;
                 ESCPressed:= true;
               end;
  end;
  if Shift = [ssCtrl] then
  case AValue of
    0: begin  end;
    1: begin  end;
    2: begin  end;
    3: ;
  end;
end;

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
procedure TMachine.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  SendMessage(Application.MainForm.Handle,WM_KEYDOWN,Key,0);
end;

//------------------------------------------------------------------------------
procedure TMachine.SliderTestButtonLeftClick(Sender: TObject);
var
  T: DWORD;
begin
  SlideBuffer.Push(-1,trunc(SliderSpeedGrid.Floats[1,SliderSpeedGrid.Row]*1000),round(SliderSpeedGrid.Ints[0,SliderSpeedGrid.Row]));
  SlideFlag:= true;
//  FurnaceBuffer.Push(1,1,30);
//  FurnaceFlag:= true;
  SliderSpeedClock.ResetToZero;
  SliderSpeedClock.CountTimerEnabled:= true;
  T:= GetTickCount;
  while SliderPosition <> mpLeft do
  begin
    Application.ProcessMessages;
    if (GetTickCount-T)/1000 > 30 then break;
  end;
  SliderSpeedClock.CountTimerEnabled:= false;
end;

//------------------------------------------------------------------------------
procedure TMachine.SliderTestButtonRightClick(Sender: TObject);
var
  T: DWORD;
begin
  SlideBuffer.Push(1,trunc(SliderSpeedGrid.Floats[1,SliderSpeedGrid.Row]*1000),round(SliderSpeedGrid.Ints[0,SliderSpeedGrid.Row]));
  SlideFlag:= true;
//  FurnaceBuffer.Push(-1,1,30);
//  FurnaceFlag:= true;
  SliderSpeedClock.ResetToZero;
  SliderSpeedClock.CountTimerEnabled:= true;
  T:= GetTickCount;
  while SliderPosition <> mpRight do
  begin
    Application.ProcessMessages;
    if (GetTickCount-T)/1000 > 30 then break;
  end;
  SliderSpeedClock.CountTimerEnabled:= false;
end;

//------------------------------------------------------------------------------
procedure TMachine.RegimeGridAutoAddRow(Sender: TObject; ARow: Integer);
begin
  RegimeGrid.AutoNumberCol(0);
end;

//------------------------------------------------------------------------------
procedure TMachine.RegimeGridGetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: String);
begin
  if RegimeGrid.Cells[ACol,ARow] <> '' then
  begin
    IsFloat := (((ACol = 1) or (ACol = 2)) and (ARow > 0));
//    FloatFormat := '%.1f';
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.RegimeGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    word('I'): RegimeGrid.InsertRows(RegimeGrid.Row, 1);
    word('D'): if RegimeGrid.Cells[RegimeGrid.Col,RegimeGrid.Row] <> '' then RegimeGrid.RemoveRows(RegimeGrid.Row, 1);
  end;
  RegimeGrid.AutoNumberCol(0);
end;

//------------------------------------------------------------------------------
procedure TMachine.RegimeGridKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ',' then Key:= '.';
end;

//------------------------------------------------------------------------------
procedure TMachine.RegimeGridGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  if (Odd(ARow) and (ARow > 0) and (ACol > 0)) then ABrush.Color:= $00F0F0F0;
end;

//------------------------------------------------------------------------------
procedure TMachine.ClearRegimeGridClick(Sender: TObject);
begin
  RegimeGrid.ClearNormalCells;
end;

//------------------------------------------------------------------------------
procedure TMachine.ChartAfterDraw(Sender: TObject);
var
  i: integer;
  Pos: integer;
  T, Offset: double;
  vMax, vMin: double;
  R: TRect;
begin
  if not ((Regime.CurrentRegimeTick <= 0) and (Process.Running)) then
  for i:=0 to high(Slides) do with Chart.Canvas do
  begin
    Pen.Color:= clLime;
    Pen.Style:= psDot;
    Pen.Mode:= pmCopy;
    Pos:= Series1.CalcPosValue(Slides[i]);
    if ((Pos > Chart.ChartRect.Top) and (Pos < Chart.ChartRect.Bottom) ) then
    Line(Chart.ChartRect.Left,Pos,Chart.ChartRect.Right,Pos);
  end;

  if Process.Running then
  begin
    T:= HMS(Regime.CurrentProcessTick);
    if T >= Chart.BottomAxis.Maximum then
    begin
      Offset:= (Chart.BottomAxis.Maximum - Chart.BottomAxis.Minimum)/2;
      Chart.BottomAxis.Scroll(Offset,false);
    end;
    if MaxValue2(ZonesTemperature) >= Chart.LeftAxis.Maximum then
    begin
      Offset:= (Chart.LeftAxis.Maximum - Chart.LeftAxis.Minimum)/2;
      Chart.LeftAxis.Scroll(Offset,false);
    end;
    if MinValue2(ZonesTemperature) <= Chart.LeftAxis.Minimum then
    begin
      Offset:= (Chart.LeftAxis.Maximum - Chart.LeftAxis.Minimum)/2;
      Chart.LeftAxis.Scroll(-1*Offset,false);
    end;
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.ChartDblClick(Sender: TObject);
var
  vMax, vMin: double;
begin
  with Sender as TChart do
  begin
    if Zoomed then UndoZoom
    else
    try
      vMin:= MinFrom4(Series1.MinXValue,Series2.MinXValue,Series3.MinXValue,Series4.MinXValue);
      vMax:= MaxFrom4(Series1.MaxXValue,Series2.MaxXValue,Series3.MaxXValue,Series4.MaxXValue);
//      if ((vMax > vMin) and (BottomAxis.Maximum > vMin) and(BottomAxis.Minimum < vMax)) then
      if (vMax > vMin) then
      begin
        BottomAxis.Maximum:= vMax*1.01;
        BottomAxis.Minimum:= Limit(vMin*0.99,StrToTime('00:00:00'),BottomAxis.Maximum);
      end;

      vMin:= MinFrom4(Series1.MinYValue,Series2.MinYValue,Series3.MinYValue,Series4.MinYValue);
      vMax:= MaxFrom4(Series1.MaxYValue,Series2.MaxYValue,Series3.MaxYValue,Series4.MaxYValue);
//      if ((vMax > vMin) and (BottomAxis.Maximum > vMin) and(BottomAxis.Minimum < vMax)) then
      if (vMax > vMin) then
      begin
        LeftAxis.Maximum:= vMax*1.01;
        LeftAxis.Minimum:= Limit(vMin*0.99,350,LeftAxis.Maximum);
      end;

    except
      exit;
    end;
  end;

end;


//------------------------------------------------------------------------------
procedure TMachine.HistoryChartAfterDraw(Sender: TObject);
var
  i, Pos: integer;
  R: TRect;
begin
  for i:=0 to high(HistorySlides) do with HistoryChart.Canvas do
  begin
    Pen.Color:= clLime;
    Pen.Style:= psDot;
    Pen.Mode:= pmCopy;
    Pos:= HistoryChart.Series[0].CalcPosValue(HistorySlides[i]);
    if ((Pos > HistoryChart.ChartRect.Top) and (Pos < HistoryChart.ChartRect.Bottom) ) then
    Line(HistoryChart.ChartRect.Left,Pos,HistoryChart.ChartRect.Right,Pos);
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.StatusLabelClick(Sender: TObject);
begin
  if Process.Running then exit;
  ResetToStart;
end;

//------------------------------------------------------------------------------
procedure TMachine.SetLongAlarm(AAlarm: boolean);
begin
  if FLongAlarm = AAlarm then exit;
  if AAlarm then
  begin
    PlaySound(PChar('machine'+IntToStr(Self.Tag)+'.wav'),0,SND_ASYNC or SND_LOOP);//SND_ASYNC or SND_LOOP
  end
  else
  begin
    PlaySound(nil,0,0);
  end;
  FLongAlarm:= AAlarm;
end;

//------------------------------------------------------------------------------
procedure TMachine.HistoryTableGridGetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: String);
begin
//  if ACol = 1 then IsFloat:= False;
//  if ACol = 1 then FloatFormat:= '%.0f';
  if HistoryTableGrid.Cells[ACol,ARow] <> '' then
  begin
    IsFloat := not (((ACol = 1) or (ACol = 2)) and (ARow > 0));
//    FloatFormat := '%.1f';
  end;
  
end;

//------------------------------------------------------------------------------
procedure TMachine.LZ_shiftTP_editChange(Sender: TObject);
begin
  case TComponent(Sender).Tag of
    0: Parameters.LZShift:= LZ_shiftTP_edit.Value;
    1: Parameters.CZShift:= CZ_shiftTP_edit.Value;
    2: Parameters.RZShift:= RZ_shiftTP_edit.Value;
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.LZtp_ComboBoxChange(Sender: TObject);
begin
  case TComponent(Sender).Tag of
    0: Parameters.LZTCType:= LZtp_ComboBox.ItemIndex;
    1: Parameters.CZTCType:= CZtp_ComboBox.ItemIndex;
    2: Parameters.RZTCType:= RZtp_ComboBox.ItemIndex;
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.LZCoeff_P_editChange(Sender: TObject);
begin
  case TComponent(Sender).Tag of
    0: Parameters.LZCoeffP:= LZCoeff_P_edit.Value;
    1: Parameters.CZCoeffP:= CZCoeff_P_edit.Value;
    2: Parameters.RZCoeffP:= RZCoeff_P_edit.Value;
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.LZCoeff_I_editChange(Sender: TObject);
begin
  case TComponent(Sender).Tag of
    0: Parameters.LZCoeffI:= LZCoeff_I_edit.Value;
    1: Parameters.CZCoeffI:= CZCoeff_I_edit.Value;
    2: Parameters.RZCoeffI:= RZCoeff_I_edit.Value;
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.LZCoeff_D_editChange(Sender: TObject);
begin
  case TComponent(Sender).Tag of
    0: Parameters.LZCoeffD:= LZCoeff_D_edit.Value;
    1: Parameters.CZCoeffD:= CZCoeff_D_edit.Value;
    2: Parameters.RZCoeffD:= RZCoeff_D_edit.Value;
  end;
end;

//------------------------------------------------------------------------------
procedure TMachine.MinutesUpDownClick(Sender: TObject; Button: TUDBtnType);
var
  t: Integer;
begin
  if Button = btPrev then {if StartClock.Minutes > 0 then} t:= StartClock.Minutes-1;
  if Button = btNext then {if StartClock.Minutes < 59 then} t:= StartClock.Minutes+1;
  StartClock.Minutes:= LimitInt(t,0,59);
end;

//------------------------------------------------------------------------------
procedure TMachine.HoursUpDownClick(Sender: TObject; Button: TUDBtnType);
var
  t: Integer;
begin
  if Button = btPrev then {if StartClock.Hours > 0 then} t:= StartClock.Hours-1;
  if Button = btNext then {if StartClock.Hours < 11 then} t:= StartClock.Hours+1;
  StartClock.Hours:= LimitInt(t,0,11);
end;

//------------------------------------------------------------------------------
procedure TMachine.Stop;
begin
  FRegulatorsVoltage[0]:= 10;
  FRegulatorsVoltage[1]:= 10;
  FRegulatorsVoltage[2]:= 10;
  HeaterRollOutPanel.Collapsed:= True;
end;

end.
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

