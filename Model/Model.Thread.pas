unit Model.Thread;

interface

uses
  Model.Interfaces, System.Threading, System.SysUtils, System.Classes;

type
  TModelThread = class(TInterfacedObject, IThreadModel)
  public
    function New: IThreadModel;
    procedure ExecutarLaco(PMilisegundos: Integer; PProgresso: TProgress);
  end;

implementation

{ TModelThread }

procedure TModelThread.ExecutarLaco(PMilisegundos: Integer; PProgresso: TProgress);
var
  oThreadPool : ITask;

begin
  if PMilisegundos <= 0 then
    raise Exception.Create('Informar valor maior que 0!');

  oThreadPool := TTask.Create( procedure
                               var
                                 nIndex: Integer;
                               begin
                                 for nIndex := 0 to 100 do
                                 begin
                                   Sleep(PMilisegundos);
                                   PProgresso.Position := nIndex;
                                 end;
                               end );
  oThreadPool.Start;
end;

function TModelThread.New: IThreadModel;
begin
  Result := TModelThread.Create;
end;

end.