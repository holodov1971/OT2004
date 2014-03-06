object FormNewGroup: TFormNewGroup
  Left = -4
  Top = -4
  Width = 1032
  Height = 776
  Caption = #1057#1086#1089#1090#1072#1074' '#1075#1088#1091#1087#1087#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 0
    Top = 417
    Width = 1024
    Height = 8
    Cursor = crVSplit
    Align = alTop
    Color = clBtnFace
    ParentColor = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 121
    Width = 1024
    Height = 296
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBGridEh4: TDBGridEh
      Left = 0
      Top = 25
      Width = 1024
      Height = 271
      Align = alClient
      AllowedOperations = [alopDeleteEh]
      DataSource = dsGroupsLS
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
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      SortLocal = True
      TabOrder = 0
      TitleFont.Charset = RUSSIAN_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -15
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnDblClick = DBGridEh4DblClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'PodrCalc'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1055#1086#1076#1088'.'
          Width = 156
        end
        item
          EditButtons = <>
          FieldName = 'lookupNameF'
          Footers = <>
          Title.Alignment = taCenter
          Width = 159
        end
        item
          EditButtons = <>
          FieldName = 'lookupNameIO'
          Footers = <>
          Title.Alignment = taCenter
          Width = 257
        end
        item
          EditButtons = <>
          FieldName = 'lookupDataKomisTB'
          Footers = <>
          Width = 91
        end
        item
          EditButtons = <>
          FieldName = 'DolzCalc'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
          Width = 283
        end
        item
          EditButtons = <>
          FieldName = 'lookupPhone'
          Footers = <>
          Width = 109
        end>
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1024
      Height = 25
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = 13610379
      TabOrder = 1
      object Label8: TLabel
        Left = 10
        Top = 2
        Width = 143
        Height = 21
        Caption = #1057#1086#1089#1090#1072#1074' '#1075#1088#1091#1087#1087#1099':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clNavy
        Font.Height = -18
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 572
        Top = 2
        Width = 60
        Height = 21
        Caption = #1042#1089#1077#1075#1086':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clNavy
        Font.Height = -18
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 670
        Top = 2
        Width = 58
        Height = 21
        Caption = 'Label2'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clNavy
        Font.Height = -18
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 186
        Top = 4
        Width = 337
        Height = 18
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1095#1077#1083#1086#1074#1077#1082#1072' - '#1076#1074#1086#1081#1085#1086#1081' '#1097#1077#1083#1095#1086#1082' "'#1084#1099#1096#1080'"'
        Color = 13610379
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object RichEdit1: TRichEdit
      Left = -2
      Top = 129
      Width = 1000
      Height = 24
      Alignment = taCenter
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      Lines.Strings = (
        'RichEdit1')
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 121
    Align = alTop
    TabOrder = 1
    DesignSize = (
      1024
      121)
    object Bevel1: TBevel
      Left = 112
      Top = 9
      Width = 1104
      Height = 30
      Anchors = [akLeft, akTop, akRight]
      Shape = bsBottomLine
    end
    object Label4: TLabel
      Left = 2
      Top = 94
      Width = 81
      Height = 18
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1080
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 146
      Top = 60
      Width = 234
      Height = 18
      Caption = #1044#1072#1090#1072' '#1087#1088#1086#1093#1086#1078#1076#1077#1085#1080#1103' '#1088#1072#1085#1100#1096#1077', '#1095#1077#1084
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 308
      Top = 94
      Width = 43
      Height = 18
      Caption = #1055#1086#1076#1088'.'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bQuit: TSpeedButton
      Left = 16
      Top = 11
      Width = 44
      Height = 43
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
    object Label10: TLabel
      Left = 516
      Top = 94
      Width = 52
      Height = 18
      Caption = #1056#1077#1075#1080#1086#1085
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 63
      Top = 11
      Width = 45
      Height = 43
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000D1D1D1343434
        3434343434343434343434343434343434343434343434343434343434343434
        34343434343434D1D1D134343499999999999999999999999999999992929283
        83837272726363635C5C5C5C5C5C5C5C5C5C5C5C5C5C5C343434343434999999
        9999999999999999999999999999998E8E8E7D7D7D6C6C6C5F5F5F5C5C5C5C5C
        5C5C5C5C5C5C5C3434343434342D2D2D2727272222221E1E1E1A1A1A17171715
        1515141414131313111111111111101010111111111111343434373737D6D6D6
        C9C9C9BCBCBCB0B0B0A5A5A59A9A9A9494949191918A8A8A8080807676766E6E
        6E686868616161181818393939E2E2E2E2E2E2E1E1E1E0E0E0DFDFDFDDDDDDDC
        DCDCDBDBDBD3D3D3C6C6C6B8B8B8AAAAAA2727E68D8D8D2020203A3A3AE9E9E9
        E9E9E9E9E9E9E9E9E9E8E8E8E7E7E7E6E6E6E6E6E6E4E4E4E2E2E2E0E0E0DDDD
        DDCECECEBABABA2A2A2A3B3B3B3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3B3B3B3B
        3B3B3B3B3B3B3B3B3A3A3A3A3A3A393939383838383838343434D1D1D1D1D1D1
        D1D1D1403D3BFEF3E6FEF1E1FEEFDCFEECD7FEE9D1FEE4C6FDE0BCFDDCB43F36
        2BD1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1403E3CFFF5EA403D39403C3840
        3C37403B36FEE9D0403931FDDFBB3F372DD1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
        D1D1D1403E3DFFF7EDFEF5E9FEF3E5FEF0E0FEEEDBFEECD6FEE8CEFEE3C43F38
        2FD1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1403F3DFFF8F1403E3B403D3AFE
        F2E4403C38403C37403B35403A33403931D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
        D1D1D1403F3EFFFAF4FFF8F1FFF6EDFEF4E8403D39FEF0DFFEEEDA403B35D1D1
        D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1403F3FFFFBF8403F3DCFCDCBFF
        F6EC403D3AFEF2E3403C38D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
        D1D1D140403FFFFDFAFFFBF7FFFAF4FFF8F0403E3B403D3AD1D1D1D1D1D1D1D1
        D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D140404040403F403F3F403F3E40
        3E3D403E3CD1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1}
      OnClick = SpeedButton2Click
    end
    object Label13: TLabel
      Left = 214
      Top = 7
      Width = 393
      Height = 24
      Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1075#1088#1091#1087#1087#1099' '#1076#1083#1103' '#1086#1073#1091#1095#1077#1085#1080#1103' '#1089' '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clMaroon
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object btnProtocol: TSpeedButton
      Left = 937
      Top = 49
      Width = 80
      Height = 27
      Caption = #1055#1088#1086#1090#1086#1082#1086#1083
      Flat = True
      OnClick = btnProtocolClick
    end
    object btnTelegramm: TSpeedButton
      Left = 937
      Top = 79
      Width = 80
      Height = 27
      Caption = #1058#1077#1083#1077#1075#1088#1072#1084#1084#1072
      Flat = True
      OnClick = btnTelegrammClick
    end
    object GroupBox1: TGroupBox
      Left = 692
      Top = 38
      Width = 244
      Height = 80
      Caption = #1055#1077#1095#1072#1090#1100' '#1091#1076#1086#1089#1090#1086#1074#1077#1088#1077#1085#1080#1081
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label6: TLabel
        Left = 10
        Top = 22
        Width = 118
        Height = 17
        Caption = #1053#1086#1084#1077#1088' '#1087#1088#1086#1090#1086#1082#1086#1083#1072
      end
      object Label7: TLabel
        Left = 10
        Top = 53
        Width = 107
        Height = 17
        Caption = #1044#1072#1090#1072' '#1087#1088#1086#1090#1086#1082#1086#1083#1072
      end
      object btnPrint: TSpeedButton
        Left = 192
        Top = 11
        Width = 37
        Height = 37
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000D1D1D1343434
          3434343434343434343434343434343434343434343434343434343434343434
          34343434343434D1D1D134343499999999999999999999999999999992929283
          83837272726363635C5C5C5C5C5C5C5C5C5C5C5C5C5C5C343434343434999999
          9999999999999999999999999999998E8E8E7D7D7D6C6C6C5F5F5F5C5C5C5C5C
          5C5C5C5C5C5C5C3434343434342D2D2D2727272222221E1E1E1A1A1A17171715
          1515141414131313111111111111101010111111111111343434373737D6D6D6
          C9C9C9BCBCBCB0B0B0A5A5A59A9A9A9494949191918A8A8A8080807676766E6E
          6E686868616161181818393939E2E2E2E2E2E2E1E1E1E0E0E0DFDFDFDDDDDDDC
          DCDCDBDBDBD3D3D3C6C6C6B8B8B8AAAAAA2727E68D8D8D2020203A3A3AE9E9E9
          E9E9E9E9E9E9E9E9E9E8E8E8E7E7E7E6E6E6E6E6E6E4E4E4E2E2E2E0E0E0DDDD
          DDCECECEBABABA2A2A2A3B3B3B3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3B3B3B3B
          3B3B3B3B3B3B3B3B3A3A3A3A3A3A393939383838383838343434D1D1D1D1D1D1
          D1D1D1403D3BFEF3E6FEF1E1FEEFDCFEECD7FEE9D1FEE4C6FDE0BCFDDCB43F36
          2BD1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1403E3CFFF5EA403D39403C3840
          3C37403B36FEE9D0403931FDDFBB3F372DD1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
          D1D1D1403E3DFFF7EDFEF5E9FEF3E5FEF0E0FEEEDBFEECD6FEE8CEFEE3C43F38
          2FD1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1403F3DFFF8F1403E3B403D3AFE
          F2E4403C38403C37403B35403A33403931D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
          D1D1D1403F3EFFFAF4FFF8F1FFF6EDFEF4E8403D39FEF0DFFEEEDA403B35D1D1
          D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1403F3FFFFBF8403F3DCFCDCBFF
          F6EC403D3AFEF2E3403C38D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
          D1D1D140403FFFFDFAFFFBF7FFFAF4FFF8F0403E3B403D3AD1D1D1D1D1D1D1D1
          D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D140404040403F403F3F403F3E40
          3E3D403E3CD1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1}
        OnClick = btnPrintClick
      end
      object edtPNumber: TEdit
        Left = 137
        Top = 20
        Width = 53
        Height = 25
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '1'
      end
      object dtpPDate: TDateTimePicker
        Left = 128
        Top = 50
        Width = 110
        Height = 25
        Date = 37949.531976990740000000
        Time = 37949.531976990740000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object cbDolgnost: TComboBox
      Left = 89
      Top = 90
      Width = 208
      Height = 26
      Style = csDropDownList
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 18
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = #1042#1089#1077
      OnChange = cbDolgnostChange
      Items.Strings = (
        #1042#1089#1077)
    end
    object dtpTBDate: TDateTimePicker
      Left = 389
      Top = 50
      Width = 129
      Height = 26
      Date = 37938.764932719910000000
      Time = 37938.764932719910000000
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = dtpTBDateChange
    end
    object cbPodr: TComboBox
      Left = 352
      Top = 90
      Width = 161
      Height = 26
      Style = csDropDownList
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 18
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = #1042#1089#1077
      OnChange = cbPodrChange
      Items.Strings = (
        #1042#1089#1077)
    end
    object CBDN: TComboBox
      Left = 576
      Top = 90
      Width = 81
      Height = 26
      Style = csDropDownList
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 18
      ParentFont = False
      TabOrder = 4
      OnChange = cbPodrChange
      Items.Strings = (
        #1042#1089#1077
        #1044#1053'-1'
        #1044#1053'-2'
        #1044#1053'-3'
        #1044#1053'-4')
    end
    object DTPickDateGroup: TDBDateTimeEditEh
      Left = 614
      Top = 5
      Width = 155
      Height = 24
      DataField = 'DATE'
      DataSource = FormGroups.dsGroups
      EditButtons = <>
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clMaroon
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      Kind = dtkDateEh
      ParentFont = False
      TabOrder = 5
      Visible = True
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 425
    Width = 1024
    Height = 322
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 0
      Top = 31
      Width = 1024
      Height = 291
      Align = alClient
      AllowedOperations = []
      DataSource = dsLS
      Flat = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      FooterColor = cl3DLight
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = RUSSIAN_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -15
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnDblClick = DBGridEh1DblClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'lookupPodr'
          Footers = <>
          Width = 185
        end
        item
          EditButtons = <>
          FieldName = 'NameF'
          Footers = <>
          Title.Alignment = taCenter
          Width = 108
        end
        item
          EditButtons = <>
          FieldName = 'NameIO'
          Footers = <>
          Title.Alignment = taCenter
          Width = 196
        end
        item
          EditButtons = <>
          FieldName = 'DataKomisTB'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072' '#1086#1073#1091#1095'.'
          Width = 110
        end
        item
          EditButtons = <>
          FieldName = 'lookupDolgnost'
          Footers = <>
          Title.Alignment = taCenter
          Width = 233
        end
        item
          EditButtons = <>
          FieldName = 'Region'
          Footers = <>
          Title.Alignment = taCenter
          Width = 105
        end
        item
          EditButtons = <>
          FieldName = 'Phone'
          Footers = <>
          Width = 107
        end>
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 1024
      Height = 31
      Align = alTop
      Color = 13610379
      TabOrder = 1
      object Label9: TLabel
        Left = 10
        Top = 4
        Width = 45
        Height = 21
        Caption = #1042#1057#1045':'
        Color = 13610379
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clNavy
        Font.Height = -18
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentColor = False
        ParentFont = False
      end
      object Label11: TLabel
        Left = 90
        Top = 9
        Width = 334
        Height = 18
        Caption = #1047#1072#1085#1077#1089#1090#1080' '#1095#1077#1083#1086#1074#1077#1082#1072' - '#1076#1074#1086#1081#1085#1086#1081' '#1097#1077#1083#1095#1086#1082' "'#1084#1099#1096#1080'"'
        Color = 13610379
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 457
        Top = 4
        Width = 160
        Height = 22
        Caption = #1047#1072#1085#1077#1089#1090#1080' '#1074#1089#1077#1093
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
          3333333333777F33333333333309033333333333337F7F333333333333090333
          33333333337F7F33333333333309033333333333337F7F333333333333090333
          33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
          3333333777737777F333333099999990333333373F3333373333333309999903
          333333337F33337F33333333099999033333333373F333733333333330999033
          3333333337F337F3333333333099903333333333373F37333333333333090333
          33333333337F7F33333333333309033333333333337373333333333333303333
          333333333337F333333333333330333333333333333733333333}
        NumGlyphs = 2
        OnClick = SpeedButton1Click
      end
      object LblKol: TLabel
        Left = 674
        Top = 4
        Width = 45
        Height = 21
        Caption = #1042#1057#1045':'
        Color = 13610379
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clNavy
        Font.Height = -18
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object dsLS: TDataSource
    DataSet = tblLS
    Left = 72
    Top = 304
  end
  object tblDolgnost: TTable
    DatabaseName = 'TB2004'
    TableName = 'PDOLGGL.DB'
    Left = 40
    Top = 336
    object tblDolgnostVisible: TBooleanField
      FieldName = 'Visible'
    end
    object tblDolgnostNum: TAutoIncField
      FieldName = 'Num'
      ReadOnly = True
    end
    object tblDolgnostNaim: TStringField
      FieldName = 'Naim'
      ReadOnly = True
      Size = 60
    end
  end
  object tblPerPodr: TTable
    DatabaseName = 'TB2004'
    TableName = 'PERPODR.DB'
    Left = 40
    Top = 368
    object tblPerPodrVisible: TBooleanField
      FieldName = 'Visible'
    end
    object tblPerPodrN: TAutoIncField
      FieldName = 'N'
      ReadOnly = True
    end
    object tblPerPodrPodr: TStringField
      FieldName = 'Podr'
      ReadOnly = True
      Size = 10
    end
    object tblPerPodrNamePodr: TStringField
      FieldName = 'NamePodr'
      ReadOnly = True
      Size = 100
    end
  end
  object qGroupsLS: TQuery
    BeforePost = qGroupsLSBeforePost
    BeforeDelete = qGroupsLSBeforeDelete
    AfterDelete = qGroupsLSAfterDelete
    OnCalcFields = qGroupsLSCalcFields
    DatabaseName = 'TB2004'
    RequestLive = True
    SQL.Strings = (
      'select LS_ID,GROUP_ID,Podr_ID,Dolz_ID from GROUPS_LS'
      'where (GROUP_ID=:GROUP_ID)')
    UpdateObject = usGroupsLS
    Left = 40
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GROUP_ID'
        ParamType = ptInput
        Value = '0'
      end>
    object qGroupsLSLS_ID: TIntegerField
      FieldName = 'LS_ID'
      Origin = 'TB2004."Groups_LS.DB".LS_ID'
    end
    object qGroupsLSGROUP_ID: TIntegerField
      FieldName = 'GROUP_ID'
      Origin = 'TB2004."Groups_LS.DB".GROUP_ID'
    end
    object qGroupsLSlookupNameF: TStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldKind = fkLookup
      FieldName = 'lookupNameF'
      LookupDataSet = tblLs_FULL
      LookupKeyFields = 'TabNum'
      LookupResultField = 'NameF'
      KeyFields = 'LS_ID'
      Size = 100
      Lookup = True
    end
    object qGroupsLSlookupNameIO: TStringField
      DisplayLabel = #1048#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086
      FieldKind = fkLookup
      FieldName = 'lookupNameIO'
      LookupDataSet = tblLs_FULL
      LookupKeyFields = 'TabNum'
      LookupResultField = 'NameIO'
      KeyFields = 'LS_ID'
      Size = 100
      Lookup = True
    end
    object qGroupsLSPodr_ID: TIntegerField
      FieldName = 'Podr_ID'
      Origin = 'TB2004."Groups_LS.DB".Podr_ID'
    end
    object qGroupsLSDolz_ID: TIntegerField
      FieldName = 'Dolz_ID'
      Origin = 'TB2004."Groups_LS.DB".Dolz_ID'
    end
    object qGroupsLSPodrCalc: TStringField
      FieldKind = fkCalculated
      FieldName = 'PodrCalc'
      Size = 100
      Calculated = True
    end
    object qGroupsLSDolzCalc: TStringField
      FieldKind = fkCalculated
      FieldName = 'DolzCalc'
      Size = 100
      Calculated = True
    end
    object qGroupsLSNamePodr: TStringField
      FieldKind = fkLookup
      FieldName = 'NamePodr'
      LookupDataSet = tblPerPodr
      LookupKeyFields = 'N'
      LookupResultField = 'NamePodr'
      KeyFields = 'Podr_ID'
      Size = 200
      Lookup = True
    end
    object qGroupsLSlookupPhone: TStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      FieldKind = fkLookup
      FieldName = 'lookupPhone'
      LookupDataSet = tblLs_FULL
      LookupKeyFields = 'TabNum'
      LookupResultField = 'Phone'
      KeyFields = 'LS_ID'
      Size = 30
      Lookup = True
    end
    object qGroupsLSlookupDataKomisTB: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1073#1091#1095'.'
      FieldKind = fkLookup
      FieldName = 'lookupDataKomisTB'
      LookupDataSet = tblLs_FULL
      LookupKeyFields = 'TabNum'
      LookupResultField = 'DataKomisTB'
      KeyFields = 'LS_ID'
      Lookup = True
    end
  end
  object usGroupsLS: TUpdateSQL
    ModifySQL.Strings = (
      'update GROUPS_LS'
      'set'
      '  LS_ID = :LS_ID,'
      '  GROUP_ID = :GROUP_ID'
      'where'
      '  LS_ID = :OLD_LS_ID and'
      '  GROUP_ID = :OLD_GROUP_ID')
    InsertSQL.Strings = (
      'insert into GROUPS_LS'
      '  (LS_ID, GROUP_ID)'
      'values'
      '  (:LS_ID, :GROUP_ID)')
    DeleteSQL.Strings = (
      'delete from GROUPS_LS'
      'where'
      '  LS_ID = :OLD_LS_ID and'
      '  GROUP_ID = :OLD_GROUP_ID')
    Left = 72
    Top = 272
  end
  object dsGroupsLS: TDataSource
    DataSet = qGroupsLS
    Left = 104
    Top = 272
  end
  object tblLs_FULL: TTable
    DatabaseName = 'TB2004'
    OnFilterRecord = tblLSFilterRecord
    TableName = 'LS.DB'
    Left = 40
    Top = 240
    object StringField3: TStringField
      FieldName = 'Born'
      Size = 10
    end
    object SmallintField1: TSmallintField
      FieldName = 'KodDolz'
    end
    object StringField4: TStringField
      FieldKind = fkLookup
      FieldName = 'lookupDolgnost'
      LookupDataSet = dtmMain.tblDolgnost
      LookupKeyFields = 'Num'
      LookupResultField = 'Naim'
      KeyFields = 'KodDolz'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object SmallintField2: TSmallintField
      FieldName = 'KodPodr'
    end
    object StringField5: TStringField
      FieldKind = fkLookup
      FieldName = 'lookupPodr'
      LookupDataSet = dtmMain.tblPerPodr
      LookupKeyFields = 'N'
      LookupResultField = 'Podr'
      KeyFields = 'KodPodr'
      LookupCache = True
      Size = 200
      Lookup = True
    end
    object DateField1: TDateField
      FieldName = 'DataKomisTB'
    end
    object AutoIncField1: TAutoIncField
      FieldName = 'TabNum'
      ReadOnly = True
    end
    object tblLs_FULLNameF: TStringField
      FieldName = 'NameF'
    end
    object tblLs_FULLNameIO: TStringField
      FieldName = 'NameIO'
      Size = 40
    end
    object tblLs_FULLPhone: TStringField
      FieldName = 'Phone'
    end
  end
  object tblLS: TQuery
    DatabaseName = 'TB2004'
    Filtered = True
    OnFilterRecord = tblLSFilterRecord
    SQL.Strings = (
      'select * from LS where DataKomisTB is null')
    Left = 40
    Top = 304
    object tblLSNameF: TStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'NameF'
    end
    object tblLSNameIO: TStringField
      DisplayLabel = #1048#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086
      FieldName = 'NameIO'
      Size = 40
    end
    object tblLSBorn: TStringField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'Born'
      Size = 10
    end
    object tblLSKodDolz: TSmallintField
      FieldName = 'KodDolz'
    end
    object tblLSlookupDolgnost: TStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldKind = fkLookup
      FieldName = 'lookupDolgnost'
      LookupDataSet = dtmMain.tblDolgnost
      LookupKeyFields = 'Num'
      LookupResultField = 'Naim'
      KeyFields = 'KodDolz'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object tblLSKodPodr: TSmallintField
      FieldName = 'KodPodr'
    end
    object tblLSlookupPodr: TStringField
      DisplayLabel = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
      FieldKind = fkLookup
      FieldName = 'lookupPodr'
      LookupDataSet = dtmMain.tblPerPodr
      LookupKeyFields = 'N'
      LookupResultField = 'Podr'
      KeyFields = 'KodPodr'
      LookupCache = True
      Size = 200
      Lookup = True
    end
    object tblLSDataKomisTB: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1082#1086#1084#1080#1089#1080#1080
      FieldName = 'DataKomisTB'
    end
    object tblLSTabNum: TAutoIncField
      FieldName = 'TabNum'
      ReadOnly = True
    end
    object tblLSRegion: TStringField
      DisplayLabel = #1056#1077#1075#1080#1086#1085
      FieldName = 'Region'
      Origin = 'TB2004."LS.DB".Region'
      Size = 30
    end
    object tblLSPhone: TStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      FieldName = 'Phone'
      Origin = 'TB2004."LS.DB".Phone'
    end
  end
  object qPrint: TQuery
    DatabaseName = 'TB2004'
    SQL.Strings = (
      
        'select LS.TabNum,LS.NameF,LS.NameIO, LS.NameF+Ls.NameIO Name,D.N' +
        'aim Dolg, P.NamePodr Podr'
      'from Groups_Ls G,LS,PDOLGGL D,PerPodr P '
      
        'where (GROUP_ID=:group_id) and (LS.TabNum=G.LS_ID) and (D.NUm=LS' +
        '.KodDolz) and P.N=Ls.KodPodr'
      'order by 1')
    Left = 40
    Top = 440
    ParamData = <
      item
        DataType = ftInteger
        Name = 'group_id'
        ParamType = ptInput
      end>
    object qPrintTabNum: TIntegerField
      FieldName = 'TabNum'
      Origin = 'TB2004."LS.DB".TabNum'
    end
    object qPrintName: TStringField
      FieldName = 'Name'
      Origin = 'TB2004."LS.DB".NameF'
      Size = 60
    end
    object qPrintDolg: TStringField
      FieldName = 'Dolg'
      Origin = 'TB2004."PDOLGGL.DB".Naim'
      Size = 60
    end
    object qPrintPodr: TStringField
      FieldName = 'Podr'
      Origin = 'TB2004."PERPODR.DB".NamePodr'
      Size = 100
    end
    object qPrintNameF: TStringField
      FieldName = 'NameF'
      Origin = 'TB2004."LS.DB".NameF'
    end
    object qPrintNameIO: TStringField
      FieldName = 'NameIO'
      Origin = 'TB2004."LS.DB".NameIO'
      Size = 40
    end
  end
  object PrintEH: TPrintDBGridEh
    DBGridEh = DBGridEh4
    Options = [pghFitGridToPageWidth]
    Page.BottomMargin = 2.000000000000000000
    Page.LeftMargin = 1.000000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 2.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -13
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -13
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 352
    Top = 264
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313034397B5C666F6E7474626C7B5C66305C666E696C5C66636861
      727365743020417269616C3B7D7B5C66315C666E696C5C666368617273657432
      30347B5C2A5C666E616D6520417269616C3B7D417269616C204359523B7D7B5C
      66325C666E696C204D532053616E732053657269663B7D7D0D0A7B5C636F6C6F
      7274626C203B5C726564305C677265656E305C626C7565303B7D0D0A5C766965
      776B696E64345C7563315C706172645C71635C6366315C6C616E67313033335C
      66733234206767670D0A5C706172205C62200D0A5C706172205C6C616E673130
      34395C62305C66315C2763665C2764305C2763385C2763665C2763385C276431
      0D0A5C706172205C62200D0A5C706172205C62305C695C2762390D0A5C706172
      205C625C6930200D0A5C706172205C62305C695C2763615C2765655C2765635C
      2766330D0A5C706172205C69305C66733232200D0A5C706172205C706172645C
      7461625C2763325C2762335C2765345C2765665C2765655C2765325C2762335C
      2765345C2765645C276565205C2765345C276565205C2763375C2765305C2765
      615C2765655C2765645C276633205C2764335C2765615C2766305C2765305C27
      62665C2765645C27653820225C2763665C2766305C276565205C2765655C2766
      355C2765655C2766305C2765655C2765645C276633205C2765665C2766305C27
      65305C2766365C276233222C205C276537205C2765635C2765355C2766325C27
      65655C276665205C2766315C2766325C2765325C2765655C2766305C2765355C
      2765645C2765645C276666205C2765315C2765355C2765375C2765665C276535
      5C2766375C2765645C2765385C276635205C2766325C276530205C2765645C27
      65355C2766385C2765615C2762335C2765345C2765625C2765385C2765325C27
      65385C276635205C2766335C2765635C2765655C276532205C2765665C276630
      5C2765305C2766365C276233205C2765665C2766305C2765655C2765665C2765
      655C2765645C2766335C276665205C2763325C2765305C276563205C2766335C
      2766315C2766335C2765645C2766335C2766325C276538205C2766315C276562
      5C2762335C2765345C2766335C2766655C2766375C276538205C2765665C2765
      655C2766305C2766335C2766385C2765355C2765645C2765645C276666205C27
      66325C276530205C2765645C2765355C2765345C2765655C2765625C2762335C
      2765615C2765383A5C6C616E67313033335C625C66305C66733234200D0A5C70
      6172205C706172645C71635C6366305C6C616E67313034395C62305C66325C66
      733136200D0A5C706172207D0D0A00}
  end
end
