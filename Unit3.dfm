object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 444
  ClientWidth = 753
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 136
    Top = 23
    Width = 273
    Height = 186
    Brush.Color = clRed
    Shape = stCircle
  end
  object Button1: TButton
    Left = 240
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    Visible = False
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 440
    Top = 8
    Width = 185
    Height = 368
    Enabled = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 32
    Top = 39
    Width = 75
    Height = 25
    Caption = #1057#1090#1072#1088#1090
    TabOrder = 2
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 392
    Top = 336
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = Timer2Timer
    Left = 448
    Top = 336
  end
end
