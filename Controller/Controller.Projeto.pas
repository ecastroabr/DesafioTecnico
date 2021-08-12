unit Controller.Projeto;

interface

uses
  Controller.interfaces;

type
  TProjetoController = class(TInterfacedObject, IProjetoController)
  public
    function ObterTotal(PDataSet: TDataSet): Currency;
    function ObterTotalDivisoes(PDataSet: TDataSet): Currency;
    procedure RetornarDataSet(PDataSet: TDataSet);
  end;

implementation

uses
  Model.Factory;

function TProjetoController.ObterTotal(PDataSet: TDataSet): Currency;
begin
  Result := TModelFactory.Novo.ProjetoModel.ObterTotal(PDataSet);
end;

function TProjetoController.ObterTotalDivisoes(PDataSet: TDataSet): Currency;
begin
  Result := TModelFactory.Novo.ProjetoModel.ObterTotalDivisoes(PDataSet);
end;

procedure TProjetoController.RetornarDataSet(PDataSet: TDataSet);
begin
  TModelFactory.Novo.ProjetoModel.RetornarDataSet(PDataSet);
end;

end.