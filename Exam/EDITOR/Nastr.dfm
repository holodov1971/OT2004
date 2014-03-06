object FrmNastr: TFrmNastr
  Left = 562
  Top = 153
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1088#1077#1076#1089#1090#1086#1103#1097#1077#1075#1086' '#1101#1082#1079#1072#1084#1077#1085#1072
  ClientHeight = 552
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    814
    552)
  PixelsPerInch = 120
  TextHeight = 16
  object Bevel1: TBevel
    Left = 16
    Top = 528
    Width = 385
    Height = 2
  end
  object Bevel2: TBevel
    Left = 16
    Top = 568
    Width = 385
    Height = 2
  end
  object Label11: TLabel
    Left = 24
    Top = 467
    Width = 266
    Height = 16
    Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1101#1082#1079#1072#1084#1077#1085#1072' '#1085#1077' '#1073#1086#1083#1077#1077':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
    WordWrap = True
  end
  object DBText2: TDBText
    Left = 304
    Top = 464
    Width = 65
    Height = 17
    DataField = 'TIMEEXAM'
    DataSource = DSVid
    Visible = False
  end
  object Label9: TLabel
    Left = 32
    Top = 537
    Width = 264
    Height = 16
    Caption = #1055#1072#1088#1086#1083#1100' '#1085#1072' '#1074#1093#1086#1076' ('#1084#1072#1082#1089#1080#1084#1091#1084' 10 '#1089#1080#1084#1074#1086#1083#1086#1074'):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object DBText3: TDBText
    Left = 296
    Top = 536
    Width = 65
    Height = 17
    DataField = 'PASS'
    DataSource = DSVid
    Visible = False
  end
  object Label8: TLabel
    Left = 24
    Top = 571
    Width = 261
    Height = 16
    Caption = #1055#1077#1088#1080#1086#1076#1080#1095#1085#1086#1089#1090#1100': 1 '#1088#1072#1079' '#1074'                       '#1075#1086#1076'('#1072')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
    WordWrap = True
  end
  object DBText4: TDBText
    Left = 192
    Top = 576
    Width = 65
    Height = 17
    DataField = 'PERIOD'
    DataSource = DSVid
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 814
    Height = 38
    Align = alTop
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1088#1077#1076#1089#1090#1086#1103#1097#1077#1075#1086' '#1101#1082#1079#1072#1084#1077#1085#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
  end
  object OKBtn: TBitBtn
    Left = 169
    Top = 515
    Width = 136
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    Default = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -18
    Font.Name = 'Arial'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 1
    OnClick = OKBtnClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000D1D1D1D1D1D1
      D1D1D1D1D1D1D1D1D1D1D1D18BA0939FAEA6D1D1D1D1D1D1D1D1D1D1D1D1D1D1
      D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D199ACA14D745255
      725ECACCCBD1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
      D1D1D1D1D1D19CADA375977C266820264C297A9083D1D1D1D1D1D1D1D1D1D1D1
      D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D199ACA1799C80548F4C44833B2D
      6228385A3C9CACA3D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1CACCCB
      89A0937E9F82639959598F508CA98F87B18042733D496850A7B4AED1D1D1D1D1
      D1D1D1D1D1D1D1D1D1D1A1B1A98AA29586A8888FB78879A772567B5998ABA0B6
      C8BA93BA8D4D784B597563CACCCBD1D1D1D1D1D1D1D1D1D1D1D1A4B3ACA7B9AF
      BACFB9B8D1B383AB7D5E7B67C3C8C59FB1A8B8CFB47EA679476F47657F6ECACC
      CBD1D1D1D1D1D1D1D1D1D1D1D1C6C9C89FB1A8B7C8BB91AD9492A59AD1D1D1A8
      B5AFBECCC2BCD4B8799E7639623B668170CBCDCCD1D1D1D1D1D1D1D1D1D1D1D1
      D1D1D1A7B4AE8EA499CBCDCCD1D1D1D1D1D1A1B3ABCFDECEB9D2B5739672395E
      3E678171C2C7C5D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
      D1D1C1C6C4B9C7BFDAE7D7C4D9C083A283587D5A4D6B5691A49AD1D1D1D1D1D1
      D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1A5B5ADD0DBD3E2ECE0D5E3
      D2A6BDA54168457F9588D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
      D1D1D1D1D1D0D0D0A3B4ABD5DFD8EBF2E9D9E5D746694CA7B4AED1D1D1D1D1D1
      D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1CBCDCCA0B3A9F0F4
      F0F0F5EF5A7960AEB9B3D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
      D1D1D1D1D1D1D1D1D1D1D1CACCCB9EB1A8F1F5F2819B88AAB6B0D1D1D1D1D1D1
      D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1CACC
      CB9FB1A8B7C5BE9DADA5D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
      D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1CECFCEA2B1ABA3B2AA}
    Margin = 2
    Spacing = -1
    IsControl = True
  end
  object CancelBtn: TBitBtn
    Left = 488
    Top = 515
    Width = 137
    Height = 33
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -18
    Font.Name = 'Arial'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 2
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
    Margin = 2
    Spacing = -1
    IsControl = True
  end
  object grdExam: TDBGridEh
    Left = 152
    Top = 78
    Width = 569
    Height = 91
    AutoFitColWidths = True
    Color = 14869218
    DataSource = dsKat
    EditActions = [geaCopyEh, geaSelectAllEh]
    FixedColor = 11913934
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghResizeWholeRightPart, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghAutoSortMarking, dghMultiSortMarking, dghTraceColSizing]
    ParentFont = False
    RowHeight = 4
    RowLines = 1
    RowSizingAllowed = True
    TabOrder = 3
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    VertScrollBar.Tracking = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '
        Width = 371
      end
      item
        EditButtons = <>
        FieldName = 'PRIM'
        Footers = <>
        Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Width = 172
      end>
  end
  object DBGridEh1: TDBGridEh
    Left = 10
    Top = 177
    Width = 343
    Height = 120
    Color = 14869218
    DataSource = DSVid
    FixedColor = 11913934
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -20
    FooterFont.Name = 'System'
    FooterFont.Style = []
    ParentFont = False
    RowHeight = 4
    RowLines = 1
    TabOrder = 4
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    UseMultiTitle = True
    VertScrollBar.Tracking = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1080#1076#1072' '#1101#1082#1079#1072#1084#1077#1085#1072' '
        Width = 312
      end>
  end
  object grdRndSeed: TDBGridEh
    Left = 368
    Top = 176
    Width = 417
    Height = 123
    AutoFitColWidths = True
    Color = 14869218
    DataSource = DSWybTem
    FixedColor = 11913934
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'lookExam'
        Footers = <>
        Title.Caption = #1058#1077#1084#1072':'
        Width = 320
      end
      item
        EditButtons = <>
        FieldName = 'KOLVOPR'
        Footers = <>
        Title.Caption = #1042#1086#1087#1088#1086#1089#1086#1074' '#1074' '#1090#1077#1084#1077':'
        Width = 80
      end>
  end
  object PnlNastr: TPanel
    Left = 184
    Top = 304
    Width = 433
    Height = 201
    TabOrder = 6
    object Label10: TLabel
      Left = 16
      Top = 112
      Width = 334
      Height = 32
      Caption = 
        #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1077#1087#1088#1072#1074#1080#1083#1100#1085#1099#1093' '#1086#1090#1074#1077#1090#1086#1074' '#1076#1083#1103' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072'"'#1047#1085#1072#1077 +
        #1090'":'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object DBText1: TDBText
      Left = 360
      Top = 112
      Width = 65
      Height = 17
      DataField = 'KOLNEOTV'
      DataSource = DSVid
    end
    object ChBoxSoob: TCheckBox
      Left = 16
      Top = 152
      Width = 409
      Height = 17
      Caption = #1055#1086#1089#1083#1077' '#1086#1090#1074#1077#1090#1072' '#1076#1072#1074#1072#1090#1100' '#1089#1086#1086#1073#1097#1077#1085#1080#1077' '#1086' '#1087#1088#1072#1074#1080#1083#1100#1085#1086#1089#1090#1080' '#1086#1090#1074#1077#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = ChBoxSoobClick
    end
    object ChBoxPokaz: TCheckBox
      Left = 16
      Top = 176
      Width = 353
      Height = 17
      Caption = #1055#1086#1089#1083#1077' '#1086#1090#1074#1077#1090#1072' '#1087#1086#1082#1072#1079#1072#1090#1100' '#1087#1088#1072#1074#1080#1083#1100#1085#1099#1081' '#1086#1090#1074#1077#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = ChBoxPokazClick
    end
    object RG1: TRadioGroup
      Left = 48
      Top = 24
      Width = 321
      Height = 81
      Caption = #1056#1077#1078#1080#1084' '#1101#1082#1079#1072#1084#1077#1085#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        #1042#1099#1073#1086#1088' '#1089#1083#1091#1095#1072#1081#1085#1086#1075#1086' '#1073#1080#1083#1077#1090#1072
        #1059#1082#1072#1079#1099#1074#1072#1090#1100' '#1085#1086#1084#1077#1088' '#1073#1080#1083#1077#1090#1072' '#1087#1077#1088#1077#1076' '#1101#1082#1079#1072#1084#1077#1085#1086#1084)
      ParentFont = False
      TabOrder = 2
    end
    object RadioGroup1: TRadioGroup
      Left = 216
      Top = 136
      Width = 321
      Height = 81
      Caption = #1056#1077#1078#1080#1084' '#1101#1082#1079#1072#1084#1077#1085#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        #1055#1086#1076#1073#1086#1088' '#1074#1086#1087#1088#1086#1089#1086#1074' '#1089#1083#1091#1095#1072#1081#1085#1099#1084' '#1086#1073#1088#1072#1079#1086#1084
        #1042#1099#1073#1086#1088' '#1089#1083#1091#1095#1072#1081#1085#1086#1075#1086' '#1073#1080#1083#1077#1090#1072
        #1059#1082#1072#1079#1099#1074#1072#1090#1100' '#1085#1086#1084#1077#1088' '#1073#1080#1083#1077#1090#1072' '#1087#1077#1088#1077#1076' '#1101#1082#1079#1072#1084#1077#1085#1086#1084)
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 38
    Width = 814
    Height = 41
    Align = alTop
    TabOrder = 7
  end
  object QryKAT: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    AfterScroll = QryKATAfterScroll
    CachedUpdates = True
    SQL.Strings = (
      'Select * from KATE order by ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'KATE_GEN'
    Left = 352
    Top = 112
    object QryKATID: TIntegerField
      FieldName = 'ID'
      Origin = 'KATE.ID'
      Required = True
    end
    object QryKATNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'KATE.NAME'
      Size = 200
    end
    object QryKATPRIM: TIBStringField
      FieldName = 'PRIM'
      Origin = 'KATE.PRIM'
      Size = 200
    end
  end
  object dsKat: TDataSource
    DataSet = QryKAT
    Left = 349
    Top = 160
  end
  object QryVID: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    AfterScroll = QryVIDAfterScroll
    OnNewRecord = QryVIDNewRecord
    Active = True
    CachedUpdates = True
    SQL.Strings = (
      'Select * from VIDE order by ID')
    UpdateObject = IBUpdateSQL1
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'VIDE_GEN'
    Left = 192
    Top = 256
    object QryVIDID: TIntegerField
      FieldName = 'ID'
      Origin = 'VIDE.ID'
      Required = True
    end
    object QryVIDIDKAT: TIntegerField
      FieldName = 'IDKAT'
      Origin = 'VIDE.IDKAT'
      Required = True
    end
    object QryVIDNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'VIDE.NAME'
      Size = 300
    end
    object QryVIDPERIOD: TIntegerField
      FieldName = 'PERIOD'
      Origin = 'VIDE.PERIOD'
    end
    object QryVIDPASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'VIDE.PASS'
    end
    object QryVIDKOLNEOTV: TIntegerField
      FieldName = 'KOLNEOTV'
      Origin = 'VIDE.KOLNEOTV'
    end
    object QryVIDPOKAZOTV: TIntegerField
      FieldName = 'POKAZOTV'
      Origin = 'VIDE.POKAZOTV'
    end
    object QryVIDSOOBOTV: TIntegerField
      FieldName = 'SOOBOTV'
      Origin = 'VIDE.SOOBOTV'
    end
    object QryVIDTIMEEXAM: TTimeField
      FieldName = 'TIMEEXAM'
      Origin = 'VIDE.TIMEEXAM'
    end
  end
  object DSVid: TDataSource
    DataSet = QryVID
    Left = 189
    Top = 312
  end
  object TblExam: TIBTable
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'IDKAT'
        DataType = ftInteger
      end
      item
        Name = 'PASSW'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY11'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN50'
        Fields = 'IDKAT'
      end>
    StoreDefs = True
    TableName = 'EXAMT'
    Left = 536
    Top = 249
    object TblExamID: TIntegerField
      FieldName = 'ID'
    end
    object TblExamNAME: TIBStringField
      FieldName = 'NAME'
      Size = 200
    end
  end
  object DSExam: TDataSource
    DataSet = TblExam
    Left = 541
    Top = 304
  end
  object QryWybTem: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    CachedUpdates = True
    SQL.Strings = (
      'Select * from VYBORTEM  order by ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'VYBORTEM_GEN'
    Left = 624
    Top = 248
    object QryWybTemlookExam: TStringField
      DisplayWidth = 320
      FieldKind = fkLookup
      FieldName = 'lookExam'
      LookupDataSet = TblExam
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'IDEXAM'
      Size = 100
      Lookup = True
    end
    object QryWybTemID: TIntegerField
      FieldName = 'ID'
      Origin = 'VYBORTEM.ID'
      Required = True
    end
    object QryWybTemIDKAT: TIntegerField
      FieldName = 'IDKAT'
      Origin = 'VYBORTEM.IDKAT'
      Required = True
    end
    object QryWybTemIDVID: TIntegerField
      FieldName = 'IDVID'
      Origin = 'VYBORTEM.IDVID'
      Required = True
    end
    object QryWybTemIDEXAM: TIntegerField
      FieldName = 'IDEXAM'
      Origin = 'VYBORTEM.IDEXAM'
      Required = True
    end
    object QryWybTemKOLVOPR: TIntegerField
      FieldName = 'KOLVOPR'
      Origin = 'VYBORTEM.KOLVOPR'
    end
  end
  object DSWybTem: TDataSource
    DataSet = QryWybTem
    Left = 629
    Top = 304
  end
  object IBTable1: TIBTable
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    TableName = 'VIDE'
    Left = 72
    Top = 256
    object IBTable1ID: TIntegerField
      FieldName = 'ID'
    end
    object IBTable1IDKAT: TIntegerField
      FieldName = 'IDKAT'
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  "VIDE"."ID",'
      '  "VIDE"."IDKAT",'
      '  "VIDE"."NAME",'
      '  "VIDE"."PERIOD",'
      '  "VIDE"."PASS",'
      '  "VIDE"."KOLNEOTV",'
      '  "VIDE"."POKAZOTV",'
      '  "VIDE"."SOOBOTV",'
      '  "VIDE"."TIMEEXAM",'
      '  "VIDE"."VIDEXAM"'
      'from "VIDE" '
      'where'
      '  "VIDE"."ID" = :"ID" and'
      '  "VIDE"."IDKAT" = :"IDKAT"')
    ModifySQL.Strings = (
      'update "VIDE"'
      'set'
      '  "VIDE"."ID" = :"ID",'
      '  "VIDE"."IDKAT" = :"IDKAT",'
      '  "VIDE"."NAME" = :"NAME",'
      '  "VIDE"."PERIOD" = :"PERIOD",'
      '  "VIDE"."PASS" = :"PASS",'
      '  "VIDE"."KOLNEOTV" = :"KOLNEOTV",'
      '  "VIDE"."POKAZOTV" = :"POKAZOTV",'
      '  "VIDE"."SOOBOTV" = :"SOOBOTV",'
      '  "VIDE"."TIMEEXAM" = :"TIMEEXAM",'
      '  "VIDE"."VIDEXAM" = :"VIDEXAM"'
      'where'
      '  "VIDE"."ID" = :"OLD_ID" and'
      '  "VIDE"."IDKAT" = :"OLD_IDKAT"')
    InsertSQL.Strings = (
      'insert into "VIDE"'
      
        '  ("VIDE"."ID", "VIDE"."IDKAT", "VIDE"."NAME", "VIDE"."PERIOD", ' +
        '"VIDE"."PASS", '
      
        '   "VIDE"."KOLNEOTV", "VIDE"."POKAZOTV", "VIDE"."SOOBOTV", "VIDE' +
        '"."TIMEEXAM", '
      '   "VIDE"."VIDEXAM")'
      'values'
      
        '  (:"ID", :"IDKAT", :"NAME", :"PERIOD", :"PASS", :"KOLNEOTV", :"' +
        'POKAZOTV", '
      '   :"SOOBOTV", :"TIMEEXAM", :"VIDEXAM")')
    DeleteSQL.Strings = (
      'delete from "VIDE"'
      'where'
      '  "VIDE"."ID" = :"OLD_ID" and'
      '  "VIDE"."IDKAT" = :"OLD_IDKAT"')
    Left = 272
    Top = 256
  end
end
