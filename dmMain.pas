unit dmMain;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TdtmMain = class(TDataModule)
    tblDolgnost: TTable;
    tblDolgnostNum: TAutoIncField;
    tblDolgnostNaim: TStringField;
    dsDolgnost: TDataSource;
    dsPerPodr: TDataSource;
    tblPerPodr: TTable;
    tblPerPodrPodr: TStringField;
    tblPerPodrNamePodr: TStringField;
    tblPerPodrN: TAutoIncField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmMain: TdtmMain;

implementation

{$R *.dfm}

procedure TdtmMain.DataModuleCreate(Sender: TObject);
begin
  tblDolgnost.Open;
  tblPerPodr.Open;
end;

procedure TdtmMain.DataModuleDestroy(Sender: TObject);
begin
  tblDolgnost.Close;
  tblPerPodr.Close;
end;

end.
