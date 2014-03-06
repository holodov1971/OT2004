object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 537
  Top = 244
  Height = 156
  Width = 269
  object IBDatabase1: TIBDatabase
    DatabaseName = 'd:\tb2004\data\EXAM.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    Left = 32
    Top = 24
  end
  object IBTransaction1: TIBTransaction
    Left = 144
    Top = 24
  end
end
