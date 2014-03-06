unit Proc;

interface
Uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Grids, DBGrids, DBCtrls, MyData,
  MMSystem, Variants, BDE;

const K_D:array[1..12] of integer=(31,28,31,30,31,30,31,31,30,31,30,31);

procedure PlaySound(snd: pchar);
//function WyborLS:integer;
procedure ZapolnPodr(CB:TComboBox);
function WhatDolz(KodDop,Kod:integer):st80;
function WhatPodr(Kod:integer):st40;
function WhatKodPodr(Podr:st40):integer;
function WhatKodKrPodr(Podr:st40):st10;
function WhatChKodPodr(Podr:st40):char;
function WhatChKodPodrL(Podr:st40):char;
function KolDnej(Data:TDateTime):LongInt;
function KolDnejMes(NMes,NGod:integer):integer;
function MyIntToStr(Num,Kol:integer):st20;
function MyVal(s:st20):integer;
function DateToStr2000(D:TDateTime):st10;
Procedure BIOValue(Den_D,Mes_D,God_D,Den_R,Mes_R,God_R:integer;
          var Kol_Dn:longInt;var I1,I2,I3:real;var ch1,ch2,ch3:char);
procedure ClearCommon;
procedure ZapolnenieCBGod(CB:TComboBox);{заполнение годов}
function MyMin(i,j:integer):integer;
function GetAliasDir(sAlias: string): string;

implementation
//{$R D:\tb\snddata.res}

{---------------------------------------}
function MyMin(i,j:integer):integer;
{---------------------------------------}
begin
   if i<j then Result:=i else Result:=j;
end;

procedure ClearCommon;
var I:integer;
begin
   for i:=1 to 10 do
   begin
//<--by me      CommonInt[i]:=0;
      CommonData[i]:=0;
      CommonStr[i]:='';
   end;
end;


{---------------------------------}
procedure ZapolnPodr(CB:TComboBox);
{---------------------------------}
var i:integer;
begin
   CB.Items.Clear;
   for i:=1 to KolPodrReal do
      Cb.Items.Add(PodrArr[i]);
end;

{----------------------------------}
function WhatPodr(Kod:integer):st40;
{----------------------------------}
var i:integer;
begin
   Result:='';
   for i:=1 to KolPodrReal do
   if Kod=KodPodrArr[i] then
   begin
      Result:=PodrArr[i];
      Break;
   end;
end;

{----------------------------------}
function WhatKodPodr(Podr:st40):integer;
{----------------------------------}
var i:integer;
begin
   Result:=-1;
   for i:=1 to KolPodrReal do
   if Podr=PodrArr[i] then
   begin
      Result:=KodPodrArr[i];
      Break;
   end;
end;

{----------------------------------}
function WhatChKodPodr(Podr:st40):char;
{----------------------------------}
var i:integer;
begin
   Result:=' ';
   for i:=1 to KolPodrReal do
   if Podr=PodrArr[i] then
   begin
      Result:=ChKodPodrArr[i];
      Break;
   end;
end;

{----------------------------------}
function WhatChKodPodrL(Podr:st40):char;
{----------------------------------}
var i:integer;
begin
   Result:=' ';
   for i:=1 to KolPodrReal do
   if Podr=PodrArr[i] then
   begin
      Result:=ChKodPodrlArr[i];
      Break;
   end;
end;

{----------------------------------}
function WhatKodKrPodr(Podr:st40):st10;
{----------------------------------}
var i:integer;
begin
   Result:=' ';
   for i:=1 to KolPodrReal do
   if Podr=PodrArr[i] then
   begin
      Result:=KodKrPodrArr[i];
      Break;
   end;
end;

{----------------------------------}
function WhatDolzDop(Kod:integer):st20;
{----------------------------------}
var i:integer;
begin
   Result:='';
   for i:=1 to KolDolzDopReal do
   if Kod=KodDolzDopArr[i] then
   begin
      Result:=DolzDopArr[i];
      Break;
   end;
end;

{----------------------------------}
function WhatDolz(KodDop,Kod:integer):st80;
{----------------------------------}
var i:integer;
begin
   Result:='';
   if KodDop>=1 then Result:=WhatDolzDop(KodDop)+' ';
   for i:=1 to KolDolzReal do
   if Kod=KodDolzArr[i] then
   begin
      Result:=Result+DolzArr[i];
      Break;
   end;
end;

{---------------------------------------}
function KolDnej(Data:TDateTime):LongInt;
{---------------------------------------}
const K_N:array[1..12] of integer=(0,31,59,90,120,151,181,212,243,273,304,334);
var  i,j:integer;
     Kol:LongInt;
     W1,w2,w3:word;
BEGIN
     DecodeDate(Data,w1,w2,w3);
     if w1<1930 then w1:=w1+100;
     if w1>2030 then w1:=w1-100;
     Kol:=K_N[w2]+W3;
     Kol:=Kol+365*(w1);
     if (w1 mod 4=0)and(w2>=2) then Kol:=Kol+1;
     I:=0; J:=0;
     While J<>w1-1 do
     begin
        Inc(J);if J mod 4=0 then Inc(I);
     end ;
     Result:=Kol+i;
end;

function MyIntToStr(Num,Kol:integer):st20;
begin
   Result:=IntToStr(Num);
   While Length(Result)<Kol do Result:='0'+Result;
end;

function MyVal(s:st20):integer;
var j:integer;
begin
   Val(s,Result,j);
end;

{---------------------------------------}
function DateToStr2000(D:TDateTime):st10;
{---------------------------------------}
var s:st10;
begin
   s:=DateToStr(D);
   if Length(s)<10 then
   if Copy(s,7,2)>'50' then Insert('19',s,7) else Insert('20',s,7);
   Result:=s;
end;

{---------------------------------------}
function KolDnejMes(NMes,NGod:integer):integer;
{---------------------------------------}
begin
   Result:=K_D[NMes];
   if (NMes=2)and(NGod mod 4 = 0) then Inc(Result);
end;

{---------------------------------------}
Procedure BIOValue(Den_D,Mes_D,God_D,Den_R,Mes_R,God_R:integer;
          var Kol_Dn:longInt;var I1,I2,I3:real;var ch1,ch2,ch3:char);
{---------------------------------------}
const TF1=2*PI/23.68843717;
      TF2=2*PI/28.4261246;
      TF3=2*PI/33.16381203;
      Ch4='*';
      K_S:array[1..12] of integer=(334,306,275,245,214,184,153,122,92,61,31,0);
      K_N:array[1..12] of integer=(0,31,59,90,120,151,181,212,243,273,304,334);
var i,j,k:integer;
     Kol_St,Kol_Nov:INTEGER;
     Kol_God:longInt;

{---------------------------------------}
function MyRealToChar(Re:real):char;
{---------------------------------------}
begin
   if Re>0 then Result:='+' else if Re<0 then Result:='-' else Result:='0';
end;

BEGIN
     {J:=KolDnej(Mes_D,God_D);}
     Kol_St:=K_S[Mes_R]+(K_D[Mes_R]-Den_R-1);
     if (God_R mod 4=0)and(Mes_R>=2) then Kol_St:=Kol_St+1;
     Kol_Nov:=K_N[Mes_D]+Den_D-1;
     if (God_d mod 4=0)and(Mes_D>2) then Kol_Nov:=Kol_Nov+1;
     if God_D=God_R then
     begin
        if (God_d mod 4=0)and(Mes_D>2) then k:=1 else k:=0;
        if Mes_R=Mes_D then Kol_Dn:=Den_D-Den_R else
        if Mes_R<Mes_D then
        begin
           Kol_Dn:=0;
           for I:=Mes_R+1 to Mes_D-1 do
           Kol_Dn:=Kol_Dn+K_D[I];
           Kol_Dn:=Kol_Dn+Den_D+(K_D[Mes_R]-Den_R{+1})+k;
        end else
        if Mes_R>Mes_D then begin I1:=0;I2:=0;I3:=0;EXIT;end;
     end else
     begin
        Kol_God:=(God_D-God_R-1)*365;
        I:=0; J:=God_R;
        if God_D>J then
        While J<>God_D-1 do
        begin
           Inc(J);if J mod 4=0 then Inc(I);
        end ;
        if God_D=God_R then Kol_Dn:=Kol_Nov-Kol_St else
        Kol_Dn:=Kol_St+Kol_Nov+Kol_God+I;
     end;
     if Kol_Dn<0 then begin I1:=0;I2:=0;I3:=0;EXIT;end;
     I1:=sin(Kol_Dn*TF1);if (I1>-0.1)and(I1<0.1) then I1:=0;
     I2:=sin(Kol_Dn*TF2);if (I2>-0.1)and(I2<0.1) then I2:=0;
     I3:=sin(Kol_Dn*TF3);if (I3>-0.1)and(I3<0.1) then I3:=0;
     Ch1:=MyRealToChar(I1);
     Ch2:=MyRealToChar(I2);
     Ch3:=MyRealToChar(I3);
end;

procedure PlaySound(snd: pchar);
var
  h: THandle;
  p: pointer;
begin
  h := FindResource(hInstance, snd, 'WAVE');  { ищем ресурс }
  h := LoadResource(hInstance, h);            { выт€гиваем ресурс }
  p := LockResource(h);                       { блокируем ресурс и суем в пам€ть }
  sndPlaySound(p, SND_MEMORY or SND_ASYNC);   { высуваем p из пам€ти, воспроизведение - асинхронное }
  UnLockResource(h);                          { разблокировать ресурс }
  FreeResource(h);                            { освободить хендл }
end;

{---------------------------------------}
procedure ZapolnenieCBGod(CB:TComboBox);{заполнение годов}
{---------------------------------------}
var i:integer;
    w1,w2,w3:word;
    s:st10;
begin
   CB.Items.Clear;
   DecodeDate(Date,w1,w2,w3);
   i:=0;
   Repeat
      s:=IntToStr(w1);
      CB.Items.Add(s);
      Dec(W1);
      Inc(i);
   Until (i>KolLetHr)or(W1<2000);
end;

//--------------------- Oпредел€ем директорию по alias'у:-------------------------
function GetAliasDir(sAlias: string): string;
var
  Database: TDatabase;
  pszDir: PChar;
begin
  Database := TDatabase.Create(nil);        {выдел€ем времмено пам€ть}

  pszDir := StrAlloc(255);
  try
    Database.AliasName := sAlias;
    Database.DatabaseName := 'TEMP';   {requires a name -- is ignored}
    Database.Connected := True;    {connect without opening any table}
    DbiGetDirectory(Database.Handle, True, pszDir);     {get the dir.}
    Database.Connected := False;                          {disconnect}
    Result := StrPas(pszDir);                    {convert to a string}
  finally
    Database.Free;                                       {free memory}
    StrDispose(pszDir);
  end;
end;

end.

