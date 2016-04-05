object Form1: TForm1
  Left = 351
  Top = 173
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
    Left = 68
    Top = 128
    Width = 471
    Height = 40
    Caption = 'TIME TO RELAX YOUR EYES!'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 224
    Top = 208
    Width = 137
    Height = 49
    Caption = 'START'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 456
    Top = 328
    Width = 121
    Height = 25
    Caption = 'Turn off'
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
