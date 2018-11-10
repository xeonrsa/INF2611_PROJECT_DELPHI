object MediaForm: TMediaForm
  Left = 333
  Top = 193
  Width = 1305
  Height = 675
  Caption = 'Tutorial'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MediaDisplay: TPanel
    Left = 0
    Top = 0
    Width = 1297
    Height = 644
    Align = alClient
    TabOrder = 0
    object MediaPlayer1: TMediaPlayer
      Left = 0
      Top = 0
      Width = 253
      Height = 30
      AutoOpen = True
      Display = MediaDisplay
      FileName = 
        'C:\Users\Xeon\OneDrive\Documents\UNISA\INF2611\Semester 2 Projec' +
        't\Code\About.~ddp'
      TabOrder = 0
    end
  end
end
