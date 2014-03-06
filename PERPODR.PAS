unit Perpodr;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DB, DBTables, Grids, DBGrids, Buttons, ExtCtrls, Ini,
  DBGridEh, Mydata, StdCtrls;

type
  TfrmPerPodr = class(TForm)
    tabPodr: TTable;
    dSrc: TDataSource;
    grid1: TDBGridEh;
    tabPodrN: TAutoIncField;
    tabPodrPodr: TStringField;
    tabPodrNamePodr: TStringField;
    tabPodrKodSl: TStringField;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    tabPodrDN: TStringField;
    procedure SpeedButton2Click(Sender: TObject);
    procedure tabPodrAfterPost(DataSet: TDataset);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

   Mark: Pointer;
   NewValue: String[10];
   KolValue: Integer;

  public
    { Public declarations }
  end;

var
  frmPerPodr: TfrmPerPodr;

implementation

{$R *.DFM}

{========================================================}

procedure TfrmPerPodr.SpeedButton2Click(Sender: TObject);
begin
 Close;
end;

{========================================================}

procedure TfrmPerPodr.tabPodrAfterPost(DataSet: TDataset);
begin
 NewValue:=tabPodrPodr.Value;
 tabPodr.DisableControls;
 Mark:=tabPodr.GetBookMark;
 tabPodr.First;
 KolValue:=-1;
 while not tabPodr.EOF do
  begin
   if tabPodrPodr.Value = NewValue then KolValue:=KolValue+1;
   tabPodr.Next;
  end;
 if KolValue > 0 then
  begin
   ShowMessage('Такая запись уже существует.');
   tabPodr.GoToBookMark(Mark);
   tabPodr.FreeBookMark(Mark);
   tabPodr.Delete;
  end
 else
  begin
   tabPodr.GoToBookMark(Mark);
   tabPodr.FreeBookMark(Mark);
  end;
 tabPodr.EnableControls;
end;

{========================================================}

procedure TfrmPerPodr.FormActivate(Sender: TObject);
begin
 tabPodr.Open;
end;

{========================================================}

procedure TfrmPerPodr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 tabPodr.Close;
 IniPodr;
end;

{========================================================}

procedure TfrmPerPodr.FormCreate(Sender: TObject);
begin
//   Grid.Columns[1].Width:=0;
end;

procedure TfrmPerPodr.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//      IF kEY=vk_F9 then if Grid.Columns[1].Width=0 then Grid.Columns[1].Width:=30 else
//         Grid.Columns[1].Width:=0;

end;

end.
