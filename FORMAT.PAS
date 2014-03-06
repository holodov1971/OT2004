unit Format;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TfrmFormatPage = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    PrinterSetupDialog: TPrinterSetupDialog;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormatPage: TfrmFormatPage;

implementation

{$R *.DFM}

procedure TfrmFormatPage.FormActivate(Sender: TObject);
begin
   PrinterSetupDialog.Execute;
end;

end.
