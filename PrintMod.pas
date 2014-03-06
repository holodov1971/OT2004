unit PrintMod;

interface

uses
  SysUtils, Classes, DB, DBTables, Graphics, Printers, StdCtrls, DM, Variants,
  IBCustomDataSet, IBTable, WordXP, OleServer, ComObj;


{  Windows, Messages, SysUtils,  Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, DataModule1Unit, DB, IBCustomDataSet, IBQuery,
  IBUpdateSQL, fPunkts, ComCtrls, StdCtrls, ExtCtrls, DateUtils, IBTable,
  MyData,Buttons, Word97, rwDataSet, DataTransfer, Animate, GIFCtrl, Spin;}

type
  TPrintModule = class(TDataModule)
    tabTestVopr_: TTable;
    tabTestVopr_NTesta: TIntegerField;
    tabTestVopr_ExamID: TSmallintField;
    tabTestVopr_NVoprPP: TIntegerField;
    tabTestVopr_QuestID: TIntegerField;
    tabTest_: TTable;
    tabTest_Num: TIntegerField;
    tabTest_ID: TAutoIncField;
    tabTest_TipPodr: TStringField;
    tabTest_Grup: TSmallintField;
    tabTest_Razr: TSmallintField;
    tabTest_KodDolz: TSmallintField;
    tabTest_Info: TStringField;
    dsTest: TDataSource;
    tabQuest_: TTable;
    tabQuest_ID: TAutoIncField;
    tabQuest_Text: TMemoField;
    tabQuest_Answer1: TMemoField;
    tabQuest_Answer2: TMemoField;
    tabQuest_Answer3: TMemoField;
    tabQuest_Answer4: TMemoField;
    tabQuest_Picture: TGraphicField;
    tabQuest_ExamID: TIntegerField;
    tabQuest_Type: TSmallintField;
    tabQuest_TipPodr: TStringField;
    tabQuest_Grup: TSmallintField;
    dsQuest: TDataSource;
    tabQuest2_: TTable;
    dsQuest2: TDataSource;
    tabQuest2_QuestID: TIntegerField;
    tabQuest2_Num: TSmallintField;
    tabQuest2_Answer: TStringField;
    tabQuest2_Right: TBooleanField;
    tabQuest2_UserChoice: TBooleanField;
    tabExam_: TTable;
    tabExam_ID: TAutoIncField;
    tabExam_Name: TStringField;
    dsExam: TDataSource;
    tabTest: TIBTable;
    tabTestNUM: TIntegerField;
    tabTestID: TIntegerField;
    tabTestIDVID: TIntegerField;
    tabTestNAME: TIBStringField;
    tabTestVopr: TIBTable;
    tabTestVoprID: TIntegerField;
    tabTestVoprNUM: TIntegerField;
    tabTestVoprIDTEST: TIntegerField;
    tabTestVoprIDEXAM: TIntegerField;
    tabTestVoprIDQUEST: TIntegerField;
    tabQuest: TIBTable;
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
    tabQuest2: TIBTable;
    tabQuest2QUESTID: TIntegerField;
    tabQuest2NUM: TIntegerField;
    tabQuest2ANSWER: TIBStringField;
    tabQuest2RIGHT: TIntegerField;
    tabQuest2USERCHOICE: TIntegerField;
    tabExam: TIBTable;
    tabExamID: TIntegerField;
    tabExamNAME: TIBStringField;
    tabExamIDKAT: TIntegerField;
    tabExamPASSW: TIBStringField;
    WordApp: TWordApplication;
    procedure PrintTest(TestID: integer; Name: string; Date: string; ans: boolean);
    procedure PrintQuests(QString: string; Name: string; Date: string; ans: boolean);
    procedure PrintExam(ExamID: integer; ans: boolean);

    //20140223 Kholodov
    procedure FileExam(ExamID: integer; ans: boolean);

    //20140226
    procedure ExamWord(ExamID: integer; ans: boolean);

    //20140227 Kholodov
    procedure WordTest(TestID: integer; Name, Date: string; ans: boolean);
    procedure wordTestNotAnsw(TestID: integer; Name, Date: string; ans: boolean);

    procedure Mix(var a: array of string; n: integer);
    procedure PrintMemo(beforestr: string; memo: TCustomMemo; afterstr: string; Font: TFont);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  PrintModule: TPrintModule;
  PrintFont, HeadFont: TFont;

const
  cQSingleChk   = '     (�) ';
  cQSingleEmpty = '     ( ) ';
  cQMultPlus    = '     <+> ';
  cQMultMinus   = '     <-> ';
  cQMultEmpty   = '     < > ';

implementation

{$R *.dfm}

{-------------------------------------------------}
{------ "�������������" ������� �� �������� ------}
{    �: ������ �����                              }
{    n: ���������� ��������                       }
{-------------------------------------------------}
procedure TPrintModule.Mix(var a: array of string; n: integer);
var s, s1, s2: string;
    k, k1: integer;
    done: boolean;
begin
    Randomize;
    for k:=1 to n do
    begin
       done:=false;
       s:=A[random(3)]; //����� ����� s
       s1:=s; //�������������� s1
       while not done do // "������" �� �������, ���� �� �������� �� �����
       begin
         k1:=random(3); //�������� ������ k1
         if s=A[k1] then done:=true; // ������� ���� ��������
         //������ �������:
         s2:=A[k1];
         A[k1]:=s1;
         s1:=s2;
       end;
    end;
end;

{--------------------------------------------------}
{-------- ������ �������� � ��������� ���� --------}
{  ExamID: ����� ����                              }
{  ans: ������� ���������� ��������� (���������)   }
{--------------------------------------------------}
procedure TPrintModule.PrintExam(ExamID: integer; ans: boolean);
var
     PrintText: System.Text;
     k,i: integer;
     ch: string;
     ArrQSingle: array [1..4] of string;
begin
     tabExam.Open;
     tabQuest.Open;
     tabQuest2.Open;
     tabExam.Filter:='ID='+IntToStr(ExamID);
     tabExam.Filtered:=true;
     tabQuest.Filter:='ExamID='+IntToStr(ExamID);
     tabQuest.Filtered:=true;
     i:=0;

     {�����: }
     AssignPrn(PrintText);
     Rewrite(PrintText);
     Printer.Canvas.Font:=HeadFont;
     Writeln(PrintText, '');
     Writeln(PrintText, '������ ������ �� ��� '+tabExamName.Value+'                      ('+DateToStr(Now)+')');
     Writeln(PrintText, '________________________________________');
     Writeln(PrintText, '');
     Printer.Canvas.Font:=PrintFont;
     tabQuest.First;
     while not tabQuest.Eof do
     begin
           inc(i);
           Writeln(PrintText, '');
           {�������� ������� ������:}
           Printer.Canvas.Font.Style:=[fsBold];
           Writeln(PrintText, IntToStr(i)+') '+tabQuestText.Value);
           Printer.Canvas.Font.Style:=[];
           {�������� ������:}
           if tabQuestType.Value=1 then //�����������
           begin
              {��������� ������ �� 4 ��������:}
              for k:=1 to 4 do
              begin
                if ans then
                  if k=1 then ch:=cQSingleChk else ch:=cQSingleEmpty
                else
                  ch:=cQSingleEmpty;
                //������� ������ � ������:         ibqOldData.FieldValues['Value']=null
                if (tabQuest.FieldValues['Answer'+inttostr(k)]<>null)and(tabQuest.FieldByName('Answer'+inttostr(k)).Value<>'') then
                  ArrQSingle[k] := ch + tabQuest.FieldByName('Answer'+inttostr(k)).Value;
              end;
              {������������:}
//              Mix(ArrQSingle, 10);
              {...����������, ������ �������:}
              for k:=1 to 4 do if ArrQSingle[k]<>'' then Writeln(PrintText, ArrQSingle[k]);
              {... � ������� ������:}
              for k:=1 to 4 do ArrQSingle[k]:='';
           end
           else
           begin //�������������
              tabQuest2.First;
              while not tabQuest2.Eof do
              begin
                 if ans then
                   if tabQuest2Right.Value=1 then ch:=cQMultPlus else ch:=cQMultMinus
                 else
                   ch:=cQMultEmpty;
                 Writeln(PrintText, ch + tabQuest2Answer.Value);
                 tabQuest2.Next;
              end;
           end;
           {-- ������ ��������� --}
           WriteLN(PrintText, '');
           tabQuest.Next;
     end; {while}
// 20140223
//      Writeln('111.txt');

     System.Close(PrintText);

     tabQuest.Close;
     tabQuest2.Close;
     tabExam.Close;
end;

{--------------------------------------------------}
{------------------ ������ Memo -------------------}
{  memo: ����� memo-������                         }
{  afterstring: ������ ���������� � �����          }
{  font: ����� ��� ������                          }
{--------------------------------------------------}
procedure TPrintModule.PrintMemo(beforestr: string; memo: TCustomMemo; afterstr: string; Font: TFont);
var
     PrintText: System.Text;
     k: integer;
begin
     AssignPrn(PrintText);
     Rewrite(PrintText);
     Printer.Canvas.Font:=Font;
     //��������� ������
     Writeln(PrintText, '');
     Writeln(PrintText, beforestr);
     //����
     for k:=0 to memo.Lines.Count-1 do
        Writeln(PrintText, memo.lines[k]);
     //������ ����������
     Writeln(PrintText, '');
     Writeln(PrintText, afterstr);
     System.Close(PrintText);
end;

{--------------------------------------------------}
{------- ������ ��������, ��������� � ������ ------}
{  QString: ������ � ���������('all' - ������ ����)}
{  Name, Date: ��� �����-���� � ���� ��������,     }
{  ans: ������� ���������� ��������� (���������)   }
{--------------------------------------------------}
procedure TPrintModule.PrintQuests(QString, Name, Date: string; ans: boolean);
var
     PrintText: System.Text;
     k,i: integer;
     ch: string;
     ArrQSingle: array [1..4] of string;
begin
     tabQuest.Open;
     tabQuest2.Open;

     {�����: }
     AssignPrn(PrintText);
     Rewrite(PrintText);
     Printer.Canvas.Font:=HeadFont;
     Writeln(PrintText, '');
//     Writeln(PrintText, tabTestInfo.Value);
     Writeln(PrintText, '��������������: '+Name);
     Writeln(PrintText, '���� ��������: '+Date);
     Writeln(PrintText, '');
     Printer.Canvas.Font:=PrintFont;
     Printer.Canvas.Font.Style:=[fsItalic];
     Writeln(PrintText, '���������� ��� ���� ��������:');
     Writeln(PrintText, '( ) - �������� ������������ ������ �������');
     Writeln(PrintText, '< > - �������� ��� ���������� ������');
     Printer.Canvas.Font.Style:=[];
     i:=0;
     while qstring<>'' do
     begin
        inc(i);
        tabQuest.Filter:='(ID='+copy(qstring,1,pos(',',qstring)-1)+')';
           {�������� ������� ������:}
           Printer.Canvas.Font.Style:=[fsBold];
           Writeln(PrintText, IntToStr(i)+') '+tabQuestText.Value);
           Printer.Canvas.Font.Style:=[];
           {�������� ������:}
           if tabQuestType.Value=1 then //�����������
           begin
              {��������� ������ �� 4 ��������:}
              for k:=1 to 4 do
              begin
                if ans then
                  if k=1 then ch:=cQSingleChk else ch:=cQSingleEmpty
                else
                  ch:=cQSingleEmpty;
                //������� ������ � ������:
                if tabQuest.FieldByName('Answer'+inttostr(k)).Value<>'' then
                  ArrQSingle[k] := ch + tabQuest.FieldByName('Answer'+inttostr(k)).Value;
              end;
              {������������:}
              Mix(ArrQSingle, 10);
              {...����������, ������ �������:}
              for k:=1 to 4 do if ArrQSingle[k]<>'' then Writeln(PrintText, ArrQSingle[k]);
              {... � ������� ������:}
              for k:=1 to 4 do ArrQSingle[k]:='';
           end
           else
           begin //�������������
              tabQuest2.First;
              while not tabQuest2.Eof do
              begin
                 if ans then
                   if tabQuest2Right.Value=1 then ch:=cQMultPlus else ch:=cQMultMinus
                 else
                   ch:=cQMultEmpty;
                 Writeln(PrintText, ch + tabQuest2Answer.Value);
                 tabQuest2.Next;
              end;
           end;
           {-- ������ ��������� --}
           WriteLN(PrintText, '');

        Delete(qstring,1,pos(',',qstring))
     end; {while}
     System.Close(PrintText);

     tabQuest.Close;
     tabQuest2.Close;
end;

{--------------------------------------------------}
{------------ ������ ���������� ������ ------------}
{  TestID: ����� ������,                           }
{  Name, Date: ��� �����-���� � ���� ��������,     }
{  ans: ������� ���������� ��������� (���������)   }
{--------------------------------------------------}
procedure TPrintModule.PrintTest(TestID: integer; Name, Date: string; ans: boolean);
var
     PrintText: System.Text;
     k: integer;
     ch: string;
     ArrQSingle: array [1..4] of string;
begin
     tabTest.Open;
     tabTestVopr.Open;
     tabQuest.Open;
     tabQuest2.Open;

     tabTest.Filter:='ID='+IntToStr(TestID);
     tabTest.Filtered:=true;

     AssignPrn(PrintText);
     Rewrite(PrintText);
     {�����: }
     Printer.Canvas.Font:=HeadFont;
     Writeln(PrintText, '');
//     Writeln(PrintText, tabTestInfo.Value);
     Writeln(PrintText, '��������������: '+Name);
     Writeln(PrintText, '���� ��������: '+Date);
     Writeln(PrintText, '');
     Printer.Canvas.Font:=PrintFont;
     Printer.Canvas.Font.Style:=[fsItalic];
     Writeln(PrintText, '���������� ��� ���� ��������:');
     Writeln(PrintText, '( ) - �������� ������������ ������ �������');
     Writeln(PrintText, '< > - �������� ��� ���������� ������');
     Printer.Canvas.Font.Style:=[];

     tabTestVopr.Filter:='IDTEST='+tabTestID.AsString;

     tabTestVopr.First;
     while not tabTestVopr.Eof do
     begin
        Writeln(PrintText, '');
        tabQuest.Filter:='ID='+tabTestVoprIDQuest.AsString; // - ���� �������� �������
        //�������� ������:
        Printer.Canvas.Font.Style:=[fsBold];
        Writeln(PrintText, IntToStr(tabTestVoprNum.Value)+') '+tabQuestText.Value);
        Printer.Canvas.Font.Style:=[];
        //�������� ������:
        if tabQuestType.Value=1 then //�����������
        begin
              {��������� ������ �� 4 ��������:}
              for k:=1 to 4 do
              begin
                if ans then
                  if k=1 then ch:=cQSingleChk else ch:=cQSingleEmpty
                else
                  ch:=cQSingleEmpty;
                //������� ������ � ������:
                if (tabQuest.FieldValues['Answer'+inttostr(k)]<>null)and(tabQuest.FieldByName('Answer'+inttostr(k)).Value<>'') then
                  ArrQSingle[k] := ch + tabQuest.FieldByName('Answer'+inttostr(k)).Value;
              end;
              {������������:}
              Mix(ArrQSingle, 10);
              {...����������, ������ �������:}
              for k:=1 to 4 do if ArrQSingle[k]<>'' then Writeln(PrintText, ArrQSingle[k]);
              {... � ������� ������:}
              for k:=1 to 4 do ArrQSingle[k]:='';
        end
        else
        begin //�������������
          tabQuest2.First;
          while not tabQuest2.Eof do
          begin
             if ans then
               if tabQuest2Right.Value=1 then ch:=cQMultPlus else ch:=cQMultMinus
             else
               ch:=cQMultEmpty;
             Writeln(PrintText, ch + tabQuest2Answer.Value);
             tabQuest2.Next;
          end;
        end;
        tabTestVopr.Next;
     end;
     System.Close(PrintText);

     tabTest.Close;
     tabTestVopr.Close;
     tabQuest.Close;
     tabQuest2.Close;
end;

{--------------------------------------------------}
{--- ������ �������� � ��������� ���� � ���� 'd:\tb2004\word\Q_A.doc'--------}
{  ExamID: ����� ����                              }
{  ans: ������� ���������� ��������� (���������)   }
{--------------------------------------------------}
procedure TPrintModule.FileExam(ExamID: integer; ans: boolean);
Var  PrintText: System.Text;
     k,i: integer;
     ch: string;
     ArrQSingle: array [1..4] of string;

    MsWord:TWordApplication;
    FileName:OleVariant;
    Param,ReadOnly:OleVariant;
begin
     tabExam.Open;
     tabQuest.Open;
     tabQuest2.Open;
     tabExam.Filter:='ID='+IntToStr(ExamID);
     tabExam.Filtered:=true;
     tabQuest.Filter:='ExamID='+IntToStr(ExamID);
     tabQuest.Filtered:=true;
     i:=0;

     {�����: }
     AssignFile(PrintText, 'd:\tb2004\word\Q_A.doc');
     Rewrite(PrintText);
     Writeln(PrintText, '');
     Writeln(PrintText, '������ ������ �� ��� '+tabExamName.Value+'                      ('+DateToStr(Now)+')');
     Writeln(PrintText, '________________________________________');
     Writeln(PrintText, '');
     tabQuest.First;
     while not tabQuest.Eof do
     begin
           inc(i);
           Writeln(PrintText, '');
           {�������� ������� ������:}
           Writeln(PrintText, IntToStr(i)+') '+tabQuestText.Value);
           {�������� ������:}
           if tabQuestType.Value=1 then //�����������
           begin
              {��������� ������ �� 4 ��������:}
              for k:=1 to 4 do
              begin
                if ans then
                  if k=1 then ch:=cQSingleChk else ch:=cQSingleEmpty
                else
                  ch:=cQSingleEmpty;
                //������� ������ � ������:         ibqOldData.FieldValues['Value']=null
                if (tabQuest.FieldValues['Answer'+inttostr(k)]<>null)and(tabQuest.FieldByName('Answer'+inttostr(k)).Value<>'') then
                  ArrQSingle[k] := ch + tabQuest.FieldByName('Answer'+inttostr(k)).Value;
              end;
              {������������:}
//              Mix(ArrQSingle, 10);
              {...����������, ������ �������:}
              for k:=1 to 4 do if ArrQSingle[k]<>'' then Writeln(PrintText, ArrQSingle[k]);
              {... � ������� ������:}
              for k:=1 to 4 do ArrQSingle[k]:='';
           end
           else
           begin //�������������
              tabQuest2.First;
              while not tabQuest2.Eof do
              begin
                 if ans then
                   if tabQuest2Right.Value=1 then ch:=cQMultPlus else ch:=cQMultMinus
                 else
                   ch:=cQMultEmpty;
                 Writeln(PrintText, ch + tabQuest2Answer.Value);
                 tabQuest2.Next;
              end;
           end;
           {-- ������ ��������� --}
           WriteLN(PrintText, '');
           tabQuest.Next;
     end; {while}

  System.Close(PrintText);
  MsWord:=TWordApplication.Create(Self);
  FileName:='d:\tb2004\word\Q_A.doc';
  ReadOnly:=False;
  MsWord.Documents.Add(FileName,ReadOnly,Param,Param);
  MsWord.Visible:=true;
     tabQuest.Close;
     tabQuest2.Close;
     tabExam.Close;
end;

{--------------------------------------------------}
{-------- ������ �������� � ��������� ���� � Word--}
{  ExamID: ����� ����                              }
{  ans: ������� ���������� ��������� (���������)   }
{--------------------------------------------------}
procedure TPrintModule.ExamWord(ExamID: integer; ans: boolean);
  Var
     k,i: integer;
     ch: string;
     ArrQSingle: array [1..4] of string;
     MSWord: Variant;
begin
     tabExam.Open;
     tabQuest.Open;
     tabQuest2.Open;
     tabExam.Filter:='ID='+IntToStr(ExamID);
     tabExam.Filtered:=true;
     tabQuest.Filter:='ExamID='+IntToStr(ExamID);
     tabQuest.Filtered:=true;
     i:=0;

     {�����: }
     MsWord := CreateOleObject('Word.Application');
     MSWord.Documents.Add;
     MSWord.Selection.Font.Bold := true; //������� ������
     MSWord.Selection.Font.Size := 12;
     MsWord.Selection.TypeText('������ ������ �� ��� '+tabExamName.Value+'            ('+DateToStr(Now)+')');
     MSWord.Selection.TypeText(#13#10); //������� ������
     MsWord.Selection.TypeText('________________________________________');
     MSWord.Selection.Font.Bold := false; //�� ������� ������
     MSWord.Selection.Font.Size := 10;
     MSWord.Selection.TypeText(#13#10); //������� ������
     tabQuest.First;
     while not tabQuest.Eof do
     begin
           inc(i);
           MSWord.Selection.TypeText(#13#10); //������� ������
           {�������� ������� ������:}
           MSWord.Selection.Font.Bold := true; //������� ������
           MsWord.Selection.TypeText(IntToStr(i)+') '+tabQuestText.Value);
           MSWord.Selection.Font.Bold := false; //�� ������� ������

           {�������� ������:}
           if tabQuestType.Value=1 then //�����������
           begin
              {��������� ������ �� 4 ��������:}
              for k:=1 to 4 do
              begin
                if ans then
                  if k=1 then ch:=cQSingleChk else ch:=cQSingleEmpty
                else
                  ch:=cQSingleEmpty;
                //������� ������ � ������:         ibqOldData.FieldValues['Value']=null
                if (tabQuest.FieldValues['Answer'+inttostr(k)]<>null)and(tabQuest.FieldByName('Answer'+inttostr(k)).Value<>'') then
                  ArrQSingle[k] := ch + tabQuest.FieldByName('Answer'+inttostr(k)).Value;
              end;
              {������������:}
//              Mix(ArrQSingle, 10);
              {...����������, ������ �������:}
              for k:=1 to 4 do if ArrQSingle[k]<>''
                then
                  begin
                    MSWord.Selection.TypeText(#13#10); //������� ������
                    MsWord.Selection.TypeText(ArrQSingle[k]);
                  end;
              {... � ������� ������:}
              for k:=1 to 4
                do ArrQSingle[k]:='';
           end
           else
           begin //�������������
              tabQuest2.First;
              while not tabQuest2.Eof do
              begin
                 if ans then
                   if tabQuest2Right.Value=1 then ch:=cQMultPlus else ch:=cQMultMinus
                 else
                   ch:=cQMultEmpty;
                 MSWord.Selection.TypeText(#13#10); //������� ������
                 MsWord.Selection.TypeText(ch + tabQuest2Answer.Value);
                 tabQuest2.Next;
              end;
           end;

           {�������� �������� ������������ ����������:}
           MSWord.Selection.TypeText(#13#10); //������� ������
           MSWord.Selection.Font.Italic := true; //������
//           MSWord.Selection.Font.Bold := true; //������� ������
           MsWord.Selection.TypeText(tabQuestnormdoc.Value);
           MSWord.Selection.Font.Italic := false; //������
//           MSWord.Selection.Font.Bold := false; //�� ������� ������

           {-- ������ ��������� --}
           MSWord.Selection.TypeText(#13#10); //������� ������
           tabQuest.Next;
     end; {while}
     MsWord.Visible:=true;
     tabQuest.Close;
     tabQuest2.Close;
     tabExam.Close;
end;

{--------------------------------------------------}
{------------ � Word ���������� ������ ------------}
{  TestID: ����� ������,                           }
{  Name, Date: ��� �����-���� � ���� ��������,     }
{  ans: ������� ���������� ��������� (���������)   }
{--------------------------------------------------}
procedure TPrintModule.wordTest(TestID: integer; Name, Date: string; ans: boolean);
var
     MSWord: Variant;
     k: integer;
     ch: string;
     ArrQSingle: array [1..4] of string;
begin
     tabTest.Open;
     tabTestVopr.Open;
     tabQuest.Open;
     tabQuest2.Open;
     tabTest.Filter:='ID='+IntToStr(TestID);
     tabTest.Filtered:=true;
     MsWord := CreateOleObject('Word.Application');
     MSWord.Documents.Add;
     {�����: }
     MSWord.Selection.Font.Bold := true; //������� ������
     MSWord.Selection.Font.Size := 12;
     MsWord.Selection.TypeText('��������������: '+Name);
     MSWord.Selection.TypeText(#13#10); //������� ������
     MsWord.Selection.TypeText('���� ��������: '+Date);
     MSWord.Selection.TypeText(#13#10); //������� ������
     MSWord.Selection.TypeText(#13#10); //������� ������
     MSWord.Selection.Font.Bold := false; //�� ������� ������
     MSWord.Selection.Font.Italic := true; //������
     MSWord.Selection.TypeText('���������� ��� ���� ��������:');
     MSWord.Selection.TypeText(#13#10); //������� ������
     MSWord.Selection.TypeText('( ) - �������� ������������ ������ �������');
     MSWord.Selection.TypeText(#13#10); //������� ������
     MSWord.Selection.TypeText('< > - �������� ��� ���������� ������');
     MSWord.Selection.TypeText(#13#10); //������� ������
     MSWord.Selection.Font.Italic := false; //������ ����
     MSWord.Selection.Font.Size := 10;
     tabTestVopr.Filter:='IDTEST='+tabTestID.AsString;
     tabTestVopr.First;
     while not tabTestVopr.Eof do
     begin
        MSWord.Selection.TypeText(#13#10); //������� ������
        tabQuest.Filter:='ID='+tabTestVoprIDQuest.AsString; // - ���� �������� �������
        //�������� ������:
        MSWord.Selection.Font.Bold := true; //������� ������
        MSWord.Selection.TypeText(IntToStr(tabTestVoprNum.Value)+') '+tabQuestText.Value);
        MSWord.Selection.Font.Bold := false; //�� ������� ������
        //�������� ������:
        if tabQuestType.Value=1 then //�����������
        begin
              {��������� ������ �� 4 ��������:}
              for k:=1 to 4 do
              begin
                if ans then
                  if k=1 then ch:=cQSingleChk else ch:=cQSingleEmpty
                else
                  ch:=cQSingleEmpty;
                //������� ������ � ������:
                if (tabQuest.FieldValues['Answer'+inttostr(k)]<>null)and(tabQuest.FieldByName('Answer'+inttostr(k)).Value<>'') then
                  ArrQSingle[k] := ch + tabQuest.FieldByName('Answer'+inttostr(k)).Value;
              end;
              {������������:}
              Mix(ArrQSingle, 10);
              {...����������, ������ �������:}
              for k:=1 to 4 do if ArrQSingle[k]<>''
               then
                begin
                  MSWord.Selection.TypeText(#13#10); //������� ������
                  MSWord.Selection.TypeText(ArrQSingle[k]);
                end;
              {... � ������� ������:}
              for k:=1 to 4 do ArrQSingle[k]:='';
        end
        else
        begin //�������������
          tabQuest2.First;
          while not tabQuest2.Eof do
          begin
             if ans then
               if tabQuest2Right.Value=1 then ch:=cQMultPlus else ch:=cQMultMinus
             else
               ch:=cQMultEmpty;
             MSWord.Selection.TypeText(#13#10); //������� ������
             MSWord.Selection.TypeText(ch + tabQuest2Answer.Value);
             tabQuest2.Next;
          end;
        end;
        MSWord.Selection.TypeText(#13#10); //������� ������
        tabTestVopr.Next;
     end;
     MsWord.Visible:=true;
     tabTest.Close;
     tabTestVopr.Close;
     tabQuest.Close;
     tabQuest2.Close;
end;

{--------------------------------------------------}
{------------ � Word ���������� ������ ------------}
{------------ ��� ������� -------------------------}
{  TestID: ����� ������,                           }
{  Name, Date: ��� �����-���� � ���� ��������,     }
{  ans: ������� ���������� ��������� (���������)   }
{--------------------------------------------------}
procedure TPrintModule.wordTestNotAnsw(TestID: integer; Name, Date: string; ans: boolean);
var
     MSWord: Variant;
begin
     tabTest.Open;
     tabTestVopr.Open;
     tabQuest.Open;
     tabTest.Filter:='ID='+IntToStr(TestID);
     tabTest.Filtered:=true;
     MsWord := CreateOleObject('Word.Application');
     MSWord.Documents.Add;
     {�����: }
     MSWord.Selection.Font.Bold := true; //������� ������
     MSWord.Selection.Font.Size := 12;
     MsWord.Selection.TypeText('����� �: '+tabTestNAME.AsString);
     MSWord.Selection.TypeText(#13#10); //������� ������
     MSWord.Selection.TypeText(#13#10); //������� ������
     MSWord.Selection.Font.Bold := false; //�� ������� ������
     tabTestVopr.Filter:='IDTEST='+tabTestID.AsString;
     tabTestVopr.First;
     while not tabTestVopr.Eof do
     begin
        MSWord.Selection.TypeText(#13#10); //������� ������
        tabQuest.Filter:='ID='+tabTestVoprIDQuest.AsString; // - ���� �������� �������
        //�������� ������:
        MSWord.Selection.TypeText(IntToStr(tabTestVoprNum.Value)+') '+tabQuestText.Value);
        MSWord.Selection.TypeText(#13#10); //������� ������
        tabTestVopr.Next;
     end;
     MsWord.Visible:=true;
     tabTest.Close;
     tabTestVopr.Close;
     tabQuest.Close;
end;

end.
