object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Tarefa 3'
  ClientHeight = 417
  ClientWidth = 730
  Color = clBtnFace
  Constraints.MinHeight = 377
  Constraints.MinWidth = 746
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 730
    Height = 417
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 746
    ExplicitHeight = 377
    object pnTotais: TPanel
      Left = 1
      Top = 296
      Width = 728
      Height = 120
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object lblTotal: TLabel
        Left = 602
        Top = 0
        Width = 44
        Height = 13
        Caption = 'Total R$:'
      end
      object lblTotalDivisoes: TLabel
        Left = 602
        Top = 45
        Width = 85
        Height = 13
        Caption = 'Total divis'#245'es R$:'
      end
      object btnObterTotal: TButton
        Left = 483
        Top = 12
        Width = 107
        Height = 25
        Caption = 'Obter Total'
        TabOrder = 0
        OnClick = btnObterTotalClick
      end
      object btnObterTotalDivisoes: TButton
        Left = 459
        Top = 57
        Width = 131
        Height = 25
        Caption = 'Obter Total Divis'#245'es'
        TabOrder = 1
        OnClick = btnObterTotalDivisoesClick
      end
      object edtTotal: TEdit
        Left = 602
        Top = 14
        Width = 121
        Height = 21
        Alignment = taRightJustify
        ReadOnly = True
        TabOrder = 2
      end
      object edtTotalDivisoes: TEdit
        Left = 602
        Top = 59
        Width = 121
        Height = 21
        Alignment = taRightJustify
        ReadOnly = True
        TabOrder = 3
      end
      object btnFechar: TButton
        Left = 648
        Top = 86
        Width = 75
        Height = 25
        Caption = '&Fechar'
        TabOrder = 4
        OnClick = btnFecharClick
      end
    end
    object pnValoresProjeto: TPanel
      Left = 1
      Top = 1
      Width = 728
      Height = 295
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 1
      ExplicitHeight = 305
      object lblValoresProjeto: TLabel
        Left = 5
        Top = 5
        Width = 718
        Height = 13
        Align = alTop
        Caption = 'Valores por projeto:'
        ExplicitWidth = 96
      end
      object grdValoresProjeto: TDBGrid
        Left = 5
        Top = 18
        Width = 718
        Height = 272
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            Title.Caption = 'Projeto'
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Nome Projeto'
            Width = 505
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Valor'
            Width = 103
            Visible = True
          end>
      end
    end
  end
end
