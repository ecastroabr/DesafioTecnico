unit Model.Projeto;

interface

uses
  Model.Interfaces, System.SysUtils, System.Math;

type
  TModelProjeto = class(TInterfacedObject, IProjetoModel)
  private
    FClientDataSet: TClientDataSet;
    procedure PopularDataSet;
    procedure CriarDataSet;
  public
    function  ObterTotal(PDataSet: TDataSet): Currency;
    function  ObterTotalDivisoes(PDataSet: TDataSet): Currency;
    procedure RetornarDataSet(PDataSet: TDataSet);
  end;

implementation

{ TModelProjeto }

procedure TModelProjeto.CriarDataSet;
begin
  FClientDataSet.Close;
  FClientDataSet.FieldDefs.Clear;
  with FClientDataSet.FieldDefs.AddFieldDef do
  begin
    DataType := TFieldType.ftInteger;
    Name := 'IdProjeto';
  end;
  with FClientDataSet.FieldDefs.AddFieldDef do
  begin
    DataType := TFieldType.ftString;
    Name := 'NomeProjeto';
    Size := 50;
  end;
  with FClientDataSet.FieldDefs.AddFieldDef do
  begin
    DataType := TFieldType.ftCurrency;
    Name := 'Valor';
  end;
  FClientDataSet.CreateDataSet;
end;

function TModelProjeto.ObterTotal(PDataSet: TDataSet): Currency;
begin
  Result := 0;
  PDataSet.First;
  while not PDataSet.Eof do
  begin
    Result := Result + PDataSet.FieldByName('Valor').AsCurrency;
    PDataSet.Next;
  end;
end;

function TModelProjeto.ObterTotalDivisoes(PDataSet: TDataSet): Currency;
var
  nTotal,
  nDivisor : Extended;

begin
  PDataSet.First;
  nTotal   := 0;
  nDivisor := 0;
  while not PDataSet.Eof do
  begin
    if PDataSet.FieldByName('Valor').AsCurrency = 0 then
      raise Exception.Create('Valor não pode ser zerado');

    if PDataSet.RecNo = 1 then
      nDivisor := PDataSet.FieldByName('Valor').AsCurrency
    else
    begin
      nTotal := nTotal + (PDataSet.FieldByName('Valor').AsCurrency / nDivisor);
      nDivisor := PDataSet.FieldByName('Valor').AsCurrency;
    end;
    PDataSet.Next;
  end;
  Result := RoundTo(nTotal,-2);
end;

procedure TModelProjeto.PopularDataSet;
var
  nIndex,
  nCount: Integer;

begin
  nCount := 01;
  nIndex := 10;
  while nIndex <= 110 do
  begin
    FClientDataSet.Append;
    FClientDataSet.FieldByName('IdProjeto').AsInteger := nCount;
    FClientDataSet.FieldByName('NomeProjeto').AsString := 'Projeto '+IntToStr(nCount);
    FClientDataSet.FieldByName('Valor').AsCurrency := nIndex;
    FClientDataSet.Post;
    Inc(nCount, 01);
    Inc(nIndex, 10);
  end;
end;

procedure TModelProjeto.RetornarDataSet(PDataSet: TDataSet);
begin
  FClientDataSet := TClientDataSet(PDataSet);
  CriarDataSet;
  PopularDataSet;
end;

end.