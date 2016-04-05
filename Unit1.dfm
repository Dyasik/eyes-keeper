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
    Left = 84
    Top = 128
    Width = 415
    Height = 40
    Caption = 'GIVE YOUR EYES A REST!'
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
    Caption = 'OK'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 312
    Top = 200
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
