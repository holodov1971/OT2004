unit Mymess;

interface

uses WinTypes, WinProcs, Classes, Graphics, Forms, Controls, Buttons,
  StdCtrls, ExtCtrls,
  Mydata;

type
  TfrmMyMess = class(TForm)
    OKBtn: TBitBtn;
    Bevel1: TBevel;
    LblSoob: TLabel;
    procedure OKBtnClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMyMess: TfrmMyMess;

implementation


{$R *.DFM}
procedure TfrmMyMess.OKBtnClick(Sender: TObject);
begin
   Close;
end;


procedure TfrmMyMess.FormActivate(Sender: TObject);
begin
   Caption:='Сообщение';
end;

end.
