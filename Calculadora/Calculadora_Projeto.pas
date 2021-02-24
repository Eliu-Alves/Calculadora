unit Calculadora_Projeto;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TCalculadora = class(TForm)
    btn_zero: TButton;
    btn_virgula: TButton;
    btn_somar: TButton;
    btn_igual: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_menos: TButton;
    btn_3: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_mult: TButton;
    btn_6: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_div: TButton;
    btn_9: TButton;
    caixa_butoes: TLayout;
    Layout2: TLayout;
    lb_operadores: TLabel;
    lb_num1: TLabel;
    lb_num2: TLabel;
    btn_apagar: TButton;
    btn_limpacampo: TButton;
    btn_raiz: TButton;
    btn_limpadigito: TButton;
    procedure btn_igualClick(Sender: TObject);
    procedure btn_somarClick(Sender: TObject);
    procedure btn_menosClick(Sender: TObject);
    procedure btn_multClick(Sender: TObject);
    procedure btn_divClick(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_zeroClick(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_apagarClick(Sender: TObject);
    procedure btn_virgulaClick(Sender: TObject);
    procedure btn_raizClick(Sender: TObject);
    procedure btn_limpacampoClick(Sender: TObject);
    procedure btn_limpadigitoClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Calculadora: TCalculadora;

implementation

{$R *.fmx}

procedure TCalculadora.btn_1Click(Sender: TObject);
begin

  if lb_operadores.Text = '' then
  begin
    lb_num1.Text := lb_num1.Text +'1';
  end
  else
  begin
    lb_num2.Text := lb_num2.Text +'1';
  end;
end;

procedure TCalculadora.btn_2Click(Sender: TObject);
begin

  if lb_operadores.Text = '' then
  begin
    lb_num1.Text := lb_num1.Text +'2';
  end
  else
  begin
    lb_num2.Text := lb_num2.Text + '2';
  end;

end;

procedure TCalculadora.btn_3Click(Sender: TObject);
begin

  if lb_operadores.Text = '' then
  begin
    lb_num1.Text := lb_num1.Text + '3';
  end
  else
  begin
     lb_num2.Text := lb_num2.Text + '3';
  end;

end;

procedure TCalculadora.btn_4Click(Sender: TObject);
begin

  if lb_operadores.Text= '' then
  begin
     lb_num1.Text := lb_num1.Text + '4';
  end
  else
  begin
    lb_num2.Text := lb_num2.Text + '4';
  end;

end;

procedure TCalculadora.btn_5Click(Sender: TObject);
begin

  if lb_operadores.Text='' then
  begin
    lb_num1.Text := lb_num1.Text + '5';
  end
  else
  begin
    lb_num2.Text := lb_num2.Text + '5';
  end;

end;

procedure TCalculadora.btn_6Click(Sender: TObject);
begin
   if lb_operadores.Text='' then
  begin
    lb_num1.Text := lb_num1.Text + '6';
  end
  else
  begin
    lb_num2.Text := lb_num2.Text + '6';
  end;
end;

procedure TCalculadora.btn_7Click(Sender: TObject);
begin
  if lb_operadores.Text='' then
  begin
    lb_num1.Text := lb_num1.Text + '7';
  end
  else
  begin
    lb_num2.Text := lb_num2.Text + '7';
  end;
end;

procedure TCalculadora.btn_8Click(Sender: TObject);
begin
  if lb_operadores.Text='' then
  begin
    lb_num1.Text := lb_num1.Text + '8';
  end
  else
  begin
    lb_num2.Text := lb_num2.Text + '8';
  end;
end;

procedure TCalculadora.btn_9Click(Sender: TObject);
begin
  if lb_operadores.Text='' then
  begin
    lb_num1.Text := lb_num1.Text + '9';
  end
  else
  begin
    lb_num2.Text := lb_num2.Text + '9';
  end;
end;


procedure TCalculadora.btn_apagarClick(Sender: TObject);
begin

 if lb_operadores.Text='' then
  begin
    lb_num1.Text := copy(lb_num1.Text, 0, length(lb_num1.Text)-1);
  end
  else
  begin
    lb_num2.Text := copy(lb_num2.Text, 0, length(lb_num2.Text)-1);
  end;

end;


procedure TCalculadora.btn_divClick(Sender: TObject);
begin
    lb_operadores.Text:= '/';

    btn_somar.Enabled:=true;
    btn_menos.Enabled:=true;
    btn_div.Enabled:=false;
    btn_mult.Enabled:=true;
    btn_raiz.Enabled:=true;
end;

procedure TCalculadora.btn_igualClick(Sender: TObject);
var v1,v2:double;
var x:char;
begin

v1:= strToFloat(lb_num1.Text);
v2:= strToFloat(lb_num2.Text);

//Utilizando Switch  usando String
//apenas variaveis char e integer

  x := lb_operadores.Text[1];
case x of
  '+':begin
    ShowMessage(FloatToStr(v1+v2));
  end;

  '-':begin
    ShowMessage(FloatToStr(v1-v2));
  end;

  'X':begin
    ShowMessage(FloatToStr(v1*v2));
  end;

  '/':begin
    ShowMessage(FloatToStr(v1/v2));
  end;

  '√':begin
    ShowMessage(FloatToStr(sqrt(v1)));
  end;

end;

//limpando as caixas
   lb_operadores.Text:= '';
   lb_num1.Text :='';
   lb_num2.Text :='';

//ativando todos os botoes
    btn_somar.Enabled:=true;
    btn_menos.Enabled:=true;
    btn_div.Enabled:=true;
    btn_mult.Enabled:=true;
    btn_raiz.Enabled:=true;

end;


procedure TCalculadora.btn_limpacampoClick(Sender: TObject);
begin

//limpando caixas
    lb_operadores.Text:= '';
   lb_num1.Text :='';
   lb_num2.Text :='';

//ativando os botoes
   btn_somar.Enabled:=true;
    btn_menos.Enabled:=true;
    btn_div.Enabled:=true;
    btn_mult.Enabled:=true;
    btn_raiz.Enabled:=true;
end;

procedure TCalculadora.btn_limpadigitoClick(Sender: TObject);
begin
  if lb_operadores.Text='' then
  begin
    lb_num1.Text := '';
  end
  else
  begin
    lb_num2.Text := '';
  end;
end;

procedure TCalculadora.btn_menosClick(Sender: TObject);
begin
    lb_operadores.Text:= '-';

    btn_somar.Enabled:=true;
    btn_menos.Enabled:=false;
    btn_div.Enabled:=true;
    btn_mult.Enabled:=true;
    btn_raiz.Enabled:=true;
end;

procedure TCalculadora.btn_multClick(Sender: TObject);
begin
    lb_operadores.Text:= 'X';

    btn_somar.Enabled:=true;
    btn_menos.Enabled:=true;
    btn_div.Enabled:=true;
    btn_mult.Enabled:=false;
    btn_raiz.Enabled:=true;
end;

procedure TCalculadora.btn_somarClick(Sender: TObject);
begin
    lb_operadores.Text:= '+';

    btn_somar.Enabled:=false;
    btn_menos.Enabled:=true;
    btn_div.Enabled:=true;
    btn_mult.Enabled:=true;
    btn_raiz.Enabled:=true;

end;

procedure TCalculadora.btn_virgulaClick(Sender: TObject);
begin
  if lb_operadores.Text='' then
  begin
    lb_num1.Text := lb_num1.Text + ',';
  end
  else
  begin
    lb_num2.Text := lb_num2.Text + ',';
  end;
end;

procedure TCalculadora.btn_zeroClick(Sender: TObject);
begin

  if lb_operadores.Text = '' then
  begin
    lb_num1.Text := lb_num1.Text + '0';
  end
  else
  begin
     lb_num2.Text := lb_num2.Text + '0';
  end;

end;

procedure TCalculadora.btn_raizClick(Sender: TObject);
begin
  lb_operadores.Text:= '√';

    btn_somar.Enabled:=true;
    btn_menos.Enabled:=true;
    btn_div.Enabled:=true;
    btn_mult.Enabled:=true;
    btn_raiz.Enabled:=false;
end;

end.
