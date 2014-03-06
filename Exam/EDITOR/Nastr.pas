unit Nastr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, IniFiles, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Proc, MyData, Mask, Grids, DBGridEh, DB,
    DBTables, DBCtrlsEh, DBLookupEh, DBCtrls, DBGrids, IBCustomDataSet,
  IBQuery, DM, IBTable, IBUpdateSQL, GridsEh;

type
  TFrmNastr = class(TForm)
    Panel1: TPanel;
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    Bevel1: TBevel;
    Bevel2: TBevel;
    QryKAT: TIBQuery;
    QryKATID: TIntegerField;
    QryKATNAME: TIBStringField;
    QryKATPRIM: TIBStringField;
    dsKat: TDataSource;
    grdExam: TDBGridEh;
    QryVID: TIBQuery;
    QryVIDID: TIntegerField;
    QryVIDIDKAT: TIntegerField;
    QryVIDNAME: TIBStringField;
    QryVIDPERIOD: TIntegerField;
    QryVIDPASS: TIBStringField;
    QryVIDKOLNEOTV: TIntegerField;
    QryVIDPOKAZOTV: TIntegerField;
    QryVIDSOOBOTV: TIntegerField;
    QryVIDTIMEEXAM: TTimeField;
    DSVid: TDataSource;
    DBGridEh1: TDBGridEh;
    TblExam: TIBTable;
    TblExamID: TIntegerField;
    TblExamNAME: TIBStringField;
    DSExam: TDataSource;
    QryWybTem: TIBQuery;
    QryWybTemlookExam: TStringField;
    QryWybTemID: TIntegerField;
    QryWybTemIDKAT: TIntegerField;
    QryWybTemIDVID: TIntegerField;
    QryWybTemIDEXAM: TIntegerField;
    QryWybTemKOLVOPR: TIntegerField;
    DSWybTem: TDataSource;
    grdRndSeed: TDBGridEh;
    PnlNastr: TPanel;
    Label10: TLabel;
    ChBoxSoob: TCheckBox;
    ChBoxPokaz: TCheckBox;
    Panel2: TPanel;
    IBTable1: TIBTable;
    IBTable1ID: TIntegerField;
    IBTable1IDKAT: TIntegerField;
    DBText1: TDBText;
    Label11: TLabel;
    DBText2: TDBText;
    Label9: TLabel;
    DBText3: TDBText;
    Label8: TLabel;
    DBText4: TDBText;
    RG1: TRadioGroup;
    IBUpdateSQL1: TIBUpdateSQL;
    RadioGroup1: TRadioGroup;
    procedure QryKATAfterScroll(DataSet: TDataSet);
    procedure QryVIDAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ChBoxSoobClick(Sender: TObject);
    procedure ChBoxPokazClick(Sender: TObject);
    procedure QryVIDNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    IniFile:TIniFile;
    Vyhod:boolean;
    procedure NewFilter;
  public
    { Public declarations }
  end;

var
  FrmNastr: TFrmNastr;

implementation

uses card;
{$R *.DFM}

procedure TFrmNastr.NewFilter;
begin
   Panel2.Caption:=QryVidName.Value+' (кат. '+QryKatName.Value+')';
end;

procedure TFrmNastr.QryKATAfterScroll(DataSet: TDataSet);
begin
   if not Vyhod then
   begin
      QryVID.SQL.Clear;
      QryVID.SQL.Add('select * from VIDE where IDKAT='+IntToStr(QryKatID.Value)+' order by ID');
      QryVID.Open;
      NewFilter;
   end;
end;

procedure TFrmNastr.QryVIDAfterScroll(DataSet: TDataSet);
begin
  if not Vyhod then
  begin
   ChBoxSoob.Checked:=QryVidSOOBOTV.Value=1;
   ChBoxPokaz.Checked:=QryVidPokazOTV.Value=1;
   QryWybTem.SQL.Clear;
   QryWybTem.SQL.Add('Select * from VYBORTEM where IDKAT='+IntTOStr(QryKatID.Value));
   QryWybTem.SQL.Add('and IDVID='+IntTOStr(QryVidID.Value));
   QryWybTem.Open;
   NewFilter;
  end;
end;

procedure TFrmNastr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Vyhod:=true;
 QryKat.Active:=false;
 QryVid.Active:=false;
 QryWybTem.Active:=false;
end;

procedure TFrmNastr.OKBtnClick(Sender: TObject);
var RabStr:Pointer;
    i:integer;
begin
   Vyhod:=true;
   if QryVid.Modified then QryVid.Post;
   QryVid.ApplyUpdates;
   frmCard.tabVid.Close;
   frmCard.tabVid.Open;
   IniFile:=TIniFile.Create(DataPath+'\Exam.ini');
   IniFile.WriteInteger('Main', 'ID', QryVidID.Value);
   IDVidExam:=QryVidID.Value;
   frmCard.tabVId.Filter:='ID='+IntToStr(IDVidExam);
   IDKatExam:=QryKatID.Value;
   KolNOtv:=QryVIDKOLNEOTV.Value;
   QryWybTem.DisableControls;
   RabStr:=QryWybTem.GetBookmark;
   i:=0;
   While not QryWybTem.Eof do
   begin
      i:=i+QryWybTemKOLVOPR.Value;
      QryWybTem.Next;
   end;
   KolVopr:=i;
   Mode:=RG1.ItemIndex+1;
   nameExam:=QryKatName.Value+'. '+QryVidName.Value;
   QryWybTem.GotoBookmark(RabStr);
   QryWybTem.EnableControls;
   IniFile.WriteInteger('Main', 'KATE', QryKatID.Value);
   IniFile.WriteInteger('Main', 'KolVopr', KolVopr);
   IniFile.WriteInteger('Main', 'KolNOtv', KolNOtv);
   IniFile.WriteInteger('Main','ModeE',RG1.ItemIndex+1);
   IniFile.WriteString('Main', 'NameEx', QryKatName.Value+'. '+QryVidName.Value);
   IniFile.Free;
end;

procedure TFrmNastr.FormCreate(Sender: TObject);
var i:integer;
begin
   Vyhod:=false;
   IBTable1.Active:=true;
   IBTable1.Filter:='ID='+IntToStr(IDVidExam);
   RG1.ItemIndex:=Mode-1;
   QryVid.Open;
   ChBoxSoob.Checked:=QryVidSOOBOTV.Value=1;
   ChBoxPokaz.Checked:=QryVidPokazOTV.Value=1;
   if IBTable1.RecordCount>0 then
   begin
      i:=IBTable1IDKat.Value;
      QryKat.Open;
      While not QryKat.Eof do
         if QryKatID.Value=IDKatExam then Break else QryKat.Next;
      While not QryVid.Eof do
         if QryVidID.Value=IDVidExam then Break else QryVid.Next;
   end;
  IBTable1.Active:=false;
end;

procedure TFrmNastr.ChBoxSoobClick(Sender: TObject);
begin
  if not Vyhod then
  begin
   QryVID.Edit;
   if ChBoxSoob.Checked then
      QryVidSOOBOTV.Value:=1 else QryVidSOOBOTV.Value:=0;
   QryVID.Post;
  end;
end;

procedure TFrmNastr.ChBoxPokazClick(Sender: TObject);
begin
  if not Vyhod then
  begin
   QryVID.Edit;
   if ChBoxPokaz.Checked then
      QryVidPokazOTV.Value:=1 else QryVidPokazOTV.Value:=0;
   QryVID.Post;
  end;
end;

procedure TFrmNastr.QryVIDNewRecord(DataSet: TDataSet);
begin
//  20140227 Kholodov
  QryVIDIDKAT.Value:=QryKATID.Value;
end;

end.
