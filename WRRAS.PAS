unit WrRAS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, ComCtrls, ExtCtrls, StdCtrls, Buttons;

type
  TfrmWrRAS = class(TForm)
    BatchMove1: TBatchMove;
    Table1: TTable;
    Table2: TTable;
    Animate1: TAnimate;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Timer1: TTimer;
    Animate2: TAnimate;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
//      Init:boolean;
//      TblRab:TTable;
      procedure WriteRAS(TblRab:TTable);
  end;

var
  frmWrRAS: TfrmWrRAS;

implementation
Uses Proc;
{$R *.DFM}


procedure TfrmWrRAS.WriteRAS(TblRab:TTable);
begin
   Animate1.Visible:=false;
   Animate2.Visible:=false;
   Show;
   begin
      Table1.DatabaseName:=TblRab.DatabaseName;
      Table1.TableName:=TblRab.TableName;
      Table2.TableName:=TblRab.TableName;               
      Table2.DatabaseName:='tbsl';
      try
         Caption:='Проверка связи';
         Animate2.Visible:=true;
         Animate2.Active:=true;
         Table2.Active:=true;
      except
         Label2.Caption:='Нет доступа к данным в службе!';
         Label2.Visible:=true;
         BitBtn1.Visible:=true;
         Animate2.Visible:=false;
         EXIT;
      end;
      Caption:='Передача данных';
      Animate1.Visible:=true;
      Animate1.Active:=true;
      BatchMove1.Execute;
      Animate1.Visible:=false;
      Animate1.Active:=false;
      Close;
   end;

end;

procedure TfrmWrRAS.BitBtn1Click(Sender: TObject);
begin
   Label2.Visible:=false;
   BitBtn1.Visible:=false;
   Close;
end;

end.
