unit Controller.Interfaces;

interface

uses
  Vcl.Samples.Spin, Vcl.ComCtrls, Data.DB, Datasnap.DBClient;

type
  TProgress = Vcl.ComCtrls.TProgressBar;
  TDataset = Data.DB.TDataSet;
  TClientDataSet = Datasnap.DBClient.TClientDataSet;
  TFieldType = Data.DB.TFieldType;

  IThreadController = interface
    ['{8D669FD9-9899-4721-866A-287FAC55D684}']
    procedure ExecutarLaco(PMilisegundos: Integer; PProgresso: TProgress);
  end;

  IProjetoController = interface
    ['{358C90B4-58D3-42A2-A18B-FC65D6D28A83}']
    function ObterTotal(PDataSet: TDataSet): Currency;
    function ObterTotalDivisoes(PDataSet: TDataSet): Currency;
    procedure RetornarDataSet(PDataSet: TDataSet);
  end;

  IFactoryController = interface
    ['{120737AA-3390-40F7-88D9-D8217B4730BD}']
    function ThreadController: IThreadController;
    function ProjetoController: IProjetoController;
  end;

implementation

end.