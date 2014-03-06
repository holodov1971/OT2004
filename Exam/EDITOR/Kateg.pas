unit Kateg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DM, DBTables, DB, StdCtrls, IBCustomDataSet, IBQuery, Test, IniFiles,
  IBUpdateSQL, Grids, DBGridEh, Buttons, ExtCtrls, Proc, MyData, DBCtrls,
  Mask, IBTable, GridsEh;

type
  TFrmKateg = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Label13: TLabel;
    dsKat: TDataSource;
    IBUpdateSQL1: TIBUpdateSQL;
    QryKAT: TIBQuery;
    dsLS: TDataSource;
    TblPerPodr: TTable;
    StringField1: TStringField;
    TblPerPodrN: TAutoIncField;
    TblDolg: TTable;
    TblDolgNum: TSmallintField;
    TblDolgNaimLook: TStringField;
    TblDolgKolNorm: TSmallintField;
    TblDolgKolShtat: TSmallintField;
    TblDolgKodPodr: TSmallintField;
    TblDolzGl: TTable;
    TblDolzGlNaim: TStringField;
    TblDolzGlNum: TAutoIncField;
    TblDolzGlMinRazr: TSmallintField;
    TblDolzGlMaxRazr: TSmallintField;
    TblDolzGlPrikaz: TStringField;
    TblDolzGlKolNorm: TSmallintField;
    TblDolzGlKolShtat: TSmallintField;
    TblDolzGlNightWork: TStringField;
    TblDolzGlKodTipDolg: TSmallintField;
    QryKATID: TIntegerField;
    QryKATNAME: TIBStringField;
    QryKATPRIM: TIBStringField;
    TabLS: TQuery;
    TabLSlookPodr: TStringField;
    TabLSlookDolg: TStringField;
    TabLSFIOCalc: TStringField;
    TabLSCheckCalc: TBooleanField;
    TabLSTabNum: TIntegerField;
    TabLSNameF: TStringField;
    TabLSKodPodr: TSmallintField;
    TabLSNameIO: TStringField;
    TabLSKodDolz: TSmallintField;
    TabLSGrupDop: TStringField;
    TabLSDataKomisTB: TDateField;
    TabLSRegion: TStringField;
    PnlPers: TPanel;
    grdData: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    bPodr: TSpeedButton;
    bDolz: TSpeedButton;
    SBNew: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    lblKol: TLabel;
    SpeedButton3: TSpeedButton;
    CmbPodr: TComboBox;
    CBDolz: TComboBox;
    SBProsm: TSpeedButton;
    SBForm: TSpeedButton;
    Panel3: TPanel;
    Panel4: TPanel;
    grdExam: TDBGridEh;
    SBPers: TSpeedButton;
    SBExam: TSpeedButton;
    PnlExam: TPanel;
    Panel6: TPanel;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    PnlExam11: TPanel;
    QryVID: TIBQuery;
    DSVid: TDataSource;
    IBUpdateSQL2: TIBUpdateSQL;
    QryVIDID: TIntegerField;
    QryVIDIDKAT: TIntegerField;
    QryVIDNAME: TIBStringField;
    QryVIDPERIOD: TIntegerField;
    QryVIDPASS: TIBStringField;
    QryVIDKOLNEOTV: TIntegerField;
    QryVIDPOKAZOTV: TIntegerField;
    QryVIDSOOBOTV: TIntegerField;
    QryVIDTIMEEXAM: TTimeField;
    QryWybTem: TIBQuery;
    IBUpdateSQL4: TIBUpdateSQL;
    DSWybTem: TDataSource;
    QryWybTemID: TIntegerField;
    QryWybTemIDKAT: TIntegerField;
    QryWybTemIDVID: TIntegerField;
    QryWybTemIDEXAM: TIntegerField;
    QryWybTemKOLVOPR: TIntegerField;
    QryWybTemlookExam: TStringField;
    TblExam: TIBTable;
    DSExam: TDataSource;
    TblExamID: TIntegerField;
    TblExamNAME: TIBStringField;
    grdRndSeed: TDBGridEh;
    SBVopr: TSpeedButton;
    PnlNastr: TPanel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    ChBoxSoob: TCheckBox;
    ChBoxPokaz: TCheckBox;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    DBGridEh2: TDBGridEh;
    tabQuest: TIBQuery;
    dsQuest: TDataSource;
    tabQuestEXAMID: TIntegerField;
    tabQuestID: TIntegerField;
    tabQuestTEXT: TIBStringField;
    tabQuestOBJAZ: TIBStringField;
    tabQuestZEL: TIBStringField;
    tabQuestNEZEL: TIBStringField;
    tabQuestOBJAZCALC: TBooleanField;
    tabQuestZELCALC: TBooleanField;
    tabQuestNEZELCALC: TBooleanField;
    IBUpdateSQL3: TIBUpdateSQL;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    DBGridEh1: TDBGridEh;
    Qry1: TIBQuery;
    DataSource1: TDataSource;
    DBText1: TDBText;
    Label4: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label5: TLabel;
    DBText4: TDBText;
    Qry2: TIBQuery;
    DataSource2: TDataSource;
    Qry3: TIBQuery;
    DataSource3: TDataSource;
    Qry4: TIBQuery;
    DataSource4: TDataSource;
    Qry2COUNT: TIntegerField;
    Qry1COUNT: TIntegerField;
    SBBil: TSpeedButton;
    QryVIDVIDEXAM: TIntegerField;
    RG1: TRadioGroup;
    TblExamIDKAT: TIntegerField;
    TblExamPASSW: TIBStringField;
    RadioGroup1: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBProsmClick(Sender: TObject);
    procedure QryKATAfterScroll(DataSet: TDataSet);
    procedure grdDataCellClick(Column: TColumnEh);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TabLSCalcFields(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SBPersClick(Sender: TObject);
    procedure QryVIDNewRecord(DataSet: TDataSet);
    procedure ChBoxSoobClick(Sender: TObject);
    procedure QryVIDAfterScroll(DataSet: TDataSet);
    procedure ChBoxPokazClick(Sender: TObject);
    procedure QryWybTemNewRecord(DataSet: TDataSet);
    procedure QryWybTemAfterScroll(DataSet: TDataSet);
    procedure tabQuestCalcFields(DataSet: TDataSet);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure DBGridEh2Exit(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure RG1Click(Sender: TObject);
    procedure SBBilClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure QryKATBeforeScroll(DataSet: TDataSet);
    procedure QryVIDBeforeScroll(DataSet: TDataSet);
  private
    { Private declarations }
    MyInit:boolean;
    ActSB,ActSBR,ActSBROld:integer;
    VybVopr: array[0..2]of TIBStringField;
    VybVoprCalc: array[0..2]of TBooleanField;
    SBR: array[1..4]of TSpeedButton;
    procedure NewFiltr;
  public
    { Public declarations }
  end;

var
  FrmKateg: TFrmKateg;

implementation

{$R *.dfm}

procedure TFrmKateg.FormCreate(Sender: TObject);
begin
  ActSB:=0;  ActSBR:=1; ActSBROld:=1;
  VybVopr[0]:=tabQuestOBJAZ;  VybVopr[1]:=tabQuestZel;  VybVopr[2]:=tabQuestNezel;
  VybVoprCalc[0]:=tabQuestOBJAZCalc;  VybVoprCalc[1]:=tabQuestZelCalc;  VybVoprCalc[2]:=tabQuestNezelCalc;
  SBR[1]:=SBPers; SBR[2]:=SBExam; SBR[3]:=SBVopr; SBR[4]:=SBBil;
  MyInit:=false;
  RG1.ItemIndex:=ModeExam-1;
  TblExam.Active:=true;
  QryKat.Active:=true;
  tblPerPodr.Active:=true;
  TblDolg.Active:=true;
  TblDolzGl.Active:=true;
  ZapolnPodr(CmbPodr);
  CmbPodr.ItemIndex:=0;
  ZapolnDolz(CbDolz);
  CbDolz.ItemIndex:=0;
  MyInit:=true;
  SBPersClick(Sender);
  NewFiltr;
end;

procedure TFrmKateg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if ModeExam<>RG1.ItemIndex+1 then
 begin
   IniFile:=TIniFile.Create(DataPath+'\exam.ini');
   IniFile.WriteInteger('Main','ModeE',RG1.ItemIndex+1);
   ModeExam:=RG1.ItemIndex+1;
   IniFile.Free;
 end;
 tblPerPodr.Active:=false;
 TblDolg.Active:=false;
 TblDolzGl.Active:=false;
 QryKat.Active:=false;
 QryVid.Active:=false;
 QryWybTem.Active:=false;
 TblExam.Active:=false;
end;

procedure TFrmKateg.SBProsmClick(Sender: TObject);
begin
   NewFiltr;
end;

procedure TFrmKateg.QryKATAfterScroll(DataSet: TDataSet);
begin
//   if PnlExam.Visible then
   begin
      QryVID.SQL.Clear;
      QryVID.SQL.Add('select * from VIDE where IDKAT='+IntToStr(QryKatID.Value)+' order by ID');
      QryVID.Open;
   end;
   NewFiltr;
end;

procedure TFrmKateg.grdDataCellClick(Column: TColumnEh);
var i,j:integer;
    s:string;
begin
   if Column.Index=0 then
   begin
      i:=Pos(IntToStr(QryKATID.Value)+'#',tabLSGrupDop.Value);
      tabLS.Edit;
      if not tabLSCheckCalc.Value then
      begin
          if i=0 then tabLSGrupDop.Value:=tabLSGrupDop.Value+IntToStr(QryKATID.Value)+'#'
      end else
      if i>0 then
      begin
            j:=0;
            s:=tabLSGrupDop.Value;
            While (i+j<=Length(s))and(s[i+j]<>'#') do
               Inc(j);
            if j>0 then Delete(s,i,j+1);
            tabLSGrupDop.Value:=s;
      end;
      if tabLS.Modified then tabLS.Post;
   end;
end;

procedure TFrmKateg.NewFiltr;
var s,s1,s2,sOsn:string;
begin
  if not MyInit then EXIT;
  if SBPers.Down then
  begin
   SBNew.Visible:=SBForm.Down;
   CmbPodr.Visible:=bPodr.Down;
   CbDolz.Visible:=bDolz.Down;
   s:=''; sOsn:='Select * from ls';
   s1:=''; s2:=' where ';
   if bPodr.Down then s:=s+'(KodPodr='+IntToStr(KodPodrArr[CmbPodr.ItemIndex+1])+')';
   if bDolz.Down then s:=s+'(KodDolz='+IntToStr(KodDolzArr[CbDolz.ItemIndex+1])+')';
   if SBNew.Down then s:=s+'(GrupDop='''')';
   TabLS.SQL.Clear;
   TabLS.SQL.Add(sOsn);
   if s<>'' then begin TabLS.SQL.Add(s2+s);s1:=' and ';s2:='' end;
   if (SBProsm.Down)and(QryKATID.Value>0)then
      TabLS.SQL.Add(s2+s1+' GrupDop like"%'+IntToStr(QryKATID.Value)+'#'+'%"');
   TabLS.Open;
   LblKol.Caption:=IntToStr(tabLS.RecordCount);
  end else
  if SBVopr.Down then
  begin
     Qry1.SQL.Clear;
     Qry1.SQL.Add('Select COUNT(Q.ID) from QUEST Q where EXAMID='+IntToStr(QryWybTemIDExam.Value));
     Qry1.Open;
     Qry2.SQL.Clear;
     Qry2.SQL.Add('Select COUNT(Q.ID) from QUEST Q where EXAMID='+IntToStr(QryWybTemIDExam.Value));
     Qry2.SQL.Add('and  Q.OBJAZ like ''%'+IntToStr(QryVIDID.Value)+'#'+'%''');
     Qry2.Open;
     Qry3.SQL.Clear;
     Qry3.SQL.Add('Select COUNT(Q.ID) from QUEST Q where EXAMID='+IntToStr(QryWybTemIDExam.Value));
     Qry3.SQL.Add('and  Q.ZEL like ''%'+IntToStr(QryVIDID.Value)+'#'+'%''');
     Qry3.Open;
     Qry4.SQL.Clear;
     Qry4.SQL.Add('Select COUNT(Q.ID) from QUEST Q where EXAMID='+IntToStr(QryWybTemIDExam.Value));
     Qry4.SQL.Add('and  Q.NEZEL like ''%'+IntToStr(QryVIDID.Value)+'#'+'%''');
     Qry4.Open;
     if Qry2Count.Value>QryWybTemKOLVOPR.Value then
     begin
        MessageDlg('ВНИМАНИЕ! Обязательных вопросов больше вопросов по теме! Количество вопросов в теме будет увеличено!',mtWarning, [mbOk], 0);
        QryWybTem.Edit;
        QryWybTemKOLVOPR.Value:=Qry2Count.Value;
        QryWybTem.Post;
        QryWybTem.ApplyUpdates;
     end;
     if Qry1Count.Value<QryWybTemKOLVOPR.Value then
     begin
        MessageDlg('ВНИМАНИЕ! По данной теме нет такого количества вопросов! Количество вопросов в теме будет уменьшено!',mtWarning, [mbOk], 0);
        QryWybTem.Edit;
        QryWybTemKOLVOPR.Value:=Qry1Count.Value;
        QryWybTem.Post;
        QryWybTem.ApplyUpdates;
     end;
  end;
end;
procedure TFrmKateg.SpeedButton1Click(Sender: TObject);
begin
     if tabQuest.Active then tabQuest.ApplyUpdates;
        Close
end;

procedure TFrmKateg.TabLSCalcFields(DataSet: TDataSet);
begin
   tabLSFIOCalc.Value:=tabLSNameF.Value+' '+tabLSNameIO.Value;
   tabLSCheckCalc.Value:=Pos(IntToStr(QryKATID.Value)+'#',tabLSGrupDop.Value)>0;
end;

procedure TFrmKateg.SpeedButton2Click(Sender: TObject);
begin
   tabLS.First;
//   tabLS.DisableControls;
   While not tabLS.Eof do
   begin
      if not tabLSCheckCalc.Value then
      begin
         if Pos(IntToStr(QryKATID.Value)+'#',tabLSGrupDop.Value)=0 then
         begin
            tabLS.Edit;
            tabLSGrupDop.Value:=tabLSGrupDop.Value+IntToStr(QryKATID.Value)+'#';
            tabLS.Post;
         end;
      end;
      tabLS.Next;
   end;
   tabLS.First;
//   tabLS.EnableControls;
end;

procedure TFrmKateg.SpeedButton3Click(Sender: TObject);
var i,j:integer;
    s:string;
begin
   tabLS.First;
   While not tabLS.Eof do
   begin
      if tabLSCheckCalc.Value then
      begin
      i:=Pos(IntToStr(QryKATID.Value)+'#',tabLSGrupDop.Value);
      if i>0 then
      begin
            j:=0;
            s:=tabLSGrupDop.Value;
            While (i+j<=Length(s))and(s[i+j]<>'#') do
               Inc(j);
            if j>0 then Delete(s,i,j+1);
            tabLS.Edit;
            tabLSGrupDop.Value:=s;
            tabLS.Post;
      end;
      end;
      tabLS.Next;
   end;
   tabLS.First;
end;

procedure TFrmKateg.SBPersClick(Sender: TObject);
begin
   ActSBROld:=AcTSBR;
   SBBil.Visible:=SBExam.Down;
   if Sender is TSpeedButton then
      With Sender as TSpeedButton do
         AcTSBR:=Tag;
   PnlPers.Visible:=SBPers.Down;
   PnlExam.Visible:=SBExam.Down or SBVopr.Down;
   PnlNastr.Visible:=SBExam.Down;
   DBGridEh2.Visible:=SBVopr.Down;
   Panel6.Visible:=SBVopr.Down;
   SBNew.Visible:=SBForm.Down;
   if SBVopr.Down then
   begin
      grdRndSeed.Columns[0].ReadOnly:=true;
      grdRndSeed.Columns[0].Font.Color:=clGray;
   end else
   begin
      grdRndSeed.Columns[0].ReadOnly:=false;
      grdRndSeed.Columns[0].Font.Color:=clBlack;
   end;
   NewFiltr;
end;

procedure TFrmKateg.QryVIDNewRecord(DataSet: TDataSet);
begin
   QryVIDidkAT.Value:=QryKatID.Value;
   QryVIDTimeExam.Value:=StrToTime('1:00');
end;

procedure TFrmKateg.ChBoxSoobClick(Sender: TObject);
begin
   QryVID.Edit;
   if ChBoxSoob.Checked then
      QryVidSOOBOTV.Value:=1 else QryVidSOOBOTV.Value:=0;
   QryVID.Post;
end;

procedure TFrmKateg.QryVIDAfterScroll(DataSet: TDataSet);
begin
   ChBoxSoob.Checked:=QryVidSOOBOTV.Value=1;
   ChBoxPokaz.Checked:=QryVidPokazOTV.Value=1;
   tblExam.Filter:='IDKAT='+IntToStr(QryKATID.Value);
   QryWybTem.SQL.Clear;
   QryWybTem.SQL.Add('Select * from VYBORTEM where IDKAT='+IntTOStr(QryKatID.Value));
   QryWybTem.SQL.Add('and IDVID='+IntTOStr(QryVidID.Value));
   QryWybTem.Open;
   NewFiltr;
end;

procedure TFrmKateg.ChBoxPokazClick(Sender: TObject);
begin
   QryVID.Edit;
   if ChBoxPokaz.Checked then
      QryVidPokazOTV.Value:=1 else QryVidPokazOTV.Value:=0;
   QryVID.Post;
end;

procedure TFrmKateg.QryWybTemNewRecord(DataSet: TDataSet);
begin
   QryWybTemIDKat.Value:=QryKatID.Value;
   QryWybTemIDVid.Value:=QryVidID.Value;
end;

procedure TFrmKateg.QryWybTemAfterScroll(DataSet: TDataSet);
begin
if tabQuest.Active then tabQuest.ApplyUpdates;
//   tabQuest.Close;
   tabQuest.SQL.Clear;
   tabQuest.SQL.Add('Select * from QUEST where EXAMID='+IntToStr(QryWybTemIDExam.Value)+' order by ID');
   tabQuest.Open;
   NewFiltr;
end;

procedure TFrmKateg.tabQuestCalcFields(DataSet: TDataSet);
begin
   tabQuestObjazCalc.Value:=Pos(IntToStr(QryVidID.Value)+'#',tabQuestObjaz.Value)>0;
   tabQuestZelCalc.Value:=Pos(IntToStr(QryVidID.Value)+'#',tabQuestZel.Value)>0;
   tabQuestNezelCalc.Value:=Pos(IntToStr(QryVidID.Value)+'#',tabQuestNezel.Value)>0;
end;

procedure TFrmKateg.DBGridEh2CellClick(Column: TColumnEh);
var i,j,Num:integer;
    s:string;
begin
   if Column.Index in [0,1,2] then
   begin
      Num:=Column.Index;
      i:=Pos(IntToStr(QryVidID.Value)+'#',VybVopr[Num].Value);
      tabQuest.Edit;
      if not VybVoprCalc[Num].Value then
      begin
          if i=0 then VybVopr[Num].Value:=VybVopr[Num].Value+IntToStr(QryVidID.Value)+'#'
      end else
      if i>0 then
      begin
            j:=0;
            s:=VybVopr[Num].Value;
            While (i+j<=Length(s))and(s[i+j]<>'#') do
               Inc(j);
            if j>0 then Delete(s,i,j+1);
            VybVopr[Num].Value:=s;
      end;
      if tabQuest.Modified then tabQuest.Post;
   end;
   tabQuest.ApplyUpdates;
   NewFiltr;
end;

procedure TFrmKateg.DBGridEh2Exit(Sender: TObject);
begin
     if tabQuest.Active then tabQuest.ApplyUpdates;
end;

procedure TFrmKateg.SpeedButton9Click(Sender: TObject);
var Num:integer;
begin
   tabQuest.First;
   Num:=ActSB;
   While not tabQuest.Eof do
   begin
      if not VybVoprCalc[Num].Value then
      begin
         if Pos(IntToStr(QryVidID.Value)+'#',VybVopr[Num].Value)=0 then
         begin
            tabQuest.Edit;
            VybVopr[Num].Value:=VybVopr[Num].Value+IntToStr(QryVidID.Value)+'#';
            tabQuest.Post;
         end;
      end;
      tabQuest.Next;
   end;
   tabQuest.First;
   tabQuest.ApplyUpdates;
   NewFiltr;
end;

procedure TFrmKateg.SpeedButton10Click(Sender: TObject);
var Num,i,j:integer;
    s:string;
begin
   Num:=ActSB;
   tabQuest.First;
   While not tabQuest.Eof do
   begin
      if VybVoprCalc[Num].Value then
      begin
      i:=Pos(IntToStr(QryVidID.Value)+'#',VybVopr[Num].Value);
      if i>0 then
      begin
            j:=0;
            s:=VybVopr[Num].Value;
            While (i+j<=Length(s))and(s[i+j]<>'#') do
               Inc(j);
            if j>0 then Delete(s,i,j+1);
            tabQuest.Edit;
            VybVopr[Num].Value:=s;
            tabQuest.Post;
      end;
      end;
      tabQuest.Next;
   end;
   tabQuest.First;
   tabQuest.ApplyUpdates;
   NewFiltr;
end;

procedure TFrmKateg.SpeedButton4Click(Sender: TObject);
begin
   ActSB:=0;
   NewFiltr;
end;

procedure TFrmKateg.SpeedButton6Click(Sender: TObject);
begin
   ActSB:=1;
   NewFiltr;
end;

procedure TFrmKateg.SpeedButton7Click(Sender: TObject);
begin
   ActSB:=2;
   NewFiltr;
end;

procedure TFrmKateg.RG1Click(Sender: TObject);
begin
   SBVopr.Enabled:=RG1.ItemIndex=2;
   SBBil.Enabled:=RG1.ItemIndex in[0,1];
end;

procedure TFrmKateg.SBBilClick(Sender: TObject);
begin
   frmTest.Hide;
   frmTest.Panel1.Caption:='Подготовка билетов ('+QryKatname.Value+'.'+QryVidName.Value+')';
   frmTest.IDVidExam:=QryVidID.Value;
   frmTest.Show;
   SBR[ActSBR].Down:=true;
   ActSBROld:=ActSBR;
   NewFiltr;
end;

procedure TFrmKateg.RadioGroup1Click(Sender: TObject);
begin
(*   SBVopr.Enabled:=RG1.ItemIndex=0;
   SBBil.Enabled:=RG1.ItemIndex in[1,2];*)
end;

procedure TFrmKateg.QryKATBeforeScroll(DataSet: TDataSet);
begin
//   QryVid.ApplyUpdates;
end;

procedure TFrmKateg.QryVIDBeforeScroll(DataSet: TDataSet);
begin
//   QryWybTem.ApplyUpdates;
end;

end.
