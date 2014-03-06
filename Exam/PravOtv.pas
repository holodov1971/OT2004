unit PravOtv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Card, MyData,
  Dialogs, Grids, DBGridEh, StdCtrls, DBCtrls, Buttons, ExtCtrls, GridsEh;

type
  TFrmPravOtv = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    btnOK: TBitBtn;
    Image1: TImage;
    SBPrOtv: TSpeedButton;
    Panel2: TPanel;
    ver1: TDBMemo;
    grdQuest2: TDBGridEh;
    Gr1: TPanel;
    Im1: TImage;
    Panel4: TPanel;
    procedure SBPrOtvClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
     Priz:integer; {1-сообщение об ответе 2-показать ответ 3-сообщение и ответ}
     OtvPrav:boolean;
    { Public declarations }
  end;

var
  FrmPravOtv: TFrmPravOtv;

implementation

{$R *.dfm}

procedure TFrmPravOtv.SBPrOtvClick(Sender: TObject);
begin
   Height:=30+Panel3.Height;
   if Panel4.Visible then Height:=Height+Panel4.Height;
   if Panel1.Visible then Height:=Height+Panel1.Height;
   if Panel2.Visible then Height:=Height+222;
   Panel2.Visible:=true;
   if frmCard.tabQuestFullType.Value=1 then //single-variant
   begin
    ver1.Visible:=true;
    grdQuest2.Visible:=false;
    Gr1.Visible:=false;
  end else
  if frmCard.tabQuestFullType.Value=2 then //multi-variant
  begin
    ver1.Visible:=false;
    grdQuest2.Visible:=true;
    Gr1.Visible:=false;
  end else
  if frmCard.tabQuestFullType.Value=3 then //graph-variant
  begin
    ver1.Visible:=false;
    grdQuest2.Visible:=false;
    Gr1.Visible:=true;
    try
       IM1.Picture.LoadFromFile(frmCard.tabQuestGrPATH0.Value);
    except
    end;
  end;
end;

procedure TFrmPravOtv.btnOKClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmPravOtv.FormActivate(Sender: TObject);
begin
   Panel1.Visible:=priz in[1,3];
   Panel2.Visible:=priz in[2,3];
   Panel4.Visible:=priz in[2,3];
//   SBPrOtv.Visible:=priz in[2,3];
   if Panel1.Visible then
   begin
      if OtvPrav then
      begin
         Panel1.Caption:='Ответ правильный!';
         Panel1.Font.Color:=clGreen;
         try
            Image1.Picture.LoadFromFile(DataPath+'\Yes.bmp');
         except
         end;
      end else
      begin
         Panel1.Caption:='Ответ неправильный!';
         Panel1.Font.Color:=clMaroon;
         try
            Image1.Picture.LoadFromFile(DataPath+'\No.bmp');
         except
         end;
      end;
   end;
   Height:=30+Panel3.Height;
   if Panel4.Visible then Height:=Height+Panel4.Height;
   if Panel1.Visible then Height:=Height+Panel1.Height;
   if Panel2.Visible then Height:=Height+222;
   if priz in[2,3] then SBPrOtvClick(Sender);
end;
{1-сообщение об ответе 2-показать ответ 3-сообщение и ответ}
end.
