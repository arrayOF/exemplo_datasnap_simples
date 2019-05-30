unit ServerMethodsExample;

interface

uses
  System.Classes, System.JSON;

type

{$METHODINFO ON}

  TExemploClass = class(TComponent)
  public
    function Exemplo: TJSONObject;
    function UpdateExemplo(ABody: TJSONObject): TJSONObject;
  end;

{$METHODINFO OFF}

implementation

{ TExemploClass }

uses Main;

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
