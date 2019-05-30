unit ServerMethodsExample;

interface

uses
  System.Classes, System.JSON;

type

{$METHODINFO ON}

  TExemploClass = class(TComponent)
  public
    function Exemplo: TJSONObject;
  end;

{$METHODINFO OFF}

implementation

{ TExemploClass }

function TExemploClass.Exemplo: TJSONObject;
begin
  Result := TJSONObject.Create;
  Result.AddPair('msg', 'Olá mundo!')
end;

end.
