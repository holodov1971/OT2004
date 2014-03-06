unit ProvTB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, Buttons,Printers,Format, DateUtils,
  procprin, ExtCtrls, MyData, Proc, DBGridEh, PrnDbgeh, ComCtrls;


type
  TfrmProvTB = class(TForm)
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
    Bevel3: TBevel;
    Bevel2: TBevel;
    grdData: TDBGridEh;
    tabLS: TTable;
    dsLS: TDataSource;
    tabLSNameF: TStringField;
    tabLSTabNum: TSmallintField;
    tabLSKodPodr: TSmallintField;
    tabLSNameIO: TStringField;
    tabLSKodDolz: TSmallintField;
    tabLSKodDolzDop: TSmallintField;
    tabLSGrup: TSmallintField;
    tabLSDateTB: TStringField;
    tabLSNextTB: TStringField;
    tabLSNextTBMes: TSmallintField;
    tabLSNextTBGod: TSmallintField;
    tabLSNextTBKolDnej: TIntegerField;
    tabLSPodrCalc: TStringField;
    tabLSDolzCalc: TStringField;
    tabLSFIOCalc: TStringField;
    SrcLS: TDataSource;
    tabLSStazDolz: TStringField;
    tabLSDataKomisTB: TDateField;
    PrintEH: TPrintDBGridEh;
    RichEdit1: TRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CmbPodrChange(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBPrintClick(Sender: TObject);
    procedure grdDataTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure tabLSCalcFields(DataSet: TDataSet);
    procedure tabLSDateTBChange(Sender: TField);
    procedure tabLSNextTBChange(Sender: TField);
  private
    { Private declarations }
     Year1:word;
     procedure NewFilter;
  public
    { Public declarations }
  end;

const
  filterAnd=' and ';
  monarr:array [1..12] of integer=(31,28,31,30,31,30,31,31,30,31,30,31);
  {      дней в мес€цах:         €н фв мр ап мй ин ил ав сн ок нб дк}

var
  frmProvTB: TfrmProvTB;
  filter1, filter2: string;
  PrintQuery: TQuery;
  RabStr:Pointer;
  SOsn:string;
var Year1, Month1, Today1: Word;

implementation

uses MainOT;

{$R *.DFM}

procedure TfrmProvTB.FormCreate(Sender: TObject);
begin
   ZapolnPodr(CmbPodr);
   CmbPodr.ItemIndex:=0;
   CmbPodrChange(Sender);
   if SortBy=[byName] then
   begin
     grdData.Columns[1].Title.SortMarker:=smDownEH;
     tabLS.IndexName:='i1';
   end
    else
   begin
     grdData.Columns[2].Title.SortMarker:=smDownEH;
     tabLS.IndexName:='i2';
   end;
   tabLS.Open;
   NewFilter;
end;

procedure TfrmProvTB.SpeedButton1Click(Sender: TObject);
begin
   close;
end;

function MyDateToStr(d:TDateTime):string;
begin
   if d=0 then Result:='' else
   begin
      Result:=DateToStr(d);
      if Length(Result)<10 then if Copy(Result,7,2)<'22' then Insert('20',Result,7) else Insert('19',Result,7)
   end;
end;

procedure TfrmProvTB.NewFilter;
var s: string;
    Kol:longInt;
    i:word;
    NewDate:TdateTime;
begin
  SOsn:='';
  if SpeedButton9.Down //podr
  then SOsn:='(KodPodr='+IntToStr(KodPodrArr[CmbPodr.ItemIndex+1])+')';
  Year1:=YearOf(Date)-1;
  NewDate:=IncYear(Date,-1);
  if BtnAll.Down then  s:='' {показывать все деты} else
  begin
     if btnCurmonth.Down then {следующий мес€ц}
     begin
        i:=MonthOf(Date);   Inc(i);
        if i=13 then begin i:=1; Inc(Year1) end;
        s:='((DataKomisTB<='''+DateToStr(Encodedate(Year1,i,monArr[i]))+''')and(DataKomisTB>='''+DateToStr(Encodedate(Year1,i,1))+'''))'
     end else
     if btnMonthLess.Down then {меньше мес€ца}
        s:='((DataKomisTB<='''+DateToStr(NewDate)+''')and(DataKomisTB>='''+DateToStr(NewDate-30)+'''))' else
     if SpeedButton7.Down then {просрочены}
        s:='(DataKomisTB<='''+DateToStr(NewDate)+''')';
  end;
  if s<>'' then
  if SOsn<>'' then sOsn:=SOsn+'and'+s else SOsn:=s;
  tabLS.Filter:=sOsn;
end;

procedure TfrmProvTB.CmbPodrChange(Sender: TObject);
begin
    NewFilter;
end;

procedure TfrmProvTB.SpeedButton8Click(Sender: TObject);
begin
   if SpeedButton8.Down then CmbPodr.Visible:=false else CmbPodr.Visible:=true;
   NewFilter;
end;

procedure TfrmProvTB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tabLS.Close;
end;

{============================== печать ========================================}

procedure TfrmProvTB.SBPrintClick(Sender: TObject);
var Title:string;
begin
   if btnCurMonth.Down then Title:=Label1.Caption+' на '+NameMes[MonthOf(Date)+1]+' '+IntToStr(Year1) else
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
   GrdData.Font.Style:=[];
   PrintEh.Preview;
   GrdData.Font.Style:=[fsBold];
end;

procedure TfrmProvTB.grdDataTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
   Column.Title.SortMarker:=smUpEH;
   if Column.Index=1
    then
   begin sortby:=[byName]; tabLS.IndexName:='i1'; end
    else
   begin sortby:=[byPost]; tabLS.IndexName:='i2'; end;
   NewFilter;
end;

procedure TfrmProvTB.tabLSCalcFields(DataSet: TDataSet);
begin
    tabLSPodrCalc.Value:=WhatPodr(tabLSKodPodr.Value);
    tabLSDolzCalc.Value:=WhatDolz(tabLSKodDolzDop.Value, tabLSKodDolz.Value);
    tabLSFIOCalc.Value:=tabLSNameF.Value+' '+tabLSNameIO.Value;
end;

procedure TfrmProvTB.tabLSDateTBChange(Sender: TField);
var Year, Month, Day: Word;
    D:TDateTime;
begin
   if tabLSDateTB.Value<>'' then
   begin
      Decodedate(StrToDate(tabLSDateTB.Value),Year,Month,Day); {раскодировали дату последнего ћќ}
      inc(Year);
      tabLSNextTBMes.Value:=Month;
      tabLSNextTBGod.Value:=Year;
      D:=EncodeDate(Year,Month,Day); {закодировали в NextTB}
      tabLSNextTBKolDnej.Value:=KolDnej(D);
      tabLSNextTB.Value:=MyDateToStr(D) {закодировали в NextTB}
   end else
   begin
      tabLSNextTB.AsString:='';
      tabLSNextTBMes.AsString:='';
      tabLSNextTBGod.AsString:='';
      tabLSNextTBKolDnej.AsString:='';
   end;
end;

procedure TfrmProvTB.tabLSNextTBChange(Sender: TField);
var yy, mm, dd: word;
begin
   if tabLSNextTB.Value<>'' then
   begin
      Decodedate(StrToDate(tabLSNextTB.Value),YY, MM, DD); {раскодировали дату последнего ћќ}
      tabLSNextTBMes.Value:=MM;
      tabLSNextTBGod.Value:=YY;
      tabLSNextTBKolDnej.Value:=KolDnej(EncodeDate(YY, MM, DD));
   end else
   begin
      tabLSNextTBMes.AsString:='';
      tabLSNextTBGod.AsString:='';
      tabLSNextTBKolDnej.AsString:='';
   end;
end;

end.
