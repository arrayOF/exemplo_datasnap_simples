program SimpleDataSnap;

uses
  Vcl.Forms,
  Main in 'Main.pas' {fMain},
  Rules in 'Rules.pas' {dmRules: TDataModule},
  ServerMethodsExample in 'ServerMethodsExample.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TdmRules, dmRules);
  Application.Run;
end.
