unit Controller.Thread;

interface

uses
  Controller.Interfaces;

type
  TThreadController = class(TInterfacedObject,iThreadController)
  public
    procedure ExecutarLaco(PMilisegundos: Integer; PProgresso: TProgress);
  end;
implementation

uses
  Model.Factory;

{ TThreadController }

procedure TThreadController.ExecutarLaco(PMilisegundos: Integer; PProgresso: TProgress);
begin
  TModelFactory.Novo.ThreadModel.ExecutarLaco(PMilisegundos, PProgresso);
end;

end.
