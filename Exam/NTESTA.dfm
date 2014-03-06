object FrmNTesta: TFrmNTesta
  Left = 319
  Top = 124
  Width = 327
  Height = 710
  ActiveControl = grdTest
  Caption = #1042#1099#1073#1086#1088' '#1090#1077#1089#1090#1072' '#1074#1088#1091#1095#1085#1091#1102
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    319
    678)
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 60
    Top = 265
    Width = 112
    Height = 18
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1090#1077#1089#1090':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 52
    Top = 9
    Width = 160
    Height = 18
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1072#1090#1077#1075#1086#1088#1080#1102':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 60
    Top = 169
    Width = 111
    Height = 18
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1074#1080#1076':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object grdTest: TDBGridEh
    Left = 9
    Top = 288
    Width = 297
    Height = 241
    AutoFitColWidths = True
    DataSource = dsTest
    Flat = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    VertScrollBar.Tracking = True
    Columns = <
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = 'NUM'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1077#1089#1090#1072
        Width = 208
      end
      item
        EditButtons = <>
        FieldName = 'TipPodr'
        Footers = <>
        Title.Caption = #1058#1080#1087' '#1087#1086#1076#1088'.'
        Visible = False
        Width = 93
      end>
  end
  object bCancel: TBitBtn
    Left = 170
    Top = 540
    Width = 135
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = bOKClick
    Kind = bkCancel
  end
  object bOK: TBitBtn
    Left = 12
    Top = 540
    Width = 135
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    Default = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Arial'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 0
    OnClick = bOKClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object DBGridEh1: TDBGridEh
    Left = 9
    Top = 32
    Width = 297
    Height = 113
    AutoFitColWidths = True
    DataSource = dsKate
    Flat = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    VertScrollBar.Tracking = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1072#1090#1077#1075#1086#1088#1080#1080
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 9
    Top = 192
    Width = 297
    Height = 49
    AutoFitColWidths = True
    DataSource = dsVide
    Flat = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    VertScrollBar.Tracking = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1074#1080#1076#1072
        Width = 253
      end>
  end
  object dsTest: TDataSource
    DataSet = qTest
    Left = 280
    Top = 256
  end
  object qTest: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    Active = True
    DataSource = dsVide
    SQL.Strings = (
      'select *  from TEST'
      'where test.idvid=:id'
      'order by NUM')
    Left = 248
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qTestNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'TEST.NUM'
      Required = True
    end
    object qTestID: TIntegerField
      FieldName = 'ID'
      Origin = 'TEST.ID'
      Required = True
    end
    object qTestIDVID: TIntegerField
      FieldName = 'IDVID'
      Origin = 'TEST.IDVID'
      Required = True
    end
    object qTestNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TEST.NAME'
      Size = 100
    end
  end
  object dsKate: TDataSource
    DataSet = QKate
    Left = 272
  end
  object QKate: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    Active = True
    SQL.Strings = (
      'select *  from Kate order by id')
    Left = 240
    object QKateID: TIntegerField
      DisplayWidth = 4
      FieldName = 'ID'
      Origin = '"KATE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QKateNAME: TIBStringField
      DisplayWidth = 31
      FieldName = 'NAME'
      Origin = '"KATE"."NAME"'
      Size = 200
    end
  end
  object dsVide: TDataSource
    DataSet = QVide
    Left = 280
    Top = 160
  end
  object QVide: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    Active = True
    DataSource = dsKate
    SQL.Strings = (
      'select *  from Vide where Vide.idkat = :id')
    Left = 248
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object QVideID: TIntegerField
      DisplayWidth = 4
      FieldName = 'ID'
      Origin = '"VIDE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVideIDKAT: TIntegerField
      DisplayWidth = 7
      FieldName = 'IDKAT'
      Origin = '"VIDE"."IDKAT"'
      Required = True
    end
    object QVideNAME: TIBStringField
      DisplayWidth = 19
      FieldName = 'NAME'
      Origin = '"VIDE"."NAME"'
      Size = 300
    end
  end
end
