unit NewTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, MyData,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls;

type
  TfrmNewTest = class(TForm)
    Label12: TLabel;
    edTestName: TEdit;
    Label1: TLabel;
    bOk: TBitBtn;
    bCancel: TBitBtn;
    cb1: TCheckBox;
    cb2: TCheckBox;
    cb3: TCheckBox;
    cb4: TCheckBox;
    cb5: TCheckBox;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    Label3: TLabel;
    edTestNum: TEdit;
    Bevel3: TBevel;
    edTestGroup: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Bevel4: TBevel;
    cb6: TCheckBox;
    Label9: TLabel;
    procedure cb1Click(Sender: TObject);
    procedure edTestNumKeyPress(Sender: TObject; var Key: Char);
    procedure bCancelClick(Sender: TObject);
    procedure edTestNumChange(Sender: TObject);
    procedure edTestGroupChange(Sender: TObject);
    procedure bOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ChB:array[0..5]of TCheckBox;
    LblPodr:array[0..5]of TLabel;
    function AllChecked: boolean;
  public
    { Public declarations }
    TipPodr: string;
    InitTipPodr: string;
  end;

var
  frmNewTest: TfrmNewTest;

//const
//  ChPodr:array[1..5]of char = ('К','Э','С','Р','+');

implementation

uses Test;

{$R *.dfm}

procedure TfrmNewTest.cb1Click(Sender: TObject);
begin
  TipPodr:='';
  if cb5.Checked then
  begin
     cb1.Checked:=false;
     cb2.Checked:=false;
     cb3.Checked:=false;
     cb4.Checked:=false;
  end else cb5.Checked:=false;
//  bOk.Enabled:=AllChecked;
end;

procedure TfrmNewTest.edTestNumKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key<'0')or(Key>'9'))and(Key<>#8)and(Key<>#46) then Abort;
end;

function TfrmNewTest.AllChecked: boolean;
begin
   if ((cb1.Checked)or(cb2.Checked)or(cb3.Checked)or(cb4.Checked)or(cb5.Checked))
   and (edTestNum.Text<>'') and (edTestGroup.Text<>'') then result:=true else result:=false;
end;

procedure TfrmNewTest.bCancelClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmNewTest.edTestNumChange(Sender: TObject);
begin
  bOk.Enabled:=AllChecked;
end;

procedure TfrmNewTest.edTestGroupChange(Sender: TObject);
begin
  bOk.Enabled:=AllChecked;
end;

procedure TfrmNewTest.bOkClick(Sender: TObject);
var s: string;
    i:integer;
begin
  s:='Тест №'+edTestNum.Text+' для ';
  for i:=0 to 5 do
      if cHb[i].Checked then
      begin
         s:=s+cHb[i].Caption+', ';
         TipPodr:=TipPodr+ChPodr[i];
      end;
  s:=copy(s,1,length(s)-2);
  if edtestname.Text='' then edtestname.Text:=s;

end;

procedure TfrmNewTest.FormActivate(Sender: TObject);
var i, k: word;
    cbArr: array [1..5] of TCheckBox;
begin
   if InitTipPodr<>'' then
   begin
   //инициализируем массив чакбоксов
   cbArr[1]:=cb1; cbArr[2]:=cb2; cbArr[3]:=cb3; cbArr[4]:=cb4; cbArr[5]:=cb5;
   for k:=1 to length(InitTipPodr) do //цикл по строке InitTipPodr
     for i:=1 to 5 do //цикл по массиву ChPodr
        if ChPodr[i] = InitTipPodr[k] then cbArr[i].Checked:=true; //если ChPodr и тек. символ совп. - чекаем этот cb
   InitTipPodr:='';
   end {if}
end;

procedure TfrmNewTest.FormCreate(Sender: TObject);
var i:integer;
begin
   edTestNum.Text:=IntToStr(frmTest.tabTest.RecordCount+1);
   LblPodr[0]:=label8;
   LblPodr[1]:=label4;
   LblPodr[2]:=label5;
   LblPodr[3]:=label6;
   LblPodr[4]:=label7;
   LblPodr[5]:=label9;
   ChB[0]:=cb5;
   ChB[1]:=cb1;
   ChB[2]:=cb2;
   ChB[3]:=cb3;
   ChB[4]:=cb4;
   ChB[5]:=cb6;
  for i:=1 to KolPodrExam do
  begin
     ChB[i].Caption:=NamePodr[i];
     LblPodr[i].Caption:=ChPodr[i];
     ChB[i].Visible:=true;
     LblPodr[i].Visible:=true;
  end;
  if KolPOdrExam=0 then
  begin
     cb5.Checked:=true;
     edTestGroup.Text:='0';
     bOK.Enabled:=true;
  end;
end;

end.
