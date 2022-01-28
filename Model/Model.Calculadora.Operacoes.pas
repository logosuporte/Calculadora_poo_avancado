unit Model.Calculadora.Operacoes;

interface

uses Model.Calculadora.interfaces,System.Generics.Collections,
  Calculadora.Eventos;
Type
  TOperacoes = class(TInterfacedObject,iOperacoes,iOpercaoDisplay)
  protected
    FLista: TList<Double>;
    FEvDisplayTotal :TEvDisplayTotal;
    procedure DisplayTotal(Value:String);
  public
    function Executar:String; virtual;
    function Display:iOpercaoDisplay;
    function Resultado(Value:TEvDisplayTotal):iOpercaoDisplay;
    function EndDisplay:iOperacoes;
  end;

implementation

{ TOperacoes }

function TOperacoes.Display: iOpercaoDisplay;
begin
  Result := Self;
end;

procedure TOperacoes.DisplayTotal(Value: String);
begin
  if Assigned(FEvDisplayTotal) then
    FEvDisplayTotal(Value);

end;

function TOperacoes.EndDisplay: iOperacoes;
begin
  Result := Self;
end;

function TOperacoes.Executar: String;
begin
  FLista.Clear;
end;

function TOperacoes.Resultado(Value:TEvDisplayTotal): iOpercaoDisplay;
begin
  Result := Self;
  FEvDisplayTotal := Value;
end;

end.
