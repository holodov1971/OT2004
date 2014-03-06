unit Ini;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, MyData, IniFiles, Grids, DBGrids;

type
  TFrmIni = class(TForm)
    tblPerDolgGl: TTable;
    tblPerDolgGlNaim: TStringField;
    tblPerDolgGlNum: TAutoIncField;
    tblPerPodr: TTable;
    tblPerDolgGlNightWork: TStringField;
    tblPerDolgGlKodTipDolg: TSmallintField;
    TblDolzDop: TTable;
    TblDolzDopNum: TSmallintField;
    TblDolzDopDolzDop: TStringField;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    tblPerPodrN: TAutoIncField;
    tblPerPodrVisible: TBooleanField;
    tblPerPodrPodr: TStringField;
    tblPerPodrKodSl: TStringField;
    tblPerPodrNamePodr: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
      procedure IniDolz;
      procedure IniPodr;
      procedure IniDolzDop;
  public
    { Public declarations }
  end;

var
  FrmIni: TFrmIni;

implementation

{$R *.DFM}
procedure TfrmIni.IniPodr;
var i:integer;
begin
  i:=0;
   tblPerPodr.Active:=true;
   While not tblPerPodr.EOF do
   begin
      Inc(i);
      PodrArr[i]:=tblPerPodrPodr.Value;
      KodPodrArr[i]:=tblPerPodrN.Value;
//      if tblPerPodrKodPodr.Value<>'' then ChKodPodrArr[i]:=tblPerPodrKodPodr.Value[1]
//         else ChKodPodrArr[i]:=' ';
      tblPerPodr.Next;
   end;
   tblPerPodr.Active:=false;
   KolPodrReal:=i;
end;

procedure TfrmIni.IniDolz;
var i:integer;
begin
  i:=0;
   tblPerDolgGl.Active:=true;
   While not tblPerDolgGl.EOF do
   begin
      Inc(i);
      DolzArr[i]:=tblPerDolgGlNaim.Value;
      KodDolzArr[i]:=tblPerDolgGlNum.Value;
      TipDolzArr[i]:=tblPerDolgGlKodTipDolg.Value;
      tblPerDolgGl.Next;
   end;
   tblPerDolgGl.Active:=false;
   KolDolzReal:=i;
end;

procedure TfrmIni.IniDolzDop;
var i:integer;
begin
   i:=0;
   tblDolzDop.Active:=true;
   While not tblDolzDop.EOF do
   begin
      Inc(i);
      DolzDopArr[i]:=tblDolzDopDolzDop.Value;
      KodDolzDopArr[i]:=tblDolzDopNum.Value;
      tblDolzDop.Next;
   end;
   tblDolzDop.Active:=false;
   KolDolzDopReal:=i;
end;

procedure TFrmIni.FormCreate(Sender: TObject);
begin
   IniPodr;
   IniDolz;
   IniDolzDop;
end;

end.
