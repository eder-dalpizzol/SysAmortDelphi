object FChild: TFChild
  Left = 1
  Top = 1
  Caption = 'MDI Child'
  ClientHeight = 500
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnDblClick = FormDblClick
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 65
    Align = alTop
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 1
      Top = 42
      Width = 582
      Height = 22
      Align = alBottom
      Caption = 'Realizar Simulacao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
      ExplicitLeft = 368
      ExplicitTop = 64
      ExplicitWidth = 23
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 582
      Height = 15
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 207
        Top = 0
        Width = 68
        Height = 13
        Alignment = taCenter
        Caption = 'Taxa de Juros'
      end
      object Label2: TLabel
        Left = 400
        Top = 1
        Width = 30
        Height = 13
        Alignment = taCenter
        Caption = 'Meses'
      end
      object Label3: TLabel
        Left = 1
        Top = 1
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = 'Capital'
      end
    end
    object EMeses: TEdit
      Left = 401
      Top = 16
      Width = 200
      Height = 21
      NumbersOnly = True
      TabOrder = 3
    end
    object EJuros: TEdit
      Left = 201
      Top = 15
      Width = 200
      Height = 21
      NumbersOnly = True
      TabOrder = 2
    end
    object ECapital: TEdit
      Left = 2
      Top = 16
      Width = 200
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 446
    Width = 584
    Height = 54
    Align = alBottom
    TabOrder = 1
    object SpeedButton2: TSpeedButton
      Left = 1
      Top = 31
      Width = 582
      Height = 22
      Align = alBottom
      Caption = 'Efetuar Amortizacao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton2Click
      ExplicitLeft = 368
      ExplicitTop = 64
      ExplicitWidth = 23
    end
  end
  object GDados: TStringGrid
    Left = 0
    Top = 65
    Width = 584
    Height = 381
    Align = alClient
    ColCount = 6
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
end
