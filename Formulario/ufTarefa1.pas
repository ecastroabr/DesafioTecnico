unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  uspQuery, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfTarefa1 = class(TForm)
    spQuery1: TspQuery;
    grbColunas: TGroupBox;
    mmoColunas: TMemo;
    grbTabelas: TGroupBox;
    mmoTabelas: TMemo;
    grbCondicoes: TGroupBox;
    mmoCondicoes: TMemo;
    btnGeraSQL: TButton;
    pnlConsulta: TPanel;
    pnSQLGerado: TPanel;
    GroupBox1: TGroupBox;
    mmoSQLGerado: TMemo;
    btnFechar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGeraSQLClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    function GeraSQL: String;
  public

  end;

implementation

{$R *.dfm}

uses ufPrincipal;

procedure TfTarefa1.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfTarefa1.btnGeraSQLClick(Sender: TObject);
begin
  mmoSQLGerado.Lines.Text := GeraSQL;
end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TfPrincipal(Owner).VariableClear(Self);
  Action   := caFree;
end;

procedure TfTarefa1.FormShow(Sender: TObject);
begin
  mmoColunas.SetFocus;
end;

function TfTarefa1.GeraSQL: String;
var
  aColunas,
  aTabelas,
  aCondicoes: TArray<String>;

begin
  aColunas   := mmoColunas.Lines.ToStringArray;
  aTabelas   := mmoTabelas.Lines.ToStringArray;
  aCondicoes := mmoCondicoes.Lines.ToStringArray;

  spQuery1.spColunas.AddStrings(aColunas);
  spQuery1.spTabelas.AddStrings(aTabelas);
  spQuery1.spCondicoes.AddStrings(aCondicoes);

  Result := spQuery1.SQL;
end;

end.