unit UChild;

interface

uses Winapi.Windows, System.Classes, Vcl.Graphics, Vcl.Forms, Vcl.Controls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.Buttons, Vcl.ExtCtrls, Sysutils, Vcl.Dialogs;

type
  TFChild = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    EMeses: TEdit;
    EJuros: TEdit;
    ECapital: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    GDados: TStringGrid;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFChild.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFChild.FormDblClick(Sender: TObject);
begin
  Width:= 600;
end;

procedure TFChild.FormResize(Sender: TObject);
begin
  Width := 600;
end;

procedure TFChild.SpeedButton1Click(Sender: TObject);
var _saldodevedor, _juros, _juros_totais: Double;
    I: integer;
begin

  GDados.RowCount := StrToInt(EMeses.Text) + 1;

  GDados.Cells[0, 0] := 'Mes';
  GDados.Cells[1, 0] := 'Juros' ;
  GDados.Cells[3, 0] :=  'Amort. Saldo Devedor';
  GDados.Cells[4, 0] :=  'Pagamento';
  GDados.Cells[5, 0] :=  'Saldo Devedor';

  _saldodevedor :=  StrToFloat(ECapital.Text);
  _juros := 0;
  _juros_totais := 0;

  for I := 0 to StrToInt(EMeses.Text) do
  begin

    if I = StrToInt(EMeses.Text) then
    begin
       GDados.Cells[0, I] := FloatToStr(I) ;
       GDados.Cells[1, I] := floattostr((_saldodevedor * (StrToFloat(EJuros.Text)))/100) ;
       GDados.Cells[3, I] :=  ECapital.Text;
       GDados.Cells[4, I] :=  floattostr(_saldodevedor);
       GDados.Cells[5, I] :=  '0'    ;
    end
    else
    begin
       GDados.Cells[0, I] := FloatToStr(I) ;
       GDados.Cells[1, I] := floattostr((_saldodevedor * (StrToFloat(EJuros.Text)))/100) ;
       GDados.Cells[3, I] := '';
       GDados.Cells[4, I] := '' ;
       GDados.Cells[5, I] :=  floattostr(_saldodevedor);

    end;

    _juros := _saldodevedor * (StrToFloat(EJuros.Text))/100;
    _juros_totais := _juros_totais + _juros;
    _saldodevedor:= _saldodevedor + _juros;

  end;

  GDados.Cells[0, I+1] := 'Totais';
  GDados.Cells[1, I+1] := FloatToStr(_juros_totais);
  GDados.Cells[3, I+1] :=  ECapital.Text;
  GDados.Cells[4, I+1] :=  floattostr(_saldodevedor);
  GDados.Cells[5, I+1] :=  '';
end;

procedure TFChild.SpeedButton2Click(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento...');
end;

end.
