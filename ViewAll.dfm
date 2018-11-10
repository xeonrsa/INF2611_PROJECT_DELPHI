object ViewAllForm: TViewAllForm
  Left = 596
  Top = 224
  Width = 777
  Height = 675
  Caption = 'Reports'
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
  object DBReport: TDBGrid
    Left = 0
    Top = 100
    Width = 769
    Height = 544
    Align = alClient
    PopupMenu = popupReports
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -20
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 100
    Align = alTop
    TabOrder = 1
    object btnTestToCome: TButton
      Left = 75
      Top = 9
      Width = 300
      Height = 25
      Caption = 'LEARNER TESTS TO COME'
      TabOrder = 0
      OnClick = btnTestToComeClick
    end
    object Button2: TButton
      Left = 75
      Top = 37
      Width = 300
      Height = 25
      Caption = 'LEARNER TESTS RESULTS'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 75
      Top = 65
      Width = 300
      Height = 25
      Caption = 'ALL LEARNER TESTS'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 387
      Top = 9
      Width = 300
      Height = 25
      Caption = 'LICENSE TESTS TO COME'
      TabOrder = 3
    end
    object Button5: TButton
      Left = 387
      Top = 37
      Width = 300
      Height = 25
      Caption = 'LICENSE TESTS RESULTS'
      TabOrder = 4
    end
    object Button6: TButton
      Left = 387
      Top = 65
      Width = 300
      Height = 25
      Caption = 'ALL LICENSE TESTS'
      TabOrder = 5
    end
  end
  object popupReports: TPopupMenu
    Left = 8
    Top = 8
    object View1: TMenuItem
      Caption = 'View'
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      OnClick = Edit1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
    object Sort1: TMenuItem
      Caption = 'Sort'
      object Name1: TMenuItem
        Caption = 'Name'
      end
      object Date1: TMenuItem
        Caption = 'Date'
      end
      object Result1: TMenuItem
        Caption = 'Result'
      end
    end
  end
end
