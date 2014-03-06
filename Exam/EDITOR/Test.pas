unit Test;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, Grids, DBGridEh, StdCtrls, DBCtrls, Buttons, MyData, DM,
  DBGrids, DBCGrids, Mask, Printers, DBCtrlsEh, DBLookupEh, PrnDbgeh, PrintMod,
  IBCustomDataSet, IBQuery, IBUpdateSQL, IBTable, GridsEh;

type
  TFrmTest = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    dsWybTem: TDataSource;
    dsQuest: TDataSource;
    dsTest: TDataSource;
    ListBox1: TListBox;
    Label3: TLabel;
    Panel2: TPanel;
    bMoveUp: TSpeedButton;
    bMoveDown: TSpeedButton;
    tabTestVopr_: TTable;
    dsTestVopr: TDataSource;
    tabTestVopr_ExamID: TSmallintField;
    tabTestVopr_NTesta: TIntegerField;
    bDelTestVopr: TSpeedButton;
    tabTestVopr_NVoprPP: TIntegerField;
    bClear: TSpeedButton;
    bSaveContent: TBitBtn;
    tabQuestFull_: TTable;
    StringField3: TStringField;
    tabQuestFull_ExamID: TIntegerField;
    tabQuestFull_ID: TAutoIncField;
    tabQuestFull_Type: TSmallintField;
    tabQuestFull_TipPodr: TStringField;
    tabQuestFull_Grup: TSmallintField;
    tabQuestFull_Text: TMemoField;
    tabQuestFull_Answer1: TMemoField;
    tabQuestFull_Answer2: TMemoField;
    tabQuestFull_Answer3: TMemoField;
    tabQuestFull_Answer4: TMemoField;
    tabQuestFull_Picture: TGraphicField;
    tabQuestFull_KolIspTest: TIntegerField;
    tabQuestFull_NTest: TStringField;
    tabQuestFull_Razr: TSmallintField;
    tabQuestFull_KodDolz: TSmallintField;
    bTurnBack: TBitBtn;
    bClearContent: TSpeedButton;
    grdQuest: TDBGridEh;
    grdVoprPrn: TDBGridEh;
    PrintGrid: TPrintDBGridEh;
    tabTestVopr_QuestID: TIntegerField;
    dsVoprPrn: TDataSource;
    Label2: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    labNQuest: TLabel;
    bPrintWithAns: TSpeedButton;
    bPrint: TSpeedButton;
    Bevel2: TBevel;
    cbAns: TCheckBox;
    Bevel3: TBevel;
    PrinterSetupDialog: TPrinterSetupDialog;
    lFontPrint: TLabel;
    tabTest: TIBQuery;
    tabTestNUM: TIntegerField;
    tabTestID: TIntegerField;
    tabTestIDVID: TIntegerField;
    tabTestNAME: TIBStringField;
    SpeedButton1: TSpeedButton;
    tabTestVopr: TIBQuery;
    tabTestVoprID: TIntegerField;
    tabTestVoprNUM: TIntegerField;
    tabTestVoprIDEXAM: TIntegerField;
    tabTestVoprIDQUEST: TIntegerField;
    IBUpdateSQL1: TIBUpdateSQL;
    IBUpdateSQL2: TIBUpdateSQL;
    TabWybTem: TIBTable;
    tabVoprFull: TIBQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    grdRndSeed: TDBGridEh;
    DBNavigator1: TDBNavigator;
    TabWybTemID: TIntegerField;
    TabWybTemIDKAT: TIntegerField;
    TabWybTemIDVID: TIntegerField;
    TabWybTemIDEXAM: TIntegerField;
    TabWybTemKOLVOPR: TIntegerField;
    tabTestVoprIDTEST: TIntegerField;
    TblExam: TIBTable;
    DSExam: TDataSource;
    TblExamID: TIntegerField;
    TblExamNAME: TIBStringField;
    TabWybTemlookExam: TStringField;
    DBGrid1: TDBGrid;
    tabQuestFull: TIBTable;
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
    Label5: TLabel;
    Label6: TLabel;
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
    IBUpdateSQL3: TIBUpdateSQL;
    tabQuestTestCalc: TStringField;
    IBUpdateSQL4: TIBUpdateSQL;
    tabVoprPrn: TIBTable;
    tabVoprPrnID: TIntegerField;
    tabVoprPrnNUM: TIntegerField;
    tabVoprPrnIDTEST: TIntegerField;
    tabVoprPrnIDEXAM: TIntegerField;
    tabVoprPrnIDQUEST: TIntegerField;
    tabVoprPrnlookText: TStringField;
    bWord: TSpeedButton;
    bWordWithAns: TSpeedButton;
    procedure bMoveUpClick(Sender: TObject);
    procedure bMoveDownClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSaveContentClick(Sender: TObject);
    procedure bDelTestVoprClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure bQuitClick(Sender: TObject);
    procedure tabExam_AfterScroll(DataSet: TDataSet);
    procedure tabTestVopr_BeforeScroll(DataSet: TDataSet);
    procedure RG1Click(Sender: TObject);
    procedure bPrintClick(Sender: TObject);
    procedure bClearClick(Sender: TObject);
    procedure bClearContentClick(Sender: TObject);
    procedure bTurnBackClick(Sender: TObject);
    procedure grdQuestDblClick(Sender: TObject);
    procedure Label4DblClick(Sender: TObject);
    procedure bPrintWithAnsClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tabTestAfterScroll(DataSet: TDataSet);
    procedure tabTestBeforeScroll(DataSet: TDataSet);
    procedure tabTestVoprAfterScroll(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure tabTestNewRecord(DataSet: TDataSet);
    procedure TabWybTemAfterScroll(DataSet: TDataSet);
    procedure tabTestVoprNewRecord(DataSet: TDataSet);
    procedure tabQuestCalcFields(DataSet: TDataSet);
    procedure bWordWithAnsClick(Sender: TObject);
    procedure bWordClick(Sender: TObject);
  private
    { Private declara'tions }
      Save,Vhod:boolean;
      YesCh:Boolean;
      procedure NewListBox;
      function NeedSave(b: boolean):boolean;
      procedure SaveTest;
      procedure NewFilter;
      procedure RecalcTotal;
  public
     IDVidExam:integer;
    { Public declarations }
  end;

var
  FrmTest: TFrmTest;

const
  NumSeparator = ';';

implementation

uses Mymess, {YesNo,} AskPrn;

{$R *.DFM}

//------- ��������� ��� �������� ������ ���-�� ������������� �������� �� ���� ������
// (���. ����� ������ ���������)
procedure TFrmTest.RecalcTotal;
begin
(*  Screen.Cursor:=crHourGlass;
  tabVoprFull.Open; tabVoprFull.Filtered:=true;
  tabQuestFull.Filtered:=false;
  tabQuestFull.First;
  while not tabQuestFull.EOF do
  begin
     tabVoprFull.Filter:='QuestID='+tabQuestFullID.AsString;
       tabQuestFull.Edit;
       tabQuestFullKolIspTest.Value:=tabVoprFull.RecordCount;
       tabQuestFull.Post;
     tabQuestFull.Next;
  end;
  tabVoprFull.Close;
  tabQuest.Refresh;
  Screen.Cursor:=crDefault;
  NeedSave(false);*)
end;

//----- ����� ������ ��� ������� �������� �����
{----------------------------------}
procedure MyMessage(const s:string);
{----------------------------------}
begin
   frmMyMess:=TfrmMyMess.Create(Application);
   frmMyMess.LblSoob.Caption:=s;
   frmMyMess.ShowModal;
   frmMyMess.Free;
end;

function TFrmTest.NeedSave(b: boolean): boolean;
begin
    Save:=b;
    bSaveContent.Visible:=b;
    bTurnBack.Visible:=b;
end;

procedure TFrmTest.SaveTest;
var i,k,j:integer;
    Nq, Nex: integer;
    NumsSepPos: integer;
    Nums: string;
begin
      tabTestVopr.First;
      While not tabTestVopr.Eof do
         tabTestVopr.Delete;
      for i:=0 to ListBox1.Items.Count-1 do
      begin
         j:=Pos('[',ListBox1.Items[i]);
         k:=Pos(']',ListBox1.Items[i]);
         tabTestVopr.Append;
//         tabTestVoprNTesta.Value:=tabTestID.Value;

           Nums:=Copy(ListBox1.Items[i],j+1,k-j-1); //���. ������ � �������
           NumsSepPos:=pos(NumSeparator, Nums);     //����������� ������� � ���. ������

         Val(copy(Nums,1,NumsSepPos), Nex, k);
         Val(copy(Nums,NumsSepPos+1,length(Nums)), Nq, k);
         tabTestVoprNum.Value:=i+1;
         tabTestVoprIDExam.Value:=Nex;  //# of exam
         tabTestVoprIDQuest.Value:=Nq; //# of quest.
         tabTestVopr.Post;
      end;
      NeedSave(false);
end;

procedure TFrmtEST.NewFilter;
begin
end;

procedure TFrmTest.NewListBox;
begin
   ListBox1.Items.Clear;
   tabTestVopr.First;
   While not tabTestVopr.Eof do
   begin
      tabQuestFull.Filter:='ID='+IntToStr(tabTestVoprIDQuest.Value);
      tabQuestFull.Filtered:=true;
      ListBox1.Items.Add(tabQuestFullText.Value+'['+tabQuestFullExamID.AsString + NumSeparator + tabQuestFullID.AsString+']');
      tabQuestFull.Filtered:=false;
      tabTestVopr.Next;
   end;
end;

procedure TFrmTest.bMoveUpClick(Sender: TObject);
begin {�����}
   if (ListBox1.Items.Count>0)and(ListBox1.ItemIndex>0) then
      ListBox1.Items.Exchange(ListBox1.ItemIndex,ListBox1.ItemIndex-1);
   NeedSave(true);
end;

procedure TFrmTest.bMoveDownClick(Sender: TObject);
begin{����}
   if (ListBox1.Items.Count>0)and(ListBox1.ItemIndex<ListBox1.Items.Count-1) then
      ListBox1.Items.Exchange(ListBox1.ItemIndex,ListBox1.ItemIndex+1);
  NeedSave(true);
end;

procedure TFrmTest.FormCreate(Sender: TObject);
begin
   ListBox1.Clear;
   vHOD:=true;
end;

procedure TFrmTest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Save then
  case MessageDlg('���� ���������. ���������?', mtInformation, [mbYes, mbNo, mbCancel], 0) of
  mrYes: SaveTest;
  mrNo: NeedSave(false);
  mrCancel: begin Abort; Exit; end;
  end;

  tabWybTem.Close;
  tabQuest.Close;
  tabQuestFull.Close;
  tabTest.Close;
  tabTestVopr.Close;
  tabVoprFull.Close;
  tblExam.Active:=false;
end;

procedure TFrmTest.bSaveContentClick(Sender: TObject);
begin
   if Save then SaveTest;
   NeedSave(false);
   RecalcTotal;
end;

procedure TFrmTest.bDelTestVoprClick(Sender: TObject);
var i,j,k:integer;
    Nums, s:string;
    NumsSepPos: word;
    NQ: integer; //����� ������� (��������)
begin
   j:=Pos('[',ListBox1.Items[ListBox1.ItemIndex]);
   k:=Pos(']',ListBox1.Items[ListBox1.ItemIndex]);

     Nums:=Copy(ListBox1.Items[ListBox1.ItemIndex],j+1,k-j-1); //���. ������ � �������
     NumsSepPos:=pos(NumSeparator, Nums);     //����������� ������� � ���. ������

   Val(copy(Nums,NumsSepPos+1,length(Nums)), Nq, k); //�������� � ����.
   tabQuestFull.Filter:='ID='+IntToStr(Nq);
   tabQuestFull.Filtered:=true; //������� ����� ������ � ����...
   if tabQuestFull.RecordCount>0 then
   begin
        j:=Pos('*'+IntToStr(IDVidExam)+'/'+IntToStr(tabTestNum.Value),tabQuestFullStr1.Value);
        if j<>0 then
        begin
           tabQuestFull.Edit;
           s:=tabQuestFullStr1.Value;
           Delete(s,j,1); //������� ������ ������...
           While (s<>'')and(s[j]<>'*')and(j<=length(s)) do Delete(s,j,1); //...� ��� �����������
           tabQuestFullStr1.Value:=s;
           //��������� �� ��. ���-�� ������������� �������
           i:=tabQuestFullInt1.Value; Dec(i); tabQuestFullInt1.Value:=i;
           tabQuestFull.Post;
           tabQuest.Close;
           tabQuest.Open;
        end;
   end;
   tabQuestFull.Filter:='';
   tabQuestFull.Filtered:=false;
   ListBox1.Items.Delete(ListBox1.ItemIndex);

   NeedSave(true);
   grdQuest.Refresh;
   tabQuest.Refresh;
end;

procedure TFrmTest.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    NewListBox;
end;

procedure TFrmTest.bQuitClick(Sender: TObject);
begin
   Close
end;

procedure TFrmTest.tabExam_AfterScroll(DataSet: TDataSet);
begin
//   NewListBox;
end;

procedure TFrmTest.tabTestVopr_BeforeScroll(DataSet: TDataSet);
begin
//   if Save and MyAsk('���� ���������. ���������?') then SaveTest;
end;

procedure TFrmTest.RG1Click(Sender: TObject);
begin
   NewFilter;
end;

procedure TFrmTest.bPrintClick(Sender: TObject);
begin
  tabVoprPrn.Open;
  tabVoprPrn.Filter:='IDTEST='+tabTestID.AsString;
  if Save then
  case MessageDlg('���� ���������. ���������?', mtInformation, [mbYes, mbNo, mbCancel], 0) of
  mrYes: SaveTest;
  mrNo: RecalcTotal;
  mrCancel: begin Abort; Exit; end;
  end;
  with PrintGrid do
  begin
    BeforeGridText.Clear;
    BeforeGridText.Add(tabTestName.Value);
    Preview;
  end;
  tabVoprPrn.Close;
end;

procedure TFrmTest.bClearClick(Sender: TObject);
begin
   tabQuest.First;
   While not tabQuest.Eof do
   begin
      tabQuest.Edit;
      tabQuestStr1.Value:='';
      tabQuestInt1.Value:=0;
      tabQuest.Post;
      tabQuest.Next;
   end;
   tabQuest.First;
end;

procedure TFrmTest.bClearContentClick(Sender: TObject);
begin
  if MessageDlg('������������� �������� �����?', mtConfirmation, [mbYes, mbNo], 0) =  mrYes then
  begin
     ListBox1.Items.Clear;
     NeedSave(true);
  end;
end;

procedure TFrmTest.bTurnBackClick(Sender: TObject);
begin
  if MessageDlg('�������� ��������� � ��������� � ����������� ������?', mtConfirmation, [mbYes, mbNo], 0) =
  mrYes then
  begin
    NewListBox;
    RecalcTotal;
  end;
  NeedSave(false);
end;

procedure TFrmTest.grdQuestDblClick(Sender: TObject);
var s,sTest:string;
    i:integer;
begin
//   if ListBox1.Items.Count=tabExamMaxQuest.Value then
//      MyMessage('� ���� ������ �������� ����������') else
   if tabTest.RecordCount>0 then
   begin
        //********** ������ ��������� � listbox: ***************
        ListBox1.Items.Add(tabQuestText.Value+'['+tabQuestExamID.AsString + NumSeparator + tabQuestID.AsString+']');
        //********** ������ ��������� � quest.db: **************
        tabQuest.Edit;
        sTest:='*'+IntToStr(IDVidExam)+'/'+IntToStr(tabTestNum.Value);
        {���� ����� ������� �� ����������...}
        if Pos(sTest,tabQuestStr1.Value)=0
         then s:=tabQuestStr1.Value+sTest;
        tabQuestStr1.Value:=s;  //������� ����� ����� � �������
        //����������� ������� ���������� ������������� ����� �������:
        i:=tabQuestInt1.Value; Inc(i); tabQuestInt1.Value:=i;
        tabQuest.Post;
        NeedSave(true);
        grdQuest.Refresh;
   end else ShowMessage('������� �������� �����.');
end;

procedure TFrmTest.Label4DblClick(Sender: TObject);
begin
  bClear.Visible:=not bClear.Visible;
end;

procedure TFrmTest.bPrintWithAnsClick(Sender: TObject);
begin
   if Save=false then
   begin
      HeadFont:=Panel1.Font;
      PrintFont:=lFontPrint.Font;
      if PrinterSetupDialog.Execute then
        PrintModule.PrintTest(tabTestID.Value, '', '', cbAns.Checked) //print
   end else ShowMessage('���������� ��������� ��������� ����� �������');
end;

procedure TFrmTest.SpeedButton1Click(Sender: TObject);
begin
   cLOSE
end;

procedure TFrmTest.tabTestAfterScroll(DataSet: TDataSet);
begin
  tabTestVopr.SQL.Clear;
  tabTestVopr.SQL.ADD('Select * from TESTVOPR where IDTEST='+IntToStr(TabTestID.Value));
  tabTestVopr.Open;
  NewListBox;
end;

procedure TFrmTest.tabTestBeforeScroll(DataSet: TDataSet);
begin
  if Save then
  case MessageDlg('���� ���������. ���������?', mtInformation, [mbYes, mbNo, mbCancel], 0) of
  mrYes: SaveTest;
  mrNo: RecalcTotal;
  mrCancel: begin Abort; Exit; end;
  end;
end;

procedure TFrmTest.tabTestVoprAfterScroll(DataSet: TDataSet);
begin
   bSaveContent.Visible:=false;
end;

procedure TFrmTest.FormActivate(Sender: TObject);
begin
 tabTestVopr.Open;
 tabQuestFull.Open;
 tblExam.Active:=true;
 tabtest.SQL.Clear;
 tabtest.SQL.Add('Select * from TEST where IDVID='+IntToStr(IDVidExam)+' order by NUM');
 tabtest.Open;
(* tabtestFull.SQL.Clear;
 tabtestFull.SQL.Add('Select * from TEST where IDVID='+IntToStr(IDVidExam)+' order by NUM');
 tabtestFull.Open;*)
 tabWybTem.Active:=true;
 tabWybTem.Filter:='IDVID='+IntToStr(IDVidExam);
 tabWybTem.Open;
// tabQuestFull.Close;
// tabVoprFull.Close;
  YesCh:=false;
  NeedSave(false);
  NewListBox; //��������� ������� � ����-�����
  RecalcTotal; //������� ����� ���-�� ���-� ��������
end;

procedure TFrmTest.tabTestNewRecord(DataSet: TDataSet);
begin
   tabTestIDVid.Value:=IDVidExam;
end;

procedure TFrmTest.TabWybTemAfterScroll(DataSet: TDataSet);
begin
   tabQuest.SQL.Clear;
   tabQuest.SQL.ADD('Select * from QUEST where EXAMID='+IntToStr(TabWybTemIDEXAM.Value));
   tabQuest.Open;
end;

procedure TFrmTest.tabTestVoprNewRecord(DataSet: TDataSet);
begin
   tabTestVoprIDExam.Value:=TabWybTemIDEXAM.Value;
   tabTestVoprIDQuest.Value:=tabQuestID.Value;
   tabTestVoprIDTest.Value:=tabTestID.Value;
end;

procedure TFrmTest.tabQuestCalcFields(DataSet: TDataSet);
var s,sR:string;
    i:integer;
    frst:string[2];
begin
   s:=tabQuestStr1.Value;
   frst:=' ';
   sR:='';
   While s<>'' do
   begin
      if Pos('*'+IntToStr(IDVidExam),s)>0 then
      begin
         Delete(s,1,Pos('/',s));
         i:=Pos('*',s);
         if i=0 then i:=10;
         sR:=sR+frst+Copy(s,1,i-1);
         frst:=', ';
         Delete(s,1,i-1);
      end else s:='';
   end;
   tabQuestTestCalc.Value:=sR;
end;

procedure TFrmTest.bWordWithAnsClick(Sender: TObject);
begin
   if Save=false then
   begin
// 20140227 Kholodov
//      HeadFont:=Panel1.Font;
//      PrintFont:=lFontPrint.Font;
//      if PrinterSetupDialog.Execute then
//        PrintModule.PrintTest(tabTestID.Value, '', '', cbAns.Checked) //print
    PrintModule.wordTest(tabTestID.Value, '', '', cbAns.Checked) //word
   end else ShowMessage('���������� ��������� ��������� ����� �������');
end;

procedure TFrmTest.bWordClick(Sender: TObject);
begin
   if Save=false then
   begin
    PrintModule.wordTestNotAnsw(tabTestID.Value, '', '', cbAns.Checked) //word
   end else ShowMessage('���������� ��������� ��������� ����� �������');
end;

end.
