unit Adapt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, IniFiles,
  Dialogs, Grids, DBGrids, DB, IBCustomDataSet, IBUpdateSQL, IBQuery, MyData,
  Buttons, ExtCtrls, IBTable, DBGridEh, StdCtrls, GridsEh;

type
  TFrmAdapt = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    QryKAT: TIBQuery;
    QryKATID: TIntegerField;
    QryKATNAME: TIBStringField;
    QryKATPRIM: TIBStringField;
    IBUpdateSQL1: TIBUpdateSQL;
    dsKat: TDataSource;
    grdExam: TDBGridEh;
    DBGridEh1: TDBGridEh;
    grdRndSeed: TDBGridEh;
    QryKATPASSW: TIBStringField;
    CheckBox1: TCheckBox;
    DSVid: TDataSource;
    CheckBox2: TCheckBox;
    TblVid: TIBTable;
    TblVidID: TIntegerField;
    TblVidIDKAT: TIntegerField;
    TblVidNAME: TIBStringField;
    TblVidPERIOD: TIntegerField;
    TblVidPASS: TIBStringField;
    TblVidKOLNEOTV: TIntegerField;
    TblVidPOKAZOTV: TIntegerField;
    TblVidSOOBOTV: TIntegerField;
    TblVidTIMEEXAM: TTimeField;
    TblVidVIDEXAM: TIntegerField;
    TblExam: TIBTable;
    TblExamID: TIntegerField;
    TblExamNAME: TIBStringField;
    TblExamIDKAT: TIntegerField;
    TblExamPASSW: TIBStringField;
    DSExam: TDataSource;
    QryWybTem: TIBQuery;
    DSWybTem: TDataSource;
    Bevel1: TBevel;
    StaticText1: TStaticText;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Edit2: TEdit;
    IBUpdateSQL2: TIBUpdateSQL;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure QryKATNewRecord(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TblVidAfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    IniFile: TIniFile;
    StringList: TStringList;
  public
    { Public declarations }
  end;

var
  FrmAdapt: TFrmAdapt;

implementation

{$R *.dfm}

procedure TFrmAdapt.CheckBox1Click(Sender: TObject);
begin
   grdExam.Columns[1].Visible:=CheckBox1.Checked;
end;

procedure TFrmAdapt.CheckBox2Click(Sender: TObject);
begin
   grdRndSeed.Columns[1].Visible:=CheckBox2.Checked;
end;

procedure TFrmAdapt.QryKATNewRecord(DataSet: TDataSet);
begin
   QryKAT.Cancel;
end;

procedure TFrmAdapt.SpeedButton1Click(Sender: TObject);
begin
   Close
end;

procedure TFrmAdapt.FormCreate(Sender: TObject);
begin
   Edit1.Text:=PasswAd;
   Edit2.Text:=PasswExam;
   CheckBox1.Checked:=YesPasswKat;
   CheckBox2.Checked:=YesPasswTem;
   StringList.Free;
   IniFile.Free;
   QryKat.Open;
   TblVid.Active:=true;
   TblExam.Active:=true;
end;

procedure TFrmAdapt.TblVidAfterScroll(DataSet: TDataSet);
begin
   QryWybTem.cLOSE;
   QryWybTem.ParamByName('VID').AsInteger:=TblVidID.Value;
   QryWybTem.ParamByName('KAT').AsInteger:=qryKatID.Value;
   QryWybTem.Open;
end;

procedure TFrmAdapt.BitBtn1Click(Sender: TObject);
begin
   QryKat.ApplyUpdates;
   IniFile:=TIniFile.Create(DataPath+'\exam.ini');
   IniFile.WriteString('Main','PA',Edit1.Text);
   PasswAd:=Edit1.Text;
   IniFile.WriteString('Main','PE',Edit2.Text);
   PasswExam:=Edit2.Text;
   IniFile.WriteBool('Main','PasswKat',CheckBox1.Checked);
   IniFile.WriteBool('Main','PasswTem',CheckBox2.Checked);
   IniFile.Free;
   Close;
end;

end.
