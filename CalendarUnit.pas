unit CalendarUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, sSpeedButton, ExtCtrls, sPanel, sSkinProvider, ComCtrls,
  CommonUnit, StdCtrls;

type
  TProcessInfo = record
    Day: word;
    Month: word;
    Year: word;
    Hour: word;
    Min: word;
    Name: string;
    Choosed: boolean;
    Index: integer;
  end;

  TCalendarForm = class(TForm)
    sPanel1: TsPanel;
    YESButton: TsSpeedButton;
    NOButton: TsSpeedButton;
    sPanel2: TsPanel;
    sPanel3: TsPanel;
    MonthCalendar: TMonthCalendar;
    ListBox1: TListBox;
    sSkinProvider1: TsSkinProvider;
    procedure FormCreate(Sender: TObject);
    procedure YESButtonClick(Sender: TObject);
    procedure NOButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MonthCalendarClick(Sender: TObject);
    procedure MonthCalendarGetMonthInfo(Sender: TObject; Month: Cardinal;
      var MonthBoldInfo: Cardinal);
  private
    { Private declarations }
    FMachineNum: integer;
    Dir: string;
    ProcessInfo: array of TProcessInfo;

  public
    { Public declarations }
    FileName: string;
    constructor Create(AOwner: TComponent; AMachineNum: integer); reintroduce;

  end;

var
  CalendarForm: TCalendarForm;

implementation

{$R *.dfm}

//------------------------------------------------------------------------------
constructor TCalendarForm.Create(AOwner: TComponent; AMachineNum: integer);
begin
  inherited Create(AOwner);
  FMachineNum:= AMachineNum;
end;

//------------------------------------------------------------------------------
procedure TCalendarForm.FormCreate(Sender: TObject);
var
  F: TSearchRec;
  Stop: integer;
  FName: string;
begin
  Dir:= ExtractFilePath(Application.ExeName)+ 'Processes\Machine'+ IntToStr(FMachineNum) + '\Passed\';
  if not DirectoryExists(Dir) then CreateDir(Dir);
  DeleteFile(Dir+'00_00_00_00_00.zip');
  Stop:= FindFirst(Dir+'*.zip', faAnyFile, F);
  while Stop = 0 do
  begin
    FName:= ExtractFileName(F.Name);
    SetLength(ProcessInfo, length(ProcessInfo)+1);
    with ProcessInfo[high(ProcessInfo)] do
    begin
      Day:=   StrToInt(Copy(FName,1,2));
      Month:= StrToInt(Copy(FName,4,2));
      Year:=  StrToInt(Copy(FName,7,4));
      Hour:=  StrToInt(Copy(FName,12,2));
      Min:=   StrToInt(Copy(FName,15,2));
      Name:=  Dir+FName;
      Choosed:= false;
      Index:= -1;
    end;
    Stop:= FindNext(F);
  end;
  FindClose(F);

  MonthCalendar.Date:= Now;
  MonthCalendarClick(Sender);
end;

//------------------------------------------------------------------------------
procedure TCalendarForm.YESButtonClick(Sender: TObject);
var
  i: integer;
begin
  for i:=0 to high(ProcessInfo) do
  if ((ProcessInfo[i].Choosed) and (ProcessInfo[i].Index = ListBox1.ItemIndex)) then
  begin
    FileName:= ProcessInfo[i].Name;
    ModalResult:= mrOK;
    exit;
  end;
//  ModalResult:= mrCancel;
end;

//------------------------------------------------------------------------------
procedure TCalendarForm.NOButtonClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

//------------------------------------------------------------------------------
procedure TCalendarForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ProcessInfo:= nil;
end;

//------------------------------------------------------------------------------
procedure TCalendarForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN : YESButtonClick(Self);
    VK_ESCAPE : ModalResult:= mrCancel;
  end;
end;

//------------------------------------------------------------------------------
procedure TCalendarForm.MonthCalendarClick(Sender: TObject);
var
  i: integer;
  aYear, aMonth, aDay: Word;
  s: string;
begin
  ListBox1.Clear;
  DecodeDate(MonthCalendar.Date, aYear, aMonth, aDay);
  for i:=0 to high(ProcessInfo) do begin ProcessInfo[i].Choosed:= false;  ProcessInfo[i].Index:= -1; end;
  for i:=0 to high(ProcessInfo) do
  if ((ProcessInfo[i].Year = aYear) and (ProcessInfo[i].Month = aMonth) and (ProcessInfo[i].Day = aDay)) then
  begin
    s:= IntToStr2(ProcessInfo[i].Hour)+':'+IntToStr2(ProcessInfo[i].Min);
    ListBox1.Items.Add(s);
    ProcessInfo[i].Choosed:= true;
    ProcessInfo[i].Index:= ListBox1.Items.IndexOf(s)
  end;
  if ListBox1.Items.Count = 0 then ListBox1.Items.Add('Нет процессов');
end;

//------------------------------------------------------------------------------
procedure TCalendarForm.MonthCalendarGetMonthInfo(Sender: TObject;
  Month: Cardinal; var MonthBoldInfo: Cardinal);
var
  i: integer;
  aYear, aMonth, aDay: Word;
  d: array of LongWord;
begin
  DecodeDate(MonthCalendar.Date, aYear, aMonth, aDay);
  for i:=0 to high(ProcessInfo) do
  if ((ProcessInfo[i].Year = aYear) and (ProcessInfo[i].Month = Month)) then
  begin
    SetLength(d, length(d)+1);
    d[high(d)]:= ProcessInfo[i].Day;
  end;
  if d <> nil then
  begin
//    MonthCalendar1.BoldDays(d,ProcessDays);
//    MonthBoldInfo:= ProcessDays;
    MonthCalendar.BoldDays(d,MonthBoldInfo);
  end else MonthBoldInfo:= 0;

  d:= nil;
end;

//------------------------------------------------------------------------------

end.
