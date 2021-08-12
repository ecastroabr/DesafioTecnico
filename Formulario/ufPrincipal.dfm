object fPrincipal: TfPrincipal
  Left = 0
  Top = 0
  Caption = 'ProvaDelphiApp'
  ClientHeight = 362
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 312
    Top = 8
    object mmiTarefas: TMenuItem
      Caption = 'Tarefas'
      object mmiTarefa1: TMenuItem
        Caption = 'Tarefa 1'
        OnClick = mmiTarefa1Click
      end
      object mmiTarefa2: TMenuItem
        Caption = 'Tarefa 2'
        OnClick = mmiTarefa2Click
      end
      object mmiTarefa3: TMenuItem
        Caption = 'Tarefa 3'
        OnClick = mmiTarefa3Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mmiSair: TMenuItem
        Caption = 'Sair'
      end
    end
  end
end
