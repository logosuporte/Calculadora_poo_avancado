unit View.Pincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Model.Calculadora,
  Model.Calculadora.interfaces;

type
  TFrmPrincipal = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FCalculadora: iCalculadora;
    procedure ExibeResultado(Value:String) ;
  public
    { Public declarations }
    property Calculadora :iCalculadora read FCalculadora write FCalculadora;

  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

{ TFrmPrincipal }

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  Calculadora.Add(Edit1.Text)
    .Add(Edit2.Text)
    .Somar.Executar;
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
begin
  Calculadora.Add(Edit1.Text)
    .Add(Edit2.Text)
    .Subtrair.Executar;
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
begin
  Calculadora.Add(Edit1.Text)
    .Add(Edit2.Text)
    .Multiplicar.Executar;
end;

procedure TFrmPrincipal.Button5Click(Sender: TObject);
begin
  Calculadora.Add(Edit1.Text)
    .Add(Edit2.Text)
    .Dividir.Executar;
end;

procedure TFrmPrincipal.ExibeResultado(Value: String);
begin
  Edit3.Text := Value;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  Calculadora := TCalculadora.New.Display.Resultado(ExibeResultado).EndDisplay;
end;

end.
