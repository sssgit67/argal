unit LogoUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TLogo = class(TForm)
    Timer1: TTimer;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Logo: TLogo;

implementation

{$R *.dfm}

procedure TLogo.Timer1Timer(Sender: TObject);
begin
//
  Timer1.Enabled:= False;
end;

end.
