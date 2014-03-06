unit Ini;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, MyData, IniFiles, Proc;

type
  TFrmIni = class(TForm)
    tblPerDolgGl: TTable;
    tblPerDolgGlNaim: TStringField;
    tblPerDolgGlNum: TAutoIncField;
    tblPerPodr: TTable;
    tblPerPodrPodr: TStringField;
    tblPerPodrN: TAutoIncField;
    tblPerDolgGlNightWork: TStringField;
    tblPerDolgGlKodTipDolg: TSmallintField;
    TblRAS: TTable;
    TblRASNum: TSmallintField;
    TblRASName: TStringField;
    TblRASPriz: TSmallintField;
    TblRASPrim: TStringField;
    TblRASNametbl: TStringField;
    TblRASNameFrm: TStringField;
    TblLS: TTable;
    TblLSNameF: TStringField;
    TblLSTabNum: TSmallintField;
    TblLSNameIO: TStringField;
    TblDor: TTable;
    TblDist: TTable;
    DSrcDor: TDataSource;
    TblDorN: TAutoIncField;
    TblDorKodDor: TStringField;
    TblDorNameDor: TStringField;
    TblDistDoroga: TSmallintField;
    TblDistNDist: TAutoIncField;
    TblDistNPP: TSmallintField;
    TblDistKodDor: TStringField;
    TblDistNameDist: TStringField;
    TblDistNameDistPoln: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIni: TFrmIni;

procedure IniDorogi;
procedure IniDolz;
procedure IniPodr;
procedure IniDolzDop;
procedure IniRAS; {Удаленный доступ}

implementation

{$R *.DFM}

procedure IniDorogi;
var i,j:integer;
begin
  i:=0;
  with frmIni do
  begin
   tblDor.Active:=true;
   tblDist.Active:=true;
   While not tblDor.EOF do
   begin
      Inc(i);
      NDorogi_Ar[i]:=tblDorN.Value;
      Doroga_Ar[i]:=tblDorNameDor.Value;
      KodDoroga_Ar[i]:=tblDorKodDor.Value;
      j:=0;
      While not tblDist.EOF do
      begin
         Inc(j);
         NDist_Ar[i,j]:=tblDistNDist.Value;
         NPPDist_Ar[i,j]:=tblDistNPP.Value;
         Dist_Ar[i,j]:=tblDistNameDist.Value;
         DistPoln_Ar[i,j]:=tblDistNameDistPoln.Value;
         tblDist.Next;
      end;
      KolDistReal[i]:=j;
      tblDor.Next;
   end;
   tblDor.Active:=false;
   tblDist.Active:=false;
  end;
  KolDorReal:=i;
end;

procedure IniPodr;
var i:integer;
begin
  i:=0;
  with frmIni do
  begin
   tblPerPodr.Open;
   While not tblPerPodr.EOF do
   begin
      if tblPerPodrPodr.Value<>'' then
      begin
            Inc(i);
            PodrArr[i]:=tblPerPodrPodr.Value;
            KodPodrArr[i]:=tblPerPodrN.Value;
      end;
      tblPerPodr.Next;
   end;
   tblPerPodr.Active:=false;
   KolPodrReal:=i;
  end;
end;

procedure IniDolz;
var i:integer;
begin
  i:=0;
  with frmIni do
  begin
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
  end;
   KolDolzReal:=i;
end;

procedure IniDolzDop;
var i:integer;
begin
end;
procedure IniRAS;
begin
  if PrizProg='A' {АРМ} then
  with frmIni do
  try
   if TabNumTB>0 then
   begin
      TblLS.Active:=true;
      TblLS.Filter:='TabNum='+IntToStr(TabNumTB);
      if TblLS.RecordCount>0 then
      begin
         IOTB:=TblLSNameIO.Value;
         try
            if TblLSNameIO.Value<>'' then
               FIOTB:=TblLSNameIO.Value[1]+'.'+TblLSNameIO.Value[Pos(' ',TblLSNameIO.Value)+1]+'.'
                   else FIOTB:='';
         except
            FIOTB:=''
         end;
         FIOTB:={'ЭЧТБ '+}TblLSNameF.Value+' '+FIOTB;
      end;
      TblLS.Active:=false;
   end;
   TblRAS.Active:=true;
   While not TblRAS.EOF do
   begin
      if (TblRASNum.Value>0) and (TblRASNum.Value<100) then
         PrizRAS[TblRASNum.Value]:=TblRASPriz.Value;
      TblRAS.Next;
   end;
  TblRAS.Active:=false;
  except
   ShowMessage('Отсутствует файл PTB');
  end;
end;

end.
