unit Model.Factory;

interface

uses
  Model.Interfaces;

type
  TModelFactory = class(TInterfacedObject, IFactoryModel)
  public
    class function Novo: IFactoryModel;
    function ThreadModel: IThreadModel;
    function ProjetoModel: IProjetoModel;
  end;

implementation

uses
  Model.Thread, Model.Projeto;

{ IModelFactory }

class function TModelFactory.Novo: IFactoryModel;
begin
  Result := TModelFactory.Create;
end;

function TModelFactory.ProjetoModel: IProjetoModel;
begin
  Result := TModelProjeto.Create;
end;

function TModelFactory.ThreadModel: IThreadModel;
begin
  Result := TModelThread.Create;
end;

end.