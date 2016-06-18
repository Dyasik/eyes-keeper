object Form2: TForm2
  Left = 598
  Top = 174
  Width = 259
  Height = 354
  BorderIcons = [biSystemMenu]
  Caption = 'EyeKeeper Settings'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 69
    Top = 16
    Width = 105
    Height = 27
    Caption = 'Delay time'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 36
    Height = 16
    Caption = 'Hours'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 106
    Top = 56
    Width = 28
    Height = 16
    Caption = 'Mins'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 184
    Top = 56
    Width = 31
    Height = 16
    Caption = 'Secs'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BtnSave: TSpeedButton
    Left = 53
    Top = 264
    Width = 137
    Height = 41
    Caption = 'SAVE'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    OnClick = BtnSaveClick
  end
  object Label5: TLabel
    Left = 86
    Top = 120
    Width = 68
    Height = 18
    Caption = 'Min Value'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 42
    Top = 152
    Width = 160
    Height = 18
    Caption = '0 hours 30 mins 0 secs'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 86
    Top = 188
    Width = 72
    Height = 18
    Caption = 'Max Value'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 46
    Top = 220
    Width = 151
    Height = 18
    Caption = '2 hours 0 mins 0 secs'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object EditH: TEdit
    Left = 24
    Top = 80
    Width = 33
    Height = 21
    AutoSize = False
    BiDiMode = bdLeftToRight
    MaxLength = 2
    ParentBiDiMode = False
    TabOrder = 0
  end
  object EditM: TEdit
    Left = 104
    Top = 80
    Width = 33
    Height = 21
    BiDiMode = bdLeftToRight
    MaxLength = 2
    ParentBiDiMode = False
    TabOrder = 1
  end
  object EditS: TEdit
    Left = 184
    Top = 80
    Width = 33
    Height = 21
    BiDiMode = bdLeftToRight
    MaxLength = 2
    ParentBiDiMode = False
    TabOrder = 2
  end
end
