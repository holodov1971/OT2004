object frmNewTest: TfrmNewTest
  Left = 384
  Top = 181
  BorderStyle = bsDialog
  Caption = #1053#1086#1074#1099#1081' '#1090#1077#1089#1090
  ClientHeight = 334
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  DesignSize = (
    294
    334)
  PixelsPerInch = 120
  TextHeight = 18
  object Bevel2: TBevel
    Left = 155
    Top = 26
    Width = 118
    Height = 143
  end
  object Label12: TLabel
    Left = 152
    Top = 171
    Width = 55
    Height = 18
    Caption = #1043#1088#1091#1087#1087#1072':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 231
    Width = 245
    Height = 18
    Anchors = [akLeft, akBottom]
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1077#1089#1090#1072' ('#1085#1077' '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086'):'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 160
    Top = 139
    Width = 108
    Height = 2
  end
  object Label2: TLabel
    Left = 152
    Top = 5
    Width = 123
    Height = 18
    Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 5
    Width = 94
    Height = 18
    Caption = #1053#1086#1084#1077#1088' '#1090#1077#1089#1090#1072':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel3: TBevel
    Left = 8
    Top = 224
    Width = 279
    Height = 2
  end
  object Label4: TLabel
    Left = 256
    Top = 30
    Width = 9
    Height = 18
    Caption = #1050
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label5: TLabel
    Left = 256
    Top = 54
    Width = 11
    Height = 18
    Caption = #1069
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label6: TLabel
    Left = 256
    Top = 74
    Width = 11
    Height = 18
    Caption = #1057
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label7: TLabel
    Left = 256
    Top = 96
    Width = 10
    Height = 18
    Caption = #1056
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label8: TLabel
    Left = 256
    Top = 144
    Width = 9
    Height = 18
    Caption = '+'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel4: TBevel
    Left = 248
    Top = 32
    Width = 2
    Height = 137
  end
  object Label9: TLabel
    Left = 256
    Top = 120
    Width = 10
    Height = 18
    Caption = #1056
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object edTestName: TEdit
    Left = 7
    Top = 250
    Width = 280
    Height = 26
    Anchors = [akLeft, akBottom]
    TabOrder = 0
  end
  object bOk: TBitBtn
    Left = 24
    Top = 292
    Width = 105
    Height = 29
    Anchors = [akLeft, akBottom]
    Caption = #1057#1086#1079#1076#1072#1090#1100
    TabOrder = 1
    OnClick = bOkClick
    Kind = bkOK
  end
  object bCancel: TBitBtn
    Left = 160
    Top = 292
    Width = 105
    Height = 29
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = bCancelClick
    Kind = bkCancel
  end
  object cb1: TCheckBox
    Tag = 1
    Left = 160
    Top = 32
    Width = 65
    Height = 17
    Caption = #1069#1063#1050
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnClick = cb1Click
  end
  object cb2: TCheckBox
    Tag = 2
    Left = 160
    Top = 54
    Width = 65
    Height = 17
    Caption = #1069#1063#1069
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Visible = False
    OnClick = cb1Click
  end
  object cb3: TCheckBox
    Tag = 3
    Left = 160
    Top = 74
    Width = 65
    Height = 17
    Caption = #1069#1063#1057
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnClick = cb1Click
  end
  object cb4: TCheckBox
    Tag = 4
    Left = 160
    Top = 96
    Width = 65
    Height = 17
    Caption = #1056#1056#1062
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Visible = False
    OnClick = cb1Click
  end
  object cb5: TCheckBox
    Tag = 5
    Left = 160
    Top = 145
    Width = 73
    Height = 17
    Caption = #1042#1089#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = cb1Click
  end
  object edTestNum: TEdit
    Left = 8
    Top = 24
    Width = 89
    Height = 26
    TabOrder = 8
    OnChange = edTestNumChange
    OnKeyPress = edTestNumKeyPress
  end
  object edTestGroup: TEdit
    Left = 152
    Top = 192
    Width = 97
    Height = 26
    TabOrder = 9
    Text = '5'
    OnChange = edTestGroupChange
    OnKeyPress = edTestNumKeyPress
  end
  object cb6: TCheckBox
    Tag = 4
    Left = 160
    Top = 120
    Width = 65
    Height = 17
    Caption = #1056#1056#1062
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    Visible = False
    OnClick = cb1Click
  end
end
