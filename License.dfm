object LicenseForm: TLicenseForm
  Left = 521
  Top = 321
  Width = 600
  Height = 400
  Caption = 'License'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 25
  object Label1: TLabel
    Left = 91
    Top = 16
    Width = 58
    Height = 25
    Caption = 'Name:'
  end
  object Label2: TLabel
    Left = 63
    Top = 56
    Width = 86
    Height = 25
    Caption = 'Surname:'
  end
  object Label3: TLabel
    Left = 32
    Top = 96
    Width = 117
    Height = 25
    Caption = 'Date Of Birth:'
  end
  object Label4: TLabel
    Left = 94
    Top = 136
    Width = 55
    Height = 25
    Caption = 'ID No:'
  end
  object Label5: TLabel
    Left = 25
    Top = 176
    Width = 124
    Height = 25
    Caption = 'License Type:'
  end
  object Label6: TLabel
    Left = 58
    Top = 216
    Width = 91
    Height = 25
    Caption = 'Test Date:'
  end
  object Label7: TLabel
    Left = 55
    Top = 256
    Width = 94
    Height = 25
    Caption = 'Test Time:'
  end
  object Edit1: TEdit
    Left = 155
    Top = 12
    Width = 400
    Height = 33
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 155
    Top = 52
    Width = 400
    Height = 33
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 155
    Top = 132
    Width = 400
    Height = 33
    TabOrder = 2
  end
  object DateTimePicker1: TDateTimePicker
    Left = 155
    Top = 92
    Width = 400
    Height = 33
    Date = 42589.715085787040000000
    Time = 42589.715085787040000000
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 155
    Top = 172
    Width = 400
    Height = 33
    ItemHeight = 25
    TabOrder = 4
  end
  object DateTimePicker2: TDateTimePicker
    Left = 155
    Top = 212
    Width = 400
    Height = 33
    Date = 42589.715085787040000000
    Time = 42589.715085787040000000
    TabOrder = 5
  end
  object DateTimePicker3: TDateTimePicker
    Left = 155
    Top = 252
    Width = 400
    Height = 33
    Date = 42589.715085787040000000
    Time = 42589.715085787040000000
    Kind = dtkTime
    TabOrder = 6
  end
  object Button1: TButton
    Left = 180
    Top = 304
    Width = 100
    Height = 50
    Caption = 'SAVE'
    TabOrder = 7
  end
  object Button2: TButton
    Left = 292
    Top = 304
    Width = 100
    Height = 50
    Caption = 'CANCEL'
    TabOrder = 8
    OnClick = Button2Click
  end
end
