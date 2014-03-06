unit WybLs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Grids, DBGrids, DBCtrls, Proc, MyData, Buttons,
  ExtCtrls, jpeg, DBGridEh;

type
  TFrmWybLs = class(TForm)
    TbLSpis: TTable;
    SrcSpis: TDataSource;
    TbLSpisTabNum: TSmallintField;
    TbLSpisNameF: TStringField;
    TbLSpisKodPodr: TSmallintField;
    TbLSpisNameIO: TStringField;
    TbLSpisBorn: TStringField;
    TbLSpisKodDolz: TSmallintField;
    TbLSpisRazr: TStringField;
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
    TbLSpisDolzCalc: TStringField;
    TbLSpisKodDolzDop: TSmallintField;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    CmbPodr: TComboBox;
    Image1: TImage;
    TbLSpisUvol: TStringField;
    TbLSpisGrup: TSmallintField;
    TbLSpiscalcFIO: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure CmbPodrChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure TbLSpisCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TabNum,KodPodr,KodDolz,KodDolzDop, Grup:integer;
    NameF,NameIO,DolzCalc,Podr,Born:st40;
  end;

var
  FrmWybLs: TFrmWybLs;

implementation

{$R *.DFM}

procedure TFrmWybLs.FormCreate(Sender: TObject);
begin
   ZapolnPodr(CmbPodr);
   CmbPodr.ItemIndex:=WybLSPodr;
   TblSpis.Active:=true;
   CmbPodrChange(Sender);
end;

procedure TFrmWybLs.CmbPodrChange(Sender: TObject);
begin
   TblSpis.Filter:='(Uvol<>''*'')and(KodPodr='+IntToStr(KodPodrArr[CmbPodr.ItemIndex+1])+')';
   tblDolg.Filter:='KodPodr='+IntToStr(KodPodrArr[CmbPodr.ItemIndex+1]);
end;

procedure TFrmWybLs.btnOKClick(Sender: TObject);
begin
  TabNum:=TblSpisTabNum.Value;
  NameF:=TblSpisNameF.Value;
  NameIO:=TblSpisNameIO.Value;
  KodPodr:=TblSpisKodPodr.Value;
  KodDolz:=TblSpisKodDolz.Value;
  KodDolzDop:=TblSpisKodDolzDop.Value;
  DolzCalc:=TblSpisDolzCalc.Value;
  Born:=TblSpisBorn.Value;
  Podr:=CmbPodr.Text;
  TblSpis.Active:=false;
  TblDolg.Active:=false;
  KodKr:=WhatKodKrPodr(Podr);
//  GlPathDius:=RabDisk+'\dius'+KodKr+'\';
  CommonInt[1]:=TblSpisGrup.Value;
  WybLSPodr:=CmbPodr.ItemIndex;
  Hide;
end;

procedure TFrmWybLs.TbLSpisCalcFields(DataSet: TDataSet);
begin
   TblSpisDolzCalc.Value:= WhatDolz(TblSpisKodDolzDop.Value,TblSpisKodDolz.Value);
   tblSpiscalcFIO.Value:=tblSpisNameF.Value+' '+tblSpisNameIO.Value;
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

end.
