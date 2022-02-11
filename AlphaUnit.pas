unit AlphaUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FilterUnit;

type
  TAlphaForm = class(TForm)
  private
    { Private declarations }
    procedure WMShow(var Message: TWMShowWindow); message WM_SHOWWINDOW;
  public
    { Public declarations }
  end;

implementation

procedure TAlphaForm.WMShow(var Message: TWMShowWindow);
begin
  if Message.Show then
  begin
    //
    Filter.Show;
  end
  else Filter.Hide;
  inherited;
end;

end.
