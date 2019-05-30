unit Rules;

interface

uses
  System.SysUtils, System.Classes, IPPeerServer, Datasnap.DSAuth,
  Datasnap.DSCommonServer, Datasnap.DSHTTP, Datasnap.DSServer;

type
  TdmRules = class(TDataModule)
    DSServer1: TDSServer;
    DSHTTPService1: TDSHTTPService;
    DSAuthenticationManager1: TDSAuthenticationManager;
    DSServerClass1: TDSServerClass;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
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

procedure TdmRules.DSServerClass1GetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass := TExemploClass;
end;

end.
