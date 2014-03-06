unit Medosv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, Buttons,Printers,Format,
  procprin, ExtCtrls, MyData, Proc, MyDate, PrnDbgeh, DBGridEh,
  ComCtrls;


type
  TFrmMedosv = class(TForm)
    SrcLS: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    btnCurMonth: TSpeedButton;
    btnMonthLess: TSpeedButton;
    btnAll: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SBPrint: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    CmbPodr: TComboBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    TblDolzMO: TTable;
    TblDolzMONumDolz: TSmallintField;
    TblDolzMODoLet: TSmallintField;
    TblDolzMOPeriodMOGG: TSmallintField;
    TblDolzMOPeriodMOMM: TSmallintField;
    TblPrikMO: TTable;
    TblPrikMONum: TSmallintField;
    TblPrikMONamePrik: TStringField;
    grdData: TDBGridEh;
    PrintEH: TPrintDBGridEh;
    RichEdit1: TRichEdit;
    Bevel3: TBevel;
    tabLS: TTable;
    tabLSNameF: TStringField;
    tabLSTabNum: TAutoIncField;
    tabLSKodPodr: TSmallintField;
    tabLSNameIO: TStringField;
    tabLSBorn: TStringField;
    tabLSKodDolz: TSmallintField;
    tabLSKodDolzDop: TSmallintField;
    tabLSDateMO: TStringField;
    tabLSNextMO: TStringField;
    tabLSNextMOMes: TSmallintField;
    tabLSNextMOGod: TSmallintField;
    tabLSNextMOKolDnej: TIntegerField;
    tabLSPodrCalc: TStringField;
    tabLSDolzCalc: TStringField;
    tabLSFIOCalc: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SBPrintClick(Sender: TObject);
    procedure CmbPodrChange(Sender: TObject);
    procedure tabLSDateMOChange(Sender: TField);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tabLSNextMOChange(Sender: TField);
    procedure grdDataTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure tabLSCalcFields(DataSet: TDataSet);
    procedure tabLSNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
     procedure NewFilter;
     procedure WhatMMGGMO(KodDolz:integer;var MM,GG:integer);
  public
    { Public declarations }
  end;
const
  filterAnd=' and ';
  monarr:array [1..12] of integer=(31,28,31,30,31,30,31,31,30,31,30,31);
  {      дней в мес€цах:         €н фв мр ап мй ин ил ав сн ок нб дк}

var
  FrmMedosv: TFrmMedosv;
  filter1, filter2: string;
  PrintQuery: TQuery;
  RabStr:Pointer;
  Year1, Month1, Today1: Word;

implementation

{$R *.DFM}

procedure TFrmMedosv.FormCreate(Sender: TObject);
begin
   if SortBy=[byName] then grdData.Columns[1].Title.SortMarker:=smDownEH
                      else grdData.Columns[3].Title.SortMarker:=smDownEH;
   tblDolzMO.Active:=true;
   tblPrikMO.Active:=true;
   tabLS.Open;
   tblPrikMO.Active:=false;

   ZapolnPodr(CmbPodr);
   CmbPodr.ItemIndex:=0;
   CmbPodrChange(Sender);
   NewFilter;
end;

procedure TFrmMedosv.SpeedButton1Click(Sender: TObject);
begin
   TblPrikMo.Active:=false;
   TblDolzMo.Active:=false;
   Close;
end;

procedure TFrmMedosv.WhatMMGGMO(KodDolz:integer;var MM,GG:integer);
var Arr,ArrMM,ArrGG:array[0..10]of integer;
    i,j:integer;
    s:TDateTime;
    AgeYear,AgeMonth,AgeDay: Integer;
begin
     {таблица ƒолжностей:}
     tblDolzMO.Filter:='NumDolz='+IntToStr(KodDolz); {находим нужную ƒолжность}
     MM:=0; GG:=0;
     if tblDolzMO.RecordCount=1 then
     begin
        GG:=tblDolzMOPeriodMOGG.Value;
        MM:=tblDolzMOPeriodMOMM.Value;
     end else
     if tblDolzMO.RecordCount>1 then
     begin
        tblDolzMO.First;
        i:=0;  Arr[0]:=0;
        While not tblDolzMO.EOF do
        begin
           Inc(i);
           Arr[i]:=tblDolzMODoLet.Value;
           ArrGG[i]:=tblDolzMOPeriodMOGG.Value;
           ArrMM[i]:=tblDolzMOPeriodMOMM.Value;
           tblDolzMO.Next;
        end;
        S:=StrToDate(tabLSBorn.Value);
        if S <> 0 then   MyDate.DateCount(S,AgeYear,AgeMonth,AgeDay) else AgeYear:=0;
        j:=AgeYear;
        if j<>0 then
        for i:=1 to tblDolzMO.RecordCount do
        begin
           if (j>=Arr[i-1])and(j<Arr[i]) then
           begin
              GG:=ArrGG[i];
              MM:=ArrMM[i];
           end;
        end;
     end;
end;

function MyDateToStr(d:TDateTime):string;
begin
   if d=0 then Result:='' else
   begin
      Result:=DateToStr(d);
      if Length(Result)<10 then if Copy(Result,7,2)<'22' then Insert('20',Result,7) else Insert('19',Result,7)
   end;
end;

procedure TFrmMedosv.SpeedButton2Click(Sender: TObject);
begin
   NewFilter;
end;

procedure TFrmMedosv.NewFilter;
var s,SOsn:string;
    Kol:longInt;
begin
  {по подр.}
  if SpeedButton9.Down then  SOsn:='(KodPodr='+IntToStr(KodPodrArr[CmbPodr.ItemIndex+1])+')' else SOsn:='';
  DecodeDate(Date, Year1, Month1, Today1); {извлекаем сегодн€шнее число - Today}
  if BtnAll.Down then  s:=''  else
  begin
     Kol:=KolDnej(Date);
     if btnCurMonth.Down then {текущий мес€ц}
     begin
        Inc(Month1);
        if Month1=13 then begin Month1:=1; Inc(Year1) end;
        s:='((NextMOMes='+IntToStr(Month1)+')and(NextMOGod='+IntToStr(Year1)+'))'
     end else
     if btnMonthLess.Down then {меньше мес€ца}
        s:='((NextMOKolDnej<='+IntToStr(Kol+30)+')and(NextMOKolDnej>='+IntToStr(Kol)+'))' else
     if SpeedButton7.Down then {просрочены}
        s:='(NextMOKolDnej<='+IntToStr(Kol)+')';
  end;
  if s<>'' then
  if sOsn<>'' then sOsn:=SOsn+'and'+s else sOsn:=s;
  tabLS.Filter:=sOsn;
end;


procedure TFrmMedosv.CmbPodrChange(Sender: TObject);
begin
   NewFilter;
end;

procedure TFrmMedosv.tabLSDateMOChange(Sender: TField);
var Year, Month, Day: Word;
    MM,GG:integer;
    D:TDateTime;
begin
   if tabLSDateMO.Value<>'' then
   begin
      WhatMMGGMO(tabLSKodDolz.Value,MM,GG);
      if (GG<>0)or(MM<>0) then
      begin
         Decodedate(StrToDate(tabLSDateMO.Value),Year,Month,Day); {раскодировали дату последнего ћќ}
         inc(Year,GG);
         inc(Month,MM);
         While Month>12 do
         begin
            Dec(Month,12);
            Inc(Year);
         end;
         tabLSNextMOMes.Value:=Month;
         tabLSNextMOGod.Value:=Year;
         D:=EncodeDate(Year,Month,Day); {закодировали в NextMO}
         tabLSNextMOKolDnej.Value:=KolDnej(D);
         tabLSNextMO.Value:=MyDateToStr(D) {закодировали в NextMO}
      end;
   end;
end;

procedure TFrmMedosv.SpeedButton8Click(Sender: TObject);
begin
   if SpeedButton8.Down then CmbPodr.Visible:=false else CmbPodr.Visible:=true;
   NewFilter;
end;

procedure TFrmMedosv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   tblDolzMO.Active:=false;
end;

procedure TFrmMedosv.SBPrintClick(Sender: TObject);
var Title:string;
    i:integer;
begin
   if btnCurMonth.Down then Title:=Label1.Caption+' на '+NameMes[Month1]+' '+IntToStr(Year1) else
   if btnMonthLess.Down then Title:=Label1.Caption+' ('+ btnMonthLess.Caption+')' else
   if SpeedButton7.Down then Title:=Label1.Caption+' ('+ SpeedButton7.Caption+')' else
   Title:=Label1.Caption;
   PrintEh.BeforeGridText.Clear;
   RichEdit1.Clear;
   RichEdit1.Lines.Add(Title);
   if SpeedButton8.Down then RichEdit1.Lines.Add(NameEche) else RichEdit1.Lines.Add(CmbPodr.Text);
   RichEdit1.Lines.Add('');
   RichEdit1.Lines.SaveToFile('1.txt');
   PrintEh.BeforeGridText.LoadFromFile('1.txt');
   i:=GrdData.Font.Size;
   GrdData.Font.Size:=10;
   GrdData.Font.Style:=[];
   PrintEh.Preview;
   GrdData.Font.Size:=i;
   GrdData.Font.Style:=[fsBold];
end;

procedure TFrmMedosv.tabLSNextMOChange(Sender: TField);
var Year, Month, Day: Word;
begin
   if tabLSNextMO.Value<>'' then
   begin
      tabLSNextMOKolDnej.Value:=KolDnej(StrToDate(tabLSNextMO.Value));
      Decodedate(StrToDate(tabLSNextMO.Value),Year,Month,Day);
      tabLSNextMOMes.Value:=Month;
      tabLSNextMOGod.Value:=Year;
   end;
end;

procedure TFrmMedosv.grdDataTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
   Column.Title.SortMarker:=smDownEH;
   if Column.Index=1
    then
   begin sortby:=[byName]; tabLS.IndexName:='i1'; end
    else
   begin sortby:=[byPost]; tabLS.IndexName:='i2'; end;
   NewFilter;
end;

procedure TFrmMedosv.tabLSCalcFields(DataSet: TDataSet);
begin
    tabLSPodrCalc.Value:=WhatPodr(tabLSKodPodr.Value);
    tabLSDolzCalc.Value:=WhatDolz(tabLSKodDolzDop.Value,tabLSKodDolz.Value);
    tabLSFioCalc.Value:=tabLSNameF.Value+' '+tabLSNameIO.Value;
end;

procedure TFrmMedosv.tabLSNewRecord(DataSet: TDataSet);
begin
  tabLS.Cancel;
  
end;

end.
