program ProvaDelphiApp;

uses
  Vcl.Forms,
  ufPrincipal in 'Formulario\ufPrincipal.pas' {fPrincipal},
  ufTarefa1 in 'Formulario\ufTarefa1.pas' {fTarefa1},
  ufTarefa2 in 'Formulario\ufTarefa2.pas' {fTarefa2},
  ufTarefa3 in 'Formulario\ufTarefa3.pas' {fTarefa3},
  Controller.Projeto in 'Controller\Controller.Projeto.pas',
  Controller.Interfaces in 'Controller\Controller.Interfaces.pas',
  Controller.Thread in 'Controller\Controller.Thread.pas',
  Controller.Factory in 'Controller\Controller.Factory.pas',
  Model.Thread in 'Model\Model.Thread.pas',
  Model.Interfaces in 'Model\Model.Interfaces.pas',
  Model.Factory in 'Model\Model.Factory.pas',
  Model.Projeto in 'Model\Model.Projeto.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title             := 'Prova Delphi Eduardo';
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
