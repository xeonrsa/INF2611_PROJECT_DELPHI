object MainForm: TMainForm
  Left = 640
  Top = 390
  Width = 501
  Height = 203
  Caption = 'Getting your License'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 25
  object Button1: TButton
    Left = 19
    Top = 8
    Width = 150
    Height = 100
    Caption = 'Book Learners Test'
    TabOrder = 0
    WordWrap = True
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 171
    Top = 8
    Width = 150
    Height = 100
    Caption = 'Book License Test'
    TabOrder = 1
    WordWrap = True
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 323
    Top = 8
    Width = 150
    Height = 100
    Caption = 'Reports'
    TabOrder = 2
    WordWrap = True
    OnClick = Button3Click
  end
  object BitBtn1: TBitBtn
    Left = 19
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object MainMenu1: TMainMenu
    Left = 456
    Top = 8
    object Seyup1: TMenuItem
      Caption = 'Setup'
      object Admin1: TMenuItem
        Caption = 'Users'
      end
      object estTypes1: TMenuItem
        Caption = 'TestTypes'
        object Learners1: TMenuItem
          Caption = 'Learners'
        end
        object License1: TMenuItem
          Caption = 'License'
        end
      end
    end
    object About1: TMenuItem
      Caption = 'About'
      object utorial1: TMenuItem
        Caption = 'Tutorial'
      end
    end
    object Log1: TMenuItem
      Caption = 'Log'
      OnClick = Log1Click
    end
  end
end
