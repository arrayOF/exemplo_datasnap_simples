unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls;

type
  TfMain = class(TForm)
    Button1: TButton;
    ActionList1: TActionList;
    aAtivar: TAction;
    Memo1: TMemo;
    procedure aAtivarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

uses Rules;

procedure TfMain.aAtivarExecute(Sender: TObject);
begin
  dmRules.DSServer1.Start;
  Self.aAtivar.Enabled := False;
  Application.ProcessMessages;
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
