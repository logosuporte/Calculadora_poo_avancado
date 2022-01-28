unit Model.Dividir;

interface
uses Model.Calculadora.interfaces,System.SysUtils, Model.Calculadora.Operacoes,
  System.Generics.Collections;

Type
  TDividir = Class sealed (TOperacoes)
  public
    Constructor Create(var Value:Tlist<Double>);
    Destructor  Destroy; override;
    class function New(var Value:Tlist<Double>): iOperacoes;
    function Executar:string;override;
  End;


implementation
{ TDividir }

Constructor TDividir.Create(var Value:Tlist<Double>);
begin
   FLista := Value;
end;

destructor TDividir.Destroy;
begin

  inherited;
end;

function TDividir.Executar: string;
var i :integer;
begin
  Result := FLista[0].ToString;
  for I := 1 to FLista.Count -1 do
    Result := (Result.ToDouble / FLista[i] ).ToString;
  DisplayTotal(Result);
  inherited;
end;

class function TDividir.New(var Value:Tlist<Double>): iOperacoes;
begin
  Result := Self.Create(Value);
end;



end.
