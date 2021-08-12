object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Tarefa 1'
  ClientHeight = 380
  ClientWidth = 704
  Color = clBtnFace
  Constraints.MinHeight = 380
  Constraints.MinWidth = 720
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlConsulta: TPanel
    Left = 0
    Top = 0
    Width = 704
    Height = 137
    Align = alTop
    TabOrder = 4
    ExplicitWidth = 956
    object btnFechar: TButton
      Left = 620
      Top = 101
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = btnFecharClick
    end
  end
  object grbColunas: TGroupBox
    Left = 8
    Top = 8
    Width = 200
    Height = 120
    Caption = 'Colunas'
    TabOrder = 0
    object mmoColunas: TMemo
      Left = 2
      Top = 15
      Width = 196
      Height = 103
      TabStop = False
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitLeft = 19
      ExplicitTop = 32
      ExplicitWidth = 234
      ExplicitHeight = 91
    end
  end
  object grbTabelas: TGroupBox
    Left = 211
    Top = 8
    Width = 200
    Height = 120
    Caption = 'Tabelas'
    TabOrder = 1
    object mmoTabelas: TMemo
      Left = 2
      Top = 15
      Width = 196
      Height = 103
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitLeft = 4
      ExplicitTop = 17
      ExplicitWidth = 277
      ExplicitHeight = 152
    end
  end
  object grbCondicoes: TGroupBox
    Left = 414
    Top = 8
    Width = 200
    Height = 120
    Caption = 'Condi'#231#245'es'
    TabOrder = 2
    object mmoCondicoes: TMemo
      Left = 2
      Top = 15
      Width = 196
      Height = 103
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitLeft = 4
      ExplicitTop = 17
      ExplicitWidth = 277
      ExplicitHeight = 152
    end
  end
  object btnGeraSQL: TButton
    Left = 620
    Top = 73
    Width = 75
    Height = 25
    Caption = '&GeraSQL'
    TabOrder = 3
    OnClick = btnGeraSQLClick
  end
  object pnSQLGerado: TPanel
    Left = 0
    Top = 137
    Width = 704
    Height = 243
    Align = alClient
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    TabOrder = 5
    ExplicitTop = 202
    ExplicitWidth = 970
    ExplicitHeight = 247
    object GroupBox1: TGroupBox
      Left = 11
      Top = 11
      Width = 682
      Height = 221
      Align = alClient
      Caption = 'SQL Gerado'
      TabOrder = 0
      ExplicitLeft = 102
      ExplicitTop = 48
      ExplicitWidth = 185
      ExplicitHeight = 105
      object mmoSQLGerado: TMemo
        Left = 2
        Top = 15
        Width = 678
        Height = 204
        Align = alClient
        ReadOnly = True
        TabOrder = 0
        ExplicitLeft = 35
        ExplicitTop = 22
        ExplicitWidth = 599
        ExplicitHeight = 212
      end
    end
  end
  object spQuery1: TspQuery
    SQL = ''
    Left = 193
    Top = 73
  end
end
