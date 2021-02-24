program Calc;

uses
  System.StartUpCopy,
  FMX.Forms,
  Calculadora_Projeto in 'Calculadora_Projeto.pas' {Calculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TCalculadora, Calculadora);
  Application.Run;
end.
