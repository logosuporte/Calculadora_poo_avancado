program CalculadoraPOO;

uses
  Vcl.Forms,
  View.Pincipal in 'View.Pincipal.pas' {FrmPrincipal},
  Model.Calculadora in 'Model\Model.Calculadora.pas',
  Model.Dividir in 'Model\Model.Dividir.pas',
  Model.Multiplicar in 'Model\Model.Multiplicar.pas',
  Model.Somar in 'Model\Model.Somar.pas',
  Model.Subtrair in 'Model\Model.Subtrair.pas',
  Model.Calculadora.interfaces in 'Model\Model.Calculadora.interfaces.pas',
  Model.classs.Helper in 'Model\Model.classs.Helper.pas',
  Model.Calculadora.Operacoes in 'Model\Model.Calculadora.Operacoes.pas',
  Calculadora.Eventos in 'Model\Calculadora.Eventos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
