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
    Left = 80
    Top = 24
    Width = 497
    Height = 21
    TabOrder = 0
  end
  object etnExplorar: TButton
    Left = 600
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Explorar'
    TabOrder = 1
    OnClick = etnExplorarClick
  end
  object grdDadosRep: TDBGrid
    Left = 8
    Top = 64
    Width = 73
    Height = 73
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object mnmDadosREP: TMemo
    Left = 87
    Top = 64
    Width = 866
    Height = 521
    TabOrder = 3
  end
  object dlgExplorar: TOpenTextFileDialog
    Filter = 'TXT|*.TXT'
    InitialDir = 'C:\Users\Usu'#225'rio\Documents'
    Left = 936
    Top = 16
  end
end
