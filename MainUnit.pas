unit MainUnit;
{Q+}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CommonUnit, MachineUnit, sSkinProvider, sSkinManager,

  MessageUnit, Comm32, BMDThread, ActnList, ExtCtrls, ComCtrls, sStatusBar,
  sPanel, iComponent, iOdometer, StdCtrls, sLabel, Buttons, sSpeedButton;

type
  TCommunicatorRec = record
    CommandName: string;
    CommandString: string;
    ResponseTime: DWORD;
  end;

  TCommunicator = class
  private
    Buffer: array of TCommunicatorRec;
    FEmpty: boolean;
    FBusy: boolean;
  protected
    CommandName: string;
    StartTick: DWORD;
    ResponseTime: DWORD;

    Error: boolean;

    procedure Push(ACommandName, ACommandString: string; AResponseTime: DWORD);
    function Pop: string;
  public
    constructor Create;
    destructor Destroy; override;
    property Empty: boolean read FEmpty;
    property Busy: boolean read FBusy write FBusy;
  end;


type
  TMainForm = class(TForm)
    MainSkinProvider: TsSkinProvider;
    ComPort: TComm32;
    MainThread: TBMDThread;
    TestTimer: TTimer;
    RealTimer: TTimer;
    StatusPanel: TsPanel;
    MainSkinManager: TsSkinManager;
    sPanel1: TsPanel;
    sSysButton1: TsSysButton;
    sLabelFX1: TsLabelFX;
    RealTime: TsLabelFX;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure ComPortReceiveData(Sender: TObject; Buffer: Pointer;
      BufferLength: Word);
    procedure MainThreadStart(Sender: TObject; Thread: TBMDExecuteThread;
      var Data: Pointer);
    procedure MainThreadExecute(Sender: TObject; Thread: TBMDExecuteThread;
      var Data: Pointer);
    procedure MainThreadTerminate(Sender: TObject;
      Thread: TBMDExecuteThread; var Data: Pointer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TestTimerTimer(Sender: TObject);
    procedure RealTimerTimer(Sender: TObject);
  private
    { Private declarations }
    FRoomTemperature: single;
    AICounter: integer;
    ResponseTime: Integer;
    AIDevider: Integer;
    COMname: string;

    procedure SetRoomTemperature(AValue: single);
    procedure Poll;
    function FormatCommand(ACommandName: string; IData: integer; FData: extended): string;
  public
    { Public declarations }
    Machine: TMachine;
    Communicator: TCommunicator;
    property RoomTemperature: single read FRoomTemperature write SetRoomTemperature;

  end;

var
  MainForm: TMainForm;

implementation

uses LogoUnit;

{$R *.dfm}

constructor TCommunicator.Create;
begin
  inherited;
  CommandName:= '';
  Error:= false;
  FEmpty:= true;
  FBusy:= false;
end;

//------------------------------------------------------------------------------
destructor TCommunicator.Destroy;
begin
  Buffer:= nil;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TCommunicator.Push(ACommandName, ACommandString: string; AResponseTime: DWORD);
var
  TempValue: TCommunicatorRec;
begin
  TempValue.CommandName:= ACommandName;
  TempValue.CommandString:= ACommandString;
  TempValue.ResponseTime:= AResponseTime;
  SetLength(Buffer, Length(Buffer)+1);
  Buffer[high(Buffer)]:= TempValue;
  FEmpty:= false;
end;

//------------------------------------------------------------------------------
function TCommunicator.Pop: string;
var
  i: integer;
begin
  FBusy:= true;
  Result:= '';
  CommandName:= '';
  ResponseTime:= 0;
  if length(Buffer) > 0 then
  begin
    CommandName:= Buffer[0].CommandName;
    Result:= Buffer[0].CommandString;
    ResponseTime:= Buffer[0].ResponseTime;
    StartTick:= GetTickCount;
    for i:=1 to high(Buffer) do Buffer[i-1]:= Buffer[i];
    SetLength(Buffer,Length(Buffer)-1);
  end;
  if Length(Buffer) = 0 then FEmpty:= true;
end;

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
procedure TMainForm.FormCreate(Sender: TObject);
begin
  Communicator:= TCommunicator.Create;

  AIDevider:= Params.ReadInteger('Values','AIDevider',7);
  ResponseTime:= Params.ReadInteger('Values','ResponseTime',700);
  COMname:= Params.ReadString('Values','COM','COM1');
  ComPort.CommPort:= COMname;

  sLabelFX1.Caption:= sLabelFX1.Caption + '    '+COMname;

  Machine:= TMachine.Create(Self);
  Machine.Parent:= nil;
  Machine.ParentWindow:= Handle;
  Machine.Tag:= 1;
end;

//------------------------------------------------------------------------------
procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Machine.Process.Running then
  begin
    ShowMessageA('Предупреждение','Остались незаконченные процессы.',true,false);
    Action:=caNone;
    exit;
  end;

  if ShowMessageA('Предупреждение','Выйти.',true,true) = mrOk then
  begin
    Machine.Stop;

    Hide;

    Logo:= TLogo.Create(Application);
    Logo.Label1.Caption:='Остановка АСУ АРГАЛ';
    Logo.Show;
    Logo.Update;

    MainThread.Stop;
    Delay(2000);

    ComPort.StopComm;
    Delay(2000);

    Machine.Free;
//    Machines:= nil;
    Communicator.Free;

    while Logo.Timer1.Enabled do Application.ProcessMessages;
    Logo.Hide;
    Logo.Free;


    Action:= caFree;

  //  Close;
  end
  else Action:= caNone;

end;

//------------------------------------------------------------------------------
procedure TMainForm.FormResize(Sender: TObject);
begin
  Machine.Height:= ClientHeight - StatusPanel.Height - sPanel1.Height;
  Machine.Width:= ClientWidth;
  Machine.Left:= 0;
  Machine.Top:= sPanel1.Height;
end;

//------------------------------------------------------------------------------
procedure TMainForm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  NewHeight:= Screen.Height;
  NewWidth:= Screen.Width;
  Resize:= True;
end;

//------------------------------------------------------------------------------
procedure TMainForm.Poll;
var
  SendStr: string;
begin
  while (not Communicator.Empty) do
  begin
    if (not Communicator.Busy) then
    begin
      SendStr:= Communicator.Pop;
//      if not (SendStr = '') then ShowMessageA('A','Sendstr',True,true);
//      if not ComPort.WriteCommData(PChar(SendStr+#13), Length(SendStr)+1) then ShowMessageA('Ошибка','Ошибка записи (poll) в COM порт.',false,false);
      ComPort.WriteCommData(PChar(SendStr+#13), Length(SendStr)+1);
      Delay(100);
    end
    else if (GetTickCount-Communicator.StartTick > Communicator.ResponseTime) then Communicator.Busy:= false;
  end;
end;

//------------------------------------------------------------------------------
function TMainForm.FormatCommand(ACommandName: string; IData: integer; FData: extended): string;
begin
  Result:='';

  //******** AI

  if ACommandName = 'AI' then
  begin
    Result:= Result + '#' + IntToHex(Machine.Parameters.AIAddress,2);
  end else
  if ACommandName = 'CJC' then
  begin
    Result:= Result + '$' + IntToHex(Machine.Parameters.AIAddress,2)+ '3';
  end else

  //******** AO

  if ACommandName = 'AOS' then
  begin
//    Result:= Result + '#' + IntToHex(Machines[AMachineIndex].Parameters.AOSAddress,2)+ FormatFloat('00.000',FData,FormatSettings);
    Result:= Result + '#' + IntToHex(Machine.Parameters.AOFAddress,2)+ 'C' +IntToHex(Machine.Parameters.AOSAddress,1)+ '+' +FormatFloat('00.000',FData,FormatSettings);
  end else
  if ACommandName = 'AOF' then
  begin
    Result:= Result + '#' + IntToHex(Machine.Parameters.AOFAddress,2)+ 'C' +IntToHex(IData,1) + '+' +FormatFloat('00.000',FData,FormatSettings);
  end else

  //******** DI

  if ACommandName = 'DI' then
  begin
    Result:= Result + '$' + IntToHex(Machine.Parameters.DIAddress,2)+ '6';
  end else
  if ACommandName = 'DO' then
  begin
    Result:= Result + '#' + IntToHex(Machine.Parameters.DOAddress,2)+ '1'+ IntToHex(IData,1)+ '0' + IntToHex(Trunc(FData),1);
  end;

end;

//------------------------------------------------------------------------------
procedure TMainForm.ComPortReceiveData(Sender: TObject; Buffer: Pointer;
  BufferLength: Word);
var
 RecivedStr: String;
 i: integer;
 T: TZonesDataArray;
 V: array [0..7] of extended;
 OK,F: boolean;
 MP: TMechPosition;
 DigitalInput: integer;
begin
 DigitalInput:= 0;
 if (not Communicator.Busy) then exit;

 RecivedStr:=PChar(Buffer);

 if RecivedStr[1] = '>' then
 begin
   if Communicator.CommandName = 'CJC' then begin if TryStrToFloat( Copy(RecivedStr,2,7), V[0], FormatSettings) then RoomTemperature:= V[0]; end;
   if Communicator.CommandName = 'AI'  then
   begin
     OK:= true;
     for i:=0 to 3 do OK:= OK and TryStrToFloat( Copy(RecivedStr,2+7*i,7), V[i], FormatSettings);
     if OK then
     begin
       T[0]:= Limit(V[Machine.Parameters.Ch_AI_LZ],350,1700);
       T[1]:= Limit(V[Machine.Parameters.Ch_AI_CZ],350,1700);
       T[2]:= Limit(V[Machine.Parameters.Ch_AI_RZ],350,1700);
       Machine.AZonesTemperature:= T;
       Machine.CTP:= Limit(V[3],0,1700);
     end;
   end;
 end
 else
 if RecivedStr[1] = '!' then
 begin
   if Communicator.CommandName = 'DI' then if TryStrToInt('$'+ Copy(RecivedStr,2,2), DigitalInput) then
   begin
     with Machine do
     begin
       PowerOn:= BOOL(DigitalInput and (1 shl Parameters.Ch_DI_Power));
       if Parameters.DI_Invert then DigitalInput:= not DigitalInput;
       MP:= mpCenter;
       F:= BOOL(DigitalInput and (1 shl Parameters.Ch_DI_LS)); if F then MP:= mpLeft;
       F:= BOOL(DigitalInput and (1 shl Parameters.Ch_DI_RS)); if F then MP:= mpRight;
       if ((SliderPosition = mpCenter) and (MP = Process.SliderStartPosition) and (not Process.AUTO)) then SlideStartTime:= GetTickCount;
       if ((SliderPosition = mpCenter) and (MP = Process.SliderFinishPosition)) then if (Process.Running) then SlideDone:= SlideDone + 1;
       if ((SliderPosition = mpLeft) and (MP = mpCenter)) then SliderDirection:= mdLeftToRight else
       if ((SliderPosition = mpRight) and (MP = mpCenter)) then SliderDirection:= mdRightToLeft else
       if ((SliderPosition = mpCenter) and (MP = mpLeft) and (SliderDirection = mdRightToLeft)) then SliderDirection:= mdNone else
       if ((SliderPosition = mpCenter) and (MP = mpRight) and (SliderDirection = mdLeftToRight)) then SliderDirection:= mdNone;
       SliderPosition:= MP;
     end;
   end;
 end
 else
 if RecivedStr[1] = '?' then ShowMessageA('Ошибка', 'Ошибка связи по адресу '+ Copy(RecivedStr,2,2)+'h '+#13#10+'с командой '+Communicator.CommandName+'.', false, false);

 Communicator.Busy:= false;
end;

//------------------------------------------------------------------------------
procedure TMainForm.SetRoomTemperature(AValue: single);
begin
  FRoomTemperature:= AValue;
end;

//------------------------------------------------------------------------------
procedure TMainForm.MainThreadStart(Sender: TObject;
  Thread: TBMDExecuteThread; var Data: Pointer);
var
  j: integer;
  SendStr: String;
begin
  with Machine do
  for j:=0 to 7 do Communicator.Push('DO',FormatCommand('DO',j,0),ResponseTime);
  while (not Communicator.Empty) do
  begin
    if (not Communicator.Busy) then
    begin
      SendStr:= Communicator.Pop;
      if not ComPort.WriteCommData(PChar(SendStr+#13), Length(SendStr)+1) then ShowMessageA('Ошибка','Ошибка записи (start) в COM порт.',false,false);
    end
    else if (GetTickCount-Communicator.StartTick > Communicator.ResponseTime) then Communicator.Busy:= false;
  end;
end;

//------------------------------------------------------------------------------
procedure TMainForm.MainThreadExecute(Sender: TObject;
  Thread: TBMDExecuteThread; var Data: Pointer);
var
  SendStr: string;
  i: integer;
  A: extended;
begin
  while not Thread.Terminated do
  begin
    if Communicator.Empty then
    begin
      with Machine do Communicator.Push('DI',FormatCommand('DI',0,0),ResponseTime);
      Poll;

      Inc(AICounter);
      if (AICounter/AIDevider = 1) then Communicator.Push('CJC',FormatCommand('CJC',0,0),ResponseTime);

      if (AICounter/AIDevider = 1) then
      with Machine do
      begin
        Communicator.Push('AI',FormatCommand('AI',0,0),ResponseTime+1000);
        Communicator.Push('AOF',FormatCommand('AOF',Machine.Parameters.Ch_AO_LZ,10-Machine.RegulatorsVoltage[0]),ResponseTime);
        Communicator.Push('AOF',FormatCommand('AOF',Machine.Parameters.Ch_AO_CZ,10-Machine.RegulatorsVoltage[1]),ResponseTime);
        Communicator.Push('AOF',FormatCommand('AOF',Machine.Parameters.Ch_AO_RZ,10-Machine.RegulatorsVoltage[2]),ResponseTime);
        AICounter:= 0;

        if Machine.Process.AUTO then A:= 1 else A:= 0;
        Communicator.Push('DO',FormatCommand('DO',Machine.Parameters.Ch_DO_AUTO, A),ResponseTime);
      end;
      Poll;

      with Machine do
      begin
      // сдвижка
        if (SlideFlag or SlideRunning) then
        begin
          if SlideFlag then begin SlideFlag:= false; SlideRunning:= true; end;
          case SliderPosition of
            mpLeft  : begin
                        SlideInfo:= SlideBuffer.Pop;
                        if SlideInfo.Code <> 0 then
                        begin
                          Communicator.Push('AOS',FormatCommand('AOS',Machine.Parameters.AOSAddress,abs(SlideInfo.Code)*SlideInfo.Voltage/1000),ResponseTime);
                          Poll;
                        end;
                        if not SlideBuffer.Empty then
                        begin
                          if SlideInfo.Code = 1 then
                          begin
                            SliderDirection:= mdLeftToRight;
                            SliderPosition:= mpCenter;
                            Communicator.Push('DO',FormatCommand('DO',Parameters.Ch_DO_LS,0),ResponseTime);
                            if Process.SliderStartPosition = mpLeft then SlideStartTime:= GetTickCount;
                            Communicator.Push('DO',FormatCommand('DO',Parameters.Ch_DO_RS,1),ResponseTime);
                            Poll;
                            sleep(3000);
                          end;
                        end
                        else if SliderDirection = mdNone then
                        begin
                          SlideRunning:= false;
                          Communicator.Push('AOS',FormatCommand('AOS',Machine.Parameters.AOSAddress,0),ResponseTime);
                          Communicator.Push('DO',FormatCommand('DO',Parameters.Ch_DO_LS,0),ResponseTime);
                          Communicator.Push('DO',FormatCommand('DO',Parameters.Ch_DO_RS,0),ResponseTime);
                        end;
                      end;
            mpCenter: begin
                        if (10*SlideInfo.TestTime-(GetTickCount-SlideStartTime)/1000) < 0 then
                        begin
                          {
                          Failure.Source:= Failure.Source+[fsSlide];
                          Failure.Active:= true;
                          }
                        end;
                      end;
            mpRight : begin
                        SlideInfo:= SlideBuffer.Pop;
                        if SlideInfo.Code <> 0 then
                        begin
                          Communicator.Push('AOS',FormatCommand('AOS',Machine.Parameters.AOSAddress,abs(SlideInfo.Code)*SlideInfo.Voltage/1000),ResponseTime);
                          Poll;
                        end;
                        if not SlideBuffer.Empty then
                        begin
                          if SlideInfo.Code = -1 then
                          begin
                            SliderDirection:= mdRightToLeft;
                            SliderPosition:= mpCenter;
                            Communicator.Push('DO',FormatCommand('DO',Parameters.Ch_DO_RS,0),ResponseTime);
                            if Process.SliderStartPosition = mpRight then SlideStartTime:= GetTickCount;
                            Communicator.Push('DO',FormatCommand('DO',Parameters.Ch_DO_LS,1),ResponseTime);
                            Poll;
                            sleep(3000);
                          end;
                        end
                        else if SliderDirection = mdNone then
                        begin
                          SlideRunning:= false;
                          Communicator.Push('AOS',FormatCommand('AOS',Machine.Parameters.AOSAddress,0),ResponseTime);
                          Communicator.Push('DO',FormatCommand('DO',Parameters.Ch_DO_LS,0),ResponseTime);
                          Communicator.Push('DO',FormatCommand('DO',Parameters.Ch_DO_RS,0),ResponseTime);
                        end;
                      end;
          end;// case SliderPosition
        end;// begin
      end; // with machine
    end;


    if ((not Communicator.Busy) and (not Communicator.Empty)) then
    begin
      SendStr:= Communicator.Pop;
      if not ComPort.WriteCommData(PChar(SendStr+#13), Length(SendStr)+1) then ShowMessageA('Ошибка','Ошибка записи (Thread)в COM порт.',false,false);
    end
    else if (GetTickCount-Communicator.StartTick > Communicator.ResponseTime) then Communicator.Busy:= false;

  end;
end;

//------------------------------------------------------------------------------
procedure TMainForm.MainThreadTerminate(Sender: TObject;
  Thread: TBMDExecuteThread; var Data: Pointer);
var
 i,j: integer;
 SendStr: String;
begin
  SendStr:=''; // new
  with Machine do
  begin
    Communicator.Push('AOS',FormatCommand('AOS',Machine.Parameters.AOSAddress,0),ResponseTime);
    Communicator.Push('AOF',FormatCommand('AOF',Machine.Parameters.Ch_AO_LZ,0),ResponseTime);
    Communicator.Push('AOF',FormatCommand('AOF',Machine.Parameters.Ch_AO_CZ,0),ResponseTime);
    Communicator.Push('AOF',FormatCommand('AOF',Machine.Parameters.Ch_AO_RZ,0),ResponseTime);
    for j:=0 to 7 do Communicator.Push('DO',FormatCommand('DO',j,0),ResponseTime);
  end;
  Poll;
  {
  while (not Communicator.Empty) do
  begin
    if (not Communicator.Busy) then
    begin
      SendStr:= Communicator.Pop;
      if not (SendStr = '') then
      if not ComPort.WriteCommData(PChar(SendStr+#13), Length(SendStr)+1) then ShowMessageA('Ошибка','Ошибка записи (Terminate)в COM порт.',false,false);
      sleep(100);
    end
    else if (GetTickCount-Communicator.StartTick > Communicator.ResponseTime) then Communicator.Busy:= false;
  end;
  }
end;

//------------------------------------------------------------------------------
procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i: integer;
begin
  i:=0;
  case Key of
    VK_F1..VK_F4 :  Machine.Command(Key-VK_F1,Shift);
//    VK_F5..VK_F8 :  if high(Machines)>=1 then Machines[1].Command(Key-VK_F5,Shift);
//    VK_F9..VK_F12:  if high(Machines)>=2 then Machines[2].Command(Key-VK_F9,Shift);
    VK_ESCAPE    :  Machine.Command(Key,Shift);
  end;
end;

//------------------------------------------------------------------------------
procedure TMainForm.FormShow(Sender: TObject);
var
  i: Integer;
begin
  if not MainThread.Runing then
  if not ComPort.StartComm then
  begin
    ShowMessageA('Ошибка','Невозможно открыть порт.',true,false);
  end
  else
  begin
    Delay(500);
    MainThread.Start;
  end;
  Machine.Visible:= true;
end;

//------------------------------------------------------------------------------
procedure TMainForm.TestTimerTimer(Sender: TObject);
var
  T: TZonesDataArray;
begin
  Application.ProcessMessages;
  if Machine.Process.Running then
  begin
    T[0]:= Limit(Machine.ZonesTemperature[0]+random(10)*1*TestTimer.Interval/1000,350,Machine.Regime.Item[0].Temperature);
    T[1]:= Limit(Machine.ZonesTemperature[1]+random(10)*1*TestTimer.Interval/1000,350,Machine.Regime.Item[0].Temperature);
    T[2]:= Limit(Machine.ZonesTemperature[2]+random(10)*1*TestTimer.Interval/1000,350,Machine.Regime.Item[0].Temperature);
    Machine.ZonesTemperature:= T;
  end;
end;

//------------------------------------------------------------------------------
procedure TMainForm.RealTimerTimer(Sender: TObject);
begin
  RealTime.Caption:= DateToStr(now)+'       '+TimeToStr(Now)+'        '+FloatToStrF(RoomTemperature,ffGeneral,1,3)+' °C     ';
end;

//------------------------------------------------------------------------------
end.
