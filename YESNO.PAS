unit YesNo;

interface

uses WinTypes, WinProcs, Classes, Graphics, Forms, Controls, Buttons,
  StdCtrls, ExtCtrls,
  Mydata;

type
  TfrmYesNo = class(TForm)
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    Bevel1: TBevel;
    LblSoob: TLabel;
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    RessYesNo:boolean;
  end;

var
  frmYesNo: TfrmYesNo;

implementation

{$R *.DFM}
procedure TfrmYesNo.OKBtnClick(Sender: TObject);
begin
   RessYesNo:=true;
   Close;
end;

procedure TfrmYesNo.CancelBtnClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmYesNo.FormCreate(Sender: TObject);
begin
   RessYesNo:=false;
end;

end.
