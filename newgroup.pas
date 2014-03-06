//deaddragon 2003-2004(i)
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN UNSAFE_TYPE OFF}
unit newgroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ExtCtrls, DBGridEh, StdCtrls, Proc,
  ComCtrls, DBCtrls, dmMain, Menus, Word97, ComObj, Buttons, DateUtils,
  PrnDbgeh, Mask, DBCtrlsEh;

type
  TFormNewGroup = class(TForm)
    dsLS: TDataSource;
    tblDolgnost: TTable;
    tblDolgnostVisible: TBooleanField;
    tblDolgnostNum: TAutoIncField;
    tblDolgnostNaim: TStringField;
    tblPerPodr: TTable;
    tblPerPodrN: TAutoIncField;
    tblPerPodrPodr: TStringField;
    tblPerPodrNamePodr: TStringField;
    tblPerPodrVisible: TBooleanField;
    qGroupsLS: TQuery;
    usGroupsLS: TUpdateSQL;
    qGroupsLSLS_ID: TIntegerField;
    Panel2: TPanel;
    DBGridEh4: TDBGridEh;
    dsGroupsLS: TDataSource;
    qGroupsLSGROUP_ID: TIntegerField;
    tblLs_FULL: TTable;
    StringField3: TStringField;
    SmallintField1: TSmallintField;
    StringField4: TStringField;
    SmallintField2: TSmallintField;
    StringField5: TStringField;
    DateField1: TDateField;
    AutoIncField1: TAutoIncField;
    tblLs_FULLNameF: TStringField;
    tblLs_FULLNameIO: TStringField;
    qGroupsLSlookupNameF: TStringField;
    qGroupsLSlookupNameIO: TStringField;
    tblLS: TQuery;
    tblLSNameF: TStringField;
    tblLSNameIO: TStringField;
    tblLSBorn: TStringField;
    tblLSKodDolz: TSmallintField;
    tblLSlookupDolgnost: TStringField;
    tblLSKodPodr: TSmallintField;
    tblLSlookupPodr: TStringField;
    tblLSDataKomisTB: TDateField;
    tblLSTabNum: TAutoIncField;
    qPrint: TQuery;
    qPrintName: TStringField;
    qPrintDolg: TStringField;
    qPrintPodr: TStringField;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    edtPNumber: TEdit;
    dtpPDate: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    cbDolgnost: TComboBox;
    Label4: TLabel;
    Label1: TLabel;
    dtpTBDate: TDateTimePicker;
    Label5: TLabel;
    cbPodr: TComboBox;
    bQuit: TSpeedButton;
    btnPrint: TSpeedButton;
    Panel1: TPanel;
    Label8: TLabel;
    Splitter1: TSplitter;
    tblLSRegion: TStringField;
    tblLSPhone: TStringField;
    Label10: TLabel;
    CBDN: TComboBox;
    qGroupsLSPodr_ID: TIntegerField;
    qGroupsLSDolz_ID: TIntegerField;
    qGroupsLSPodrCalc: TStringField;
    qGroupsLSDolzCalc: TStringField;
    Label3: TLabel;
    Label2: TLabel;
    Label12: TLabel;
    SpeedButton2: TSpeedButton;
    PrintEH: TPrintDBGridEh;
    RichEdit1: TRichEdit;
    Label13: TLabel;
    Bevel1: TBevel;
    DTPickDateGroup: TDBDateTimeEditEh;
    btnProtocol: TSpeedButton;
    btnTelegramm: TSpeedButton;
    qPrintTabNum: TIntegerField;
    qGroupsLSNamePodr: TStringField;
    qGroupsLSlookupPhone: TStringField;
    tblLs_FULLPhone: TStringField;
    qGroupsLSlookupDataKomisTB: TDateField;
    Panel5: TPanel;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    SpeedButton1: TSpeedButton;
    LblKol: TLabel;
    qPrintNameF: TStringField;
    qPrintNameIO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblLSFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cbFilterInvisibleClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure qGroupsLSBeforePost(DataSet: TDataSet);
    procedure qGroupsLSBeforeDelete(DataSet: TDataSet);
    procedure DBGridEh4DblClick(Sender: TObject);
    procedure dtpTBDateChange(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure cbDolgnostChange(Sender: TObject);
    procedure cbPodrChange(Sender: TObject);
    procedure bQuitClick(Sender: TObject);
    procedure qGroupsLSAfterDelete(DataSet: TDataSet);
    procedure qGroupsLSCalcFields(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnProtocolClick(Sender: TObject);
    procedure btnTelegrammClick(Sender: TObject);
  private
    ListLs:TStringList;
    FGroupID:integer;
    procedure UpdateFilter;
    function NameToIO(Name:string):string;
  public
    constructor Create(AOwner:TComponent);override;
    procedure SetGroupID(AGroupID:integer;ANewGroup:boolean=False);
    destructor Destroy;override;
  end;


implementation

uses Math, groups;

{$R *.dfm}

procedure TFormNewGroup.FormCreate(Sender: TObject);
begin
  dtpTBDate.Date:=IncYear(Now,-1);
  tblDolgnost.Open;
  With tblDolgnost do
   begin
    First;
   While not Eof do
     begin
      cbDolgnost.Items.Add(tblDolgnostNaim.AsString);
      Next;
     end;
   end;
  tblPerPodr.Open;
  With tblPerPodr do
   begin
    First;
   While not Eof do
     begin
      cbPodr.Items.Add(tblPerPodrPodr.AsString);
      Next;
     end;
   end;
  tblLS.Open;
  UpdateFilter;
end;

procedure TFormNewGroup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qGroupsLS.Close;
  tblLS.Close;
  tblPerPodr.Close;
  tblDolgnost.Close;
end;

procedure TFormNewGroup.tblLSFilterRecord(DataSet: TDataSet; var Accept: Boolean);
Var Index:integer;
begin
  Accept:=False;
  Index:= ListLs.IndexOfName(tblLSTabNum.AsString);
  if Index>=0 Then if SameText(ListLs.ValueFromIndex[Index],'True') Then Exit;
  Accept:=True
end;

constructor TFormNewGroup.Create(AOwner: TComponent);
begin
  inherited;
  ListLs:=TStringList.Create;
end;

destructor TFormNewGroup.Destroy;
begin
  ListLs.Free;
  inherited;
end;

procedure TFormNewGroup.UpdateFilter;
Var _Bookmark:TBookmark;
    s:ansistring;
begin
   with tblLS do
    begin
      DisableControls;
      _Bookmark:=GetBookmark;
      s:='select * from LS where ((DataKomisTB<= '''+DateToSTR(dtpTBDate.Date)+''') or (DataKomisTB is null)) ';
      if tblDolgnost.Locate('Naim',cbDolgnost.Items[cbDolgnost.ItemIndex],[loCaseInsensitive]) THen
        s:=s+' and KodDolz='+tblDolgnostNum.AsString;
      if tblPerPodr.Locate('Podr',cbPodr.Items[cbPodr.ItemIndex],[loCaseInsensitive]) THen
        s:=s+' and KodPodr='+tblPerPodrN.AsString;
      if cbDN.ItemIndex>0 then
        s:=s+' and Region='''+cbDN.Items[cbDN.ItemIndex]+''' ';
      s:=s+' order by KodPodr';
      tblLS.SQL.Text:=s;
      tblLS.Active:=False;tblLS.Active:=True;
      IF Assigned(_Bookmark) and BookmarkValid(_Bookmark)  Then GotoBookmark(_Bookmark);
      EnableControls;
      if qGroupsLS.Active Then  Label2.Caption:=IntToSTR(qGroupsLS.RecordCount);
      if TblLS.Active Then  LblKol.Caption:=IntToSTR(TblLS.RecordCount)+' чел.';
    end;
end;

procedure TFormNewGroup.cbFilterInvisibleClick(Sender: TObject);
begin
  UpdateFilter;
end;

procedure TFormNewGroup.btnUpdateClick(Sender: TObject);
Var _Bookmark:TBookmark;
begin
  with tblLs do
   begin
    _Bookmark:=GetBookmark;
    DisableControls;
    First;
    While not EOF do
     begin
      if FieldByName('Visible').AsBoolean Then
       begin
        qGroupsLS.Insert;
        qGroupsLSLS_ID.AsInteger:=tblLSTabNum.Value;
        qGroupsLS.Post;
       end;
      Next;
     end;
     if BookmarkValid(_Bookmark) Then  GotoBookmark(_Bookmark);
     EnableControls;
   end;
end;

procedure TFormNewGroup.SetGroupID(AGroupID: integer;ANewGroup:boolean=False);
begin
  FGroupID:=AGroupID;
  qGroupsLS.ParamByName('GROUP_ID').Value:=AGroupID;
  qGroupsLS.Open;
  if not ANewGroup Then
   with qGroupsLS do
    begin
     DisableControls;
     First;
     while not EOF do
      begin
       ListLs.Values[qGroupsLSLS_ID.AsString]:='True';
       Next;
      end;
     First;
     EnableControls;
    end;
  UpdateFilter;
end;

procedure TFormNewGroup.DBGridEh1DblClick(Sender: TObject);
begin
  qGroupsLS.Append;
  qGroupsLSLS_ID.AsInteger:=tblLSTabNum.AsInteger;
  qGroupsLSGROUP_ID.AsInteger:=FGroupID;
  qGroupsLSDolz_ID.AsInteger:=tblLSKodDolz.AsInteger;
  qGroupsLSPodr_ID.AsInteger:=tblLSKodPodr.AsInteger;
  qGroupsLS.Post;
  UpdateFilter;
end;

procedure TFormNewGroup.qGroupsLSBeforePost(DataSet: TDataSet);
begin
  if (dsInsert = qGroupsLS.State) Then
   begin
    ListLs.Values[qGroupsLSLS_ID.AsString]:='True';
    UpdateFilter;
   end;
end;

procedure TFormNewGroup.qGroupsLSBeforeDelete(DataSet: TDataSet);
begin
    ListLs.Values[qGroupsLSLS_ID.AsString]:='False';
    
end;

procedure TFormNewGroup.DBGridEh4DblClick(Sender: TObject);
begin
 if qGroupsLS.RecordCount>0 Then qGroupsLS.Delete;
end;

procedure TFormNewGroup.dtpTBDateChange(Sender: TObject);
begin
 UpdateFilter;
end;

procedure TFormNewGroup.btnPrintClick(Sender: TObject);
Var WordApp:TWordApplication;
    FileName:OleVariant;
    Param,ReadOnly:OleVariant;
procedure Replace(_Find:Find;const Src,Dest:string);
begin
  with _Find do
   begin
    Text:=Src;
    Replacement.Text:= Dest;
    Param:=wdReplaceAll;
    Execute(EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,Param);
   end;
end;
Var List:TStringList;
    i,_Counter:integer;
begin
   qPrint.ParamByName('group_id').Value:=FGroupID;
   qPrint.Open;

   List:=TStringList.Create;
   with WordApp,qPrint do
    begin
     DisableControls;
     First;
     While not EOF do
      begin
       List.AddObject(qPrintNameF.AsString+NameToIO(qPrintNameIO.AsString),TObject(qPrint.RecNo));
       Next;
      end;
     List.CaseSensitive:=False;
     List.Sort;
     _Counter:=0;
    end;

  WordApp:=TWordApplication.Create(Self);
  try
   FileName:=ExtractFilePath(ParamSTR(0))+'Удостоверения.dot';
   ReadOnly:=False;
   WordApp.Documents.Add(FileName,ReadOnly);
   with WordApp,qPrint do
    begin
     ActiveDocument.Tables.Item(1).Range.Rows.Item(1).Select;
     Selection.Cut;
     First;
     For i:=List.Count-1 downto 0 do
      begin
       qPrint.RecNo:=Integer(List.Objects[i]);
       inc(_Counter);
       Param:=wdStory;
       Selection.HomeKey(Param,EmptyParam);
       Selection.Paste;
       ActiveDocument.Tables.Item(1).Range.Rows.Item(1).Select;
       Replace(Selection.Find,'##1',qPrintName.AsString);

       ActiveDocument.Tables.Item(1).Range.Rows.Item(1).Select;
       Replace(Selection.Find,'##2',qPrintDolg.AsString);

       ActiveDocument.Tables.Item(1).Range.Rows.Item(1).Select;
       Replace(Selection.Find,'##3',qPrintPodr.AsString);

       ActiveDocument.Tables.Item(1).Range.Rows.Item(1).Select;
       Replace(Selection.Find,'##5',IntToStr(List.Count- _Counter+1));

       Param:=_Counter;// qPrint.RecNo;//'Text Box 10';
       ActiveDocument.Shapes.Item(Param).Select(EmptyParam);
       try
        Selection.InlineShapes.AddPicture(ExtractFilePath(ParamSTR(0))+'Photo\photo'+qPrintTabNum.AsString+'.jpg',
         EmptyParam,EmptyParam,EmptyParam);
       except
//        MessageBox(Self.Handle,PAnsiChar(ExtractFilePath(ParamSTR(0))+'Photo\photo'+qPrintTabNum.AsString+'.jpg'),nil,MB_ICONERROR);
       end;
      end;
     Param:=wdStory;
     Selection.HomeKey(Param,EmptyParam);

     ActiveDocument.Select;
     Replace(Selection.Find,'##4',edtPNumber.Text);

     Replace(Selection.Find,'##6',DateToSTR(dtpPDate.Date));

     Selection.SetRange(0,0);
     Visible:=True;
     Activate;
    end;
  finally
   qPrint.Close;
   WordApp.Free;
   List.Free;
  end;
end;

procedure TFormNewGroup.cbDolgnostChange(Sender: TObject);
begin
  UpdateFilter;
end;

procedure TFormNewGroup.cbPodrChange(Sender: TObject);
begin
  UpdateFilter;
end;

procedure TFormNewGroup.bQuitClick(Sender: TObject);
begin
 Close;
end;

procedure TFormNewGroup.qGroupsLSAfterDelete(DataSet: TDataSet);
begin
 UpdateFilter;
end;

procedure TFormNewGroup.qGroupsLSCalcFields(DataSet: TDataSet);
begin
   qGroupsLSDolzCalc.Value:=WhatDolz(0,qGroupsLSDolz_ID.Value);
   qGroupsLSPodrCalc.Value:=WhatPodr(qGroupsLSPodr_ID.Value)
end;

procedure TFormNewGroup.SpeedButton1Click(Sender: TObject);
procedure App;
begin
  qGroupsLS.Append;
  qGroupsLSLS_ID.AsInteger:=tblLSTabNum.AsInteger;
  qGroupsLSGROUP_ID.AsInteger:=FGroupID;
  qGroupsLSDolz_ID.AsInteger:=tblLSKodDolz.AsInteger;
  qGroupsLSPodr_ID.AsInteger:=tblLSKodPodr.AsInteger;
  qGroupsLS.Post;
end;
begin
 if TblLS.RecordCount>0 then
 begin
    TblLS.First;
    App;
    Repeat
       TblLS.Next;
       App;
    Until TblLS.Eof;
    UpdateFilter;
 end;
end;

procedure TFormNewGroup.SpeedButton2Click(Sender: TObject);
var Title:string;
begin
   Title:=Label13.Caption+' '+dateToStr(DTPickDateGroup.Value);
   PrintEh.BeforeGridText.Clear;
   RichEdit1.Clear;
   RichEdit1.Lines.Add(Title);
   RichEdit1.Lines.Add('');
   RichEdit1.Lines.SaveToFile('1.txt');
   PrintEh.BeforeGridText.LoadFromFile('1.txt');
   DBGridEh4.Font.Style:=[];
   PrintEh.Preview;
   DBGridEh4.Font.Style:=[fsBold];
end;

procedure TFormNewGroup.btnProtocolClick(Sender: TObject);
Var WordApp:TWordApplication;
    FileName:OleVariant;
    Param,ReadOnly:OleVariant;
    _Counter:integer;
procedure Replace(_Find:Find;const Src,Dest:string);
begin
  with _Find do
   begin
    Text:=Src;
    Replacement.Text:=Dest;
    Param:=wdReplaceAll;
    Execute(EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,Param);
   end;
end;
Var List:TStringList;
    i:integer;
begin
  WordApp:=TWordApplication.Create(Self);
  List:=TStringList.Create;
  try
   FileName:=ExtractFilePath(ParamSTR(0))+'Протокол.dot';
   ReadOnly:=False;
   WordApp.Documents.Add(FileName,ReadOnly);
   with WordApp,qGroupsLS do
    begin
     DisableControls;
     First;
     While not EOF do
      begin
       List.AddObject(qGroupsLSlookupNameF.AsString+NameToIO(qGroupsLSlookupNameIO.AsString),TObject(qGroupsLS.RecNo));
       Next;
      end;
     List.CaseSensitive:=False;
     List.Sort;
     _Counter:=0;
     For i:=0 to List.Count-1 do
      begin
       qGroupsLS.RecNo:=Integer(List.Objects[i]);
       inc(_Counter);
       with ActiveDocument.Tables.Item(1).Rows.Add(EmptyParam) do
        begin
         Cells.Item(1).Range.Text:=IntToSTR(_Counter);
         Cells.Item(2).Range.Text:=qGroupsLSlookupNameF.AsString+NameToIO(qGroupsLSlookupNameIO.AsString);
         Cells.Item(3).Range.Text:=qGroupsLSDolzCalc.AsString;
         Cells.Item(4).Range.Text:=qGroupsLSNamePodr.AsString;
        end;
      end;

     ActiveDocument.Select;
     Replace(Selection.Find,'##1',DateToSTR(DTPickDateGroup.Value));
     Selection.End_:=0;

     Visible:=True;
     Activate;
     EnableControls;
    end;
  finally
   WordApp.Free;
   List.Free;
  end;
end;

procedure TFormNewGroup.btnTelegrammClick(Sender: TObject);
Var WordApp:TWordApplication;
    FileName:OleVariant;
    Param,ReadOnly:OleVariant;
    _Counter:integer;
    _Row:Row;
procedure Replace(_Find:Find;const Src,Dest:string);
begin
  with _Find do
   begin
    Text:=Src;
    Replacement.Text:=Dest;
    Param:=wdReplaceAll;
    Execute(EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,Param);
   end;
end;
begin
  WordApp:=TWordApplication.Create(Self);
  try
   FileName:=ExtractFilePath(ParamSTR(0))+'Телеграмма.dot';
   ReadOnly:=False;
   WordApp.Documents.Add(FileName,ReadOnly);
   with WordApp,qGroupsLS do
    begin
     DisableControls;
     First;
     _Counter:=0;
     While not EOF do
      begin
       inc(_Counter);
       if _Counter=1 Then _Row:=ActiveDocument.Tables.Item(1).Rows.First
       Else _Row:=ActiveDocument.Tables.Item(1).Rows.Add(EmptyParam);
       with _Row do
        begin
         Cells.Item(2).Range.Text:=qGroupsLSPodrCalc.AsString;
         Cells.Item(1).Range.Text:=qGroupsLSlookupNameF.AsString+NameToIO(qGroupsLSlookupNameIO.AsString);
        end;
       Next;
      end;

     ActiveDocument.Select;
     Replace(Selection.Find,'##1',DateToSTR(DTPickDateGroup.Value));
     Selection.End_:=0;
     //ActiveDocument.SaveAs:='123';

     Visible:=True;
     Activate;
     EnableControls;
    end;
  finally
   WordApp.Free;
  end;
end;

function TFormNewGroup.NameToIO(Name: string): string;
Var P:integer;
begin
  Result:='';
  Name:=Trim(Name);
  if Length(Name)=0 Then Exit;
  p:= pos(' ',Name);
  Result:=' '+Name[1]+'.';
  if p>0 Then Result:=Result+Trim(Copy(Name,p+1,Length(Name)))[1]+'.';
end;

end.
