object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Tarefa 2'
  ClientHeight = 161
  ClientWidth = 394
  Color = clBtnFace
  Constraints.MinHeight = 200
  Constraints.MinWidth = 410
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btnThread: TButton
    Left = 294
    Top = 45
    Width = 94
    Height = 33
    Caption = '&Executar'
    TabOrder = 2
    OnClick = btnThreadClick
  end
  object grbThread1: TGroupBox
    Left = 8
    Top = 8
    Width = 280
    Height = 70
    Caption = 'Thread 1'
    TabOrder = 0
    object edtThread1: TEdit
      Left = 8
      Top = 16
      Width = 89
      Height = 21
      TabOrder = 0
      Text = '1'
    end
    object pgbThread1: TProgressBar
      Left = 8
      Top = 43
      Width = 266
      Height = 18
      TabOrder = 1
    end
  end
  object grbThread2: TGroupBox
    Left = 8
    Top = 84
    Width = 280
    Height = 70
    Caption = 'Thread 2'
    TabOrder = 1
    object edtThread2: TEdit
      Left = 9
      Top = 16
      Width = 88
      Height = 21
      TabOrder = 0
      Text = '1'
    end
    object pgbThread2: TProgressBar
      Left = 8
      Top = 43
      Width = 266
      Height = 18
      TabOrder = 1
    end
  end
  object btnFechar: TButton
    Left = 294
    Top = 121
    Width = 94
    Height = 33
    Caption = '&Fechar'
    TabOrder = 3
    OnClick = btnFecharClick
  end
end
