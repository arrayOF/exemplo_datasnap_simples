program SimpleDataSnap;

uses
  Vcl.Forms,
  Main in 'Main.pas' {fSimpleDataSnap},
  Rules in 'Rules.pas' {dmRules: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfSimpleDataSnap, fSimpleDataSnap);
  Application.CreateForm(TdmRules, dmRules);
  Application.Run;
end.
