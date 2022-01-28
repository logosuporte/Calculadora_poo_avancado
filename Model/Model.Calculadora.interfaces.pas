unit Model.Calculadora.interfaces;

interface

uses Calculadora.Eventos;
type

  iCalculadora = interface;
  iOpercaoDisplay = interface;


  iOperacoes  = interface
  ['{79F6C3B1-3717-4DFF-BB33-8DDFF8ED930C}']
    function Executar:String;
    function Display:iOpercaoDisplay;
  end;

  iOpercaoDisplay = interface
  ['{A0ED7B29-4E51-4B7F-909E-4ED5BF40687D}']
    function Resultado(Value:TEvDisplayTotal):iOpercaoDisplay;
    function EndDisplay:iOperacoes;
  end;


  iCalculadoraDisplay = interface
  ['{8EA2C887-9B67-4ACE-A611-6254222EBBC0}']
    function Resultado(Value:TEvDisplayTotal):iCalculadoraDisplay;
    function EndDisplay: iCalculadora;
  end;

  iCalculadora = interface
  ['{AB230511-9506-4258-A23A-0BFA1F4A2A5A}']
    function Add(Value:String):iCalculadora; overload;
    function Add(Value:Integer):iCalculadora; overload;
    function Add(Value:Currency):iCalculadora; overload;
    function Somar: iOperacoes;
    function Subtrair: iOperacoes;
    function Dividir: iOperacoes;
    function Multiplicar: iOperacoes;
    function Display:iCalculadoraDisplay;
  end;


implementation

end.
