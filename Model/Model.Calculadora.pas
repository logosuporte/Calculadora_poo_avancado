unit Model.Calculadora;

interface

uses
  System.SysUtils, Model.Calculadora.interfaces, Model.Dividir,
  Model.Multiplicar, Model.Somar, Model.Subtrair,
  System.Generics.Collections, Calculadora.Eventos;

type
  TCalculadora = class(TInterfacedObject,iCalculadora,iCalculadoraDisplay)
  private
    FLista :TList<Double>;
    FEvDisplayTotal :TEvDisplayTotal;
  public
    Constructor Create;
    Destructor Destroy; override;
    class function New:iCalculadora;
    function Add(Value:String):iCalculadora; overload;
    function Add(Value:Integer):iCalculadora; overload;
    function Add(Value:Currency):iCalculadora; overload;
    function Somar: iOperacoes;
    function Subtrair: iOperacoes;
    function Dividir: iOperacoes;
    function Multiplicar: iOperacoes;
    function Display:iCalculadoraDisplay;
    function Resultado(Value:TEvDisplayTotal):iCalculadoraDisplay;
    function EndDisplay: iCalculadora;

  end;

implementation

{ TCalculadora }

function TCalculadora.Add(Value: String): iCalculadora;
begin
  Result := Self;
  FLista.Add(Value.ToDouble);
end;

function TCalculadora.Add(Value: Integer): iCalculadora;
begin
  Result := Self;
  FLista.Add(Value.ToDouble);
end;

function TCalculadora.Add(Value: Currency): iCalculadora;
begin
  Result := Self;
  FLista.Add(Value)
end;

constructor TCalculadora.Create;
begin
  FLista := TList<Double>.Create;
end;

destructor TCalculadora.Destroy;
begin
  FLista.Free;
  inherited;
end;

function TCalculadora.Display: iCalculadoraDisplay;
begin
  Result := Self;
end;

function TCalculadora.Dividir: iOperacoes;
begin
  Result := TDividir.New(FLista).Display.Resultado(FEvDisplayTotal).EndDisplay;
end;

function TCalculadora.EndDisplay: iCalculadora;
begin
  Result := Self;
end;

function TCalculadora.Multiplicar: iOperacoes;
begin
    Result := TMultiplicar.New(FLista).Display.Resultado(FEvDisplayTotal).EndDisplay;
end;

class function TCalculadora.New: iCalculadora;
begin
  Result :=Self.Create;
end;

function TCalculadora.Resultado(Value: TEvDisplayTotal): iCalculadoraDisplay;
begin
  Result := Self;
  FEvDisplayTotal := Value;
end;

function TCalculadora.Somar: iOperacoes;
begin
  Result := TSomar.New(FLista).Display.Resultado(FEvDisplayTotal).EndDisplay;
end;

function TCalculadora.Subtrair:iOperacoes;
begin
  Result := Tsubtrair.New(FLista).Display.Resultado(FEvDisplayTotal).EndDisplay;
end;

end.
