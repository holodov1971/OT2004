unit init;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Gauges;

type
  TfrmInit = class(TForm)
    ProgressBar1: TProgressBar;
    StaticText1: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInit: TfrmInit;

implementation

{$R *.DFM}

procedure TfrmInit.FormCreate(Sender: TObject);
begin
  Screen.Cursor:=crHourglass;
end;

procedure TfrmInit.FormDestroy(Sender: TObject);
begin
  Screen.Cursor:=crDefault;
end;

end.
