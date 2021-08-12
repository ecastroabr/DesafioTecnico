unit uspQuery;

interface

uses
  FireDAC.Comp.Client, System.Classes, Firedac.Dapt, System.SysUtils;

type
  TspQuery = class(TFDQuery)
  private
    function GetSQL: String;
  public
    FSQL: String;
    FspColunas: TStringList;
    FspTabelas: TStringList;
    FspCondicoes: TStringList;
    procedure   GeraSQL;
    procedure   MontarSQL;
    procedure   LimparListas;
    destructor  Destroy;override;
    constructor Create(AOwner: TComponent); override;
  published
    property SQL         : String      read GetSQL       write FSQL;
    property spCondicoes : TStringList read FspCondicoes write FspCondicoes;
    property spColunas   : TStringList read FspColunas   write FspColunas;
    property spTabelas   : TStringList read FspTabelas   write FspTabelas;
  end;

implementation

{ TspQuery }

constructor TspQuery.Create(AOwner:TComponent);
begin
  inherited;
  spColunas   := TStringList.Create;
  spTabelas   := TStringList.Create;
  spCondicoes := TStringList.Create;
end;

destructor TspQuery.Destroy;
begin
  spCondicoes.Destroy;
  spColunas.Destroy;
  spTabelas.Destroy;
  inherited;
end;

procedure TspQuery.GeraSQL;
begin
  if spTabelas.Count = 0 then
  begin
    LimparListas;
    raise Exception.Create('Deve ser informado ao menos uma tabela para a geração do SQL');
  end
  else if spTabelas.Count > 1 then
  begin
    LimparListas;
    raise Exception.Create('Deve ser informado apenas uma tabela para a geração do SQL');
  end
  else if spTabelas[0] = EmptyStr then
  begin
    LimparListas;
    raise Exception.Create('Nome da tabela não pode ser <VAZIO> para a geração do SQL');
  end;
  MontarSQL;
end;

function TspQuery.GetSQL: String;
begin
  GeraSQL;
  Result := AnsiUpperCase(FSQL);
end;

procedure TspQuery.LimparListas;
begin
  spCondicoes.Clear;
  spColunas.Clear;
  spTabelas.Clear;
end;

procedure TspQuery.MontarSQL;
const
  WHERE  = ' WHERE ';
  SELECT = ' SELECT ';
  FROM   = ' FROM ';

var
  nIndex: Integer;

begin
  FSQL := SELECT;

  if spColunas.Count > 0 then
  begin
    for nIndex := 0 to spColunas.Count - 1 do
    begin
      if nIndex > 0 then
        FSQL := FSQL + ', ';
      FSQL := FSQL + spColunas[nIndex];
    end;
  end
  else
  begin
    FSQL := FSQL + ' * ';
  end;

  if spTabelas.Count > 0 then
  begin
    FSQL := FSQL + FROM;
    for nIndex := 0 to spTabelas.Count - 1 do
    begin
      if nIndex > 0 then
        FSQL := FSQL + ', ';
      FSQL := FSQL + spTabelas[nIndex];
    end;
  end
  else
    raise Exception.Create('Informe uma tabela');

  if spCondicoes.Count > 0 then
  begin
    FSQL := FSQL + WHERE;
    for nIndex := 0 to spCondicoes.Count - 1 do
    begin
      if nIndex > 0 then
        FSQL := FSQL + ' AND ';
      FSQL := FSQL + spCondicoes[nIndex];
    end;
  end;
  LimparListas;
end;

end.
