object FrmNewTema: TFrmNewTema
  Left = 338
  Top = 139
  Width = 923
  Height = 742
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1090#1077#1084#1091' '#1080#1079' '#1089#1091#1097#1077#1089#1090#1074#1091#1102#1097#1080#1093
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    915
    710)
  PixelsPerInch = 120
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 48
    Width = 907
    Height = 81
    Anchors = [akLeft, akTop, akRight]
    AutoFitColWidths = True
    Color = 14869218
    DataSource = dsKat
    EditActions = [geaCopyEh, geaSelectAllEh]
    FixedColor = 11913934
    Flat = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
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
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -15
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
        Width = 474
      end
      item
        EditButtons = <>
        FieldName = 'PRIM'
        Footers = <>
        Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Width = 173
      end>
  end
  object grdExam: TDBGridEh
    Left = 0
    Top = 136
    Width = 904
    Height = 121
    Anchors = [akLeft, akTop, akRight]
    AutoFitColWidths = True
    Color = 14869218
    DataSource = dsExam
    EditActions = [geaCopyEh, geaSelectAllEh]
    Flat = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghResizeWholeRightPart, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghAutoSortMarking, dghMultiSortMarking, dghTraceColSizing]
    ParentFont = False
    RowHeight = 2
    RowLines = 1
    RowSizingAllowed = True
    TabOrder = 1
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -17
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
        Title.Caption = #1058#1077#1084#1099':'
        Width = 649
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 915
    Height = 49
    Align = alTop
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1090#1077#1084#1091' '#1080#1079' '#1089#1091#1097#1077#1089#1090#1074#1091#1102#1097#1080#1093
    Color = 8306151
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 6
      Top = 2
      Width = 51
      Height = 42
      Hint = #1042#1099#1093#1086#1076
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFBFBDBD
        BDB9B9B9B7B7B7B5B5B5B4B4B4B4B4B4B5B5B5B8B8B8BABABABEBEBEBFBFBFC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFBFBCBCBCB6B6B6AFAF
        AFA6A6A6A0A0A09D9D9D9A9A9A9A9A9A9D9D9DA2A2A2A9A9A9B1B1B1B8B8B8BD
        BDBDBFBFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BDBDBDB7B7B7ACACAD9A9BA08586
        957470936A6295645997574E8C5D578B726C8F807F8D8D8C939B9B9CA6A6A6B0
        B0B0B9B9B9BEBEBEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0BFBFBFBBBBBBB1B1B19D9FA2807F966F6799695C
        A56B5BAD6D5CB16E5CB36D5CB26D5CB36D5BAE6B5CA56C619876728B8B8A929C
        9C9CA8A8A8B5B5B5BDBDBDC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0BFBFBFBABABAA9AAAC8A8A9B6B609C6856AD6E5BB77260
        BB7461BC7461BC7461BB7462BC7562BC7462BC7361BC715EB96B59B26A609B7B
        788A929294A2A2A2B2B2B2BCBCBCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0BFBFBFBABABAA5A7AA7672996552A96F5CB97462BD7361BB7462
        BA7361BA7361BA7361BA7361BA7361BA7361BA7362B97361B97461BB725FBC6A
        59AF7168908C8B91A0A0A0B2B2B2BDBDBDC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0BDBDBDAAACB1746DA06753B07664B87464AB6D5DA36F5FAA7464
        B67665BB7664BB7562BB7361BB7361BA7360BA705EB56A5AA863549C6557A06F
        5EB26D5AB66E63958C8A91A2A2A2B5B5B5BEBEBEC0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0BFBFBFA6A9AC8881AC6A55B07C6CB96E619F6051926051965F50916A5D
        9B7768B27C6BBD7B6ABE7867BD7564BB715FB56655A15949905A4A9156488C5D
        4F916D5CAE6E5AB7716693919194A8A8A8B9B9B9BFBFBFC0C0C0C0C0C0C0C0C0
        C0C0C0B8B8B972738E7968BC8473BF7264A05F50949B92C1CBC8E19187BC594A
        8A695D947C6DB38071C07F6FC17A69BA6858A156448F8378B1C0BFD8A29AC55C
        4D925A4B8F6F5EB06C59B47C778E9C9C9CB0B0B0BDBDBDC0C0C0C0C0C0C0C0C0
        BFBFBF98959E6A5C9B9081D08275B265569AA39BC8F6F8F8FEFFFEF1F0F6948B
        BF5849886E61948274B68375BD7163A5584790867BB3DCDFE5F2F9F0EEF4F0A7
        A1C85E4E946454A07360BB6E60A48B8A90A6A6A6B8B8B8BFBFBFC0C0C0C0C0C0
        BCBCBC756C8E8B7CCF998CCC7768AC8A7FB8F5F5F9FAFDFAEAECEFF6F9F6F1F2
        F69288BE59488971659274689D5E4D94867BB4DDE1E7EAEFECDADEE4E1E6E7F1
        F8F08E86B95C4B9C7462B7705DB97871939C9C9CB1B1B1BEBEBEC0C0C0C0C0C0
        A8A6AB7163A69B8FD49D91CC8172B58A7FB8EFEEF5FDFFFCEFF1F2ECEDF0F6FA
        F6EBEDF29188BD544481574882897EB6DDE0E8ECF2EDDCE0E5DBDFE4E5EAE8EB
        F1ED8F85BA604EA27261B87462BC7062A48C8B93A9A9A9BABABAC0C0C0C0C0C0
        94909E8578C4A498D4A195D09E91CA7B6CB19F95C4F5F5F8FAFCFAEDEFF1EBED
        F0F5F8F5EAEEF28D84B88276B0E2E4EBF0F4F0DFE2E7DCDEE4E4E9E8EAF0EC9F
        9AC46252A06C5AAF7361B97462BC705FB17D7794A2A2A2B8B8B8C0C0C0C0C0C0
        827B989A8CD2AA9FD6A69AD3ACA1D7A398CC7869AE9D93C2F6F5F7F9FBF9EDF0
        F2ECEDF1F4F7F4E7E9EFE0E1ECEFF5F1E4E6EAE0E3E8E7EBEBEAF0ECA19BC662
        519F6C5BAA7361B97260BA7361BB715FB773679E9D9D9DB5B5B5C0C0C0C0C0C0
        786E9BA79AD9ADA3D7ACA2D6B0A6D8B5ADDAAAA0CF7C6EB09F94C5F8F7F9F9FB
        F9EEF0F3EDEEF1F2F4F4F0F5F3E7EAEDE4E7ECECEFEEEDF1F0A49EC86656A274
        64AE7D6DBC7766BC7361BA7462BB7361B96F5FA89A9A9AB4B4B4C0C0C0C0C0C0
        776AA4B0A4DAB3A9DAB3A9D9B7ADDBB9B0DCBEB6E0B3AAD68071B19F96C5F2F2
        F4F5F7F6F0F2F3EEF0F2EBEEF1E9EBEEEDF0F0EAEDEEA29CC56A5AA07C6DB187
        78C28272C27B6BBF7464BC7361BA7260BA6C5CAF9A9A9AB4B4B4C0C0C0C0C0C0
        796BAAB7AFDDB8AEDCB9B0DDBDB4DEBFB7DFC1B8E1C5BFE0A89FBC615397B3AD
        D3FDFFFBF2F4F5EFF1F3EDEFF2EDEFF1F5FAF6BCB8D85B4B906B5D8D8A7EB78B
        7DC58575C37F6EC07766BE7361BA7260B96E5CB29D9D9DB5B5B5C0C0C0C0C0C0
        7D71A6BAB1E0BFB6E0C0B8E0C3BCE3C6BEE4C8C1E1BAB5C97D71A18B7FB8E9E7
        F3FBFCFBF3F4F6F1F3F4EFF1F3EEF0F1F3F5F4E6E7EF8E85BA5D4D89776A9987
        7BB98778C38273C27C6BBF7563BC7260BA6F5EABA0A0A0B7B7B7C0C0C0C0C0C0
        8379A0BCB2E1C7C0E3C6BFE3C9C3E5CCC5E2BFB9CA8277A38C80B9ECEAF6FFFF
        FFF6F7F8F5F6F7F6F7F7F4F6F6EFF0F2EDEEF0F5F9F5ECEEF29389BE5E4E8A75
        6A998576B78474C17E6EBF7766BD7160B97466A5A6A6A6B9B9B9C0C0C0C0C0C0
        918BA2B4AADED2CCE9CBC4E4CECAE3C3BFCD8378A58E81BAEEECF7FFFFFFF9FA
        FAF8F9F9FAFCFAF9FBFAF5F5F7F7F9F7EFF0F2ECEDF0F6F9F5EFF3F5948BBF5E
        4F8B766A9D8375BA8070C17A69BF7362B67F77A0AFAFAFBDBDBDC0C0C0C0C0C0
        A5A2AC9A8ECED7D3EDD2CDE7CDC8D99289AE8E84BBEDEBF7FFFFFFFEFEFEFBFC
        FCFEFEFCFBFBFCA69DCA9990C2F6F7F8FAFBFAEFF1F2EBEDF1F5F8F5F1F1F694
        89BE6455947D70AD8273C07B6BC07364AF9592A3B6B6B6BFBFBFC0C0C0C0C0C0
        B9B8BA877DADD3CDEFE1DEEEB5ADCA8A7FB6E4E1F2FFFFFFFFFFFFFFFFFFFFFF
        FFFAFAFEABA1CE796CA88074ADA096C7F5F4F7FBFCFAEEF0F2ECEDF0F8F9F7EC
        ECF5877DB67162A58577C07D6CC17D73A3ABAAADBCBCBCC0C0C0C0C0C0C0C0C0
        C0C0C09691A6B3A9DDF2EFF8B4ADCC9489C0F5F5FAFFFFFFFFFFFFFFFFFFFAF9
        FCA69DCC8174AEC6C1D6C7C2DC8477B59C90C2F4F3F7FCFDFBEFF0F2F2F4F4FC
        FCFD9A92C27060A88A7BC47A6AB79895A5B7B7B7BFBFBFC0C0C0C0C0C0C0C0C0
        C0C0C0B7B6BA8A81ACE4E0F8E3E0E9948BBCB2AAD3F9F8FCFFFFFFF6F5FBA89E
        CB877BB0CAC5D7DAD5EBD2CDEABDB6DA8172B39D94C4F3F2F7FFFFFFFDFEFDBE
        BBD77365AA8577BA8778C6857DA6B0B0B2BDBDBDC0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0A39FADA197CBFCFCFFDFDDE68E82B8ABA3CEDEDAECA196C78D81
        B4D4D1DCE3DEEFD5D0EBCEC8E7CDC7E6B9B1D97F72B39B92C2E1DEEBBBB4D572
        64AA8579B99284C97B6DAEA4A2ACBBBBBBBFBFBFC0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C09B95B1B1A8D1FFFFFFE5E3EBA79FC7988EC0A79CC6DDDA
        E4E8E7F2DCD8EFD5D1EBCFC9E7C7C0E4C6BFE3B2AAD5897DB98275B47B6CB18E
        81C09D91CF857AB89B97ABBABABABFBFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C09790ABB0A8D4FCFBFFFCFCFAE5E1ECECE9F1EEEC
        F5E2DEF1DBD7EED4CFEACEC7E6C7BFE3C0B8E0BBB3DDAFA5D59C90C9A397CFA4
        97D38577B59F9CAEBBBBBBBFBFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A5A1B4988FB8DCD7F1FFFFFFF7F6FCE7E4
        F3DED9EED7D2EBD1CCE8CBC4E5C4BDE2BDB4DFB8AEDBB6ADDBB6ADDEA597D68E
        84B4A5A2B2BCBCBCBFBFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B4B2BB9E98B6A29AC4D3CDEDE6E3
        F5E8E4F4E0DCEFD5D0EBD0C9E8CAC4E5C5BEE4BCB4E0AA9FD59489BB9996ACB4
        B4B9BEBEBEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B9B8BEA5A1B39A93
        B6A49CC8AEA5D4B4ABDBB0A7D8A89ECF9E95C39790B2AAA7B7B9B8BCBFBFBFC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 258
    Width = 915
    Height = 411
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 3
    object SpeedButton9: TSpeedButton
      Left = 824
      Top = 10
      Width = 90
      Height = 23
      Caption = #1042#1057#1045
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        10000300000000020000120B0000120B00000000000000000000007C0000E003
        00001F0000003967396739673967396739673967396739673967396739673967
        3967396739673967396739673967396739673967396739673967396739673967
        396739673967396739673967396739673967A534631C421C4218396739673967
        396739673967396739673967396739673967AD5508490849842C396739673967
        396739673967396739673967396739673967EF594A4D4A4DC630396739673967
        396739673967396739673967396739673967AD55AD558C51E730396739673967
        39673967396739673967EF4D0829E7288C41CE51EF59EF594A3DE728A524A524
        84203967396739673967F76EB5669466736273625262315E315E105AEF59EF59
        293539673967396739673973F76ED66AD66AB566B5669466736273625262315E
        4A3939673967396739679C779C777B777B775A73F76ED66AD66AF76E3973396F
        9466396739673967396739673967396739679C773973396FD666396739673967
        396739673967396739673967396739673967BD7B7B777B77314A396739673967
        396739673967396739673967396739673967DE7BBD7BBD7B524E396739673967
        396739673967396739673967396739673967FF7FFF7FFF7FDE7F396739673967
        3967396739673967396739673967396739673967396739673967396739673967
        3967396739673967396739673967396739673967396739673967396739673967
        396739673967}
      ParentFont = False
      OnClick = SpeedButton9Click
    end
    object SpeedButton10: TSpeedButton
      Left = 824
      Top = 42
      Width = 90
      Height = 23
      Caption = #1053#1080' '#1086#1076#1085#1086#1075#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333113333333333333300333333333333
        3388333333333333330033000000000033003309999999903300330000000000
        3300333333333333338833333333333333003333333333333300333333333333
        33113333333333333300}
      ParentFont = False
      OnClick = SpeedButton10Click
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 1
      Width = 816
      Height = 409
      Align = alLeft
      Color = 14869218
      DataSource = dsQuest
      FixedColor = 11913934
      Flat = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -20
      FooterFont.Name = 'System'
      FooterFont.Style = []
      ParentFont = False
      RowHeight = 4
      RowLines = 1
      TabOrder = 0
      TitleFont.Charset = RUSSIAN_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      UseMultiTitle = True
      VertScrollBar.Tracking = True
      OnCellClick = DBGridEh2CellClick
      Columns = <
        item
          Color = 16185078
          EditButtons = <>
          FieldName = 'VklCALC'
          Footers = <>
          Title.Caption = #1042#1082#1083#1102#1095#1072#1090#1100
          Title.Orientation = tohVertical
        end
        item
          EditButtons = <>
          FieldName = 'NUMPP'
          Footers = <>
          Title.Caption = #8470
          Width = 30
        end
        item
          EditButtons = <>
          FieldName = 'TEXT'
          Footers = <>
          Title.Caption = #1042#1086#1087#1088#1086#1089
          Width = 699
        end
        item
          EditButtons = <>
          FieldName = 'INT2'
          Footers = <>
          Visible = False
          Width = 47
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 669
    Width = 915
    Height = 41
    Align = alBottom
    TabOrder = 4
    object BitBtn1: TBitBtn
      Left = 192
      Top = 8
      Width = 145
      Height = 25
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 504
      Top = 8
      Width = 161
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1103#1102
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object QryKAT: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    AfterScroll = QryKATAfterScroll
    SQL.Strings = (
      'Select * from KATE order by ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'KATE_GEN'
    Left = 376
    Top = 80
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
    Left = 437
    Top = 80
  end
  object tabExam: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    AfterScroll = tabExamAfterScroll
    SQL.Strings = (
      'Select * from EXAMT order by ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'EXAMT_GEN'
    Left = 249
    Top = 171
    object tabExamID: TIntegerField
      FieldName = 'ID'
      Origin = 'EXAMT.ID'
      Required = True
    end
    object tabExamNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'EXAMT.NAME'
      Size = 200
    end
    object tabExamIDKAT: TIntegerField
      FieldName = 'IDKAT'
      Origin = 'EXAMT.IDKAT'
    end
  end
  object dsExam: TDataSource
    DataSet = tabExam
    Left = 309
    Top = 168
  end
  object tabQuest: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    OnCalcFields = tabQuestCalcFields
    SQL.Strings = (
      'select * from  QUEST Q order by numpp, id desc')
    UpdateObject = IBUpdateSQL3
    Left = 33
    Top = 357
    object tabQuestEXAMID: TIntegerField
      FieldName = 'EXAMID'
      Origin = 'QUEST.EXAMID'
      Required = True
    end
    object tabQuestID: TIntegerField
      FieldName = 'ID'
      Origin = 'QUEST.ID'
      Required = True
    end
    object tabQuestTYPE: TIntegerField
      FieldName = 'TYPE'
      Origin = 'QUEST.TYPE'
    end
    object tabQuestTIPPODR: TIBStringField
      FieldName = 'TIPPODR'
      Origin = 'QUEST.TIPPODR'
      Size = 10
    end
    object tabQuestGRUP: TIntegerField
      FieldName = 'GRUP'
      Origin = 'QUEST.GRUP'
    end
    object tabQuestTEXT: TIBStringField
      FieldName = 'TEXT'
      Origin = 'QUEST.TEXT'
      Size = 1000
    end
    object tabQuestANSWER1: TIBStringField
      FieldName = 'ANSWER1'
      Origin = 'QUEST.ANSWER1'
      Size = 1000
    end
    object tabQuestANSWER2: TIBStringField
      FieldName = 'ANSWER2'
      Origin = 'QUEST.ANSWER2'
      Size = 1000
    end
    object tabQuestANSWER3: TIBStringField
      FieldName = 'ANSWER3'
      Origin = 'QUEST.ANSWER3'
      Size = 1000
    end
    object tabQuestANSWER4: TIBStringField
      FieldName = 'ANSWER4'
      Origin = 'QUEST.ANSWER4'
      Size = 1000
    end
    object tabQuestPICTURE: TIBStringField
      FieldName = 'PICTURE'
      Origin = 'QUEST.PICTURE'
      Size = 60
    end
    object tabQuestINT1: TIntegerField
      FieldName = 'INT1'
      Origin = 'QUEST.INT1'
    end
    object tabQuestSTR1: TIBStringField
      FieldName = 'STR1'
      Origin = 'QUEST.STR1'
      Size = 255
    end
    object tabQuestINT2: TIntegerField
      FieldName = 'INT2'
      Origin = 'QUEST.INT2'
    end
    object tabQuestINT3: TIntegerField
      FieldName = 'INT3'
      Origin = 'QUEST.INT3'
    end
    object tabQuestNORMDOC: TIBStringField
      FieldName = 'NORMDOC'
      Origin = 'QUEST.NORMDOC'
      Size = 255
    end
    object tabQuestOBJAZ: TIBStringField
      FieldName = 'OBJAZ'
      Origin = 'QUEST.OBJAZ'
      Size = 500
    end
    object tabQuestZEL: TIBStringField
      FieldName = 'ZEL'
      Origin = 'QUEST.ZEL'
      Size = 500
    end
    object tabQuestNEZEL: TIBStringField
      FieldName = 'NEZEL'
      Origin = 'QUEST.NEZEL'
      Size = 500
    end
    object tabQuestNUMPP: TIntegerField
      FieldName = 'NUMPP'
      Origin = '"QUEST"."NUMPP"'
    end
    object tabQuestVklCALC: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'VklCALC'
      Calculated = True
    end
  end
  object IBUpdateSQL3: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  "QUEST"."EXAMID",'
      '  "QUEST"."ID",'
      '  "QUEST"."TYPE",'
      '  "QUEST"."TIPPODR",'
      '  "QUEST"."GRUP",'
      '  "QUEST"."TEXT",'
      '  "QUEST"."ANSWER1",'
      '  "QUEST"."ANSWER2",'
      '  "QUEST"."ANSWER3",'
      '  "QUEST"."ANSWER4",'
      '  "QUEST"."PICTURE",'
      '  "QUEST"."INT1",'
      '  "QUEST"."STR1",'
      '  "QUEST"."INT2",'
      '  "QUEST"."INT3",'
      '  "QUEST"."NORMDOC",'
      '  "QUEST"."OBJAZ",'
      '  "QUEST"."ZEL",'
      '  "QUEST"."NEZEL"'
      'from "QUEST" '
      'where'
      '  "QUEST"."EXAMID" = :"EXAMID" and'
      '  "QUEST"."ID" = :"ID"')
    ModifySQL.Strings = (
      'update "QUEST"'
      'set'
      '  "QUEST"."EXAMID" = :"EXAMID",'
      '  "QUEST"."ID" = :"ID",'
      '  "QUEST"."TYPE" = :"TYPE",'
      '  "QUEST"."TIPPODR" = :"TIPPODR",'
      '  "QUEST"."GRUP" = :"GRUP",'
      '  "QUEST"."TEXT" = :"TEXT",'
      '  "QUEST"."ANSWER1" = :"ANSWER1",'
      '  "QUEST"."ANSWER2" = :"ANSWER2",'
      '  "QUEST"."ANSWER3" = :"ANSWER3",'
      '  "QUEST"."ANSWER4" = :"ANSWER4",'
      '  "QUEST"."PICTURE" = :"PICTURE",'
      '  "QUEST"."INT1" = :"INT1",'
      '  "QUEST"."STR1" = :"STR1",'
      '  "QUEST"."INT2" = :"INT2",'
      '  "QUEST"."INT3" = :"INT3",'
      '  "QUEST"."NORMDOC" = :"NORMDOC",'
      '  "QUEST"."OBJAZ" = :"OBJAZ",'
      '  "QUEST"."ZEL" = :"ZEL",'
      '  "QUEST"."NEZEL" = :"NEZEL"'
      'where'
      '  "QUEST"."EXAMID" = :"OLD_EXAMID" and'
      '  "QUEST"."ID" = :"OLD_ID"')
    InsertSQL.Strings = (
      'insert into "QUEST"'
      
        '  ("QUEST"."EXAMID", "QUEST"."ID", "QUEST"."TYPE", "QUEST"."TIPP' +
        'ODR", "QUEST"."GRUP", '
      
        '   "QUEST"."TEXT", "QUEST"."ANSWER1", "QUEST"."ANSWER2", "QUEST"' +
        '."ANSWER3", '
      
        '   "QUEST"."ANSWER4", "QUEST"."PICTURE", "QUEST"."INT1", "QUEST"' +
        '."STR1", '
      
        '   "QUEST"."INT2", "QUEST"."INT3", "QUEST"."NORMDOC", "QUEST"."O' +
        'BJAZ", '
      '   "QUEST"."ZEL", "QUEST"."NEZEL")'
      'values'
      
        '  (:"EXAMID", :"ID", :"TYPE", :"TIPPODR", :"GRUP", :"TEXT", :"AN' +
        'SWER1", '
      
        '   :"ANSWER2", :"ANSWER3", :"ANSWER4", :"PICTURE", :"INT1", :"ST' +
        'R1", :"INT2", '
      '   :"INT3", :"NORMDOC", :"OBJAZ", :"ZEL", :"NEZEL")')
    DeleteSQL.Strings = (
      'delete from "QUEST"'
      'where'
      '  "QUEST"."EXAMID" = :"OLD_EXAMID" and'
      '  "QUEST"."ID" = :"OLD_ID"')
    Left = 72
    Top = 360
  end
  object dsQuest: TDataSource
    DataSet = tabQuest
    Left = 112
    Top = 360
  end
  object tabQuestGr: TIBTable
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    FieldDefs = <
      item
        Name = 'QUESTID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PATH0'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'PATH1'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'PATH2'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'PATH3'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'KOLASK'
        DataType = ftInteger
      end
      item
        Name = 'USERCHOICE'
        DataType = ftInteger
      end>
    IndexFieldNames = 'QUESTID'
    MasterFields = 'ID'
    MasterSource = dsQuest
    StoreDefs = True
    TableName = 'QUESTGR'
    Left = 48
    Top = 448
    object tabQuestGrQUESTID: TIntegerField
      FieldName = 'QUESTID'
      Required = True
    end
    object tabQuestGrNUM: TIntegerField
      FieldName = 'NUM'
      Required = True
    end
    object tabQuestGrPATH0: TIBStringField
      FieldName = 'PATH0'
      Size = 255
    end
    object tabQuestGrPATH1: TIBStringField
      FieldName = 'PATH1'
      Size = 255
    end
    object tabQuestGrPATH2: TIBStringField
      FieldName = 'PATH2'
      Size = 255
    end
    object tabQuestGrPATH3: TIBStringField
      FieldName = 'PATH3'
      Size = 255
    end
    object tabQuestGrKOLASK: TIntegerField
      FieldName = 'KOLASK'
    end
    object tabQuestGrUSERCHOICE: TIntegerField
      FieldName = 'USERCHOICE'
    end
  end
  object dsQuestGr: TDataSource
    DataSet = tabQuestGr
    Left = 85
    Top = 448
  end
  object tabQuest2: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    SQL.Strings = (
      'Select * from QUEST2')
    Left = 41
    Top = 402
    object tabQuest2QUESTID: TIntegerField
      FieldName = 'QUESTID'
      Origin = 'QUEST2.QUESTID'
      Required = True
    end
    object tabQuest2NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'QUEST2.NUM'
      Required = True
    end
    object tabQuest2ANSWER: TIBStringField
      FieldName = 'ANSWER'
      Origin = 'QUEST2.ANSWER'
      Size = 255
    end
    object tabQuest2CALCYES: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'CALCYES'
      Calculated = True
    end
    object tabQuest2RIGHT: TIntegerField
      FieldName = 'RIGHT'
      Origin = 'QUEST2.RIGHT'
    end
    object tabQuest2USERCHOICE: TIntegerField
      FieldName = 'USERCHOICE'
      Origin = 'QUEST2.USERCHOICE'
    end
  end
  object dsQuest2: TDataSource
    DataSet = tabQuest2
    Left = 77
    Top = 400
  end
end
