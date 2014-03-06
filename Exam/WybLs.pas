unit WybLs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Grids, DBGrids, DBCtrls, Proc, MyData, Buttons,
  ExtCtrls, jpeg;

type
  TFrmWybLs = class(TForm)
    DBGrid1: TDBGrid;
    SrcSpis: TDataSource;
    btnOK: TBitBtn;
    TblDolg: TTable;
    TblDolgNum: TAutoIncField;
    TblDolgNaim: TStringField;
    TblDolgMinRazr: TSmallintField;
    TblDolgMaxRazr: TSmallintField;
    TblDolgPrikaz: TStringField;
    TblDolgKolNorm: TSmallintField;
    TblDolgKolShtat: TSmallintField;
    TblDolgTipDolg: TStringField;
    TblDolgNightWork: TStringField;
    TblDolgKodPodr: TSmallintField;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    CmbPodr: TComboBox;
    Image1: TImage;
    DataSource1: TDataSource;
    tabPodr: TTable;
    tabPodrID: TAutoIncField;
    tabPodrName: TStringField;
    TbLSpis: TQuery;
    TbLSpisTabNum: TIntegerField;
    TbLSpisNameF: TStringField;
    TbLSpisKodPodr: TSmallintField;
    TbLSpisNameIO: TStringField;
    TbLSpisBorn: TStringField;
    TbLSpisKodDolz: TSmallintField;
    TbLSpisKodDolzDop: TSmallintField;
    TbLSpisGrup: TSmallintField;
    TbLSpisDolzCalc: TStringField;
    TbLSpisGrupDop: TStringField;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure CmbPodrChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    NN:array[1..100]of integer;
  public
    { Public declarations }
    Grup: integer;
    TabNum,KodPodr,KodDolz,KodDolzDop:integer;
    NameF,NameIO,DolzCalc,Podr,Born:st40;
  end;

var
  FrmWybLs: TFrmWybLs;

implementation

uses card;

{$R *.DFM}

procedure TFrmWybLs.FormCreate(Sender: TObject);
var i:integer;
begin
   ZapolnPodr(CmbPodr);
   CmbPodr.ItemIndex:=NumPodrWybLS;
   CmbPodrChange(Sender);
end;

procedure TFrmWybLs.CmbPodrChange(Sender: TObject);
begin
   TblSpis.SQL.Clear;
   TblSpis.SQL.Add('Select * from LS where ');
   TblSpis.SQL.Add('KodPodr='+IntToStr(KodPodrArr[CmbPodr.ItemIndex+1]));
   //TblSpis.SQL.Add('and GrupDop like"%'+IntToStr(IDKatExam)+'#'+'%"');
	TblSpis.Open;
   Memo1.Text := TbLSpis.SQL.Text;
   tblDolg.Filter:='KodPodr='+IntToStr(KodPodrArr[CmbPodr.ItemIndex+1]);
end;

procedure TFrmWybLs.btnOKClick(Sender: TObject);
var s: string;
begin
  s:=copy(CmbPodr.Text,1,3);
  tabPodr.Open;
  tabPodr.Filter:='Name='''+s+'''';
  frmCard.PodrID:=tabPodrID.Value;
  tabPodr.Close;

  Grup:=tblSpisGrup.Value;
  TabNum:=TblSpisTabNum.Value;   frmCard.exTabNum:=tabNum;
  ExamTabNum:=TblSpisTabNum.Value;
  NameF:=TblSpisNameF.Value;      //Фамилиё - NameF
  NameIO:=TblSpisNameIO.Value;    //Имя, Отчество - NameIO
   frmCard.FIO:=NameF+' '+NameIO;
  KodPodr:=TblSpisKodPodr.Value; frmCard.exKodPodr:=KodPodr;
  KodDolz:=TblSpisKodDolz.Value; frmCard.exKodDolg:=KodDolz;
  KodDolzDop:=TblSpisKodDolzDop.Value;
  DolzCalc:=TblSpisDolzCalc.Value;  //Должность
  Born:=TblSpisBorn.Value;
  Podr:=CmbPodr.Text;
  TblSpis.Active:=false;
  TblDolg.Active:=false;
  Hide;
  NumPodrWybLS:=CmbPodr.ItemIndex;
end;

procedure TFrmWybLs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TblSpis.Active:=false;
end;


procedure TFrmWybLs.BitBtn2Click(Sender: TObject);
begin
  TabNum:=0;
  Hide;
end;

procedure TFrmWybLs.Query1CalcFields(DataSet: TDataSet);
begin
   TblSpisDolzCalc.Value:= WhatDolz(TblSpisKodDolzDop.Value,TblSpisKodDolz.Value);
end;

end.
