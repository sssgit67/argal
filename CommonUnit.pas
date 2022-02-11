unit CommonUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  IniFiles, ShellAPI, Math;

const
  DelayBefoInstuction = 5000;

type
  TZonesDataArray = array [0..2] of extended;

  TDragInfo = record
    Source: string;
  end;

  TSlideInfo = record
    Code: integer;
    Voltage: integer;
    TestTime: integer;
  end;

  TFIFOBuffer = class
  private
    FEmpty: boolean;
  protected
    Buffer: array of array [0..2] of integer;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Push(ACode, AVoltage, ATime: integer);
    function Pop: TSlideInfo;
    property Empty: boolean read FEmpty;
  end;

function HMS(Value: integer): TDateTime;
procedure Delay(AInterval: DWORD);
function MinValue2(Value: TZonesDataArray): single;
function MaxValue2(Value: TZonesDataArray): single;
function Limit(Value, LowLimit, HiLimit: extended): extended;
function LimitInt(Value, LowLimit, HiLimit: Integer): Integer;
function IntToStr2(AValue: integer): string;
function GetFreeDiskSize(Root: string): LongInt;
function ExecuteFile(FileName, Params, DefaultDir: string; ShowCmd: integer): THandle;
procedure DeleteFile2(ADir, AFileExt: string);
function MinFrom4(v1,v2,v3,v4: double): double;
function MaxFrom4(v1,v2,v3,v4: double): double;

// password
//function Encrypt(InString: shortstring): shortstring; external 'crypt.dll';
//function Decrypt(InString: shortstring): shortstring; external 'crypt.dll';

var
  Params: TIniFile;
  FormatSettings: TFormatSettings;
  DragInfo: TDragInfo;

implementation

function MinFrom4(v1,v2,v3,v4: double): double;
begin
  Result:= v1;
  if v2 < Result then Result:= v2 else
  if v3 < Result then Result:= v3 else
  if v4 < Result then Result:= v4;
end;

function MaxFrom4(v1,v2,v3,v4: double): double;
begin
  Result:= v1;
  if v2 > Result then Result:= v2 else
  if v3 > Result then Result:= v3 else
  if v4 > Result then Result:= v4;
end;

procedure DeleteFile2(ADir, AFileExt: string);
var
  FileName: string;
  FileExt: string;
  Stop: integer;
  F: TSearchRec;
begin
  FileName:= '*.*';
  Stop:= FindFirst(ADir+FileName, faAnyFile, F);
  while Stop = 0 do
  begin
    FileName:= ExtractFileName(F.Name);
    FileExt:= ExtractFileExt(F.Name);
    if FileExt <> AFileExt then DeleteFile(ADir+F.Name);
    Stop:= FindNext(F);
  end;
  FindClose(F);
end;

//------------------------------------------------------------------------------
function ExecuteFile(FileName, Params, DefaultDir: string; ShowCmd: integer): THandle;
var
  zFileName, zParams, zDir: array [0..79] of Char;
begin
  Result:= ShellExecute(Application.MainForm.Handle, nil,
                        StrPCopy(zFileName, FileName),
                        StrPCopy(zParams, Params),
                        StrPCopy(zDir, DefaultDir), ShowCmd);
end;

//------------------------------------------------------------------------------
function GetFreeDiskSize(Root: string): LongInt;
var
  SpC, BpS, NfC, TnC: Cardinal;
  b: bool;
begin
  b:= GetDiskFreeSpace(PChar(Root),SpC,BpS,NfC,TnC);
  if b then Result:= (NfC div 1024)*SpC*BpS else Result:= 0;
end;

//------------------------------------------------------------------------------
function IntToStr2(AValue: integer): string;
begin
  Result:= IntToStr(AValue);
  if length(Result) = 1 then Result:= '0'+Result;
end;

//------------------------------------------------------------------------------
function Limit(Value, LowLimit, HiLimit: extended): extended;
begin
  Result:= Value;
  if Value < LowLimit then Result:= LowLimit;
  if Value > HiLimit then Result:= HiLimit;
end;

//------------------------------------------------------------------------------
function LimitInt(Value, LowLimit, HiLimit: Integer): Integer;
begin
  Result:= Value;
  if Value < LowLimit then Result:= LowLimit;
  if Value > HiLimit then Result:= HiLimit;
end;
//------------------------------------------------------------------------------
function MinValue2(Value: TZonesDataArray): single;
var
  i: integer;
begin
  Result:= Value[0];
  for i:=1 to high(Value) do if Value[i] < Result then Result:= Value[i];
end;

//------------------------------------------------------------------------------
function MaxValue2(Value: TZonesDataArray): single;
var
  i: integer;
begin
  Result:= Value[0];
  for i:=1 to high(Value) do if Value[i] > Result then Result:= Value[i];
end;

//------------------------------------------------------------------------------
function HMS(Value: integer): TDateTime;
var
  Hour, Min, Sec, MSec: Word;
begin
  if Value <= 0 then Result:= 0
  else
  begin
    Hour:= Value div 3600000; if Hour > 23 then Hour:= 23;
    Min:=  (Value - Hour*3600000) div 60000; if Min > 59 then Min:= 59;
    Sec:=  (Value - Hour*3600000 - Min*60000) div 1000; if Sec > 59 then Sec:= 59;
    MSec:= (Value - Hour*3600000 - Min*60000 - Sec*1000); if MSec > 999 then MSec:= 999;
    Result:= EncodeTime(Hour, Min, Sec, MSec);
  end;
end;

//------------------------------------------------------------------------------
procedure Delay(AInterval: DWORD);
var
  h: DWORD;
begin
  h:= GetTickCount;
  while ((GetTickCount - h) < AInterval) do Application.ProcessMessages;
end;

//------------------------------------------------------------------------------
constructor TFIFOBuffer.Create;
begin
  inherited;
  Buffer:= nil;
  FEmpty:= true;
end;

//------------------------------------------------------------------------------
destructor TFIFOBuffer.Destroy;
begin
  Buffer:= nil;
  inherited;
end;

//------------------------------------------------------------------------------
procedure TFIFOBuffer.Push(ACode, AVoltage, ATime: integer);
begin
  SetLength(Buffer,Length(Buffer)+1);
  Buffer[high(Buffer),0]:= ACode;
  Buffer[high(Buffer),1]:= AVoltage;
  Buffer[high(Buffer),2]:= ATime;
  FEmpty:= false;
end;

//------------------------------------------------------------------------------
function TFIFOBuffer.Pop: TSlideInfo;
var
  i: integer;
begin
  with Result do
  begin
    Code:= 0;
    Voltage:= 0;
    TestTime:= 0;
  end;
  if Length(Buffer) = 0 then begin FEmpty:= true; exit; end;

  if length(Buffer) > 0 then with Result do
  begin
    Code:= Buffer[0,0];
    Voltage:= Buffer[0,1];
    TestTime:= Buffer[0,2];
    for i:=1 to high(Buffer) do
    begin
      Buffer[i-1,0]:= Buffer[i,0];
      Buffer[i-1,1]:= Buffer[i,1];
      Buffer[i-1,2]:= Buffer[i,2];
    end;
    SetLength(Buffer,Length(Buffer)-1);
  end;
end;

//------------------------------------------------------------------------------

initialization
  GetLocaleFormatSettings(GetSystemDefaultLCID,FormatSettings);
  FormatSettings.LongTimeFormat:= FormatSettings.ShortTimeFormat;
  FormatSettings.DecimalSeparator:= '.';
  FormatSettings.ThousandSeparator:= ' ';

  Params:= TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
  if not FileExists(ChangeFileExt(Application.ExeName,'.ini')) then
  begin
    Params.WriteInteger('Machines','Count',1);
  end;
finalization
  Params.Free;
end.

