unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, IBCustomDataSet, IBUpdateSQL, IBQuery, DM,
  StdCtrls, ExtCtrls, DBCtrls;

type
  TForm2 = class(TForm)
    IBQuery1: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    IBQuery2: TIBQuery;
    IBUpdateSQL2: TIBUpdateSQL;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    IBQuery3: TIBQuery;
    IBUpdateSQL3: TIBUpdateSQL;
    DataSource3: TDataSource;
    DBGrid3: TDBGrid;
    IBQuery1ID: TIntegerField;
    IBQuery1NAME: TIBStringField;
    IBQuery2EXAMID: TIntegerField;
    IBQuery2ID: TIntegerField;
    IBQuery2TYPE: TIntegerField;
    IBQuery2TIPPODR: TIBStringField;
    IBQuery2GRUP: TIntegerField;
    IBQuery2TEXT: TIBStringField;
    IBQuery2ANSWER1: TIBStringField;
    IBQuery2ANSWER2: TIBStringField;
    IBQuery2ANSWER3: TIBStringField;
    IBQuery2ANSWER4: TIBStringField;
    IBQuery2PICTURE: TIBStringField;
    IBQuery2INT1: TIntegerField;
    IBQuery2STR1: TIBStringField;
    IBQuery2INT2: TIntegerField;
    IBQuery2INT3: TIntegerField;
    IBQuery2NORMDOC: TIBStringField;
    IBQuery3QUESTID: TIntegerField;
    IBQuery3NUM: TIntegerField;
    IBQuery3ANSWER: TIBStringField;
    IBQuery3RIGHT: TIntegerField;
    IBQuery3USERCHOICE: TIntegerField;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    QuestMemo: TDBMemo;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Label1: TLabel;
    procedure IBQuery1AfterScroll(DataSet: TDataSet);
    procedure IBQuery2NewRecord(DataSet: TDataSet);
    procedure IBQuery2AfterScroll(DataSet: TDataSet);
    procedure IBQuery3NewRecord(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure IBQuery1BeforeScroll(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.IBQuery1AfterScroll(DataSet: TDataSet);
begin
   IBQuery2.SQL.Clear;
   IBQuery2.SQL.Add('select * from QUEST where EXAMID='+IntToStr(IBQuery1ID.Value));
   IBQuery2.Open;
   if not IBQuery2.Transaction.InTransaction then IBQuery2.Transaction.StartTransaction;
end;

procedure TForm2.IBQuery2NewRecord(DataSet: TDataSet);
begin
   IBQuery2EXAMID.Value:=IBQuery1ID.Value;
end;

procedure TForm2.IBQuery2AfterScroll(DataSet: TDataSet);
begin
   IBQuery3.SQL.Clear;
   IBQuery3.SQL.Add('select * from QUEST2 where QUESTID='+IntToStr(IBQuery2ID.Value));
   IBQuery3.Open;
end;

procedure TForm2.IBQuery3NewRecord(DataSet: TDataSet);
begin
   IBQuery3QUESTID.Value:=IBQuery2ID.Value;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
   IBQuery1.Active:=not IBQuery1.Active;
//   IBQuery2.Active:=not IBQuery2.Active;
//   IBQuery3.Active:=not IBQuery3.Active;
end;

procedure TForm2.IBQuery1BeforeScroll(DataSet: TDataSet);
begin
   IBQuery2.Transaction.CommitRetaining;
   IBQuery2.Active:=false;
   IBQuery2.Active:=true;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
   IBQuery2.Post;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
   IBQuery2.Active:=not IBQuery2.Active;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
   IBQuery2.Transaction.CommitRetaining;
   DataModule1.IBDatabase1.Close;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
   DataModule1.IBDatabase1.Open;
   IBQuery1.Active:=true;
   IBQuery2.Active:=true;
   IBQuery3.Active:=true;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
//   Label1.Caption:=
end;

end.
