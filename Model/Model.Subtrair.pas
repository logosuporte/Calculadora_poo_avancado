unit Model.Subtrair;

interface
uses Model.Calculadora.interfaces,System.SysUtils, Model.Calculadora.Operacoes,
  System.Generics.Collections;
Type
  TSubtrair = Class sealed  (TOperacoes)
  public
    Constructor Create(var Value:Tlist<Double>);
    Destructor  Destroy; override;
    class function New(var Value:Tlist<Double>): iOperacoes;
    function Executar:string;override;
  End;


implementation
{ Tsubtrair }

constructor Tsubtrair.Create(var Value:Tlist<Double>);
begin
  FLista := Value;
end;

destructor Tsubtrair.Destroy;
begin

  inherited;
end;

function TSubtrair.Executar: string;
var i :integer;
begin
   Result := FLista[0].ToString;
   for I := 1 to FLista.Count -1 do
     Result := (Result.ToDouble - FLista[i] ).ToString;
   DisplayTotal(Result);
  inherited;
end;

class function Tsubtrair.New(var Value:Tlist<Double>): iOperacoes;
begin
  Result := Self.Create(Value);
end;

end.
