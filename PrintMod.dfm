object PrintModule: TPrintModule
  OldCreateOrder = False
  Left = 743
  Top = 655
  Height = 387
  Width = 532
  object tabTestVopr_: TTable
    DatabaseName = 'TB2004'
    Filtered = True
    IndexFieldNames = 'NTesta'
    MasterFields = 'ID'
    MasterSource = dsTest
    TableName = 'TESTVOPR.DB'
    Left = 208
    Top = 16
    object tabTestVopr_NTesta: TIntegerField
      FieldName = 'NTesta'
    end
    object tabTestVopr_ExamID: TSmallintField
      FieldName = 'ExamID'
    end
    object tabTestVopr_NVoprPP: TIntegerField
      FieldName = 'NVoprPP'
    end
    object tabTestVopr_QuestID: TIntegerField
      FieldName = 'QuestID'
    end
  end
  object tabTest_: TTable
    DatabaseName = 'TB2004'
    Filtered = True
    TableName = 'Test.DB'
    Left = 105
    Top = 14
    object tabTest_Num: TIntegerField
      FieldName = 'Num'
    end
    object tabTest_ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tabTest_TipPodr: TStringField
      FieldName = 'TipPodr'
      Size = 10
    end
    object tabTest_Grup: TSmallintField
      FieldName = 'Grup'
    end
    object tabTest_Razr: TSmallintField
      FieldName = 'Razr'
    end
    object tabTest_KodDolz: TSmallintField
      FieldName = 'KodDolz'
    end
    object tabTest_Info: TStringField
      FieldName = 'Info'
      Size = 50
    end
  end
  object dsTest: TDataSource
    DataSet = tabTest
    Left = 105
    Top = 62
  end
  object tabQuest_: TTable
    DatabaseName = 'TB2004'
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    TableName = 'quest.db'
    Left = 312
    Top = 16
    object tabQuest_ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tabQuest_Text: TMemoField
      FieldName = 'Text'
      BlobType = ftMemo
      Size = 50
    end
    object tabQuest_Answer1: TMemoField
      FieldName = 'Answer1'
      BlobType = ftMemo
      Size = 30
    end
    object tabQuest_Answer2: TMemoField
      FieldName = 'Answer2'
      BlobType = ftMemo
      Size = 30
    end
    object tabQuest_Answer3: TMemoField
      FieldName = 'Answer3'
      BlobType = ftMemo
      Size = 30
    end
    object tabQuest_Answer4: TMemoField
      FieldName = 'Answer4'
      BlobType = ftMemo
      Size = 30
    end
    object tabQuest_Picture: TGraphicField
      FieldName = 'Picture'
      BlobType = ftGraphic
    end
    object tabQuest_ExamID: TIntegerField
      FieldName = 'ExamID'
    end
    object tabQuest_Type: TSmallintField
      FieldName = 'Type'
    end
    object tabQuest_TipPodr: TStringField
      FieldName = 'TipPodr'
      Size = 10
    end
    object tabQuest_Grup: TSmallintField
      FieldName = 'Grup'
    end
  end
  object dsQuest: TDataSource
    DataSet = tabQuest
    Left = 312
    Top = 64
  end
  object tabQuest2_: TTable
    DatabaseName = 'TB2004'
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    IndexFieldNames = 'QuestID'
    MasterFields = 'ID'
    MasterSource = dsQuest
    TableName = 'QUEST2.DB'
    Left = 392
    Top = 16
    object tabQuest2_QuestID: TIntegerField
      FieldName = 'QuestID'
    end
    object tabQuest2_Num: TSmallintField
      FieldName = 'Num'
    end
    object tabQuest2_Answer: TStringField
      FieldName = 'Answer'
      Size = 255
    end
    object tabQuest2_Right: TBooleanField
      FieldName = 'Right'
    end
    object tabQuest2_UserChoice: TBooleanField
      FieldName = 'UserChoice'
    end
  end
  object dsQuest2: TDataSource
    DataSet = tabQuest2
    Left = 392
    Top = 64
  end
  object tabExam_: TTable
    AutoRefresh = True
    DatabaseName = 'TB2004'
    TableName = 'exam.db'
    Left = 437
    Top = 200
    object tabExam_ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tabExam_Name: TStringField
      FieldName = 'Name'
      Size = 70
    end
  end
  object dsExam: TDataSource
    DataSet = tabExam
    Left = 437
    Top = 248
  end
  object tabTest: TIBTable
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    FieldDefs = <
      item
        Name = 'NUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IDVID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 100
      end>
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$FOREIGN45'
        Fields = 'IDVID'
      end
      item
        Name = 'RDB$PRIMARY44'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'TEST'
    Left = 104
    Top = 120
    object tabTestNUM: TIntegerField
      FieldName = 'NUM'
    end
    object tabTestID: TIntegerField
      FieldName = 'ID'
    end
    object tabTestIDVID: TIntegerField
      FieldName = 'IDVID'
    end
    object tabTestNAME: TIBStringField
      FieldName = 'NAME'
      Size = 100
    end
  end
  object tabTestVopr: TIBTable
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IDTEST'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IDEXAM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IDQUEST'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY46'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN47'
        Fields = 'IDTEST'
      end
      item
        Name = 'RDB$FOREIGN48'
        Fields = 'IDEXAM'
      end
      item
        Name = 'RDB$FOREIGN49'
        Fields = 'IDQUEST'
      end>
    IndexFieldNames = 'IDTEST'
    MasterFields = 'ID'
    MasterSource = dsTest
    StoreDefs = True
    TableName = 'TESTVOPR'
    Left = 208
    Top = 120
    object tabTestVoprID: TIntegerField
      FieldName = 'ID'
    end
    object tabTestVoprNUM: TIntegerField
      FieldName = 'NUM'
    end
    object tabTestVoprIDTEST: TIntegerField
      FieldName = 'IDTEST'
    end
    object tabTestVoprIDEXAM: TIntegerField
      FieldName = 'IDEXAM'
    end
    object tabTestVoprIDQUEST: TIntegerField
      FieldName = 'IDQUEST'
    end
  end
  object tabQuest: TIBTable
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    FieldDefs = <
      item
        Name = 'EXAMID'
        DataType = ftInteger
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'TYPE'
        DataType = ftInteger
      end
      item
        Name = 'TIPPODR'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'GRUP'
        DataType = ftInteger
      end
      item
        Name = 'TEXT'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'ANSWER1'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'ANSWER2'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'ANSWER3'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'ANSWER4'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'PICTURE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'INT1'
        DataType = ftInteger
      end
      item
        Name = 'STR1'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'INT2'
        DataType = ftInteger
      end
      item
        Name = 'INT3'
        DataType = ftInteger
      end
      item
        Name = 'NORMDOC'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'OBJAZ'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'ZEL'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'NEZEL'
        DataType = ftString
        Size = 500
      end>
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$FOREIGN45'
        Fields = 'IDVID'
      end
      item
        Name = 'RDB$PRIMARY44'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'QUEST'
    Left = 312
    Top = 120
    object tabQuestEXAMID: TIntegerField
      FieldName = 'EXAMID'
    end
    object tabQuestID: TIntegerField
      FieldName = 'ID'
    end
    object tabQuestTYPE: TIntegerField
      FieldName = 'TYPE'
    end
    object tabQuestTIPPODR: TIBStringField
      FieldName = 'TIPPODR'
      Size = 10
    end
    object tabQuestGRUP: TIntegerField
      FieldName = 'GRUP'
    end
    object tabQuestTEXT: TIBStringField
      FieldName = 'TEXT'
      Size = 1000
    end
    object tabQuestANSWER1: TIBStringField
      FieldName = 'ANSWER1'
      Size = 1000
    end
    object tabQuestANSWER2: TIBStringField
      FieldName = 'ANSWER2'
      Size = 1000
    end
    object tabQuestANSWER3: TIBStringField
      FieldName = 'ANSWER3'
      Size = 1000
    end
    object tabQuestANSWER4: TIBStringField
      FieldName = 'ANSWER4'
      Size = 1000
    end
    object tabQuestPICTURE: TIBStringField
      FieldName = 'PICTURE'
      Size = 60
    end
    object tabQuestINT1: TIntegerField
      FieldName = 'INT1'
    end
    object tabQuestSTR1: TIBStringField
      FieldName = 'STR1'
      Size = 255
    end
    object tabQuestINT2: TIntegerField
      FieldName = 'INT2'
    end
    object tabQuestINT3: TIntegerField
      FieldName = 'INT3'
    end
    object tabQuestNORMDOC: TIBStringField
      FieldName = 'NORMDOC'
      Size = 255
    end
    object tabQuestOBJAZ: TIBStringField
      FieldName = 'OBJAZ'
      Size = 500
    end
    object tabQuestZEL: TIBStringField
      FieldName = 'ZEL'
      Size = 500
    end
    object tabQuestNEZEL: TIBStringField
      FieldName = 'NEZEL'
      Size = 500
    end
  end
  object tabQuest2: TIBTable
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    FieldDefs = <
      item
        Name = 'QUESTID'
        DataType = ftInteger
      end
      item
        Name = 'NUM'
        DataType = ftInteger
      end
      item
        Name = 'ANSWER'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'RIGHT'
        DataType = ftInteger
      end
      item
        Name = 'USERCHOICE'
        DataType = ftInteger
      end>
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$FOREIGN45'
        Fields = 'IDVID'
      end
      item
        Name = 'RDB$PRIMARY44'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'QUESTID'
    MasterFields = 'ID'
    MasterSource = dsQuest
    StoreDefs = True
    TableName = 'QUEST2'
    Left = 392
    Top = 120
    object tabQuest2QUESTID: TIntegerField
      FieldName = 'QUESTID'
    end
    object tabQuest2NUM: TIntegerField
      FieldName = 'NUM'
    end
    object tabQuest2ANSWER: TIBStringField
      FieldName = 'ANSWER'
      Size = 255
    end
    object tabQuest2RIGHT: TIntegerField
      FieldName = 'RIGHT'
    end
    object tabQuest2USERCHOICE: TIntegerField
      FieldName = 'USERCHOICE'
    end
  end
  object tabExam: TIBTable
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    FieldDefs = <
      item
        Name = 'ID'
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
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$FOREIGN45'
        Fields = 'IDVID'
      end
      item
        Name = 'RDB$PRIMARY44'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'EXAMT'
    Left = 440
    Top = 304
    object tabExamID: TIntegerField
      FieldName = 'ID'
    end
    object tabExamNAME: TIBStringField
      FieldName = 'NAME'
      Size = 200
    end
    object tabExamIDKAT: TIntegerField
      FieldName = 'IDKAT'
    end
    object tabExamPASSW: TIBStringField
      FieldName = 'PASSW'
    end
  end
  object WordApp: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 56
    Top = 280
  end
end
