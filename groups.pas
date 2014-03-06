unit groups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, Grids, DBGridEh, DBTables, StdCtrls, ComCtrls, newgroup, Word97,
  Buttons, DateUtils, DBCtrls;

type
  TFormGroups = class(TForm)
    tblGroups: TTable;
    dsGroups: TDataSource;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    tblGroupsID: TAutoIncField;
    tblGroupsDATE: TDateField;
    dtpFrom: TDateTimePicker;
    dtpTo: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    cbFilter: TCheckBox;
    btnNew: TButton;
    bQuit: TSpeedButton;
    qDelete: TQuery;
    Label3: TLabel;
    tblGroupsPrim: TStringField;
    DBNavigator1: TDBNavigator;
    procedure tblGroupsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cbFilterClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Refilter(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure bQuitClick(Sender: TObject);
    procedure tblGroupsBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGroups: TFormGroups;

implementation

{$R *.dfm}

procedure TFormGroups.tblGroupsFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
 Accept:=(tblGroupsDATE.AsDateTime>=dtpFrom.DateTime) and (tblGroupsDATE.Value<=dtpTo.DateTime)
end;

procedure TFormGroups.cbFilterClick(Sender: TObject);
begin
  tblGroups.Filtered:=cbFilter.Checked;
end;

procedure TFormGroups.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tblGroups.Close;
end;

procedure TFormGroups.FormCreate(Sender: TObject);
begin
  dtpTo.Date:=Date;
  dtpFrom.Date:=IncYear(Now,-1);
  tblGroups.Open;
end;

procedure TFormGroups.Refilter(Sender: TObject);
begin
  tblGroups.Filter:='';
end;

procedure TFormGroups.btnNewClick(Sender: TObject);
Var Form:TFormNewGroup;
begin
  Form:=TFormNewGroup.Create(Self);
  tblGroups.Append;
  tblGroupsDATE.Value:=Now;
  tblGroupsPrim.Value:='';
  tblGroups.Post;
  Form.SetGroupID(tblGroupsID.AsInteger,True);
  Form.ShowModal;
  Form.Free;
{!!!!!çàïèñàòü â tblGroupsDATE.Value çíà÷åíèå  formNewgroup.DTPickDateGroup.date
ÏÎ×ÅÌÓ ÍÅ ÇÀÍÎÑßÒÑß ÏÐÈÌÅ×ÀÍÈß Â ÒÀÁËÈÖÓ tblGroups?}
end;

procedure TFormGroups.DBGridEh1DblClick(Sender: TObject);
Var Form:TFormNewGroup;
begin
  Form:=TFormNewGroup.Create(Self);
  Form.SetGroupID(tblGroupsID.AsInteger);
//  Form.DTPickDateGroup.Date:=tblGroupsDATE.AsDateTime;
  //{!!!!!çàÍåñòè â formNewgroup.DTPickDateGroup.date çíà÷åíèå tblGroupsDATE.Value}
  Form.ShowModal;
  Form.Free;

end;

procedure TFormGroups.bQuitClick(Sender: TObject);
begin
 Close;
end;

procedure TFormGroups.tblGroupsBeforeDelete(DataSet: TDataSet);
begin
  qDelete.ParamByName('group_id').Value:=tblGroupsID.AsInteger;
  qDelete.ExecSQL;
end;

end.
