unit Rules;

interface

uses
  System.SysUtils,
  System.Classes,
  IPPeerServer,
  Datasnap.DSAuth,
  Datasnap.DSCommonServer,
  Datasnap.DSHTTP,
  Datasnap.DSServer;

type
  TdmRules = class(TDataModule)
    DSServer1: TDSServer;
    DSHTTPService1: TDSHTTPService;
    DSAuthenticationManager1: TDSAuthenticationManager;
    DSServerClass1: TDSServerClass;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
    procedure DSAuthenticationManager1UserAuthenticate(Sender: TObject; const Protocol, Context, User, Password: string; var valid: Boolean; UserRoles: TStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRules: TdmRules;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ServerMethodsExample;

{$R *.dfm}

procedure TdmRules.DSAuthenticationManager1UserAuthenticate(Sender: TObject; const Protocol, Context, User, Password: string; var valid: Boolean; UserRoles: TStrings);
begin
  valid := (User = 'admin') and (Password = 'admin');

  if valid then
  begin
    UserRoles.Add('Restrito');
    UserRoles.Add('Publico');
  end else begin
    valid := True;
    UserRoles.Add('Publico');
  end;
end;

procedure TdmRules.DSServerClass1GetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TExemploClass;
end;

end.
