unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Samples.Spin, Vcl.Samples.Gauges;

type
  TThreadExecutar = Class
  public
    class var FspMiliSegundos: Integer;
    class var FpbThread: TProgressBar;
    class procedure Executar;
  end;

  TEdit = Class(Vcl.StdCtrls.TEdit)
  private
    function GetValor: Integer;
  public
    procedure DoEnter; override;
    procedure DoExit; override;
    procedure AfterConstruction; override;
    procedure KeyPress(var Key: Char); override;
  published
    property Valor : Integer read GetValor;
  end;

  TfTarefa2 = class(TForm)
    btnThread: TButton;
    grbThread1: TGroupBox;
    edtThread1: TEdit;
    pgbThread1: TProgressBar;
    grbThread2: TGroupBox;
    edtThread2: TEdit;
    pgbThread2: TProgressBar;
    btnFechar: TButton;
    procedure btnThreadClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
  private

  public
    procedure ExecutarThread1;
    procedure ExecutarThread2;
  end;

implementation

uses
  ufPrincipal, Controller.Factory;

{$R *.dfm}

function TextoParaNumero(Valor: String): Integer;
var
  nIndex: Integer;
  sAux  : String;
begin
  sAux := '0';
  for nIndex := 1 to Length(Valor) do
    if CharInSet(Valor[nIndex], ['0'..'9']) then
      sAux := sAux + Valor[nIndex];
  Result := StrToInt(sAux);
end;

class procedure TThreadExecutar.Executar;
begin
  TControllerFactory.Novo.ThreadController.ExecutarLaco(FspMiliSegundos, FpbThread);
end;

procedure TfTarefa2.btnThreadClick(Sender: TObject);
begin
  ExecutarThread1;
  ExecutarThread2;
end;

procedure TfTarefa2.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfTarefa2.ExecutarThread1;
begin
  TThreadExecutar.FspMiliSegundos := edtThread1.Valor;
  TThreadExecutar.FpbThread       := pgbThread1;
  TThreadExecutar.Executar;
end;

procedure TfTarefa2.ExecutarThread2;
begin
  TThreadExecutar.FspMiliSegundos := edtThread2.Valor;
  TThreadExecutar.FpbThread       := pgbThread2;
  TThreadExecutar.Executar;
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TfPrincipal(Owner).VariableClear(Self);
  Action := caFree;
end;

{ TEdit }

procedure TEdit.AfterConstruction;
begin
  inherited;
  Alignment := taRightJustify;
end;

procedure TEdit.DoEnter;
begin
  inherited;
  Text := IntToStr(Valor);
end;

procedure TEdit.DoExit;
begin
  inherited;
  if Valor <= 0 then
  begin
    ShowMessage('Valor deve ser maior que 1');
    Text := '1';
  end;
  Text := FormatFloat(',0', Valor);
end;

function TEdit.GetValor: Integer;
begin
  Result := TextoParaNumero(Text);
end;

procedure TEdit.KeyPress(var Key: Char);
begin
  inherited;
  if not (CharInSet(Key, ['0'..'9', #8, #9, #13])) then
    Key := #0;
end;

end.
