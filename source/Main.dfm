object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'Exemplo Simples de DataSnap'
  ClientHeight = 396
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Action = aAtivar
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 8
    Top = 80
    Width = 611
    Height = 308
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -19
    Font.Name = 'Source Sans Pro'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 1
  end
  object ActionList1: TActionList
    Left = 560
    Top = 16
    object aAtivar: TAction
      Caption = 'ATIVAR'
      OnExecute = aAtivarExecute
    end
  end
end
