object Form2: TForm2
  Left = 147
  Top = 142
  Width = 763
  Height = 610
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  DesignSize = (
    755
    567)
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 56
    Top = 448
    Width = 41
    Height = 16
    Caption = 'Label1'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 336
    Top = 80
    Width = 320
    Height = 120
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 672
    Top = 80
    Width = 320
    Height = 120
    DataSource = DataSource3
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 528
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object DBNavigator1: TDBNavigator
    Left = 88
    Top = 5
    Width = 504
    Height = 24
    DataSource = DataSource2
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    Anchors = [akLeft, akRight]
    Hints.Strings = (
      #1050' '#1087#1077#1088#1074#1086#1084#1091' '#1074#1086#1087#1088#1086#1089#1091
      #1050' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1084#1091' '#1074#1086#1087#1088#1086#1089#1091
      #1050' '#1089#1083#1077#1076#1091#1102#1097#1077#1084#1091' '#1074#1086#1087#1088#1086#1089#1091
      #1050' '#1087#1086#1089#1083#1077#1076#1085#1077#1084#1091' '#1074#1086#1087#1088#1086#1089#1091
      #1053#1086#1074#1099#1081' '#1074#1086#1087#1088#1086#1089
      #1059#1076#1072#1083#1080#1090#1100' '#1074#1086#1087#1088#1086#1089
      'Edit record'
      #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077)
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object QuestMemo: TDBMemo
    Left = 159
    Top = 222
    Width = 469
    Height = 64
    Anchors = [akLeft, akTop, akRight]
    BorderStyle = bsNone
    Color = 16313050
    DataField = 'Text'
    DataSource = DataSource2
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 5
  end
  object DBMemo1: TDBMemo
    Left = 159
    Top = 306
    Width = 469
    Height = 64
    Anchors = [akLeft, akTop, akRight]
    BorderStyle = bsNone
    Color = 16313050
    DataField = 'ANSWER1'
    DataSource = DataSource2
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 6
  end
  object DBMemo2: TDBMemo
    Left = 159
    Top = 399
    Width = 469
    Height = 64
    Anchors = [akLeft, akTop, akRight]
    BorderStyle = bsNone
    Color = 16313050
    DataField = 'ANSWER2'
    DataSource = DataSource2
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 7
  end
  object Button2: TButton
    Left = 24
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Post'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 32
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Close qry2'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 32
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Close IB'
    TabOrder = 10
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 32
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Open IB'
    TabOrder = 11
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 40
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Button6'
    TabOrder = 12
    OnClick = Button6Click
  end
  object IBQuery1: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    AfterScroll = IBQuery1AfterScroll
    BeforeScroll = IBQuery1BeforeScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from EXAMT')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'EXAMT_GEN'
    Left = 56
    Top = 32
    object IBQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'EXAMT.ID'
      Required = True
    end
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'EXAMT.NAME'
      Size = 200
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  "EXAMT"."ID",'
      '  "EXAMT"."NAME"'
      'from "EXAMT" '
      'where'
      '  "EXAMT"."ID" = :"ID" and'
      '  "EXAMT"."NAME" = :"NAME"')
    ModifySQL.Strings = (
      'update "EXAMT"'
      'set'
      '  "EXAMT"."ID" = :"ID",'
      '  "EXAMT"."NAME" = :"NAME"'
      'where'
      '  "EXAMT"."ID" = :"OLD_ID" and'
      '  "EXAMT"."NAME" = :"OLD_NAME"')
    InsertSQL.Strings = (
      'insert into "EXAMT"'
      '  ("EXAMT"."ID", "EXAMT"."NAME")'
      'values'
      '  (:"ID", :"NAME")')
    DeleteSQL.Strings = (
      'delete from "EXAMT"'
      'where'
      '  "EXAMT"."ID" = :"OLD_ID" and'
      '  "EXAMT"."NAME" = :"OLD_NAME"')
    Left = 144
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 232
    Top = 32
  end
  object IBQuery2: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    AfterScroll = IBQuery2AfterScroll
    OnNewRecord = IBQuery2NewRecord
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'select *  from QUEST')
    UpdateObject = IBUpdateSQL2
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'QUEST_GEN'
    Left = 376
    Top = 24
    object IBQuery2EXAMID: TIntegerField
      FieldName = 'EXAMID'
      Origin = 'QUEST.EXAMID'
      Required = True
    end
    object IBQuery2ID: TIntegerField
      FieldName = 'ID'
      Origin = 'QUEST.ID'
      Required = True
    end
    object IBQuery2TYPE: TIntegerField
      FieldName = 'TYPE'
      Origin = 'QUEST.TYPE'
    end
    object IBQuery2TIPPODR: TIBStringField
      FieldName = 'TIPPODR'
      Origin = 'QUEST.TIPPODR'
      Size = 10
    end
    object IBQuery2GRUP: TIntegerField
      FieldName = 'GRUP'
      Origin = 'QUEST.GRUP'
    end
    object IBQuery2TEXT: TIBStringField
      FieldName = 'TEXT'
      Origin = 'QUEST.TEXT'
      Size = 1000
    end
    object IBQuery2ANSWER1: TIBStringField
      FieldName = 'ANSWER1'
      Origin = 'QUEST.ANSWER1'
      Size = 1000
    end
    object IBQuery2ANSWER2: TIBStringField
      FieldName = 'ANSWER2'
      Origin = 'QUEST.ANSWER2'
      Size = 1000
    end
    object IBQuery2ANSWER3: TIBStringField
      FieldName = 'ANSWER3'
      Origin = 'QUEST.ANSWER3'
      Size = 1000
    end
    object IBQuery2ANSWER4: TIBStringField
      FieldName = 'ANSWER4'
      Origin = 'QUEST.ANSWER4'
      Size = 1000
    end
    object IBQuery2PICTURE: TIBStringField
      FieldName = 'PICTURE'
      Origin = 'QUEST.PICTURE'
      Size = 60
    end
    object IBQuery2INT1: TIntegerField
      FieldName = 'INT1'
      Origin = 'QUEST.INT1'
    end
    object IBQuery2STR1: TIBStringField
      FieldName = 'STR1'
      Origin = 'QUEST.STR1'
      Size = 255
    end
    object IBQuery2INT2: TIntegerField
      FieldName = 'INT2'
      Origin = 'QUEST.INT2'
    end
    object IBQuery2INT3: TIntegerField
      FieldName = 'INT3'
      Origin = 'QUEST.INT3'
    end
    object IBQuery2NORMDOC: TIBStringField
      FieldName = 'NORMDOC'
      Origin = 'QUEST.NORMDOC'
      Size = 255
    end
  end
  object IBUpdateSQL2: TIBUpdateSQL
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
      '  "QUEST"."NORMDOC"'
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
      '  "QUEST"."NORMDOC" = :"NORMDOC"'
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
      '   "QUEST"."INT2", "QUEST"."INT3", "QUEST"."NORMDOC")'
      'values'
      
        '  (:"EXAMID", :"ID", :"TYPE", :"TIPPODR", :"GRUP", :"TEXT", :"AN' +
        'SWER1", '
      
        '   :"ANSWER2", :"ANSWER3", :"ANSWER4", :"PICTURE", :"INT1", :"ST' +
        'R1", :"INT2", '
      '   :"INT3", :"NORMDOC")')
    DeleteSQL.Strings = (
      'delete from "QUEST"'
      'where'
      '  "QUEST"."EXAMID" = :"OLD_EXAMID" and'
      '  "QUEST"."ID" = :"OLD_ID"')
    Left = 464
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 552
    Top = 24
  end
  object IBQuery3: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    OnNewRecord = IBQuery3NewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *   from QUEST2')
    UpdateObject = IBUpdateSQL3
    Left = 712
    Top = 24
    object IBQuery3QUESTID: TIntegerField
      FieldName = 'QUESTID'
      Origin = 'QUEST2.QUESTID'
      Required = True
    end
    object IBQuery3NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'QUEST2.NUM'
      Required = True
    end
    object IBQuery3ANSWER: TIBStringField
      FieldName = 'ANSWER'
      Origin = 'QUEST2.ANSWER'
      Size = 255
    end
    object IBQuery3RIGHT: TIntegerField
      FieldName = 'RIGHT'
      Origin = 'QUEST2.RIGHT'
    end
    object IBQuery3USERCHOICE: TIntegerField
      FieldName = 'USERCHOICE'
      Origin = 'QUEST2.USERCHOICE'
    end
  end
  object IBUpdateSQL3: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  "QUEST2"."QUESTID",'
      '  "QUEST2"."NUM",'
      '  "QUEST2"."ANSWER",'
      '  "QUEST2"."RIGHT",'
      '  "QUEST2"."USERCHOICE"'
      'from "QUEST2" '
      'where'
      '  "QUEST2"."QUESTID" = :"QUESTID" and'
      '  "QUEST2"."NUM" = :"NUM"')
    ModifySQL.Strings = (
      'update "QUEST2"'
      'set'
      '  "QUEST2"."QUESTID" = :"QUESTID",'
      '  "QUEST2"."NUM" = :"NUM",'
      '  "QUEST2"."ANSWER" = :"ANSWER",'
      '  "QUEST2"."RIGHT" = :"RIGHT",'
      '  "QUEST2"."USERCHOICE" = :"USERCHOICE"'
      'where'
      '  "QUEST2"."QUESTID" = :"OLD_QUESTID" and'
      '  "QUEST2"."NUM" = :"OLD_NUM"')
    InsertSQL.Strings = (
      'insert into "QUEST2"'
      
        '  ("QUEST2"."QUESTID", "QUEST2"."NUM", "QUEST2"."ANSWER", "QUEST' +
        '2"."RIGHT", '
      '   "QUEST2"."USERCHOICE")'
      'values'
      '  (:"QUESTID", :"NUM", :"ANSWER", :"RIGHT", :"USERCHOICE")')
    DeleteSQL.Strings = (
      'delete from "QUEST2"'
      'where'
      '  "QUEST2"."QUESTID" = :"OLD_QUESTID" and'
      '  "QUEST2"."NUM" = :"OLD_NUM"')
    Left = 800
    Top = 24
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 888
    Top = 24
  end
end
