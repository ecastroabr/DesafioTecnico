unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls,controller.Factory, Data.DB;

type
  TfTarefa3 = class(TForm)
    pnPrincipal: TPanel;
    pnTotais: TPanel;
    pnValoresProjeto: TPanel;
    grdValoresProjeto: TDBGrid;
    lblValoresProjeto: TLabel;
    btnObterTotal: TButton;
    edtTotal: TEdit;
    lblTotal: TLabel;
    lblTotalDivisoes: TLabel;
    btnObterTotalDivisoes: TButton;
    edtTotalDivisoes: TEdit;
    btnFechar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnObterTotalClick(Sender: TObject);
    procedure btnObterTotalDivisoesClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    FDataSource: TDataSource;
    FClientDataSet: TClientDataSet;
    procedure ExibirValores;
    procedure ObterTotal;
    procedure ObterTotalDivisoes;
  public
    destructor Destroy;override;
  end;

implementation

{$R *.dfm}

uses ufPrincipal;

procedure TfTarefa3.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfTarefa3.btnObterTotalClick(Sender: TObject);
begin
  ObterTotal;
end;

procedure TfTarefa3.btnObterTotalDivisoesClick(Sender: TObject);
begin
  ObterTotalDivisoes;
end;

destructor TfTarefa3.Destroy;
begin
  FClientDataSet.Destroy;
  FDataSource.Destroy;
  inherited;
end;

procedure TfTarefa3.ExibirValores;
begin
  TControllerFactory.Novo.ProjetoController.RetornarDataSet(FClientDataSet);
  FDataSource.DataSet                    := FClientDataSet;
  grdValoresProjeto.DataSource           := FDataSource;
  grdValoresProjeto.Columns[0].FieldName := 'IdProjeto';
  grdValoresProjeto.Columns[1].FieldName := 'NomeProjeto';
  grdValoresProjeto.Columns[2].FieldName := 'Valor';
end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TfPrincipal(Owner).VariableClear(Self);
  Action := caFree;
end;

procedure TfTarefa3.FormCreate(Sender: TObject);
begin
  FClientDataSet := TClientDataSet.Create(nil);
  FDataSource := TDataSource.Create(nil);
  ExibirValores;
end;

procedure TfTarefa3.ObterTotal;
begin
  EdtTotal.Text := FormatFloat( ',0.00' ,TControllerFactory.Novo.ProjetoController.ObterTotal(FClientDataSet));
end;

procedure TfTarefa3.ObterTotalDivisoes;
begin
  edtTotalDivisoes.Text := CurrToStr(TControllerFactory.Novo.ProjetoController.ObterTotalDivisoes(FClientDataSet));
end;

end.