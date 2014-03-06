unit title;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, jpeg, ExtCtrls, RxGIF, ShellAPI, ComCtrls, MyData, Proc, Ini,IniFiles,
  Menus, Buttons, DB, DBTables, IBCustomDataSet, IBQuery;

type
  TfrmExam = class(TForm)
    BGimage: TImage;
    iBegin: TImage;
    iEnd: TImage;
    MainMenu1: TMainMenu;
    ListBox1: TListBox;
    iList: TImage;
    iConf: TImage;
    LVINK: TLabel;
    tabPW: TTable;
    tabPWExam: TStringField;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Qry1: TIBQuery;
    Qry1COUNT: TIntegerField;
    procedure BGimageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iEndClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure iBeginClick(Sender: TObject);
    procedure iListClick(Sender: TObject);
    procedure iConfClick(Sender: TObject);
    procedure LVINKDblClick(Sender: TObject);
    procedure LVINKMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LVINKMouseLeave(Sender: TObject);
    procedure iBeginMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
    IniFile: TIniFile;
    StringList: TStringList;
    function MyRecordCount(Tbl: TIBQuery):integer;
  public
    { Public declarations }
    FIO: string;
    testNum: integer;
    testInfo: string;
    PreQuest: boolean; //признак заранее приготовленных вопросов
  end;

var
  frmExam: TfrmExam;

implementation

uses card, NTesta, Results, Nastr, WybLs, Pass;

{$R *.DFM}

function TFrmExam.MyRecordCount(Tbl: TIBQuery):integer;
begin
   Qry1.SQL.Clear;
   Qry1.SQL.Add('Select count(Q.ID) from TEST Q  where IDVID='+IntToStr(IDVidEXAM));
   Qry1.Open;
   Result:=Qry1Count.Value
end;

procedure TfrmExam.BGimageMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  with iBegin do
  if ((x>Left)and(x<(Left+Width))and(y>Top)and(y<(Top+Height))) then
  Visible:=true else Visible:=false;

  with iEnd do
  if ((x>Left)and(x<(Left+Width))and(y>Top)and(y<(Top+Height))) then
  Visible:=true else Visible:=false;

  with iList do
  if ((x>Left)and(x<(Left+Width))and(y>Top)and(y<(Top+Height))) then
  Visible:=true else Visible:=false;

  with iconf do
  if ((x>Left)and(x<(Left+Width))and(y>Top)and(y<(Top+Height))) then
  Visible:=true else Visible:=false;
end;

procedure TfrmExam.iEndClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmExam.FormCreate(Sender: TObject);
begin
  NumPodrWybLS:=0;
  Session.AddPassword('xamenator');
  Session.AddPassword('122605');
      DataPath:=ExtractFilePath(Application.EXEName)+'data';
      RabDisk:=DataPath[1]+':';
      IniFile:=TIniFile.Create(DataPath+'\exam.ini');
      StringList:=TStringList.Create;
      IniFile.ReadSectionValues('Main',StringList);
      IDVidExam:=MyVal(StringList.Values['ID']);
      IDKatExam:=MyVal(StringList.Values['KATE']);
      PasswAd:=IniFile.ReadString('Main','PA','');
      PasswExam:=IniFile.ReadString('Main','PE','');
      Mode:=IniFile.ReadInteger('Main','ModeE',0);
      ServerIB:=IniFile.ReadString('Main','ServerIB',''); // Holodov 20140218
      IniFile.Free;
  frmPassword:=TfrmPassword.Create(Application);
  Repeat
     frmPassword.TipPass:='E';
     YesPassword:=false;
     frmPassword.ShowModal;
     frmPassword.TipPass:='-';
  Until YesPassword or frmPassword.Cancel;

  if frmPassword.Cancel then Application.Terminate;

  if YesPassword then
  begin
      PreQuest:=false;

(*
      Mode:=MyVal(StringList.Values['Mode']);
      TestNum:=MyVal(StringList.Values['NTest']);
      YesGrup:= StringList.Values['Grup']='1';*)
      Randomize;
   end;
end;

//----------------------------------------------Начало экзамена-----------------
procedure TfrmExam.iBeginClick(Sender: TObject);
//------------------------------------------------------------------------------
var  i, n, gr: integer;
     sum: integer; //сумма вопросов в экзамене
     done: boolean;
     s: string;
begin //Начало экзамена...
        i:=0;
        I:=WyborLS(LSKodPodr, LSKodDolz, LSKodDolzDop, Gr, LSNameF, LSNameIO, LSDolzCalc, LSPodr, LSBorn);
        if i>0 then
        begin
           if LSNameIO<>'' then FIO:=LSNameF+' '+Copy(LSNameIO,1,1)+'.'+
              Copy(LSNameIO,Pos(' ',LSNameIO)+1,1)+'.' else FIO:=LSNameF;
//           frmCard.ChPodr:=WhatChKodPodr(LSPodr);
//<--by me           frmCard.Grup:=CommonInt[1];
           frmCard.PanelHeader.Caption:=LSPodr+' '+LSNameF+' '+LSNameIO+'  '+LSDolzCalc;
//<--by me           CommonInt[1]:=0;
        end
          else
        begin
          if i<>-1 then ShowMessage('Табельный номер отсутствует или не указан.');
          Exit;
        end;

        { проверяем, числятся ли за человеком приготовленные вопросы: }
        with frmCard.tabJQuests do
        begin
           Open;
           Filter:='TabNum='+IntToStr(ExamTabNum);
           Filtered:=true;
           Last;
           if recordcount>0 then //есть ли заготовка?
           begin
             if frmCard.tabJQuestsQuests.Value<>''
               then s:='Для выбранного человека есть подготовленные заранее вопросы'
               else s:='Для выбранного человека есть подготовленный заранее билет';
             if MessageDlg(s+' на экзамен '+frmCard.tabJQuestsDate.AsString+#10#13+'Дать ему эти вопросы ?',
               mtWarning, [mbYes, mbNo], 0) =  mrYes then PreQuest:=true else PreQuest:=false;
           end
           else PreQuest:=false; // признак, что нет
        end;
        CASE Mode OF

        0: with frmCard do
           Begin //-------------- Выбор случайных вопросов:
              frmCard.ShowModal;
           end;
        1: With frmCard do
           Begin //-------------- Выбор случайного теста:
               qRndTest.SQL.Clear;
               qRndTest.SQL.Add('select * from test where IDVID='+IntToStr(IDVidExam));
               qRndTest.Open;
               tabTestVopr.Open;
               i:=0; done:=false; 
               while (not done)and(i<50) do //50 раз пытаемся выбрать подходящий тест:
               begin
                  inc(i);
                  N:=Random(MyRecordCount(qRndTest));
                  qRndTest.First;
                  qRndTest.MoveBy(N);

                  tabTestVopr.Filter:='IDTEST='+IntToStr(qRndTestID.Value);
                  tabTestVopr.Filtered:=true;
                  if TabTestVopr.RecordCount>0 then done:=true;
               end;

               if not done //50 раз прошли и not done
               then ShowMessage('Для выбранной категории не найдено ни одного теста с вопросами.')
               else frmCard.ShowModal;

               tabTestVopr.Close;
               qRndTest.Close;
           End;

        2: Begin //-------------- Выбор определенного теста:
           if PreQuest=false then
             with TFrmNTesta.Create(Application) do
             begin
               qTest.SQL.Clear;

// 20140219 Holodov
//					qTest.SQL.Add('select * from test order by num');
					qTest.SQL.Add('select *  from TEST where test.idvid=:id order by NUM');

               qTest.Open;
               if qTest.RecordCount=0 then bOk.Enabled:=false;
               if ShowModal=mrCancel then Exit;
               TestNum:=N;
//               TestInfo:=qTestInfo.Value;
               TestInfo:='Билет №'+IntToStr(qTestNum.Value);
               Free;
             end;
           frmCard.ShowModal;
           End;
        END;
end;

//-------------------------------------------------Просмотр результатов---------
procedure TfrmExam.iListClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
  Application.CreateForm(TFrmresults, FrmResults);
  frmResults.ShowModal;
  frmResults.Free;
end;

//--------------------------------------------------Настройка экзамена----------
procedure TfrmExam.iConfClick(Sender: TObject);
//------------------------------------------------------------------------------
var Old:string;
begin
   Old:=NameExam;
   Application.CreateForm(TFrmNastr, FrmNastr);
   frmNastr.ShowModal;
   frmNastr.Free;
   if NameExam<>Old then
   begin
         Label1.Visible:=true;
         Label4.Visible:=true;
         Label3.Visible:=false;
         Label4.Caption:=NameExam;
   end;
end;

procedure TfrmExam.LVINKDblClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,'open','mailto:soft@ukrvink.com',nil,nil,0);
end;

procedure TfrmExam.LVINKMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lVink.Font.Color:=$003CA5E3;
end;

procedure TfrmExam.LVINKMouseLeave(Sender: TObject);
begin
  lVink.Font.Color:=$00AAAAAA;
end;

procedure TfrmExam.iBeginMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Shift=[ssShift, ssAlt, ssLeft] then frmCard.Debug:=true else frmCard.Debug:=false;
end;

procedure TfrmExam.FormPaint(Sender: TObject);
begin
      if IDVidExam= 0 then
      begin
         Label1.Visible:=false;
         Label4.Visible:=false;
         Label3.Visible:=true;
         Label3.Caption:='ВНИМАНИЕ! Нет настройки на экзамен!';
      end else
      begin
         IniFile:=TIniFile.Create(DataPath+'\exam.ini');
         StringList:=TStringList.Create;
         IniFile.ReadSectionValues('Main',StringList);
         KolVopr:=MyVal(StringList.Values['KolVopr']);
         KolNOtv:=MyVal(StringList.Values['KolNOtv']);
         NameExam:=StringList.Values['NameEx'];
         IniFile.Free;
         StringList.Free;
         Label1.Visible:=true;
         Label4.Visible:=true;
         Label3.Visible:=false;
         Label4.Caption:=NameExam;
      end;
end;

end.
