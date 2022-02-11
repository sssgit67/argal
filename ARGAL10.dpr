program ARGAL10;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  CommonUnit in 'CommonUnit.pas',
  MachineUnit in 'MachineUnit.pas' {Machine},
  RegimeUnit in 'RegimeUnit.pas',
  MessageUnit in 'MessageUnit.pas' {MessageForm},
  CalendarUnit in 'CalendarUnit.pas' {CalendarForm},
  LogoUnit in 'LogoUnit.pas' {Logo};

{$R *.res}

begin
  Application.Initialize;

  Logo:= TLogo.Create(Application);
  Logo.Show;
  Logo.Update;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TMessageForm, MessageForm);

  while Logo.Timer1.Enabled do  Application.ProcessMessages;

//  Application.CreateForm(TMainForm, MainForm);

  Logo.Hide;
  Logo.Free;

//  Application.CreateForm(TMessageForm, MessageForm);
  Application.Run;
end.
