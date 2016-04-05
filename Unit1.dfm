object Form1: TForm1
  Left = 256
  Top = 155
  BorderStyle = bsDialog
  Caption = 'Keep your eyesight!'
  ClientHeight = 362
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 14
    Top = 128
    Width = 557
    Height = 40
    Caption = #1055#1054#1056#1040' '#1044#1040#1058#1068' '#1043#1051#1040#1047#1040#1052' '#1054#1058#1044#1054#1061#1053#1059#1058#1068'!'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 152
    Top = 192
    Width = 105
    Height = 41
    Caption = #1054#1050
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 312
    Top = 200
    Width = 121
    Height = 25
    Caption = #1053#1077' '#1087#1086#1082#1072#1079#1099#1074#1072#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Interval = 3600000
    OnTimer = Timer1Timer
    Left = 40
    Top = 96
  end
  object Timer2: TTimer
    Interval = 1
    OnTimer = Timer2Timer
    Left = 104
    Top = 96
  end
end
