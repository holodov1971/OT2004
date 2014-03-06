unit DM;

interface

uses
  SysUtils, Classes, IBDatabase, DB, MyData;

type
  TDataModule1 = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
   IBDatabase1.Close;
// 20140211 holodov
//   IBDatabase1.DatabaseName:=DataPath+'\EXAM.GDB';
   IBDatabase1.DatabaseName:='\\'+ServerIB+'\'+DataPath+'\EXAM.GDB';
   IBDatabase1.Open;
end;

procedure TDataModule1.DataModuleDestroy(Sender: TObject);
begin
   IBDatabase1.Close;
end;

end.
