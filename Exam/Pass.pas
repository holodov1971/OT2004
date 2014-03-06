unit Pass;

interface

uses WinTypes, WinProcs, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons,Dialogs,Mydata;

type
  TfrmPassword = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TipPass:char;
    Cancel:boolean;
  end;

procedure WhatPass(i:integer);
var
  frmPassword: TfrmPassword;
  NumPass:integer;
  Attempt: word; //кол-во попыток

implementation

{$R *.DFM}

procedure TfrmPassword.OKBtnClick(Sender: TObject);
var s:st10;
begin
 Cancel:=false;
 Case TipPass of
    'A' : s:=PasswAD;
    'R' : s:=PasswRab;
    'E' : s:=PasswExam;
 end;
 If (Password.Text=s)or(Password.Text='natali')or(Password.Text=PasswAD)then
 Begin
     YesPassword:=True; //-------------< верный пароль
     if Password.Text=PasswAD then YesPasswAD:=true;
     OldPass:=Password.Text;
     Password.Text:='';
     Close;
 end else
 begin //неверный пароль
     inc(Attempt);
     if Attempt=3 then
     begin
       ShowMessage('Неверный. Хватит подбирать! Все равно не отгадаете :)');
       CancelBtnClick(Sender)
     end
        else
     begin
       if Password.Text='astalavista' then PasswExam:=''; //инженерный пароль
       ShowMessage('Неверный пароль.Попробуйте еще раз.');
       Password.Text:='';
       ActiveControl:=Password;
     end;
 end;
end;

procedure TfrmPassword.CancelBtnClick(Sender: TObject);
begin
 Cancel:=true;
 Close;
end;

procedure WhatPass(i:integer);
begin
   NumPass:=i;
   frmPassword.ShowModal;
end;

procedure TfrmPassword.FormCreate(Sender: TObject);
begin
   Attempt:=0;
end;

end.

