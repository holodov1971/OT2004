object FormGroups: TFormGroups
  Left = 85
  Top = 55
  Width = 1036
  Height = 780
  Caption = #1043#1088#1091#1087#1087#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 59
    Width = 1028
    Height = 694
    Align = alClient
    AllowedOperations = [alopUpdateEh, alopDeleteEh]
    DataSource = dsGroups
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -12
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = 'DATE'
        Footers = <>
        Title.Alignment = taCenter
        Width = 191
      end
      item
        EditButtons = <>
        FieldName = 'Prim'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
        Width = 464
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 59
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 461
      Top = 7
      Width = 19
      Height = 17
      Caption = #1054#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 652
      Top = 7
      Width = 18
      Height = 17
      Caption = #1044#1086
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object bQuit: TSpeedButton
      Left = 4
      Top = 3
      Width = 36
      Height = 35
      Hint = #1042#1099#1093#1086#1076
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000D1D1D1D1D1D1
        D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
        D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
        D1D1D1D1D1CDCDCE6A6A775656649E9EA2D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
        D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D18B8B9437376B1313643030
        4E797984CACACAD1D1D1D1D1D1D1D1D1D1D1D175758172727DC9C9C9D1D1D1D1
        D1D1BABABB67678031319E2D2D941D1D6F2222504B4B5C98989DD1D1D1D1D1D1
        96969C44446926265D49495997979CCCCCCC71717B5757B35C5CC05151B24B4B
        A84242993C3C856B6B76D1D1D1BFBFC17272826565B150509737377634345466
        66715F5F887171C27878CA7B7BCD7979CC7676C36E6E79C8C8C9CDCDCE77777F
        8989C49191D38181C27373B251518D5D5D947575B48B8BCD9191D39393D69393
        D67F7F929E9EA2D1D1D197979DA8A8BDC2C2E8BDBDE6B8B8E4AEAEE09696CD8A
        8AC19999D0A3A3DAA6A6DD9898CF72728C939399D1D1D1D1D1D1CDCDCE99999F
        A6A6ACC5C5D1C9C9D5D1D1E9C2C2E8B9B9E4B9B9E4B9B9E4B9B9E49E9ECA5151
        687C7C85CACACAD1D1D1D1D1D1D1D1D1C6C6C7A6A6A9A1A1A4AEAEBECFCFEDCC
        CCEBCECEECD2D2EED5D5EFCCCCEB7A7AA441416250505F9B9B9FD1D1D1D1D1D1
        D1D1D1A8A8AB818192BDBDD5DBDBF1DDDDF2E0E0F3E4E4F4D8D8E2E9E9F7DFDF
        F3C8C8E17777859A9A9ED1D1D1D1D1D1BFBFC188888FDFDFEBEDEDF8EDEDF8E4
        E4EEBABAC189898E98989CABABAFD0D0D5B4B4B99A9A9FD1D1D1D1D1D1D1D1D1
        9B9B9FC2C2C6EAEAECF3F3F6C7C7CAC9C9CDA1A1A4C9C9C9D1D1D1C4C4C59E9E
        A29C9CA0D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1AFAFB19A9A9ED5D5D7A1A1A4A1
        A1A4C9C9C9D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
        D1D1D1D1D1D1C9C9C9A1A1A4C9C9C9D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
        D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
        D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1}
      ParentShowHint = False
      ShowHint = True
      OnClick = bQuitClick
    end
    object Label3: TLabel
      Left = 222
      Top = 39
      Width = 348
      Height = 17
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1089#1091#1097#1077#1089#1090#1074#1091#1102#1097#1077#1081' '#1075#1088#1091#1087#1087#1099' - '#1076#1074#1086#1081#1085#1086#1081' '#1097#1077#1083#1095#1086#1082
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object dtpFrom: TDateTimePicker
      Left = 486
      Top = 2
      Width = 146
      Height = 25
      Date = 37573.742724780100000000
      Time = 37573.742724780100000000
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Refilter
    end
    object dtpTo: TDateTimePicker
      Left = 674
      Top = 2
      Width = 147
      Height = 25
      Date = 37938.743033125000000000
      Time = 37938.743033125000000000
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = Refilter
    end
    object cbFilter: TCheckBox
      Left = 262
      Top = 7
      Width = 168
      Height = 17
      Caption = #1060#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1076#1072#1090#1077
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = cbFilterClick
    end
    object btnNew: TButton
      Left = 54
      Top = 8
      Width = 129
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnNewClick
    end
    object DBNavigator1: TDBNavigator
      Left = 52
      Top = 39
      Width = 131
      Height = 20
      DataSource = dsGroups
      VisibleButtons = [nbDelete]
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Insert record'
        #1059#1076#1072#1083#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data')
      TabOrder = 4
    end
  end
  object tblGroups: TTable
    BeforeDelete = tblGroupsBeforeDelete
    DatabaseName = 'TB2004'
    OnFilterRecord = tblGroupsFilterRecord
    TableName = 'GROUPS.DB'
    Left = 32
    Top = 104
    object tblGroupsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object tblGroupsDATE: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'DATE'
    end
    object tblGroupsPrim: TStringField
      FieldName = 'Prim'
      Size = 255
    end
  end
  object dsGroups: TDataSource
    DataSet = tblGroups
    Left = 72
    Top = 104
  end
  object qDelete: TQuery
    DatabaseName = 'TB2004'
    SQL.Strings = (
      'delete from Groups_Ls where group_id=:group_id')
    Left = 32
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'group_id'
        ParamType = ptUnknown
      end>
  end
end
