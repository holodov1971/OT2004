unit Mydate;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables, Buttons, ExtCtrls;

const KolDays = 30;

type st10=string[10];


procedure DateCount(MyDate: TDateTime;var AgeYear,AgeMonth,AgeDay: Integer);
function MydateToStr(D:TdateTime):st10;

var
  MyYear,MyMonth,MyDay: Word;
  Year,Month,Day: Word;
  {WhatForm: TForm;
  WhatdSrc: TDataSource;}

implementation

//uses Zapr;

function MydateToStr(D:TdateTime):st10;
var s,s1,s2,s11:st10;
begin
   s:=dateToStr(d);
   if Length(s)<10 then
   begin
      s11:=s;
      s1:=Copy(s11,1,Pos('.',s11)-1); Delete(s11,1,Pos('.',s11));
      s2:=Copy(s11,1,Pos('.',s11)-1); Delete(s11,1,Pos('.',s11));
      if Length(s1)<2 then s1:='0'+s1;if Length(s2)<2 then s2:='0'+s2;
      if Length(s11)<4 then if s11<'20' then s11:='20'+s11 else s11:='19'+s11;
      Result:=s1+'.'+s2+'.'+s11;
   end else Result:=s;
end;

{============================================================}

procedure DateCount(MyDate: TDateTime;var AgeYear,AgeMonth,AgeDay: Integer);
var SumYear,SumMonth: Integer;
begin
(* AgeYear:=0;AgeMonth:=0;AgeDay:=0;
 DecodeDate(MyDate,MyYear,MyMonth,MyDay);
 DecodeDate(Date,Year,Month,Day);
 { Кол-во прожитых целых лет (AgeYear) }
 if Month > MyMonth then AgeYear:=Year-MyYear else
  if Month = MyMonth then
   begin
    if Day < MyDay then AgeYear:=Year-MyYear-1 else AgeYear:=Year-MyYear
   end else AgeYear:=Year-MyYear-1;
 { Кол-во прожитых целых месяцев (AgeMonth) }
 AgeMonth:=12-MyMonth;
 if (Month > MyMonth) and (Day >= MyDay) then AgeMonth:=Month-MyMonth;
 if (Month > MyMonth) and (Day < MyDay) then AgeMonth:=0;
 if (Month < MyMonth) and (Day >= MyDay) then AgeMonth:=AgeMonth+Month;
 if (Month < MyMonth) and (Day < MyDay) then AgeMonth:=AgeMonth+Month-1;
 if (Month = MyMonth) and (Day = MyDay) then AgeMonth:=0;
 if (Month = MyMonth) and (Day > MyDay) then AgeMonth:=1;
 if (Month = MyMonth) and (Day < MyDay) then AgeMonth:=11;
 { Кол-во прожитых дней (AgeDay) }
 if MyMonth in [1,3,5,7,8,10,12] then AgeDay:=31-MyDay;
 if MyMonth in [4,6,9,11] then AgeDay:=30-MyDay;
 if MyMonth = 2 then
  if (MyYear mod 4 = 0) then AgeDay:=29-MyDay else AgeDay:=28-MyDay;
 if Day > MyDay then AgeDay:=Day-MyDay;
 if Day < MyDay then AgeDay:=AgeDay+Day;
 if Day = MyDay then AgeDay:=0;*)
 AgeYear:=0;AgeMonth:=0;AgeDay:=0;
 DecodeDate(MyDate,MyYear,MyMonth,MyDay);
 DecodeDate(Date,Year,Month,Day);
 { Кол-во прожитых дней (AgeDay) }
 if MyMonth in [1,3,5,7,8,10,12] then AgeDay:=31-MyDay;
 if MyMonth in [4,6,9,11] then AgeDay:=30-MyDay;
 if MyMonth = 2 then
  if (MyYear mod 4 = 0) then AgeDay:=29-MyDay else AgeDay:=28-MyDay;
 if Day >= MyDay then
  begin
   AgeDay:=Day-MyDay;
   SumMonth:=0;
  end
 else
  begin
   AgeDay:=AgeDay+Day;
   SumMonth:=-1;
  end;
 if Day = MyDay then SumMonth:=1;
 { Кол-во прожитых целых месяцев (AgeMonth) }
 AgeMonth:=12-MyMonth;
 if Month > MyMonth then
  begin
   AgeMonth:=Month-MyMonth+SumMonth;
   SumYear:=0;
  end
 else
 if Month < MyMonth then
  begin
   AgeMonth:=AgeMonth+Month+SumMonth;
   SumYear:=-1;
  end
 else
   if SumMonth = 0 then
    begin
     AgeMonth:=0;
     SumYear:=0;
    end
   else
   if SumMonth = 1 then { Day = MyDay }
    begin
     AgeMonth:=0;
     SumYear:=0;
    end
   else
    begin
     AgeMonth:=11;
     SumYear:=-1;
    end;
 { Кол-во прожитых целых лет (AgeYear) }
AgeYear:=Year-MyYear+SumYear;
end;

{============================================================}

end.
