unit Ls;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DBTables, DB, Grids, DBGrids, ExtCtrls, Tabs,
  Buttons, StdCtrls, MyData, DBGridEh, PrnDbgeh, Proc, DBCtrls, MyDate;

type
  TfrmLS = class(TForm)
    Bevel1: TBevel;
    bQuit: TSpeedButton;
    bPodr: TSpeedButton;
    bAll: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    TblPerPodr: TTable;
    StringField1: TStringField;
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
    CmbPodr: TComboBox;
    SBprint: TSpeedButton;
    PrintDBGridEh1: TPrintDBGridEh;
    grdData: TDBGridEh;
    Label3: TLabel;
    tabLS: TTable;
    tabLSNameF: TStringField;
    tabLSKodPodr: TSmallintField;
    tabLSNameIO: TStringField;
    tabLSBorn: TStringField;
    tabLSKodDolz: TSmallintField;
    tabLSKodDolzDop: TSmallintField;
    tabLSGrup: TSmallintField;
    tabLSDateMO: TStringField;
    tabLSNextMO: TStringField;
    tabLSNextMOMes: TSmallintField;
    tabLSNextMOGod: TSmallintField;
    tabLSNextMOKolDnej: TIntegerField;
    tabLSDateTB: TStringField;
    tabLSNextTB: TStringField;
    tabLSNextTBMes: TSmallintField;
    tabLSNextTBGod: TSmallintField;
    tabLSNextTBKolDnej: TIntegerField;
    dsLS: TDataSource;
    tabLSlookPodr: TStringField;
    tabLSlookDolg: TStringField;
    DBnav: TDBNavigator;
    TblPerPodrN: TAutoIncField;
    Bevel2: TBevel;
    Bevel3: TBevel;
    tabLSTabNum: TAutoIncField;
    tabLSGrupDop: TStringField;
    tabLSStazDolz: TStringField;
    tabLSDataKomisTB: TDateField;
    tabLSRegion: TStringField;
    TblPerPodrDN: TStringField;
    qryDelete: TQuery;
    tabLSPhone: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure bQuitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CmbPodrChange(Sender: TObject);
    procedure grdDataTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure SBprintClick(Sender: TObject);
    procedure bAllClick(Sender: TObject);
    procedure bPodrClick(Sender: TObject);
    procedure grdPrintedTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure tabLSAfterPost(DataSet: TDataSet);
    procedure tabLSAfterDelete(DataSet: TDataSet);
    procedure tabLSBeforePost(DataSet: TDataSet);
    procedure tabLSNewRecord(DataSet: TDataSet);
    procedure tabLSKodPodrChange(Sender: TField);
    procedure tabLSBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }

   SortCol: integer; // номер столбца, по которому отсортирована таблица
   SortColPrn: integer; // номер столбца, по которому отсортирована таблица печати

  public
    { Public declarations }
    addit: boolean; //использовать дополнит. условие сортировки? (тогда Query будет R/O)
    showuvol: boolean; //признак того, что показывать список уволенных
  end;

var
  frmLS: TfrmLS;
  YesKard: Boolean;
  OldNumPodr:integer;

implementation

{$R *.DFM}

procedure TfrmLS.FormActivate(Sender: TObject);
var s: string;
begin
  grdData.ReadOnly:=false;
  dbnav.Enabled:=true;

  tabLS.Open;

  addit:=true;
  SortCol:=3; // post-sorted by default

  // из Create
  YesKard:=false;
  tblPerPodr.Active:=true;
  TblDolg.Active:=true;
  TblDolzGl.Active:=true;
  ZapolnPodr(CmbPodr);
  CmbPodr.ItemIndex:=0;
  bPodr.Down:=true;
  bPodrClick(Sender);  //resort...
  tabLs.IndexName:='i2';
  s:='KodPodr='+IntToStr(KodPodrArr[CmbPodr.ItemIndex+1]);
  tabLS.Filter:=s;
  tabLS.Filtered:=bPodr.Down;
  SortColPrn:=2; //sort prn by 'dolz'
end;

{========================================================}

procedure TfrmLS.bQuitClick(Sender: TObject);
begin
   Close;
end;
{========================================================}

procedure TfrmLS.FormCreate(Sender: TObject);
var s: string;
begin
(*   tabLs.IndexName:='i2';
   s:='KodPodr='+IntToStr(KodPodrArr[CmbPodr.ItemIndex+1]);
   tabLS.Filter:=s;
   tabLS.Filtered:=bPodr.Down;
   SortColPrn:=2; //sort prn by 'dolz'*)
end;

{========================================================}

procedure TfrmLS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 tblPerPodr.Active:=false;
 TblDolg.Active:=false;
 TblDolzGl.Active:=false;
end;

{========================================================}

procedure TfrmLS.CmbPodrChange(Sender: TObject);
var s: string;
begin
   s:='KodPodr='+IntToStr(KodPodrArr[CmbPodr.ItemIndex+1]);
   tabLS.Filter:=s;
   Label2.Caption:=IntToStr(tabLS.RecordCount)+' чел.';
end;


procedure TfrmLS.grdDataTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
   case ACol of
   1: tabLs.IndexName:='i1';
   4: tabLs.IndexName:='i2';
   end;
   SortCol:=ACol;
   Column.Title.SortMarker:=smDownEh;
end;

procedure TfrmLS.SBprintClick(Sender: TObject);
begin
   PrintDBGridEh1.BeforeGridText.Clear;
   PrintDBGridEh1.BeforeGridText.Add('—писок работников '+CmbPodr.Text+' на '+DateToStr(Date));
   PrintDBGridEh1.Preview;
end;

procedure TfrmLS.bAllClick(Sender: TObject);
begin
   tabLS.Filter:='';
   cmbPodr.Visible:=false;
   Label2.Caption:=IntToStr(tabLS.RecordCount)+' чел.';
end;

procedure TfrmLS.bPodrClick(Sender: TObject);
begin
   tabLS.Filtered:=true;
   cmbPodr.Visible:=true;
   CmbPodrChange(Sender);
end;

procedure TfrmLS.grdPrintedTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
   SortColPrn:=ACol;
   Column.Title.SortMarker:=smUpEh;
end;

procedure TfrmLS.tabLSAfterPost(DataSet: TDataSet);
begin
  Label2.Caption:=IntToStr(tabLS.RecordCount)+' чел.';
end;

procedure TfrmLS.tabLSAfterDelete(DataSet: TDataSet);
begin
   Label2.Caption:=IntToStr(tabLS.RecordCount)+' чел.';
end;

procedure TfrmLS.tabLSBeforePost(DataSet: TDataSet);
var MyStartDate:TDateTime;
    AgeYear,AgeMonth,AgeDay:integer;
begin
   if tabLSTabNum.Value<>0 then
   try
     if MyStartDate <> 0 then
     begin
        MyStartDate:=StrToDate(tabLSBorn.Value);
        MyDate.DateCount(MyStartDate,AgeYear,AgeMonth,AgeDay);
        tabLSBorn.Value:=DateToStr(MyStartDate);
     end;
   except
        if tabLSBorn.AsString<>'' then
        if MessageDlg('Ќеверный формат даты: '+tabLSBorn.Value+#13#10+'ѕример заполнени€: 01.12.1967',
           mtWarning, [mbOK, mbIgnore], 0) = mrOk then Abort;
   end;
end;

procedure TfrmLS.tabLSNewRecord(DataSet: TDataSet);
begin
   TabLSKodPodr.Value:=KodPodrArr[CmbPodr.ItemIndex+1];
end;

procedure TfrmLS.tabLSKodPodrChange(Sender: TField);
begin
  if TblPerPodr.Locate('N',Sender.AsString,[loCaseInsensitive]) Then
   tabLSRegion.AsString:= TblPerPodrDN.AsString;
end;

procedure TfrmLS.tabLSBeforeDelete(DataSet: TDataSet);
begin
  qryDelete.SQL.Text:='delete from Groups_LS where LS_ID='+tabLSTabNum.AsString;
  qryDelete.ExecSQL;
end;

end.
