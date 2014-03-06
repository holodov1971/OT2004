object frmInit: TfrmInit
  Left = 185
  Top = 547
  BorderStyle = bsNone
  Caption = 'frmInit'
  ClientHeight = 73
  ClientWidth = 650
  Color = 14869218
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    650
    73)
  PixelsPerInch = 120
  TextHeight = 16
  object ProgressBar1: TProgressBar
    Left = 88
    Top = 32
    Width = 457
    Height = 25
    Anchors = [akLeft, akRight, akBottom]
    BorderWidth = 5
    TabOrder = 0
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 0
    Width = 650
    Height = 27
    Align = alTop
    Alignment = taCenter
    Caption = #1055#1086#1076#1086#1078#1076#1080#1090#1077', '#1080#1076#1077#1090' '#1079#1072#1075#1088#1091#1079#1082#1072'...'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
end
