unit Perdolg;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DBTables, DB, Grids, DBGrids, Buttons, ExtCtrls, StdCtrls, Ini,
  MyData, Tabs, Proc, DBGridEh;

type
  TfrmPerDolg = class(TForm)
    Bevel1: TBevel;
    bQuit: TSpeedButton;
    Label1: TLabel;
    TblDolzMO: TTable;
    DSrcDolzMO: TDataSource;
    TblDolzMONumDolz: TSmallintField;
    TblDolzMODoLet: TSmallintField;
    TblDolzMOPeriodMOGG: TSmallintField;
    TblDolzMOPeriodMOMM: TSmallintField;
    tabDolgGl: TTable;
    dsDolgGl: TDataSource;
    tabDolgGlNaim: TStringField;
    tabDolgGlNum: TAutoIncField;
    grdFull: TDBGridEh;
    fr: TBevel;
    grdMO: TDBGridEh;
    Label3: TLabel;
    Panel2: TPanel;
    procedure bQuitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure TblDolzMONewRecord(DataSet: TDataSet);
    procedure tblAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPerDolg: TfrmPerDolg;

implementation

{$R *.DFM}

{========================================================}

procedure TfrmPerDolg.bQuitClick(Sender: TObject);
begin
 Close;
end;

{========================================================}

procedure TfrmPerDolg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 IniDolz; //Сохр. должности в паблик массив
// tblPerPodr.Active:=false;
 tabDolgGl.Active:=false;
// tblTipDolz.Active:=false;
 tblDolzMO.Active:=false;
end;

{========================================================}

procedure TfrmPerDolg.FormCreate(Sender: TObject);
begin
// tblPerPodr.Active:=true;
 tabDolgGl.Active:=true;
// tblTipDolz.Active:=true;
 tblDolzMO.Active:=true;
end;

procedure TfrmPerDolg.TblDolzMONewRecord(DataSet: TDataSet);
begin
   TblDolzMONumDolz.Value:=tabDolgGlNum.Value;
end;

procedure TfrmPerDolg.tblAfterScroll(DataSet: TDataSet);
begin
   TblDolzMO.Filter:='NumDolz='+IntToStr(tabDolgGlNum.Value);
end;

end.
