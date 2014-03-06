unit AskPrn;

interface

uses WinTypes, WinProcs, Classes, Graphics, Forms, Controls, Buttons,
  StdCtrls, ExtCtrls,
  Mydata;

type
  TfrmAskPrn = class(TForm)
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    RG1: TRadioGroup;
    RG2: TRadioGroup;
    RG3: TRadioGroup;
    Label1: TLabel;
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure RG1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    OK:boolean;
  end;

var
  frmAskPrn: TfrmAskPrn;

implementation

{$R *.DFM}
procedure TfrmAskPrn.OKBtnClick(Sender: TObject);
begin
   OK:=true;
   Close;
end;

procedure TfrmAskPrn.CancelBtnClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmAskPrn.RG1Click(Sender: TObject);
begin
   if Rg1.ItemIndex=1 then RG2.Visible:=true else RG2.Visible:=false;
end;

procedure TfrmAskPrn.FormCreate(Sender: TObject);
var i:integer;
begin
   RG2.Items.Clear;
   RG2.Items.Add('бяе');
   For i:=1 to KolPodr do
     RG2.Items.Add(NamePodr[i]);
   OK:=false;
end;

end.
