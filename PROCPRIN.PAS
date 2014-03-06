unit procprin;
interface
Uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Buttons, DB, DBTables,Printers;

type ST40=string[40];
     ST80=string[80];
     ST10=string[10];

var Kol,MaxY:integer;
    ArStr80:array [1..15] of ST80;
    X,Y,Xb,Yb,Xe,Ye:word;
    HTxt,LTxt:integer;
    Sdv,DelY:integer;
    smallTitle:ST80;
const KoefX = 0.8; {сжатие по X}
      KoefY = {1.5}1.0; {сжатие по Y}
      SizeTitle=12;{Размер шрифта для заголовка}
      SizeTable=9;{Размер шрифта для таблицы}
procedure PrintTableBegin(Can:Tcanvas;ColCount:integer;
   const HeaderName:array of string;ColWidth:array of smallint;
   const Title:st80;YesShap:boolean);
procedure LineVertTabl(Can:Tcanvas;ColCount:integer;ColWidth:array of smallint;Y1:word);
procedure WriteTitle(Can:Tcanvas;const Title:st80;NumPage:integer);
procedure JustTextOut(Can:Tcanvas;X,Y:integer;const S:string; Justify:Char; Width:integer);
procedure NewListPrenterStr(Can:Tcanvas;ColCount:integer;ColWidth:array of smallint);
procedure ChangeFont(Can:Tcanvas;const s:ST10;i:integer);
function WidthCan(Can:TCanvas):integer;
function MyCopy(s:string):string;

implementation
var YColBeginT,YColBeginL:array[0..60]of integer;

procedure ChangeFont(Can:Tcanvas;const s:ST10;i:integer);
begin
  With Can do
  begin
   Font.Name:=S;
   Font.Size:=i;
   HTxt:=Trunc(Can.TextHeight('P')*KoefX);
   LTxt:=Trunc(Can.TextWidth('P')*KoefY);
  end;
end;

{преобразование строки с переносом в массив строк}
procedure ObrStr(MyStr:STring);
var i:integer;
begin
   Kol:=0;
   Repeat
      Inc(Kol);
      i:=Pos('&',MyStr);
      if i<>0 then
      begin
         ArStr80[Kol]:=Copy(MyStr,1,i-1);
         Delete(MyStr,1,i);
      end else begin ArStr80[Kol]:=MyStr;end;
   Until i=0;
end;

procedure NewListPrenterStr(Can:Tcanvas;ColCount:integer;ColWidth:array of smallint);
var i:integer;
begin
 With Can do
 begin
   x:=Xb; y:=Yb;
   for i:=0 to ColCount-1 do
   begin
      TextOut(X+((ColWidth[i]-TextWidth('1')-LTxt) div 2),Y,IntToStr(i+1));
      Inc(X,ColWidth[i]);
   end;
   Xe:=X;Ye:=Y+HTxt;
   MoveTo(Xb,Yb-DElY);
   LineTo(Xe,Yb-DElY);
   MoveTo(Xb,Ye+DElY);
   LineTo(Xe,Ye+DElY);
   Y:=Ye+HTxt;X:=Xb;
 end;
end;

function WidthCan(Can:TCanvas):integer;
begin
   if Can=Printer.Canvas then Result:=Printer.PageWidth else Result:=Screen.Width;
end;

{вывод заголовка}
procedure WriteTitle(Can:Tcanvas;const Title:st80;NumPage:integer);
var i,j:integer;
begin
  Y:=Yb;X:=Xb;
  if Title<>'' then
  begin
   if NumPage=0 then
   begin
      i:=SizeTitle;ObrStr(Title);
   end else
   begin
      Kol:=1;ArStr80[1]:=smallTitle+'   (лист '+IntToStr(NumPage)+')';
      i:=SizeTable;
   end;
   ChangeFont(Can,'Arial Cyr',i);
   for i:=1 to Kol do
   begin
     if Can=Printer.Canvas then
     begin
        j:=Printer.PageWidth;if j>2200 then J:=2200;//J div 2;
     end
     else j:=Screen.Width;
     Can.TextOut({Xb+}(j-Can.TextWidth(ArStr80[i])-LTxt) div 2,Y,ArStr80[i]);
     Inc(Y,HTxt+HTxt div 2);
   end;
   Yb:=Y+HTxt;
  end;
{!!!!! Yb:=Y+HTxt*10;}
end;

{меняет координату Х в зависимости от выравнивания}
procedure JustTextOut(Can:Tcanvas;X,Y:integer;const S:string;Justify:Char; Width:integer);
begin
 With Can do
 begin
   Case Justify of
   'R': X:=X+Width-TextWidth(s)-Ltxt*2;
   'C': X:=X+((Width-TextWidth(s)-LTxt) div 2);
   'L': Inc(X,LTxt);
   end;
   TextOut(X,Y,S);
 end;
end;

function MyCopy(s:string):string;
var i:integer;
begin
   i:=Pos(',',s);
   Result:=Copy(s,1,i+2);
end;


procedure LineVertTabl(Can:Tcanvas;ColCount:integer;ColWidth:array of smallint;Y1:word);
var i,j,k:integer;
begin
  with Can do
  begin
   X:=Xb;
   for i:=0 to ColCount do
   begin
      if i in[0,ColCount] then j:=0 else j:=HTxt div 2;
{      if YColBeginL[i]<YColBeginL[i+1] then k:=YColBeginL[i] else
         k:=YColBeginL[i+1];}
      k:=YColBeginL[i];
      if k<>0 then Dec(k,HTxt div 6);
      MoveTo(X-j,Yb-DelY+k);
      LineTo(X-j,Y1-DelY*2);
      Inc(X,ColWidth[i]);
   end;
  end;
end;


procedure PrintTableBegin(Can:Tcanvas;ColCount:integer;
   const HeaderName:array of string;ColWidth:array of smallint;
   const Title:st80;YesShap:boolean);
{Вывод "шапки" таблицы}
procedure WriteHeader;
var i,ii,j,jj,k,l,m,n:integer;
    Ress:boolean;
    TwoStr:byte;
begin
 for i:=0 to ColCount-1 do begin YColBeginL[i]:=0;YColBeginT[i]:=0;end;
 With Can do
 begin
  if YesShap then
  begin
   Y:=Yb;X:=Xb;
   MaxY:=0;
   ChangeFont(Can,'Times New Roman Cyr', SizeTable);
   i:=0;Ress:=false;m:=0;
   While i<=ColCount-1 do
   begin
      Ress:=false;
      Y:=Yb+YColBeginT[i];
      ObrStr(HeaderName[m]);
      TwoStr:=0;
      for j:=1 to Kol do
      begin
       Sdv:=ColWidth[i];
       if (ArStr80[j,1]='^')or (TwoStr<>0) then
       begin
            if TwoStr=0 then
            begin
               k:=StrToInt(ArStr80[j,2]);
               TwoStr:=K;
               Delete(ArStr80[j],1,3);
               for n:=0 to k-1 do Inc(YColBeginT[i+n],HTxt*2);
               for n:=1 to k-1 do Inc(YColBeginL[i+n],HTxt*2);
            end else
            begin
               for n:=0 to k-1 do Inc(YColBeginT[i+n],HTxt);
               for n:=1 to k-1 do Inc(YColBeginL[i+n],HTxt);
            end;
            Sdv:=0;
            for n:=1 to k do
               Inc(sdv,ColWidth[n+i-1]);
            REss:=true;
            if J=Kol then
            begin
               n:=0;
               for l:=1 to k do Inc(n,ColWidth[i+l-1]);
               ii:=LTxt div 2 + LTxt div 3;
               MoveTo(X-ii,Y+HTxt+HTxt div 2);
               jj:=YColBeginL[i] div (Htxt*2);
               if i+k-1=ColCount-1 then
                 inc(N,{ColWidth[i]+}Ltxt div 2);
               LineTo(x+n-ii,Y+HTxt+HTxt div 2);
            end;
{            Sdv:=0;}
         end;
         if Sdv<>0 then JustTextOut(Can,X,Y,ArStr80[j],'C',Sdv) else
             TextOut(X,Y,ArStr80[j]);
         Inc(Y,HTxt);
      end;
      if Y>MaxY then MaxY:=Y;
      if not Ress then begin Inc(X,ColWidth[i]);Inc(i);end;
      Inc(m);
   end;
   Xe:=X;Ye:=MaxY;
   MoveTo(Xb,Yb-DElY);
   LineTo(Xe,Yb-DElY);
   MoveTo(Xb,Ye+DElY);
   LineTo(Xe,Ye+DElY);
  end else {YesShap}
  begin
     Ye:=Y+Htxt;
      n:=0;
      for i:=0 to ColCount-1 do inc(N,ColWidth[i]);
     Xe:=xb+n;
  end;
 end;
 Y:=Ye+HTxt;X:=Xb;
end;


var i:integer;
begin
  DelY:=HTxt div 3;
{  Xb:=LTxt;Yb:=HTxt;}
  While Pos('&',SmallTitle)<>0 do
  begin
     i:=Pos('&',SmallTitle);
     Delete(SmallTitle,i,1);
     Insert(' ',SmallTitle,i);
  end;
  With Can do
  begin
  WriteTitle(Can,Title,0);
  WriteHeader;
  end;
end;

end.
