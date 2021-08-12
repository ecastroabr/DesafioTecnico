unit uspComponentesRegistro;

interface

uses
  uspQuery, System.Classes;

procedure register;

implementation

procedure register;
begin
  RegisterComponents('spComponentes', [TspQuery] );
end;

end.