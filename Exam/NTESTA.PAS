unit NTesta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DM,
  StdCtrls, Buttons, Db, DBTables, Grids, DBGridEh, IBCustomDataSet,
  IBQuery, GridsEh;

type
  TFrmNTesta = class(TForm)
    Label1: TLabel;
    bOK: TBitBtn;
    dsTest: TDataSource;
    grdTest: TDBGridEh;
    bCancel: TBitBtn;
    qTest: TIBQuery;
    qTestNUM: TIntegerField;
    qTestID: TIntegerField;
    qTestIDVID: TIntegerField;
    qTestNAME: TIBStringField;
    Label2: TLabel;
    Label3: TLabel;
    dsKate: TDataSource;
    QKate: TIBQuery;
    QKateID: TIntegerField;
    QKateNAME: TIBStringField;
    DBGridEh1: TDBGridEh;
    dsVide: TDataSource;
    QVide: TIBQuery;
    QVideID: TIntegerField;
    QVideIDKAT: TIntegerField;
    QVideNAME: TIBStringField;
    DBGridEh2: TDBGridEh;
    procedure bOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    N:integer;
  end;

var
  FrmNTesta: TFrmNTesta;

implementation

{$R *.DFM}

procedure TFrmNTesta.bOKClick(Sender: TObject);
var j:integer;
    Res:boolean;
begin
    N:=qTestID.Value;
end;

end.
