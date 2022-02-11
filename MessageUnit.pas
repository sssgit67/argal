unit MessageUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinProvider, Buttons, sSpeedButton, ExtCtrls, sPanel,
  CommonUnit;

type
  TMessageForm = class(TForm)
    sSkinProvider1: TsSkinProvider;
    YESButton: TsSpeedButton;
    NOButton: TsSpeedButton;
    sPanel1: TsPanel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure YESButtonClick(Sender: TObject);
    procedure NOButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function ShowMessageA(ACaption, AText: string; AYes,ANo: boolean): TModalResult;

var
  MessageForm: TMessageForm;

implementation

{$R *.dfm}

function ShowMessageA(ACaption, AText: string; AYes,ANo: boolean): TModalResult;
begin
  MessageForm.Caption:= ACaption;
  if ACaption = 'Ошибка' then MessageForm.Font.Color:= clRed else MessageForm.Font.Color:= clLime;
  MessageForm.sPanel1.Caption:= AText;
  if AYes then MessageForm.YESButton.Visible:= true else MessageForm.YESButton.Visible:= false;
  if ANo then MessageForm.NOButton.Visible:= true else MessageForm.NOButton.Visible:= false;

  if (AYes and (not ANo)) then MessageForm.YESButton.Left:= (MessageForm.ClientWidth div 2) - (MessageForm.YESButton.Width div 2);
  if (ANo and (not AYes)) then MessageForm.NOButton.Left:= (MessageForm.ClientWidth div 2) - (MessageForm.NOButton.Width div 2);
  if (ANo and AYes) then
  begin
    MessageForm.YESButton.Left:= (MessageForm.ClientWidth div 2) - (MessageForm.YESButton.Width + 20);
    MessageForm.NOButton.Left:= (MessageForm.ClientWidth div 2) + 20;
  end;

  if ((not AYes) and (not ANo)) then
  begin
    MessageForm.Show;
    Delay(2000);
    Result:= mrNone;
    MessageForm.Close;
  end
  else Result:= MessageForm.ShowModal;
end;

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
procedure TMessageForm.FormShow(Sender: TObject);
begin
//
end;

//------------------------------------------------------------------------------
procedure TMessageForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN : ModalResult:= mrOK;
    VK_ESCAPE : ModalResult:= mrCancel;
  end;
end;

//------------------------------------------------------------------------------
procedure TMessageForm.YESButtonClick(Sender: TObject);
begin
  ModalResult:= mrOK;
end;

//------------------------------------------------------------------------------procedure TMessageForm.NOButtonClick(Sender: TObject);
procedure TMessageForm.NOButtonClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

end.
