object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Calculadora POO'
  ClientHeight = 242
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 104
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '100'
  end
  object Edit2: TEdit
    Left = 231
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '2'
  end
  object Edit3: TEdit
    Left = 358
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 8
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Somar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 6
  end
  object Button5: TButton
    Left = 8
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Dividir'
    TabOrder = 7
    OnClick = Button5Click
  end
end
