UNIT card;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGridEh, Buttons, ExtCtrls, Db, DBTables, DBCtrls, DM, 
  DBGrids, WybLS, Animate, GIFCtrl, MyData, ComCtrls, IBCustomDataSet,
  IBQuery, IBUpdateSQL, IBTable, GridsEh;

type
  TfrmCard = class(TForm)
    dsExam: TDataSource;
    tabPodr: TTable;
    dsQuest: TDataSource;
    btnNext: TBitBtn;
    btnEnd: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    CurNum: TLabel;
    ComNum: TLabel;
    DBMemo1: TDBMemo;
    Panel2: TPanel;
    btnResult: TBitBtn;
    PanelHeader: TPanel;
    PanelSA: TPanel;
    ver1: TDBMemo;
    ver2: TDBMemo;
    ver3: TDBMemo;
    ver4: TDBMemo;
    PanelMA: TPanel;
    grdQuest2: TDBGridEh;
    dsQuest2: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    labExamName: TLabel;
    PanelResult: TPanel;
    Results: TListBox;
    StaticText1: TStaticText;
    btnClose: TBitBtn;
    Label7: TLabel;
    Bevel1: TBevel;
    RxGIFAnimator1: TRxGIFAnimator;
    RxGIFAnimator2: TRxGIFAnimator;
    RxGIFAnimator3: TRxGIFAnimator;
    RxGIFAnimator4: TRxGIFAnimator;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Timer1: TTimer;
    lKindOfExam: TLabel;
    tabRes: TTable;
    tabResDate: TDateField;
    tabResTabNum: TIntegerField;
    tabResFIO: TStringField;
    tabResKodPodr: TIntegerField;
    tabResNote: TStringField;
    tabResKodDolg: TIntegerField;
    tabResResults: TMemoField;
    tabResRes: TStringField;
    dsQuestFull: TDataSource;
    tabPodrID: TAutoIncField;
    tabPodrName: TStringField;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label11: TLabel;
    Label12: TLabel;
    Bevel4: TBevel;
    Label13: TLabel;
    lTotalTime: TLabel;
    lCorrect: TLabel;
    lIncorrect: TLabel;
    tabResTimeBegin: TTimeField;
    tabResTimeTotal: TTimeField;
    tabResQTotal: TIntegerField;
    tabResQCorrect: TIntegerField;
    tabResQIncorrect: TIntegerField;
    tabResExType: TSmallintField;
    pBar: TProgressBar;
    Label10: TLabel;
    Bevel5: TBevel;
    DBText1: TDBText;
    tabJQuests: TTable;
    tabJQuestsNProt: TIntegerField;
    tabJQuestsYY: TSmallintField;
    tabJQuestsTabNum: TIntegerField;
    tabJQuestsTestID: TIntegerField;
    tabJQuestsQuests: TStringField;
    tabJQuestsDate: TDateField;
    Label6: TLabel;
    tabExam: TIBQuery;
    tabExamID: TIntegerField;
    tabExamNAME: TIBStringField;
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
    tabQuest2: TIBQuery;
    tabQuest2QUESTID: TIntegerField;
    tabQuest2NUM: TIntegerField;
    tabQuest2ANSWER: TIBStringField;
    tabQuest2RIGHT: TIntegerField;
    tabQuest2USERCHOICE: TIntegerField;
    tabQuestFull: TIBQuery;
    QryWybTem: TIBQuery;
    DSWybTem: TDataSource;
    QryWybTemID: TIntegerField;
    QryWybTemIDKAT: TIntegerField;
    QryWybTemIDVID: TIntegerField;
    QryWybTemIDEXAM: TIntegerField;
    QryWybTemKOLVOPR: TIntegerField;
    tabQuestFullEXAMID: TIntegerField;
    tabQuestFullID: TIntegerField;
    tabQuestFullTYPE: TIntegerField;
    tabQuestFullTIPPODR: TIBStringField;
    tabQuestFullGRUP: TIntegerField;
    tabQuestFullTEXT: TIBStringField;
    tabQuestFullANSWER1: TIBStringField;
    tabQuestFullANSWER2: TIBStringField;
    tabQuestFullANSWER3: TIBStringField;
    tabQuestFullANSWER4: TIBStringField;
    tabQuestFullPICTURE: TIBStringField;
    tabQuestFullINT1: TIntegerField;
    tabQuestFullSTR1: TIBStringField;
    tabQuestFullINT2: TIntegerField;
    tabQuestFullINT3: TIntegerField;
    tabQuestFullNORMDOC: TIBStringField;
    tabQuestFullOBJAZ: TIBStringField;
    tabQuestFullZEL: TIBStringField;
    tabQuestFullNEZEL: TIBStringField;
    tabQuestFulllookExam: TStringField;
    IBUpdateSQL1: TIBUpdateSQL;
    tabTestVopr: TIBTable;
    tabTestVoprID: TIntegerField;
    tabTestVoprNUM: TIntegerField;
    tabTestVoprIDTEST: TIntegerField;
    tabTestVoprIDEXAM: TIntegerField;
    tabTestVoprIDQUEST: TIntegerField;
    tabTest: TIBTable;
    tabTestNUM: TIntegerField;
    tabTestID: TIntegerField;
    tabTestIDVID: TIntegerField;
    tabTestNAME: TIBStringField;
    qRndTest: TIBQuery;
    qRndTestNUM: TIntegerField;
    qRndTestID: TIntegerField;
    qRndTestIDVID: TIntegerField;
    qRndTestNAME: TIBStringField;
    tabQuest2OTVCALC: TBooleanField;
    PnlGr: TPanel;
    Label14: TLabel;
    Gr1: TPanel;
    Im1: TImage;
    Gr2: TPanel;
    Im2: TImage;
    Gr3: TPanel;
    Im3: TImage;
    Gr4: TPanel;
    Im4: TImage;
    tabQuestGr: TIBQuery;
    DataSource1: TDataSource;
    tabQuestGrQUESTID: TIntegerField;
    tabQuestGrNUM: TIntegerField;
    tabQuestGrPATH0: TIBStringField;
    tabQuestGrPATH1: TIBStringField;
    tabQuestGrPATH2: TIBStringField;
    tabQuestGrPATH3: TIBStringField;
    tabQuestGrKOLASK: TIntegerField;
    tabQuestGrUSERCHOICE: TIntegerField;
    tabQuest2PravCalc: TBooleanField;
    tabVid: TIBTable;
    tabVidID: TIntegerField;
    tabVidIDKAT: TIntegerField;
    tabVidNAME: TIBStringField;
    tabVidPERIOD: TIntegerField;
    tabVidPASS: TIBStringField;
    tabVidKOLNEOTV: TIntegerField;
    tabVidPOKAZOTV: TIntegerField;
    tabVidSOOBOTV: TIntegerField;
    tabVidTIMEEXAM: TTimeField;
    tabVidVIDEXAM: TIntegerField;
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure VersionSelect(Sender: TObject);
    procedure btnEndClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure EndOfExam;
    procedure Timer1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tabRndSeed__AfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tabQuest2AfterEdit(DataSet: TDataSet);
    procedure tabQuestFullAfterScroll(DataSet: TDataSet);
    procedure grdQuest2CellClick(Column: TColumnEh);
    procedure tabQuest2CalcFields(DataSet: TDataSet);
    procedure Gr1Click(Sender: TObject);
  private
    { Private declarations }
    AskArr: array[1..200]of integer; {номера выбранных вопросов}
    SubjArr: array[1..200]of integer; {номера выбранных тем}
    KolVoprFull, KolVoprRnd,KolVoprReal,AskTek,ErrOtv:integer;
    ExType: byte; //тип подбора вопросов
    Finished: boolean; //признак выхода по кнопке, а не по Alt-F4
    function MyRecordCount(Tbl: TIBQuery):integer;
    procedure ClearUserChoice;
    procedure StartTimer;
    procedure StopTimer;
  public
    { Public declarations }
    //My adaptation:
    Debug: boolean;
    PodrID: byte;
//    ChPodr:char;
//    Grup:integer;
    FIO: string;
    exTabNum, exKodPodr, exKodDolg: integer;
    correct, incorrect: integer;  //кол-во правильных и неправильных ответов
    timeBegin, timeEnd, timeTotal: TDateTime; //время начала экзамена, конца экз., длительность
  end;

var
  frmCard: TfrmCard;
  SelectedTag, SelectedVer, CorrectVer : word;

implementation

uses init, title,PravOtv;

{$R *.DFM}

procedure TfrmCard.btnCancelClick(Sender: TObject);
begin
  Close;
end;

function TFrmCard.MyRecordCount(Tbl: TIBQuery):integer;
var i:integer;
    RabStr:Pointer;
begin
  tbl.DisableControls;
  RabStr:=tbl.GetBookmark;
  tbl.First;
  Result:=0;
  While not tbl.EOF do
  begin
     Inc(Result);
     tbl.Next;
  end;
  tbl.GotoBookmark(RabStr);
  tbl.EnableControls;
end;

procedure TfrmCard.FormCreate(Sender: TObject);
begin
  tabPodr.Open;
  tabQuest.Open;
  tabQuest2.Open;
  tabQuestFull.Open;
  tabExam.Open;
  tabVId.Open;
  tabVId.Filter:='ID='+IntToStr(IDVidExam);
//  tabWybTem.Open;
end;

procedure Resort;
var iType:integer;
var
  I, S, R: Integer;
  A: array[1..4] of integer;
  ss:string;
begin
  frmCard.dsQuest.Enabled:=false;
  iType:=frmCard.tabQuestFullTYPE.Value;
  for I := 1 to 4 do A[I] := I; //Заполн. массив А по порядку от 1 до 4
  for i := 3 downto 0 do begin  //"Перемешиваем" массив А случ. образом
   R := Random(I)+1;
   S := A[R];
   A[R] := A[I+1];
   A[I+1] := S;
  end;

  //присваиваем полям verX поля и тэги в том порядке, который "перемешали":
  //  (первый тэг указывает на правильный ответ)
  if iType=1 then
  begin
     frmCard.ver1.Tag:=a[1];
     frmCard.ver2.Tag:=a[2];
     frmCard.ver3.Tag:=a[3];
     frmCard.ver4.Tag:=a[4];
     frmCard.ver1.DataField:='Answer'+IntToStr(a[1]);
     frmCard.ver2.DataField:='Answer'+IntToStr(a[2]);
     frmCard.ver3.DataField:='Answer'+IntToStr(a[3]);
     frmCard.ver4.DataField:='Answer'+IntToStr(a[4]);
  end else
  if iType=3 then
  begin
     frmCard.Gr1.Tag:=a[1];
     frmCard.Gr2.Tag:=a[2];
     frmCard.Gr3.Tag:=a[3];
     frmCard.Gr4.Tag:=a[4];
     frmCard.Im1.Tag:=a[1];
     frmCard.Im2.Tag:=a[2];
     frmCard.Im3.Tag:=a[3];
     frmCard.Im4.Tag:=a[4];
     try
        ss:=frmCard.tabQuestGr.FieldValues['Path'+IntToStr(a[1]-1)];
        frmCard.Gr1.Visible:=true;
        if ss<>'' then  frmCard.Im1.Picture.LoadFromFile(ss) else
           frmCard.Gr1.Visible:=false;
     except
           frmCard.Gr1.Visible:=false;
     end;
     try
        ss:=frmCard.tabQuestGr.FieldValues['Path'+IntToStr(a[2]-1)];
                frmCard.Gr2.Visible:=true;
        if ss<>'' then  frmCard.Im2.Picture.LoadFromFile(ss) else
           frmCard.Gr2.Visible:=false;
     except
           frmCard.Gr2.Visible:=false;
     end;
     try
        ss:=frmCard.tabQuestGr.FieldValues['Path'+IntToStr(a[3]-1)];
        frmCard.Gr3.Visible:=true;
        if ss<>'' then  frmCard.Im3.Picture.LoadFromFile(ss) else
           frmCard.Gr3.Visible:=false;
     except
           frmCard.Gr3.Visible:=false;
     end;
     try
        ss:=frmCard.tabQuestGr.FieldValues['Path'+IntToStr(a[4]-1)];
        frmCard.Gr4.Visible:=true;
        if ss<>'' then  frmCard.Im4.Picture.LoadFromFile(ss) else
           frmCard.Gr4.Visible:=false;
     except
           frmCard.Gr4.Visible:=false;
     end;
  end;

  for i:=1 to 4 do if a[i]=1 then CorrectVer:=i;

  frmCard.dsQuest.Enabled:=true;
end;

{------------------- А К Т И В И З А Ц И Я    Ф О Р М Ы -----------------------}
 procedure TfrmCard.FormActivate(Sender: TObject);
{------------------------------------------------------------------------------}
var i,i1,  //счетчик вопросов для одного цикла
    ii, //счетчик вопросов сквозной
    N,Kol,j, k:integer;
    Res: boolean;
    NArr:array[1..200]of integer; //массив номеров случайно выбранных записей в таблице
    s,test: string;
    qstring: string;

BEGIN {Activate}

  Screen.Cursor:=crHourGlass;
    //подсчитываем кол-во вопросов (для pBar)
//    tabRndSeed.First;
    KolVoprFull:=KolVopr;
    pBar.Max:=KolVoprFull;
    pBar.Position:=0;
  pBar.Visible:=true;
  Finished:=false;
  correct:=0; incorrect:=0;
  Results.Items.Clear;
  //Начало экзамена...
               PanelResult.Visible:=false;
               btnEnd.Visible:=true;
               btnNext.Visible:=true;
               PanelMA.Enabled:=true;
               PanelSA.Enabled:=true;
               PnlGr.Enabled:=true;

  tabQuest2.DisableControls;
  s:=tabQuest2.SQL.Text;
  tabQuest2.SQL.Clear;
  tabQuest2.SQL.Add('Select * from QUEST2');
  tabQuest2.Open;
  while not tabQuest2.EOF do //Обнуляем поле варианта ответа экзаменующегося
  begin
     if tabQuest2UserChoice.Value>0 then
     begin
         tabQuest2.Edit; tabQuest2UserChoice.Value:=0; tabQuest2.Post;
     end;
     tabQuest2.Next;
  end;
  tabQuest2.EnableControls;
{выбор вопросов}
  btnNext.Enabled:=true;
  tabTest.Active:=true;
  tabTestVopr.Active:=true;
  KolVoprReal:=0;
(*  {-----------------------------}
     if frmExam.PreQuest=true
  {-----------------------------}
  then // - вопросы приготовлены заранее (в JQuests) -*-*-*-*-*-*-*-*-*-*-*-*-*-
  begin
    if tabJQuestsQuests.Value<>'' then
    begin //список вопросов
       ExType:=0;
       Qstring:=tabJQuestsQuests.Value;
       i:=0;
       while qstring<>'' do
       begin
          inc(i);
          AskArr[i]:=StrToInt(copy(qstring,1,pos(',',qstring)-1));
          Delete(qstring,1,pos(',',qstring));
       end;
       KolVoprReal:=i;
    end
      else
    begin //номер теста
       ExType:=2;
       tabTestVopr.Filter:='NTesta='+IntToStr(tabJQuestsTestID.Value);
       tabTest.Filter:='ID='+IntToStr(tabJQuestsTestID.Value);
       tabTest.Filtered:=true;
        lKindOfExam.Caption:=tabTestInfo.Value; //название билета
       tabTest.Filtered:=false;
       i:=0;
       While not tabTestVopr.Eof do
       begin
           Inc(i);
           AskArr[i]:=tabTestVoprQuestID.Value;
           tabTestVopr.Next;
       end;
       KolVoprReal:=i;
    end;
  end

  else // - вопросы выбираются сейчас -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
*)
   Case Mode of
      0 : begin {случайным образом вопросы}
            ExType:=0;
            lKindOfExam.Caption:='Вопросы выбраны случайным образом';
            ii:=0;
            QryWybTem.SQL.Clear;
            QryWybTem.SQL.Add('Select * from  VYBORTEM where IDVID='+IntToStr(IDVidExam)+' order by ID');
            QryWybTem.Open;
            while not QryWybTem.Eof do
            BEGIN  //пошли выбирать вопросы из след. темы...
              i:=0;
              if QryWybTemKolVopr.Value>0 then //если такая тема присутствует в экзамене выбранного подразделения
              begin               {обязательные}
                  tabQuest.SQL.Clear;
                  tabQuest.SQL.Add('select * from QUEST where OBJAZ like ''%'+IntToStr(IDVidExam)+'#'+'%''');
                  tabQuest.SQL.Add('and  EXAMID='+IntToStr(QryWybTemIDEXAM.Value));
                  tabQuest.Open;
                  While not tabQuest.Eof do
                  begin
                     Inc(i);
                     AskArr[ii+i]:=TabQuestID.Value; //в массив задаваемых вопросов заносим этот вопрос
                     pBar.StepBy(1);
                     tabQuest.Next;
                  end;
                  tabQuest.SQL.Clear;
                  tabQuest.SQL.Add('select * from QUEST where EXAMID='+IntToStr(QryWybTemIDEXAM.Value));
                  tabQuest.Open;
                  Randomize;
                  KolVoprRnd:=QryWybTemKOLVOPR.Value-i; //заданное количество вопросов => KolVoprRnd
                  tabQuest.First;
                  Kol:=MyRecordCount(tabQuest); //Kol = кол-во имеющихся вопросов в таблице
                  i1:=0;
                  if Kol>0 then
                  //--ФОРМИРУЕМ МАССИВ СЛУЧАЙНЫХ ВОПРОСОВ--//
                  While i1<KolVoprRnd do  //пока не наберется нужное кол-во вопросов...
                  begin
                     {выбираем случайный номер вопроса в таблице (кроме "0"):}
                     N:=Random(Kol)+1;
                     {получили N, теперь смотрим, чтобы в массиве "прошлых N" такого номера не было}
                     Res:=false;
                     for j:=ii+1 to ii+KolVoprRnd do
                        if N=NArr[j] then Res:=true;  //такой вопрос уже задавался?
                     if not Res then
                     begin {все в порядке, заносим новый номер в массив}
                        tabQuest.First;
                        tabQuest.MoveBy(N-1); //становимся на вопрос...
                        if (Pos(tabQuestObjaz.Value,IntToStr(IDVidExam)+'#')>0) or
                              (Pos(tabQuestNezel.Value,IntToStr(IDVidExam)+'#')>0) then  else
                        begin
                           Inc(i);               //минус один вопрос В ЦИКЛЕ
                           Inc(i1);               //минус один вопрос В ЦИКЛЕ
                           {...и сохраняем в массивы:}
                           NArr[ii+i]:=N;           //запоминаем что этот вопрос уже был задан
                           AskArr[ii+i]:=TabQuestID.Value; //в массив задаваемых вопросов заносим этот вопрос
                           pBar.StepBy(1);
                        end;
                     end;
                  end {while}; ii:=ii+KolVoprRnd; //увеличиваем текущий СКВОЗНОЙ счетчик вопросов
                  qryWybTem.Next;
                  KolVoprReal:=KolVoprReal+KolVoprRnd;
              end {if} else qryWybTem.Next;
            END; {while}
         end {case '0'};
      {------------------------------------------------------------------------}
      1 : begin {случайным образом тест}
              ExType:=1;
              lKindOfExam.Caption:='Случайный билет: '+qRndTestName.Value;
              i:=0;
              While not tabTestVopr.Eof do
              begin
                 Inc(i);
                 AskArr[i]:=tabTestVoprIDQuest.Value;
                 tabTestVopr.Next;
              end;
              KolVoprReal:=i;
              tabTestVopr.Filter:='';
              tabTestVopr.Filtered:=false;
          end;
      {------------------------------------------------------------------------}
      2 : begin {определенный тест}
              ExType:=2;
              tabTestVopr.Filter:='IDTEST='+IntToStr(frmExam.TestNum);
              lKindOfExam.Caption:=frmExam.TestInfo;
              i:=0;
              While not tabTestVopr.Eof do
              begin
                 Inc(i);
                 SubjArr[i]:=tabTestVoprIDExam.Value;
                 AskArr[i]:=tabTestVoprIDQuest.Value;
                 tabTestVopr.Next;
              end;
              KolVoprReal:=i;
              tabTestVopr.Filter:='';
          end;
  end; {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*}

  ErrOtv:=0;
  tabTest.Active:=false;
  tabTestVopr.Active:=false;
  ver1.color:=clSilver;
  ver2.color:=clSilver;
  ver3.color:=clSilver;
  ver4.color:=clSilver;
  AskTek:=1;
  tabQuestFull.SQL.Clear;
  tabQuestFull.SQL.Add('select * from  QUEST where ID='+IntToStr(AskArr[AskTek]));
  tabQuestFull.Open;
  ComNum.Caption:=IntToStr(KolVoprReal);
  curNum.Caption:=IntToStr(AskTek);
//  Panel1.Visible:=false;
  labExamName.Caption:=DateToStr(Date);
  Resort;
  ClearUserChoice;
  StartTimer;
  Results.Items.Add('Начало экзамена: '+TimeToStr(TimeBegin));
  Results.Items.Add(lKindOfExam.Caption);
  pBar.Visible:=false;
  Screen.Cursor:=crDefault;
END; {Activate}

procedure TfrmCard.VersionSelect(Sender: TObject);
begin
   with (Sender as TDBMemo) do
   begin
     if Name='ver1' then ver1.Color:=$0092BFDE else ver1.Color:=clsilver;
     if Name='ver2' then ver2.Color:=$0092BFDE else ver2.Color:=clsilver;
     if Name='ver3' then ver3.Color:=$0092BFDE else ver3.Color:=clsilver;
     if Name='ver4' then ver4.Color:=$0092BFDE else ver4.Color:=clsilver;
     SelectedTag:=tag;
     SelectedVer:=StrToInt(copy(Name,4,1));
     btnNext.Enabled:=true;
     ActiveControl:=btnNext;
   end;
end;

procedure TfrmCard.btnEndClick(Sender: TObject);
begin
   Finished:=true;
   Results.Items.Add('~~ Экзамен прерван по желанию пользователя...');
   ErrOtv:=-1;
   EndOfExam;
end;

procedure TfrmCard.EndOfExam;
begin //------------- Конец экзамену: ----------------
   StopTimer;
   lCorrect.Caption:=IntToStr(Correct);
   lIncorrect.Caption:=IntToStr(Incorrect);
   lTotalTime.Caption:=TimeToStr(TimeTotal);
         RxGIFAnimator3.Visible:=false;
         RxGIFAnimator1.Visible:=false;
         if ErrOtv>KolNOtv then
         begin
            Label8.Caption:='не знает';
            Label8.Font.Color:=clBlack;
            RxGIFAnimator3.Visible:=true;
         end else
         if ErrOtv<>-1 then
         begin
            Label8.Caption:='знает';
            Label8.Font.Color:=clMaroon;
            RxGIFAnimator1.Visible:=true;
         end else
         begin
            Label8.Caption:='прерван';
            Label8.Font.Color:=clBlack;
         end;;
               PanelResult.Visible:=true;
//               RxGIFAnimator3.Animate:=true;
               btnEnd.Visible:=false;
               btnNext.Visible:=false;
               PanelMA.Enabled:=false;
               PanelSA.Enabled:=false;
               PnlGr.Enabled:=false;
end;

procedure TfrmCard.btnNextClick(Sender: TObject);
var noerrors: boolean;
    err: string;
    corrchoice, userchoice: string;
    i, CorrectOld,Priz: word;
begin
  corrchoice:='';
  userchoice:='';
  noerrors:=true;
  {Сохраняем результат в протокол.}
  Results.Items.Add('---------------------------------------------');
  Results.Items.Add(TimeToStr(Time)+' Вопрос № '+CurNum.Caption+':');
  Results.Items.Add(DBMemo1.Text);
  Results.Items.Add('Варианты ответа:');
  correctOld:=correct;

  if tabQuestFullType.Value=1 then
  begin // ----------------------------------------- одновариантный ответ:
      if ver1.Visible then Results.Items.Add('1) '+ver1.Field.Value);
      if ver2.Visible then Results.Items.Add('2) '+ver2.Field.Value);
      if ver3.Visible then Results.Items.Add('3) '+ver3.Field.Value);
      if ver4.Visible then Results.Items.Add('4) '+ver4.Field.Value);
      Results.Items.Add('* Выбор экзаменующегося: '+IntToStr(SelectedVer));
      Results.Items.Add('* Правильный ответ: '+IntToStr(CorrectVer));

      if SelectedTag=1 then //правильный ответ:
        inc(correct)
      else  //неправильный ответ:
      begin
        if tabQuestfullNormdoc.Value<>'' then
          Results.Items.Add('(Нормативный документ: '+tabQuestfullNormdoc.Value+')');
        Inc(ErrOtv);
        inc(incorrect);
      end;
  end

   else // ---------------------------------------- многовариантный ответ:

  if tabQuestFullType.Value=2 then
  begin
     tabQuest2.DisableControls;
     tabQuest2.First;
     err:='';
     i:=0;
     while not tabQuest2.EOF do
     begin
       inc(i);
       Results.Items.Add(IntToStr(i)+') '+tabQuest2Answer.Value);
       if tabQuest2Right.Value=1 then corrchoice:=corrchoice+IntToStr(i)+'  ';
       if tabQuest2UserChoice.Value=1 then userchoice:=userchoice+IntToStr(i)+'  ';
       if tabQuest2Right.Value<>tabQuest2UserChoice.Value then
       begin
          Noerrors:=false;
          err:=err+IntToStr(tabQuest2Num.Value)+'; ';
       end;
       tabQuest2.Next;
     end;

     Results.Items.Add('* Выбор экзаменующегося:  '+userchoice);
     Results.Items.Add('* Правильный ответ:  '+corrchoice);

     if Noerrors then //правильный ответ
     inc(correct)
       else
     begin  //неправильный ответ:
        if tabQuestfullNormdoc.Value<>'' then
          Results.Items.Add('(Нормативный документ: '+tabQuestfullNormdoc.Value+')');
        Inc(ErrOtv);
        inc(incorrect);
     end;

     tabQuest2.EnableControls;
  end else {Конец сохранения результатов в протокол.}

  if tabQuestFullType.Value=3 then
  begin // ----------------------------------------- графический отве:
      Results.Items.Add('* Выбор экзаменующегося: '+IntToStr(SelectedVer));
      Results.Items.Add('* Правильный ответ: '+IntToStr(CorrectVer));

      if SelectedTag=1 then //правильный ответ:
        inc(correct)
      else  //неправильный ответ:
      begin
        if tabQuestfullNormdoc.Value<>'' then
          Results.Items.Add('(Нормативный документ: '+tabQuestfullNormdoc.Value+')');
        Inc(ErrOtv);
        inc(incorrect);
      end;
  end;

{анализ - давать ли правильный ответ}

   Priz:=0;
   if tabVidPokazOtv.Value=1 then Priz:=2;
   if tabVidSoobOtv.Value=1 then
        if tabVidPokazOtv.Value=1 then Priz:=3 else
           Priz:=1;
   if Priz>0 then
   begin
        FrmPravOtv:=TFrmPravOtv.Create(Application);
        frmPravOtv.Priz:=Priz;
        frmPravOtv.OtvPrav:=correct>correctOld;
        frmPravOtv.ShowModal;
        frmPravOtv.Free;
   end;

  //---------------------------------------------//

  Inc(AskTek); //Переходим к следующему вопросу...
  tabQuestFull.SQL.Clear;
  tabQuestFull.SQL.Add('select * from  QUEST where ID='+IntToStr(AskArr[AskTek]));
  tabQuestFull.Open;
  if AskTek<=KolVoprReal then
  begin //показываем след. вопрос
      (* if SubjArr[AskTek]>0 then tabQuestFull.Filter:=tabQuestFull.Filter+'and(ExamID='+IntToStr(SubjArr[AskTek])+')';
      *)
      ComNum.Caption:=IntToStr(KolVoprReal);
      curNum.Caption:=IntToStr(AskTek);

      ver1.color:=clSilver;
      ver2.color:=clSilver;
      ver3.color:=clSilver;
      ver4.color:=clSilver;


(*      if not tabQuestFull.EOF then
      begin*)
        btnNext.Enabled:=false;
    //    curNum.Caption:=IntToStr(tabQuestFull.RecNo);
        Resort;
        ClearUserChoice; //очищаем предыдущие пользовательские мульти-варианты
  end else EndOfExam;
end;

procedure TfrmCard.btnCloseClick(Sender: TObject);
begin
  Finished:=true;
  //Save results:
  tabRes.Open;
  tabRes.Append;
    tabResDate.Value:=Date;
    tabResTimeBegin.Value:=TimeBegin;
    tabResTimeTotal.Value:=TimeTotal;
    tabResQTotal.Value:=KolVoprReal;
    tabResQCorrect.Value:=correct;
    tabResQinCorrect.Value:=incorrect;
    tabResFIO.Value:=FIO;
    tabResTabNum.Value:=exTabNum;
    tabResKodPodr.Value:=exKodPodr;
    tabResKodDolg.Value:=exKodDolg;
    tabResExType.Value:=ExType;
    tabResResults.Assign(Results.Items);
    tabresRes.Value:=Label8.Caption;
  tabRes.Post;
  if frmExam.PreQuest then tabJQuests.Delete;
  frmExam.PreQuest:=false;
  tabRes.Close;
  Close;
end;

procedure TfrmCard.Timer1Timer(Sender: TObject);
begin
   Label9.Caption:=TimeToStr(Time);
end;

procedure TfrmCard.FormDestroy(Sender: TObject);
begin
  tabPodr.Close;
  tabQuest.Close;
  tabQuest2.Close;
  tabExam.Close;
  tabQuestFull.Close;
//  tabRndSeed.Close;
end;

procedure TfrmCard.ClearUserChoice;
begin
  tabQuest2.DisableControls;
  //Обнуляем поле варианта ответа экзаменующегося
  while not tabQuest2.EOF do
  begin
    tabQuest2.Edit;
    tabQuest2UserChoice.Value:=0;
    tabQuest2.Post;
    tabQuest2.Next;
  end;
  tabQuest2.EnableControls;

  ver1.Visible := ver1.Lines.Count>0;
  ver2.Visible := ver2.Lines.Count>0;
  ver3.Visible := ver3.Lines.Count>0;
  ver4.Visible := ver4.Lines.Count>0;
end;

procedure TfrmCard.StartTimer;
begin
  timeBegin:=Time;
end;

procedure TfrmCard.StopTimer;
begin
  timeEnd:=Time;
  timeTotal:=TimeBegin-TimeEnd;
end;

procedure TfrmCard.tabRndSeed__AfterScroll(DataSet: TDataSet);
begin
//   tabQuest.Filter:='ExamID='+IntToStr(tabRndSeedExamID.Value);
end;

procedure TfrmCard.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if Finished = false then Abort;
end;


procedure TfrmCard.tabQuest2AfterEdit(DataSet: TDataSet);
begin
  btnNext.Enabled:=true;
end;

procedure TfrmCard.tabQuestFullAfterScroll(DataSet: TDataSet);
begin
  if tabQuestFullType.Value=1 then //single-variant
  begin
    PanelSA.Visible:=true;
    PanelMA.Visible:=false;
    PnlGr.Visible:=false;
  end else
  if tabQuestFullType.Value=2 then //multi-variant
  begin
    tabQuest2.SQL.Clear;
    tabQuest2.SQL.Add('select * from QUEST2 where QUESTID='+IntToStr(tabQuestFullID.Value)+' order by NUM');
    tabQuest2.Open;
    PanelSA.Visible:=false;
    PanelMA.Visible:=true;
    PnlGr.Visible:=false;
  end else
  if tabQuestFullType.Value=3 then //graph-variant
  begin
    PanelSA.Visible:=false;
    PanelMA.Visible:=false;
    tabQuestGr.SQL.Clear;
    tabQuestGr.SQL.Add('select * from QUESTGR where QUESTID='+IntToStr(tabQuestFullID.Value)+' order by NUM');
    tabQuestGr.Open;

    PnlGr.Visible:=true;
  end;
end;

procedure TfrmCard.grdQuest2CellClick(Column: TColumnEh);
begin
   if Column.Index =1 then
   begin
      tabQuest2.Edit;
      if tabQuest2USERCHOICE.Value=0 then tabQuest2USERCHOICE.Value:=1 else
         tabQuest2USERCHOICE.Value:=0;
   end;
end;

procedure TfrmCard.tabQuest2CalcFields(DataSet: TDataSet);
begin
   tabQuest2OtvCalc.Value:=tabQuest2USERCHOICE.Value=1;
   tabQuest2PravCalc.Value:=tabQuest2RIGHT.Value=1;
end;

procedure TfrmCard.Gr1Click(Sender: TObject);
begin
   if Sender is TPanel then
   with (Sender as TPanel) do
   begin
     if Name='Gr1' then Gr1.Color:=$0092BFDE else Gr1.Color:=clsilver;
     if Name='Gr2' then Gr2.Color:=$0092BFDE else Gr2.Color:=clsilver;
     if Name='Gr3' then Gr3.Color:=$0092BFDE else Gr3.Color:=clsilver;
     if Name='Gr4' then Gr4.Color:=$0092BFDE else Gr4.Color:=clsilver;
     SelectedTag:=tag;
     SelectedVer:=StrToInt(copy(Name,3,1));
     btnNext.Enabled:=true;
     ActiveControl:=btnNext;
   end else
   if Sender is TImage then
   with (Sender as TImage) do
   begin
     if Name='Im1' then Gr1.Color:=$0092BFDE else Gr1.Color:=clsilver;
     if Name='Im2' then Gr2.Color:=$0092BFDE else Gr2.Color:=clsilver;
     if Name='Im3' then Gr3.Color:=$0092BFDE else Gr3.Color:=clsilver;
     if Name='Im4' then Gr4.Color:=$0092BFDE else Gr4.Color:=clsilver;
     SelectedTag:=tag;
     SelectedVer:=StrToInt(copy(Name,3,1));
     btnNext.Enabled:=true;
     ActiveControl:=btnNext;
   end;
end;

end.
