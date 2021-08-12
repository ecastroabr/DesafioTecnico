unit Controller.Factory;

interface

uses
  Controller.Interfaces;

type
  TProgress = Controller.Interfaces.TProgress;
  TClientDataSet = Controller.Interfaces.TClientDataSet;

  TControllerFactory = class(TInterfacedObject, IFactoryController)
  public
    class function Novo: IFactoryController;
    function ThreadController: IThreadController;
    function ProjetoController: IProjetoController;
  end;
implementation

uses
  Controller.Thread,Controller.Projeto;

{ TControllerFactory }

class function TControllerFactory.Novo: IFactoryController;
begin
  Result := TControllerFactory.Create;
end;

function TControllerFactory.ProjetoController: IProjetoController;
begin
  Result := TProjetoController.Create;
end;

function TControllerFactory.ThreadController: IThreadController;
begin
  Result := TThreadController.Create;
end;

end.