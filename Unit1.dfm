object frmInserirREP: TfrmInserirREP
  Left = 0
  Top = 0
  Caption = 'Inserir novo registro do ponto'
  ClientHeight = 617
  ClientWidth = 1027
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtCaminho: TEdit
    Left = 40
    Top = 24
    Width = 473
    Height = 21
    TabOrder = 0
  end
  object etnExplorar: TButton
    Left = 530
    Top = 22
    Width = 75
    Height = 33
    Caption = 'Explorar'
    TabOrder = 1
    OnClick = etnExplorarClick
  end
  object grdDadosRep: TDBGrid
    Left = 530
    Top = 72
    Width = 471
    Height = 521
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object mnmDadosREP: TMemo
    Left = 40
    Top = 72
    Width = 473
    Height = 521
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object pnlStatus: TPanel
    Left = 40
    Top = 48
    Width = 473
    Height = 18
    TabOrder = 4
  end
  object brCount: TButton
    Left = 640
    Top = 22
    Width = 81
    Height = 33
    Caption = 'Conta'
    TabOrder = 5
    OnClick = brCountClick
  end
  object dlgExplorar: TOpenTextFileDialog
    Filter = 'TXT|*.TXT'
    InitialDir = 'C:\Users\Usu'#225'rio\Documents'
    Left = 936
    Top = 16
  end
  object DataSource1: TDataSource
    Left = 872
    Top = 16
  end
end
