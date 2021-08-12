unit ufPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mmiTarefas: TMenuItem;
    mmiTarefa1: TMenuItem;
    mmiTarefa2: TMenuItem;
    mmiTarefa3: TMenuItem;
    N1: TMenuItem;
    mmiSair: TMenuItem;
    procedure mmiTarefa1Click(Sender: TObject);
    procedure mmiTarefa2Click(Sender: TObject);
    procedure mmiTarefa3Click(Sender: TObject);
  private

  public
    procedure VariableClear(Form: TForm);
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

uses
  ufTarefa1, ufTarefa2, ufTarefa3;

var
  fTarefa1 : TfTarefa1;
  fTarefa2 : TfTarefa2;
  fTarefa3 : TfTarefa3;

procedure TfPrincipal.mmiTarefa1Click(Sender: TObject);
begin
  if not Assigned(fTarefa1) then
    fTarefa1 := TfTarefa1.Create(Self);
  fTarefa1.Show;
end;

procedure TfPrincipal.mmiTarefa2Click(Sender: TObject);
begin
  if not Assigned(fTarefa2) then
    fTarefa2 := TfTarefa2.Create(Self);
  fTarefa2.Show;
end;

procedure TfPrincipal.mmiTarefa3Click(Sender: TObject);
begin
  if not Assigned(fTarefa3) then
    fTarefa3 := TfTarefa3.Create(Self);
  fTarefa3.Show;
end;

procedure TfPrincipal.VariableClear(Form: TForm);
begin
  if fTarefa1 = Form then
    fTarefa1 := Nil;
  if fTarefa2 = Form then
    fTarefa2 := Nil;
  if fTarefa3 = Form then
    fTarefa3 := Nil;
end;

initialization
  ReportMemoryLeaksOnShutdown := True;

end.