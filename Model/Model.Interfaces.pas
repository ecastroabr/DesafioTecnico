unit Model.Interfaces;

interface

uses
  Vcl.Samples.Spin, Vcl.ComCtrls, Data.DB, Datasnap.DBClient;

type
  TProgress = Vcl.ComCtrls.TProgressBar;
  TDataset = Data.DB.TDataSet;
  TClientDataSet = Datasnap.DBClient.TClientDataSet;
  TFieldType = Data.DB.TFieldType;


  IThreadModel = interface
    ['{0E6F3257-C07B-4386-AB24-F67400C88476}']
    procedure ExecutarLaco(PMilisegundos: Integer; PProgresso: TProgress);
  end;

  IProjetoModel = interface
    ['{BDF229A0-ADD7-4669-AA55-5F2613CFC70A}']
    function ObterTotal(PDataSet: TDataSet): Currency;
    function ObterTotalDivisoes(PDataSet: TDataSet): Currency;
    procedure RetornarDataSet(PDataSet: TDataSet);
  end;

  IFactoryModel = interface
    ['{2FE62639-FA9A-4360-ACE9-16D29A1F1E4B}']
    function ThreadModel: IThreadModel;
    function ProjetoModel: IProjetoModel;
  end;

implementation

end.