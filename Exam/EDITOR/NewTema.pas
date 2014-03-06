unit NewTema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBCustomDataSet, IBUpdateSQL, DB, StdCtrls, Buttons, ExtCtrls,
  IBQuery, Grids, DBGridEh, Mask, DBCtrls, IBTable, DBGrids, GridsEh;

type
  TFrmNewTema = class(TForm)
    DBGridEh1: TDBGridEh;
    QryKAT: TIBQuery;
    dsKat: TDataSource;
    tabExam: TIBQuery;
    dsExam: TDataSource;
    grdExam: TDBGridEh;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    tabQuest: TIBQuery;
    IBUpdateSQL3: TIBUpdateSQL;
    QryKATID: TIntegerField;
    QryKATNAME: TIBStringField;
    QryKATPRIM: TIBStringField;
    tabExamID: TIntegerField;
    tabExamNAME: TIBStringField;
    tabExamIDKAT: TIntegerField;
    dsQuest: TDataSource;
    tabQuestVklCALC: TBooleanField;
    Panel2: TPanel;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    DBGridEh2: TDBGridEh;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tabQuestEXAMID: TIntegerField;
    tabQuestID: TIntegerField;
    tabQuestTYPE: TIntegerField;
    tabQuestTIPPODR: TIBStringField;
    tabQuestGRUP: TIntegerField;
    tabQuestTEXT: TIBStringField;
    tabQuestANSWER1: TIBStringField;
    tabQuestANSWER2: TIBStringField;
    tabQuestANSWER3: TIBStringField;
    tabQuestANSWER4: TIBStringField;
    tabQuestPICTURE: TIBStringField;
    tabQuestINT1: TIntegerField;
    tabQuestSTR1: TIBStringField;
    tabQuestINT2: TIntegerField;
    tabQuestINT3: TIntegerField;
    tabQuestNORMDOC: TIBStringField;
    tabQuestOBJAZ: TIBStringField;
    tabQuestZEL: TIBStringField;
    tabQuestNEZEL: TIBStringField;
    tabQuestGr: TIBTable;
    tabQuestGrQUESTID: TIntegerField;
    tabQuestGrNUM: TIntegerField;
    tabQuestGrPATH0: TIBStringField;
    tabQuestGrPATH1: TIBStringField;
    tabQuestGrPATH2: TIBStringField;
    tabQuestGrPATH3: TIBStringField;
    tabQuestGrKOLASK: TIntegerField;
    tabQuestGrUSERCHOICE: TIntegerField;
    dsQuestGr: TDataSource;
    tabQuest2: TIBQuery;
    tabQuest2QUESTID: TIntegerField;
    tabQuest2NUM: TIntegerField;
    tabQuest2ANSWER: TIBStringField;
    tabQuest2CALCYES: TBooleanField;
    tabQuest2RIGHT: TIntegerField;
    tabQuest2USERCHOICE: TIntegerField;
    dsQuest2: TDataSource;
    tabQuestNUMPP: TIntegerField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure QryKATAfterScroll(DataSet: TDataSet);
    procedure tabExamAfterScroll(DataSet: TDataSet);
    procedure tabQuestCalcFields(DataSet: TDataSet);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    IdKat:integer;
  end;

var
  FrmNewTema: TFrmNewTema;

implementation

{$R *.dfm}
Uses Ask2;
procedure TFrmNewTema.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TFrmNewTema.QryKATAfterScroll(DataSet: TDataSet);
begin
      tabExam.SQL.Clear;
      tabExam.SQL.Add('select * from EXAMT where IDKAT='+IntToStr(QryKatID.Value)+' order by ID');
      tabExam.Open;
end;

procedure TFrmNewTema.tabExamAfterScroll(DataSet: TDataSet);
begin
      tabQuest.SQL.Clear;
      tabQuest.SQL.Add('select * from QUEST where EXAMID='+IntToStr(tabExamID.Value)+' order by numpp, id desc');
      tabQuest.Open;
end;

procedure TFrmNewTema.tabQuestCalcFields(DataSet: TDataSet);
begin
   tabQuestVklCalc.Value:=tabQuestInt2.Value>0;
end;

procedure TFrmNewTema.DBGridEh2CellClick(Column: TColumnEh);
begin
   if Column.Index =0 then
   begin
      tabQuest.Edit;
      if tabQuestInt2.Value>0 then tabQuestInt2.Value:=0 else
         tabQuestInt2.Value:=1;
      tabQuest.Post;
   end;
end;

procedure TFrmNewTema.SpeedButton9Click(Sender: TObject);
begin
   tabQuest.First;
   While not tabQuest.Eof do
   begin
      if tabQuestInt2.Value =0 then
      begin
         tabQuest.Edit;
         tabQuestInt2.Value:=1;
         tabQuest.Post;
      end;
      tabQuest.Next;
   end;
   tabQuest.First;
end;

procedure TFrmNewTema.SpeedButton10Click(Sender: TObject);
begin
   tabQuest.First;
   While not tabQuest.Eof do
   begin
      if tabQuestInt2.Value <>0 then
      begin
         tabQuest.Edit;
         tabQuestInt2.Value:=0;
         tabQuest.Post;
      end;
      tabQuest.Next;
   end;
   tabQuest.First;
end;

procedure TFrmNewTema.FormActivate(Sender: TObject);
begin
   QryKat.Open;
   TabExam.Open;
   TabQuest.Open;
end;

procedure TFrmNewTema.BitBtn1Click(Sender: TObject);
begin
//   tabQuest.ApplyUpdates;
   frmAsk2.IDExamNewTest:=tabExamID.Value;
end;

procedure TFrmNewTema.FormCreate(Sender: TObject);
begin
   tabQuestGr.Active:=true;
end;

procedure TFrmNewTema.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   tabQuestGr.Active:=false;
end;

end.
