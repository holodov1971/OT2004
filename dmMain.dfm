object dtmMain: TdtmMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 335
  Top = 298
  Height = 305
  Width = 281
  object tblDolgnost: TTable
    DatabaseName = 'TB2004'
    TableName = 'PDOLGGL.DB'
    Left = 16
    Top = 24
    object tblDolgnostNum: TAutoIncField
      FieldName = 'Num'
      ReadOnly = True
    end
    object tblDolgnostNaim: TStringField
      FieldName = 'Naim'
      Size = 60
    end
  end
  object dsDolgnost: TDataSource
    DataSet = tblDolgnost
    Left = 88
    Top = 24
  end
  object dsPerPodr: TDataSource
    DataSet = tblPerPodr
    Left = 88
    Top = 80
  end
  object tblPerPodr: TTable
    DatabaseName = 'TB2004'
    TableName = 'PERPODR.DB'
    Left = 16
    Top = 80
    object tblPerPodrN: TAutoIncField
      FieldName = 'N'
      ReadOnly = True
    end
    object tblPerPodrPodr: TStringField
      FieldName = 'Podr'
      Size = 10
    end
    object tblPerPodrNamePodr: TStringField
      FieldName = 'NamePodr'
      Size = 100
    end
  end
end
