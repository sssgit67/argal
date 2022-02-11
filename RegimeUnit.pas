unit RegimeUnit;
{$H+}
{$Q+}
interface

uses
  Windows, Classes, SysUtils, Dialogs, Controls, Forms, Math;

type

  TRegimeItem = record
    Stage:       integer;
    Temperature: double;
    Speed:       double;
    Time:        integer;
    FixTime:     integer;
    Code:        integer;
    SlideSpeed:  integer;
    Duration:    DWORD;
    DoSlide:     boolean;
  end;

  TRegime = class(TObject)
  private
    Items: array of TRegimeItem;
    FStageCount: integer;
    FSlideCount: integer;
    FActive: boolean;
    FCurrentStage: integer;
    function GetItem(ANum: integer): TRegimeItem;
    function GetStageCount: integer;
    procedure SetActive(AValue: boolean);
    procedure SetCurrentStage(NewStage: integer);
    function GetCurrentRegimeTick: DWORD;
    function GetCurrentProcessTick: DWORD;
  protected
    FProcessStartTick: DWORD;
    FCurrentProcessTick: DWORD;
    FProcessLeftTick: DWORD;

    RegimeStartTime: TSystemTime;
    FRegimeStartTick: DWORD;
    FCurrentRegimeTick: DWORD;

    FStageStartTick: DWORD;
    FStageLeftTick: DWORD;

    FCurrentProcessMin: integer;
    FCurrentStageMin: integer;

    FBeforeSlideTick: DWORD;
  public
    ProcessStartTime: TSystemTime;
    ProcessStopTime: TSystemTime;
    ProcessDuration: DWORD;
    constructor Create;
    destructor Destroy; override;
    procedure Empty;
    function AddItem(ATemperature, ASpeed: double; ATime, AFixTime, ACode, ASlideSpeed: integer): boolean;
    function GetValue(ATemperature: double; out ACode: integer): double;
    function GetValue2(ATime: integer; out ASlide: boolean): double;
    procedure Update;
    procedure Reset(p1, p2, p3: DWORD; p4: integer);

    property Item[ANum: integer]: TRegimeItem read GetItem;
    property StageCount: integer read GetStageCount;
    property SlideCount: integer read FSlideCount;
    property Active: boolean read FActive write SetActive;
    property CurrentStage: integer read FCurrentStage write SetCurrentStage;
    property ProcessLeftTick: DWORD read FProcessLeftTick;
    property StageLeftTick: DWORD read FStageLeftTick;
    property BeforeSlideTick: DWORD read FBeforeSlideTick;
    property CurrentProcessMin: integer read FCurrentProcessMin;
    property CurrentStageMin: integer read FCurrentStageMin;
    property RegimeStartTick: DWORD read FRegimeStartTick;
    property CurrentRegimeTick: DWORD read GetCurrentRegimeTick;
    property ProcessStartTick: DWORD read FProcessStartTick;
    property CurrentProcessTick: DWORD read GetCurrentProcessTick;
    property StageStartTick: DWORD read FStageStartTick;
  end;

  function GetTickCountA: DWORD;

var
  ResetTickShift: DWORD;

implementation

function GetTickCountA: DWORD;
begin
  Result:= GetTickCount + ResetTickShift;
end;


constructor TRegime.Create;
begin
  inherited Create;
  Empty;
end;

//------------------------------------------------------------------------------
destructor TRegime.Destroy;
begin
  Items:= nil;
  inherited Destroy;
end;

//------------------------------------------------------------------------------
procedure TRegime.Empty;
begin
  SetLength(Items,0);
  FSlideCount:= 0;
  FStageCount:= 0;
end;

//------------------------------------------------------------------------------
function TRegime.GetStageCount: integer;
begin
  FStageCount:= Length(Items);
  Result:= FStageCount;
end;

//------------------------------------------------------------------------------
function TRegime.AddItem(ATemperature, ASpeed: double; ATime, AFixTime, ACode, ASlideSpeed: integer): boolean;
var
  HighItem,i,j: integer;
  LockSlideCount: byte;
  SCode: string;
  ActiveSliderCode: char;
begin
  Result:= true;

  // Нулевой этап
  if ((length(Items) = 0) and (ATemperature <> 0)) then
  begin
    SetLength(Items,Length(Items)+1);
    with Items[high(Items)] do
    begin
      Stage:= 0;
      Temperature:= ATemperature;
      Speed:= 0;
    end;
    Exit;
  end;

  // Последний этап
  if ATemperature = 0 then
  begin
    if Items = nil then begin Result:= false; Exit; end;
    SetLength(Items,Length(Items)+1);
    with Items[high(Items)] do
    begin
      Stage:= high(Items);
      Temperature:= 0;
      Speed:= 0;
      Time:= 0;
      FixTime:= 0;
      SlideSpeed:= 0;
      Code:= 777;
    end;
    // Расчет сдвижек

    ActiveSliderCode:= '0';
    for j:= 0 to high(Items) do
    with Items[j] do
    begin
      SCode:= IntToStr(Code);
      for i:=1 to Length(SCode) do if (SCode[i] = '2') then begin ActiveSliderCode:= '2'; break; end
      else if (SCode[i] = '1') then begin ActiveSliderCode:= '1'; break; end;
      if ActiveSliderCode <> '0' then break;
    end;


    if ActiveSliderCode <> '0' then
    for j:= 0 to high(Items) do
    with Items[j] do
    begin
      SCode:= IntToStr(Code);
      LockSlideCount:= 0;
      for i:=1 to Length(SCode) do if (SCode[i] = ActiveSliderCode) then LockSlideCount:= LockSlideCount+1;
      if LockSlideCount <> 0 then DoSlide:= true else DoSlide:= false;
      FSlideCount:= FSlideCount+LockSlideCount;

      if LockSlideCount <> 0 then
      begin
        if abs(SlideSpeed) <> 0 then SlideSpeed:= abs(SlideSpeed) else SlideSpeed:= 3;
      end
      else SlideSpeed:= 0;
    end;

    Result:= false;
    Exit;
  end;

  // Внутренний этап
  SetLength(Items,Length(Items)+1);
  HighItem:= high(Items);
  with Items[HighItem] do
  begin
    Stage:= HighItem;
    Temperature:= abs(ATemperature);

    Speed:= abs(ASpeed);
    if Items[HighItem-1].Temperature > Temperature then Speed:= (-1)*Speed;

    Time:= abs(ATime);
    Duration:= abs(ATime)*60000;
    FixTime:= abs(AFixTime);
    if ((Speed <> 0) and (Stage > 0) and (FixTime = 0)) then
    begin
      Duration:= Ceil( (abs(Items[HighItem-1].Temperature-Temperature )/abs(Speed))*60000 );
      Time:= Ceil( Duration/60000 );
    end
    else
    if ((FixTime <> 0) and (Speed <> 0) and (Stage > 0)) then
    begin
      Temperature:= (Items[HighItem-1].Temperature - FixTime*abs(Speed)/60);
      Duration:= FixTime*1000;
      Time:= 0;
    end;


    SCode:= IntToStr(ACode);
    for i:=1 to Length(SCode) do SCode:= StringReplace(SCode,'7','0',[rfReplaceAll]);
    Code:= StrToInt(SCode);
    SlideSpeed:= abs(ASlideSpeed);

  end;
  ProcessDuration:= 0;
  for i:=1 to high(Items) do ProcessDuration:= ProcessDuration + Item[i].Duration;
end;

//------------------------------------------------------------------------------
function TRegime.GetItem(ANum: integer): TRegimeItem;
begin
  if ((ANum >= 0) and (ANum <= high(Items))) then  with Result do
  begin
    Temperature:= Items[ANum].Temperature;
    Speed:= Items[ANum].Speed;
    Time:= Items[ANum].Time;
    FixTime:= Items[ANum].FixTime;
    Code:= Items[ANum].Code;
    SlideSpeed:= Items[ANum].SlideSpeed;
    Duration:= Items[ANum].Duration;
    DoSlide:= Items[ANum].DoSlide;
  end
  else
  with Result do
  begin
    Temperature:= 0;
    Speed:= 0;
    Time:= 0;
    FixTime:= 0;
    Code:= 0;
    SlideSpeed:= 0;
    Duration:= 0;
    DoSlide:= false;
  end
end;

//------------------------------------------------------------------------------
function TRegime.GetValue2(ATime: integer; out ASlide: boolean): double;
var
  i: integer;
  ms,passedT: integer;
begin
  Result:= 0;
  ASlide:= false;
  ms:= ATime*1000;
  passedT:= 0;
  for i:=1 to StageCount-1 do
  begin
    if ((Items[i].DoSlide) and (passedT - ms < 0) and (passedT+1000 - ms >= 0)) then ASlide:= true;
    passedT:= passedT + Items[i].Duration;
    if ms <= passedT then
    begin
      if Items[i].FixTime = 0 then
      Result:= Items[i].Temperature - (passedT - ms)*Items[i].Speed/60000
      else
      Result:= Items[i].Temperature - (passedT - ms)*Items[i].Speed/60000;
      break;
    end;
  end;
  if ms > ProcessDuration   then Result:= 0;
end;

//------------------------------------------------------------------------------
function TRegime.GetValue(ATemperature: double; out ACode: integer): double;
var
  Speed: double;
begin
  Result:= 0;
  ACode:= 0;
  if not Active then exit;

  if CurrentStage = 0 then
  begin
    Result:= Items[0].Temperature;
    ACode:= 0;
    if ATemperature >= Items[0].Temperature then
    begin
      CurrentStage:= 1;
      FRegimeStartTick:= GetTickCountA;
      GetLocalTime(RegimeStartTime);
    end;
  end
  else
  begin
    Speed:= Items[CurrentStage].Speed;
    Result:= Items[CurrentStage-1].Temperature + Speed*((GetTickCountA-FStageStartTick)/60000);
    if (
           ((Speed > 0) and (ATemperature >= Items[CurrentStage].Temperature) and (Items[CurrentStage].FixTime = 0))
        or ((Speed < 0) and (ATemperature <= Items[CurrentStage].Temperature) and (Items[CurrentStage].FixTime = 0))
        or ((Speed = 0) and ((GetTickCountA-FStageStartTick)/60000 >= Items[CurrentStage].Time) and (Items[CurrentStage].FixTime = 0))
        or ((Items[CurrentStage].FixTime <> 0) and ((GetTickCountA-FStageStartTick)/1000 >= Items[CurrentStage].FixTime))
        ) then
    begin
      CurrentStage:= CurrentStage+1;
      ACode:= Items[CurrentStage].Code;
    end;
  end;
  Update;

end;

//------------------------------------------------------------------------------
procedure TRegime.SetActive(AValue: boolean);
begin
  if AValue = FActive then exit;
  if AValue then
  begin
    FActive:= true;
    FProcessStartTick:= GetTickCountA;
    GetLocalTime(ProcessStartTime);
    CurrentStage:= 0;
    FRegimeStartTick:= 0;
    FCurrentProcessMin:= 0;
  end
  else
  begin
    FActive:= false;
    GetLocalTime(ProcessStopTime);
    CurrentStage:= 0;
  end;
end;

//------------------------------------------------------------------------------
procedure TRegime.SetCurrentStage(NewStage: integer);
begin
  FCurrentStage:= NewStage;
  FStageStartTick:= GetTickCountA;
  FCurrentStageMin:= 0;
end;

//------------------------------------------------------------------------------
procedure TRegime.Update;
var
  i: integer;
  WillSlide: boolean;
begin
  i:= 1+Trunc((GetTickCountA-FProcessStartTick)/60000);
  if FCurrentProcessMin < i then
  begin
    FCurrentProcessMin:= i;
    FCurrentStageMin:= FCurrentStageMin + 1;
  end else if FCurrentStageMin = 0 then FCurrentStageMin:= 1;

  if CurrentStage > 0 then
  begin
    if (ProcessDuration < (GetTickCountA-RegimeStartTick)) then FProcessLeftTick:= 0
    else FProcessLeftTick:= (ProcessDuration - (GetTickCountA-RegimeStartTick));
    if (Items[CurrentStage].Duration < (GetTickCountA-FStageStartTick)) then FStageLeftTick:= 0
    else FStageLeftTick:= (Items[CurrentStage].Duration - (GetTickCountA-FStageStartTick));
    if FProcessLeftTick < FStageLeftTick then FProcessLeftTick:= FStageLeftTick;

    WillSlide:= false;
    for i:= CurrentStage to StageCount-2 do if Items[i+1].DoSlide then WillSlide:= true;
    if not WillSlide then FBeforeSlideTick:= 0 else
    begin
      FBeforeSlideTick:= FStageLeftTick;
      for i:= CurrentStage to StageCount-2 do
      begin
        if Items[i+1].DoSlide then Break
        else FBeforeSlideTick:= FBeforeSlideTick + Items[i+1].Duration;
      end;
    end;
  end
  else
  begin
    FStageLeftTick:= 0;
    FProcessLeftTick:= ProcessDuration;

    WillSlide:= false;
    for i:= 0 to StageCount-2 do if Items[i+1].DoSlide then WillSlide:= true;
    if not WillSlide then FBeforeSlideTick:= 0 else
    begin
      FBeforeSlideTick:= Items[1].Duration;
      for i:= 1 to StageCount-2 do
      begin
        if Items[i+1].DoSlide then Break
        else FBeforeSlideTick:= FBeforeSlideTick + Items[i+1].Duration;
      end;
    end;


  end;

end;

//------------------------------------------------------------------------------
function TRegime.GetCurrentRegimeTick: DWORD;
begin
  if ((Active) and (RegimeStartTick > 0)) then Result:= GetTickCountA-RegimeStartTick else Result:= 0;
end;

//------------------------------------------------------------------------------
function TRegime.GetCurrentProcessTick: DWORD;
begin
  if Active then Result:= GetTickCountA-ProcessStartTick else Result:= 0;
end;

//------------------------------------------------------------------------------
procedure TRegime.Reset(p1, p2, p3: DWORD; p4: integer);
var
  G: DWORD;
begin
  G:= GetTickCountA;
  FProcessStartTick:= p1;
  FRegimeStartTick:= p2;
  FStageStartTick:= p3;
  FCurrentProcessMin:= 1+Trunc((G-FProcessStartTick)/60000);
  FCurrentStageMin:= 1+Trunc((G-FStageStartTick)/60000);
  FCurrentStage:= p4;
  FActive:= true;
end;


end.
