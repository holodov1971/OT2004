unit Ask2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ComCtrls, ExtCtrls, PrnDbgeh, MyData,
  DB, IBTable, IBCustomDataSet, IBUpdateSQL, IBQuery, Grids, DBGridEh,
  GridsEh, DBCtrlsEh, DBGrids, RXDBCtrl, IBStoredProc, QExport4Dialog,
  WordXP, OleServer, ComObj;
const SoobNoPict='Картинка не найдена!';

type
  TFrmAsk2 = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Label13: TLabel;
    btnList: TSpeedButton;
    DBGridEh1: TDBGridEh;
    QryKAT: TIBQuery;
    QryKATID: TIntegerField;
    QryKATNAME: TIBStringField;
    QryKATPRIM: TIBStringField;
    QryKATPASSW: TIBStringField;
    IBUpdateSQL5: TIBUpdateSQL;
    dsKat: TDataSource;
    SpeedButton5: TSpeedButton;
    tabExam: TIBQuery;
    tabExamID: TIntegerField;
    tabExamNAME: TIBStringField;
    tabExamIDKAT: TIntegerField;
    tabExamPASSW: TIBStringField;
    IBUpdateSQL1: TIBUpdateSQL;
    dsExam: TDataSource;
    grdExam: TDBGridEh;
    Panel2: TPanel;
    bPrintList: TSpeedButton;
    bPrintFull: TSpeedButton;
    grdList: TDBGridEh;
    tabQuest: TIBQuery;
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
    IBUpdateSQL2: TIBUpdateSQL;
    dsQuest: TDataSource;
    tabQuest2: TIBQuery;
    tabQuest2QUESTID: TIntegerField;
    tabQuest2NUM: TIntegerField;
    tabQuest2ANSWER: TIBStringField;
    tabQuest2CALCYES: TBooleanField;
    tabQuest2RIGHT: TIntegerField;
    tabQuest2USERCHOICE: TIntegerField;
    IBUpdateSQL3: TIBUpdateSQL;
    dsQuest2: TDataSource;
    PrintEH: TPrintDBGridEh;
    tabQuestGr: TIBTable;
    tabQuestGrQUESTID: TIntegerField;
    tabQuestGrNUM: TIntegerField;
    tabQuestGrPATH0: TIBStringField;
    tabQuestGrPATH1: TIBStringField;
    tabQuestGrPATH2: TIBStringField;
    tabQuestGrPATH3: TIBStringField;
    tabQuestGrKOLASK: TIntegerField;
    tabQuestGrUSERCHOICE: TIntegerField;
    IBUpdateSQL4: TIBUpdateSQL;
    dsQuestGr: TDataSource;
    Qry1: TIBQuery;
    Qry1COUNT: TIntegerField;
    DataSource2: TDataSource;
    Panel3: TPanel;
    Bevel2: TBevel;
    Label2: TLabel;
    lCurQuest: TLabel;
    Label5: TLabel;
    lQCount: TLabel;
    Bevel9: TBevel;
    Label15: TLabel;
    Bevel12: TBevel;
    Label16: TLabel;
    DBNavigator1: TDBNavigator;
    QuestMemo: TDBMemo;
    pc: TPageControl;
    tsSingle: TTabSheet;
    Bevel7: TBevel;
    Label4: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    tsMultiple: TTabSheet;
    grdQuest2: TDBGridEh;
    TSGraph: TTabSheet;
    Bevel11: TBevel;
    Label14: TLabel;
    Image1: TImage;
    SBSound1: TSpeedButton;
    Label17: TLabel;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    Edit5: TEdit;
    UpDown1: TUpDown;
    Panel4: TPanel;
    Image2: TImage;
    SpeedButton2: TSpeedButton;
    StaticText8: TStaticText;
    DBEdit5: TDBEdit;
    Panel5: TPanel;
    Image3: TImage;
    SpeedButton3: TSpeedButton;
    StaticText7: TStaticText;
    DBEdit6: TDBEdit;
    Panel6: TPanel;
    Image4: TImage;
    SpeedButton4: TSpeedButton;
    StaticText9: TStaticText;
    DBEdit7: TDBEdit;
    DBEdit4: TDBEdit;
    btnGoTo: TBitBtn;
    GotoNum: TEdit;
    DBEdit2: TDBEdit;
    OpenDialog1: TOpenDialog;
    PrinterSetupDialog: TPrinterSetupDialog;
    lFontPrint: TLabel;
    tabQuestNUMPP: TIntegerField;
    DBEditEh1: TDBEditEh;
    label_numpp: TLabel;
    button_sort: TButton;
    sbutt_q_word: TSpeedButton;
    QExport4Dialog_quest: TQExport4Dialog;
    sbutt_q_a_word: TSpeedButton;
    QExport4Dialog_quest_ans: TQExport4Dialog;
    bPrintFile: TSpeedButton;
    IBStoredProcQuest: TIBStoredProc;
    btn_commit: TSpeedButton;
    bWord: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnListClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QryKATAfterScroll(DataSet: TDataSet);
    procedure tabExamAfterScroll(DataSet: TDataSet);
    procedure tabExamBeforeScroll(DataSet: TDataSet);
    procedure bPrintListClick(Sender: TObject);
    procedure bPrintFullClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure QuestMemoKeyPress(Sender: TObject; var Key: Char);
    procedure tabQuestAfterInsert(DataSet: TDataSet);
    procedure tabQuestAfterPost(DataSet: TDataSet);
    procedure tabQuestAfterScroll(DataSet: TDataSet);
    procedure tabQuestBeforePost(DataSet: TDataSet);
    procedure tabQuestBeforeScroll(DataSet: TDataSet);
    procedure tabQuestNewRecord(DataSet: TDataSet);
    procedure tabQuest2AfterPost(DataSet: TDataSet);
    procedure tabQuest2BeforePost(DataSet: TDataSet);
    procedure tabQuest2CalcFields(DataSet: TDataSet);
    procedure tabQuest2NewRecord(DataSet: TDataSet);
    procedure tabQuestGrAfterPost(DataSet: TDataSet);
    procedure tabQuestGrNewRecord(DataSet: TDataSet);
    procedure pcChange(Sender: TObject);
    procedure SBSound1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure grdQuest2CellClick(Column: TColumnEh);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LabelsRefresh(DataSet: TDataSet);
    procedure tabExamNewRecord(DataSet: TDataSet);
    procedure tabQuestAfterDelete(DataSet: TDataSet);
    procedure tabQuestBeforeInsert(DataSet: TDataSet);
    procedure sbutt_q_wordClick(Sender: TObject);
    procedure sbutt_q_a_wordClick(Sender: TObject);
    procedure bPrintFileClick(Sender: TObject);
    procedure NewQuest;
    procedure QuestRefresh;
    procedure Sort;
    procedure proc_commit;
    procedure button_sortClick(Sender: TObject);
    procedure btn_commitClick(Sender: TObject);
    procedure tabQuestBeforeDelete(DataSet: TDataSet);
    procedure bWordClick(Sender: TObject);

  private
    { Private declarations }
    Pnl:array[1..3]of TPanel;
    Img:array[0..3]of TImage;
    GrPATH: array[0..3]of TIBStringField;
    pcChng,YesCh,NoAppl,ExamNewRec, NewTest, YesPass:Boolean;
//    function WhatTipPodr:string;
    function MyRecordCount(Tbl: TIBQuery):integer;
  public
    { Public declarations }
    IDExamNewTest:integer;
  end;

var
  FrmAsk2: TFrmAsk2;

implementation
uses Pass, PrintMod, NewTema, DM;

{$R *.dfm}

procedure TFrmAsk2.LabelsRefresh(DataSet: TDataSet);
begin
  lCurQuest.Caption:=IntToStr(tabQuest.RecNo);
  lQCount.Caption:=(IntToStr(MyRecordCount(tabQuest))); //кол-во вопросов
  grdList.Columns[0].Title.Caption:='Список вопросов по теме '+tabExamName.Value+':';
end;

function TFrmAsk2.MyRecordCount(Tbl: TIBQuery):integer;
var i:integer;
    RabStr:Pointer;
begin
   Qry1.SQL.Clear;
   Qry1.SQL.Add('Select count(Q.ID) from QUEST Q  where EXAMID='+IntToStr(tabExamID.Value));
   Qry1.Open;
   Result:=Qry1Count.Value
end;

procedure TFrmAsk2.SpeedButton1Click(Sender: TObject);
begin
   NoAppl:=true;
   YesPass:=false;
// 20140217 Holodov
//   tabExam.ApplyUpdates;
//   tabQuest.ApplyUpdates;
//   tabQuest2.ApplyUpdates;
//   tabQuestGr.ApplyUpdates;
   tabQuest.Close;
   tabQuest2.Close;
   tabQuestGr.Close;
   Close
end;

procedure TFrmAsk2.btnListClick(Sender: TObject);
begin
  QryKATAfterScroll(QryKAT);
   LabelsRefresh(tabQuest);
  Panel2.Visible:=btnList.Down;
  Panel3.Visible:=not Panel2.Visible;
end;

procedure TFrmAsk2.FormCreate(Sender: TObject);
begin
  YesPass:=true;
  NoAppl:=false;
  ExamNewRec:=false;
  NewTest:=false;
  Pnl[1]:=Panel4;Pnl[2]:=Panel5;Pnl[3]:=Panel6;
  Img[0]:=Image1;Img[1]:=Image2;Img[2]:=Image3;Img[3]:=Image4;
  GrPath[0]:=tabQuestGrPATH0;GrPath[1]:=tabQuestGrPATH1;GrPath[2]:=tabQuestGrPATH2;GrPath[3]:=tabQuestGrPATH3;
  YesCh:=false;
  pcChng:=false;
  tabQuestGr.Open;
  tabQuest.Open;
  tabQuest2.Open;
  tabExam.Open;
  QryKAT.Open;
  lQCount.Caption:=IntToStr(MyRecordCount(tabQuest)); //кол-во вопросов*)
end;

procedure TFrmAsk2.QryKATAfterScroll(DataSet: TDataSet);
begin
  NoAppl:=true;
// 20140221 Kholodov
//  tabQuest.ApplyUpdates;
//  tabQuest2.ApplyUpdates;
//  tabQuestGr.ApplyUpdates;
  NoAppl:=false;
  if NoAppl then EXIT;
  if YesPass and YesPasswKat and not YesPasswAD and (QryKATPASSW.Value<>OldPass)then
  begin
      frmPassword:=TfrmPassword.Create(Application);
      Repeat
         frmPassword.TipPass:='R';
         PasswRab:=QryKATPASSW.Value;
         YesPassword:=false;
         frmPassword.ShowModal;
         frmPassword.TipPass:='-';
      Until YesPassword or frmPassword.Cancel;
      frmPassword.Free;
      if not YesPassword then
      begin
         MessageBeep(0);
         grdExam.Visible:=false;
         Panel3.Visible:=false;
         SpeedButton5.Visible:=false;
         tabQuest.Open;
         EXIT;
      end;
  end;


  tabQuest.Close;
  tabQuest.Open;
  SpeedButton5.Visible:=true;
  grdExam.Visible:=true;
  Panel3.Visible:=true;
  tabExam.SQL.Clear;
  tabExam.SQL.Add('Select * from EXAMT where IDKat='+IntToStr(QryKatID.Value)+' order by ID');
  tabExam.Open;
  if tabExam.RecordCount=0 then
  begin
     tabQuest.SQL.Clear;
     tabQuest.SQL.Add('select * from Quest where EXAMID='+IntToStr(tabExamID.Value)+' order by numpp, id desc');
     tabQuest.SQL.Text;
     tabQuest.Open;
     tabQuest.SQL.Text;
     if tabQuestID.Value<=0 then
     begin
        pc.Visible:=false;
        QuestMemo.Visible:=false;
     end;
  end else
  begin
        pc.Visible:=true;
        QuestMemo.Visible:=true;
  end;
  if tabQuest.RecordCount=0 then
  begin
        pc.Visible:=false;
        QuestMemo.Visible:=false;
  end;
   lQCount.Caption:=IntToStr(MyRecordCount(tabQuest)); //кол-во вопросов
   lCurQuest.Caption:=IntToStr(tabQuest.RecNo);
end;

procedure TFrmAsk2.tabExamAfterScroll(DataSet: TDataSet);
begin
  if NoAppl then EXIT;
  if YesPass and YesPasswTem and not YesPasswAD and (tabExamPASSW.Value<>OldPass)then
  begin
      frmPassword:=TfrmPassword.Create(Application);
      Repeat
         frmPassword.TipPass:='R';
         PasswRab:=tabExamPASSW.Value;
         YesPassword:=false;
         frmPassword.ShowModal;
         frmPassword.TipPass:='-';
      Until YesPassword or frmPassword.Cancel;
      frmPassword.Free;
      if not YesPassword then
      begin
         MessageBeep(0);
         Panel3.Visible:=false;
         SpeedButton5.Visible:=false;
         EXIT;
      end;
  end;

  if btnList.Down then Panel2.Visible:=true else
      Panel3.Visible:=true;
  SpeedButton5.Visible:=true;

  begin
   tabQuest.SQL.Clear;
   tabQuest.SQL.Add('select * from Quest where EXAMID='+IntToStr(tabExamID.Value)+' order by numpp, id desc');
   tabQuest.Open;
   lQCount.Caption:=IntToStr(MyRecordCount(tabQuest)); //кол-во вопросов
  end;

end;

procedure TFrmAsk2.tabExamBeforeScroll(DataSet: TDataSet);
begin
  if not NoAppl then
  begin
// 20140221 Kholodov
//   tabQuest.ApplyUpdates;
//   tabQuest2.ApplyUpdates;
//   tabQuestGr.ApplyUpdates;
  end;
end;

procedure TFrmAsk2.bPrintListClick(Sender: TObject);
begin
  //печать списка вопросов
  PrintEh.Preview;
end;

procedure TFrmAsk2.bPrintFullClick(Sender: TObject);
begin
  IF PrinterSetupDialog.Execute then
  begin  //печать вопросов с ответами
      HeadFont:=grdList.TitleFont;
      PrintFont:=lFontPrint.Font;
      PrintModule.PrintExam(tabExamID.Value, true);
  end;
end;

procedure TFrmAsk2.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  lQCount.Caption:=IntToStr(MyRecordCount(tabQuest)); //кол-во вопросов
end;

procedure TFrmAsk2.QuestMemoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key='[') or (Key=']') then  //исключение (зарезервировано для разметки тестов)
  begin
    Beep;
    ShowMessage('Символы квадратных скобок не допустимы в тексте вопроса. Используйте другие.');
    Abort;
  end;
end;

procedure TFrmAsk2.tabQuestAfterInsert(DataSet: TDataSet);
begin
// 20140224 Kholodov
//  tabQuestType.Value:=1;
end;

procedure TFrmAsk2.tabQuestAfterPost(DataSet: TDataSet);
begin
  lQCount.Caption:=IntToStr(MyRecordCount(tabQuest)); //кол-во вопросов
end;

procedure TFrmAsk2.tabQuestAfterScroll(DataSet: TDataSet);
var i,j:integer;
    s:string;
begin
  if NoAppl then EXIT;
  if tabQuestID.Value<=0 then
  begin
     pc.Visible:=false;
     QuestMemo.Visible:=false;
     EXIT;
  end;
  tabQuest2.SQL.Clear;
  tabQuest2.SQL.Add('select * from Quest2 where QUESTID='+IntToStr(tabQuestID.Value)+' order by NUM');
  tabQuest2.Open;
  QuestMemo.Visible:=true;
  pc.Visible:=true;
  lCurQuest.Caption:=IntToStr(tabQuest.RecNo);
  pc.ActivePageIndex:=tabQuestType.Value-1;
  if pc.ActivePageIndex=2 then {графика}
  begin
   for i:=0 to 3 do
   begin
     Img[i].Picture:=nil;
     if (GrPath[i].Value<>SoobNoPict)and (GrPath[i].Value<>'') then
     try
        Img[i].Picture.LoadFromFile(GrPath[i].Value);
     except
        GrPath[i].Value:=SoobNoPict;
     end else
     Img[i].Picture:=nil;
   end;
   tabQuestGr.Edit;
  end;
end;

procedure TFrmAsk2.tabQuestBeforePost(DataSet: TDataSet);
var  i:integer;
begin
 if not NewTest then
 begin
   i:=pc.ActivePageIndex+1;
   if tabQuestType.Value<>i then tabQuestType.Value:=i;
 end;
end;

procedure TFrmAsk2.tabQuestBeforeScroll(DataSet: TDataSet);
var i:integer;
begin
   if NoAppl then EXIT;
   if pcChng then
   begin
    tabQuest.Edit;
    tabQuestType.Value:=pc.ActivePageIndex+1;
    tabQuest.Post;
    tabQuest.Edit;
   end;
   pcChng:=false;
   if pc.ActivePageIndex=2 then {графика}
   begin
     for i:=0 to 3 do Img[i].Picture:=nil;
   end;
end;

procedure TFrmAsk2.tabQuestNewRecord(DataSet: TDataSet);
begin
  if tabExamID.AsInteger<1 then exit;
  tabQuestExamID.Value:=tabExamID.Value;
  tabQuestType.Value:=1;
  NewQuest;
end;

procedure TFrmAsk2.tabQuest2AfterPost(DataSet: TDataSet);
begin
  if  tabQuestType.Value<>2 then
  begin
    tabQuest.Edit;
    tabQuestType.Value:=2;
  end;
end;

procedure TFrmAsk2.tabQuest2BeforePost(DataSet: TDataSet);
begin
   if tabQuest2CalcYes.Value then tabQuest2RIGHT.Value:=1 else
      tabQuest2RIGHT.Value:=0;
end;

procedure TFrmAsk2.tabQuest2CalcFields(DataSet: TDataSet);
begin
   tabQuest2CalcYes.Value:=tabQuest2RIGHT.Value=1;
end;

procedure TFrmAsk2.tabQuest2NewRecord(DataSet: TDataSet);
begin
  tabQuest2QuestID.Value:=tabQuestID.Value;
  tabQuest2Right.Value:=0;
end;

procedure TFrmAsk2.tabQuestGrAfterPost(DataSet: TDataSet);
begin
  if  tabQuestType.Value<>3 then
  begin
    tabQuest.Edit;
    tabQuestType.Value:=3;
  end;
end;

procedure TFrmAsk2.tabQuestGrNewRecord(DataSet: TDataSet);
begin
  tabQuestGrQuestID.Value:=tabQuestID.Value;
  tabQuestGrNum.Value:=1;
end;

procedure TFrmAsk2.pcChange(Sender: TObject);
begin
   pcChng:=true;
   if pc.ActivePageIndex=2 then
      if tabQuestGr.RecordCount=0 then
          tabQuestGr.Append;

end;

procedure TFrmAsk2.SBSound1Click(Sender: TObject);
begin
   OpenDialog1.Title := 'Выбор графического ответа';
   OpenDialog1.Filter := 'Картинки (*.bmp;*.jpg;*.jpeg;*.gif)|*.bmp;*.jpg;*.jpeg;*.gif';
   if OpenDialog1.Execute then
   try
      Image1.Picture.LoadFromFile(OpenDialog1.FileName);
      DBEdit4.Field.Value:=OpenDialog1.FileName;
   except
   end; {if}
end;

procedure TFrmAsk2.SpeedButton2Click(Sender: TObject);
begin
   OpenDialog1.Title := 'Выбор графического ответа';
   OpenDialog1.Filter := 'Картинки (*.bmp;*.jpg;*.jpeg;*.gif)|*.bmp;*.jpg;*.jpeg;*.gif';
   if OpenDialog1.Execute then
   begin
      Image2.Picture.LoadFromFile(OpenDialog1.FileName);
      DBEdit5.Field.Value:=OpenDialog1.FileName;
   end; {if}
end;

procedure TFrmAsk2.SpeedButton3Click(Sender: TObject);
begin
   OpenDialog1.Title := 'Выбор графического ответа';
   OpenDialog1.Filter := 'Картинки (*.bmp;*.jpg;*.jpeg;*.gif)|*.bmp;*.jpg;*.jpeg;*.gif';
   if OpenDialog1.Execute then
   begin
      Image3.Picture.LoadFromFile(OpenDialog1.FileName);
      DBEdit6.Field.Value:=OpenDialog1.FileName;
   end; {if}

end;

procedure TFrmAsk2.SpeedButton4Click(Sender: TObject);
begin
   OpenDialog1.Title := 'Выбор графического ответа';
   OpenDialog1.Filter := 'Картинки (*.bmp;*.jpg;*.jpeg;*.gif)|*.bmp;*.jpg;*.jpeg;*.gif';
   if OpenDialog1.Execute then
   begin
      Image4.Picture.LoadFromFile(OpenDialog1.FileName);
      DBEdit7.Field.Value:=OpenDialog1.FileName;
   end; {if}
end;

procedure TFrmAsk2.grdQuest2CellClick(Column: TColumnEh);
begin
   if Column.Index=2 then
   begin
      tabQuest2.Edit;
      if tabQuest2RIGHT.Value=0 then tabQuest2RIGHT.Value:=1 else
         tabQuest2RIGHT.Value:=0;
   end;
end;

procedure TFrmAsk2.SpeedButton5Click(Sender: TObject);
  var
    i, IDExam, var_numpp :integer;

//20140225 Kholodov
//    ss:array[0..30]of variant;
//    ssGr:array[0..20]of variant;
    ss:array[0..40]of variant;
    ssGr:array[0..30]of variant;
    sSQL:string;
begin
  label_numpp.Caption:=IntToStr(tabquestnumpp.Asinteger+1);
   frmNewTema:=TfrmNewTema.Create(Application);
   frmNewTema.IDKat:=QryKatID.Value;

   if frmNewTema.ShowModal=mrOK then
   begin

// 20140218 выключаю создание новой темы, добавляем вопросы в текущюю
//      TabExam.Append;
//      TabExamName.Value:=frmNewTema.tabExamName.Value;
//      TabExamIDKat.Value:=QryKatID.Value;
//      TabExam.Post;
//      TabExam.ApplyUpdates;

      IDExam:=tabExamID.Value;

      tabQuest.DisableControls;
      sSQL:=tabQuest.SQL.Text;
      FrmNewTema.tabQuest.SQL.Clear;
      FrmNewTema.tabQuest.SQL.Add('Select * from QUEST where EXAMID='+IntToStr(IDExamNewTest));
      FrmNewTema.tabQuest.SQL.Add('and INT2=1');
      FrmNewTema.tabQuest.Open;
      FrmNewTema.tabQuestGr.Open;
      While not FrmNewTema.tabQuest.Eof do
      begin
         for i:=1 to tabQuestGr.FieldCount-1 do
              ssGr[i]:=FrmNewTema.tabQuestGr.Fields[i].Value;
         for i:=2 to FrmNewTema.tabQuest.FieldCount-1 do
               ss[i]:=FrmNewTema.tabQuest.Fields[i].Value;
         tabQuest.Append;

         // 20140225
         tabQuest.Edit;

         tabQuestExamID.Value:=tabExamID.Value;

         for i:=2 to tabQuest.FieldCount-1 do
              tabQuest.Fields[i].Value:=ss[i];
         tabQuestInt2.Value:=0;
         NewTest:=true;

         //20140225 Kholodov
        lCurQuest.Caption:=label_numpp.Caption;
          NewQuest;
         label_numpp.Caption:=IntToStr(tabquestnumpp.Asinteger+1);
          tabQuest.Edit;
         tabQuest.Post;
         sort;

         NewTest:=false;
          // добавление мульти вопросов
         if tabQuestType.Value=2 then
         begin
               FrmNewTema.TabQuest2.SQL.Clear;
               FrmNewTema.TabQuest2.SQL.Add('Select * from QUEST2 where QUESTID='+IntToStr(FrmNewTema.tabQuestID.Value));
               FrmNewTema.tabQuest2.Open;
               While not FrmNewTema.tabQuest2.Eof do
               begin
                  for i:=1 to FrmNewTema.tabQuest2.FieldCount-1 do
                     ss[i]:=FrmNewTema.tabQuest2.Fields[i].Value;
                  tabQuest2.Append;
                  tabQuest2QUESTID.Value:=tabQuestID.Value;
                  for i:=1 to tabQuest2.FieldCount-1 do
                     tabQuest2.Fields[i].Value:=ss[i];
                  tabQuest2.Post;
                  FrmNewTema.tabQuest2.Next;
               end;
          end else
          // добавление графических вопросов
          if tabQuestType.Value=3 then
          begin
               tabQuestGr.Append;
               tabQuestGrQUESTID.Value:=tabQuestID.Value;
               for i:=1 to tabQuestGr.FieldCount-1 do
                     tabQuestGr.Fields[i].Value:=ssGr[i];
               tabQuestGr.Post;
         end;
         FrmNewTema.tabQuest.Edit;
         FrmNewTema.tabQuestInt2.Value:=0;
         FrmNewTema.tabQuest.Post;
         FrmNewTema.tabQuest.Next;
      end;
      tabQuest.EnableControls;
   end;
// 20140221 Kholodov
//   FrmNewTema.tabQuest.ApplyUpdates;
   frmNewTema.Free;
// 20140221 Kholodov
//   TabQuest.ApplyUpdates;
//   TabQuest2.ApplyUpdates;
//   TabQuestGr.ApplyUpdates;
  sort;
  //20140226 Kholodov
  //   TabQuest.First;
   lQCount.Caption:=IntToStr(MyRecordCount(tabQuest)); //кол-во вопросов
  var_numpp:=StrToInt(label_numpp.Caption);
  tabQuest.Locate('numpp',VAR_numpp-1,[loCaseInsensitive,loPartialKey]);
end;

procedure TFrmAsk2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  NoAppl:=true;
  tabQuest2.Close;
  tabQuestGr.Close;
  tabQuest.Close;
  tabExam.Close;
  QryKat.Close;
end;

procedure TFrmAsk2.tabExamNewRecord(DataSet: TDataSet);
begin
  tabExamIDKAT.Value:=QryKATID.Value;
  lCurQuest.Caption:='1';
  tabExam.Post;
  tabquest.Refresh;
end;

procedure TFrmAsk2.tabQuestAfterDelete(DataSet: TDataSet);
var var_numpp:integer;
begin
//20140227 Kholodov
//  QryKATAfterScroll(QryKAT);
  sort;
  var_numpp:=StrToInt(label_numpp.Caption);
  if var_numpp>0 then tabQuest.Locate('numpp',VAR_numpp,[loCaseInsensitive,loPartialKey]);
end;

procedure TFrmAsk2.tabQuestBeforeInsert(DataSet: TDataSet);
begin
  QuestRefresh;
end;

procedure TFrmAsk2.sbutt_q_wordClick(Sender: TObject);
begin
  QExport4Dialog_quest.Execute;
end;

procedure TFrmAsk2.sbutt_q_a_wordClick(Sender: TObject);
begin
  QExport4Dialog_quest_ans.Execute;
end;

procedure TFrmAsk2.bPrintFileClick(Sender: TObject);
begin
  //печать вопросов с ответами в файл
  PrintModule.FileExam(tabExamID.Value, true);
end;


procedure TFrmAsk2.button_sortClick(Sender: TObject);
begin
  sort;
end;

procedure TFrmAsk2.QuestRefresh;
var
    VAR_ID:     integer; // перем. ID
    var_numpp: string;
begin
  VAR_ID:=tabQuestID.AsInteger;
  var_numpp:=tabQuestnumpp.AsString;
  tabQuest.Close;
  tabQuest.Open;
  tabQuest.Locate('ID',VAR_ID,[loCaseInsensitive,loPartialKey]);
  lCurQuest.Caption:=tabQuestnumpp.AsString;
end;

procedure TFrmAsk2.NewQuest;
  var     // проц. вставки записи
    VAR_NUMPP:  integer; // перем. № по порядку
    VAR_ID:     integer; // перем. ID
    VAR_EXAMID:     integer; // перем. EXAMID
begin
// 20140225
//  tabQuestNUMPP.AsInteger:=StrToInt(lCurQuest.Caption)+1;
  if lCurQuest.Caption='' then tabQuestNUMPP.AsInteger:=1
    else tabQuestNUMPP.AsInteger:=StrToInt(lCurQuest.Caption);
  VAR_NUMPP:=tabQuestNUMPP.AsInteger;
  VAR_ID:=tabQuestID.AsInteger;
  with IBStoredProcQUEST  do
    begin
      close;
      StoredProcName:=WideString('PROC_QUEST_MOVE_INSERT');
      ParamByName('PAR_NUMPP').Value:=VAR_NUMPP;
      ParamByName('PAR_ID').Value:=VAR_ID;
      ExecProc;
      close;
    end;
  tabQuest.Refresh;
  tabQuest.Locate('ID',VAR_ID,[loCaseInsensitive,loPartialKey]);
  lCurQuest.Caption:=tabQuestNUMPP.AsString;
  sort;
end;

procedure TFrmAsk2.Sort;
var
    VAR_ID:     integer; // перем. ID
    VAR_EXAMID:     integer; // перем. EXAMID
begin
  VAR_ID:=tabQuestID.AsInteger;
  VAR_EXAMID:=tabQuestEXAMID.AsInteger;
  with IBStoredProcQUEST  do
    begin
      close;
      StoredProcName:=WideString('PROC_QUEST_SORT');
      ParamByName('PAR_EXAMID').Value:=VAR_EXAMID;
      ExecProc;
      close;
    end;
  tabQuest.Close;
  tabQuest.Open;
  tabQuest.Locate('ID',VAR_ID,[loCaseInsensitive,loPartialKey]);
end;

procedure TFrmAsk2.proc_commit;
begin
  DM.DataModule1.IBTransaction1.Commit;
//  FormCreate(FrmAsk2);
  tabQuestGr.Open;
  tabQuest.Open;
  tabQuest2.Open;
  tabExam.Open;
  QryKAT.Open;
  lQCount.Caption:=IntToStr(MyRecordCount(tabQuest)); //кол-во вопросов*)
end;

procedure TFrmAsk2.btn_commitClick(Sender: TObject);
begin
  proc_commit;
end;

procedure TFrmAsk2.tabQuestBeforeDelete(DataSet: TDataSet);
begin
  label_numpp.Caption:=tabquestnumpp.AsString;
end;

procedure TFrmAsk2.bWordClick(Sender: TObject);
begin
  PrintModule.ExamWord(tabExamID.Value, true);
end;

end.
