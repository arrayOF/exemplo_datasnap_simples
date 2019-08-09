unit ServerMethodsExample;

interface

uses
  System.Classes, System.JSON, Datasnap.DSAuth;

type

{$METHODINFO ON}

  TExemploClass = class(TComponent)
  public
    [TRoleAuth('Publico')]
    function ChamadaPublica(const AMessage: string): TJSONObject;
    [TRoleAuth('Restrito')]
    function Exemplo: TJSONObject;
    [TRoleAuth('Restrito')]
    function UpdateExemplo(ABody: TJSONObject): TJSONObject;
  end;

{$METHODINFO OFF}

implementation

{ TExemploClass }

uses Main;

function TExemploClass.ChamadaPublica(const AMessage: string): TJSONObject;
begin
  Result := TJSONObject.Create;
  Result.AddPair('msg', AMessage);
end;

function TExemploClass.Exemplo: TJSONObject;
begin
  Result := TJSONObject.Create;
  Result.AddPair('msg', 'Olá mundo!')
end;

function TExemploClass.UpdateExemplo(ABody: TJSONObject): TJSONObject;
begin
  fMain.Memo1.Text := ABody.Format();

  Result := TJSONObject.Create;
  Result.AddPair('success', TJSONTrue.Create)
end;

end.
