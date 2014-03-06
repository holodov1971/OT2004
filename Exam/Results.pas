unit Results;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, Buttons,Printers,ExtCtrls, MyData, Proc, ComCtrls,
  DBGridEh, PrnDbgeh, DBCtrls, ImgList, PrintMod, GridsEh, WordXP, OleServer, ComObj;

type
  TfrmResults = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SBPrint: TSpeedButton;
    bFull: TSpeedButton;
    bUnit: TSpeedButton;
    CmbPodr: TComboBox;
    DateTimePicker1: TDateTimePicker;
    bDate: TSpeedButton;
    Shape2: TShape;
    Shape3: TShape;
    Shape1: TShape;
    Shape4: TShape;
    bPers: TSpeedButton;
    Label3: TLabel;
    PrintEH: TPrintDBGridEh;
    grdRes: TDBGridEh;
    dsRes: TDataSource;
    tabRes: TTable;
    tabResDate: TDateField;
    tabResTabNum: TIntegerField;
    tabResFIO: TStringField;
    tabResKodPodr: TIntegerField;
    tabResKodDolg: TIntegerField;
    tabResResults: TMemoField;
    Panel2: TPanel;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    tabResRes: TStringField;
    tabResNote: TStringField;
    tabResTimeBegin: TTimeField;
    tabResTimeTotal: TTimeField;
    tabResQTotal: TIntegerField;
    tabResQCorrect: TIntegerField;
    tabResQIncorrect: TIntegerField;
    tabRescalcQ: TStringField;
    bErase: TSpeedButton;
    ilExType: TImageList;
    tabResExType: TSmallintField;
    bPrintProt: TBitBtn;
    PrinterSetupDialog: TPrinterSetupDialog;
    bWordProt: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CmbPodrChange(Sender: TObject);
    procedure bFullClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SEGodChange(Sender: TObject);
    procedure bDateClick(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure SBPrintClick(Sender: TObject);
    procedure grdResGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure tabResCalcFields(DataSet: TDataSet);
    procedure bEraseClick(Sender: TObject);
    procedure bPrintProtClick(Sender: TObject);
    procedure bWordProtClick(Sender: TObject);
  private
    { Private declarations }
    FIO:st40;
    TabNum,KodPodr:integer;
     YesPrn:boolean;
     procedure NewFilter;
  public
    { Public declarations }
  end;

var
  frmResults: TfrmResults;
  PrintQuery: TQuery;
  RabStr:Pointer;
implementation

{$R *.DFM}

procedure TfrmResults.FormCreate(Sender: TObject);
begin
   YesPrn:=false;
   tabRes.Active:=true;
   ZapolnPodr(CmbPodr);
   CmbPodr.ItemIndex:=0;
   CmbPodrChange(Sender);
   DateTimePicker1.Date:=date;
   tabRes.Last;
end;

procedure TfrmResults.SpeedButton1Click(Sender: TObject);
begin
   tabRes.Active:=false;
   Close;
end;

procedure TfrmResults.NewFilter;
var s:string;
begin
  s:='';
  if bDate.Down then  s:=s+'(Date='''+DateToStr(DateTimePicker1.Date)+''')';
  {по подр.}
  if bUnit.Down then
  begin
     if s<>'' then s:=s+'and';
     S:=s+'(KodPodr='+IntToStr(KodPodrArr[CmbPodr.ItemIndex+1])+')';
  end else
  if bPers.Down then
  begin
     if s<>'' then s:=s+'and';
     S:=s+'(KodPodr='+IntToStr(KodPodr)+')and(TabNum='+IntToStr(TabNum)+')';
  end;

  tabRes.Filter:=s;
end;

procedure TfrmResults.CmbPodrChange(Sender: TObject);
begin
   NewFilter;
end;

procedure TfrmResults.bFullClick(Sender: TObject);
var i:integer;
begin
   if bPers.Down then
   begin
     I:=WyborLS(LSKodPodr,LSKodDolz,LSKodDolzDop,Group, LSNameF, LSNameIO,LSDolzCalc,LSPodr,LSBorn);
     if i>0 then
     begin
        if LSNameIO<>'' then FIO:=LSNameF+' '+Copy(LSNameIO,1,1)+'.'+
           Copy(LSNameIO,Pos(' ',LSNameIO)+1,1)+'.' else FIO:=LSNameF;
        FIO:=LSPodr+' '+FIO;
        KodPodr:=LSKodPodr;
        TabNum:=i;
        Label3.Caption:=FIO;
     end else bFull.Down:=true;
   end;
   CmbPodr.Visible:=bUnit.Down;
   Label3.Visible:=bPers.Down;
   NewFilter;
end;

procedure TfrmResults.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   tabRes.Active:=false;
end;


procedure TfrmResults.SEGodChange(Sender: TObject);
begin
   NewFilter;
end;


procedure TfrmResults.bDateClick(Sender: TObject);
begin
   DateTimePicker1.Visible:=bDate.Down;
   NewFilter;
end;

procedure TfrmResults.DateTimePicker1Change(Sender: TObject);
begin
   NewFilter;
end;

procedure TfrmResults.SBPrintClick(Sender: TObject);
begin
  //print grid
  PrintEH.Preview;
end;

procedure TfrmResults.grdResGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Sender as TDBGridEH).DataSource.DataSet.FieldByName('Res').Value='знает'
  then AFont.Color:=$00C08000
  else
  if (Sender as TDBGridEH).DataSource.DataSet.FieldByName('Res').Value='прерван'
  then AFont.Color:=clBlack
  else AFont.Color:=$00400080;
end;

procedure TfrmResults.tabResCalcFields(DataSet: TDataSet);
begin
   tabRescalcQ.Value:=tabResQcorrect.AsString+'/'+tabResQincorrect.AsString;
end;

procedure TfrmResults.bEraseClick(Sender: TObject);
begin
  if MessageDlg('Удалить все показанные результаты?', mtConfirmation, [mbYes, mbNo], 0) =
  mrYes then
  begin
     tabRes.DisableControls;
     tabRes.First;
     while not tabRes.Eof do tabRes.Delete;
     tabRes.EnableControls;
  end;
end;

procedure TfrmResults.bPrintProtClick(Sender: TObject);
begin
  if PrinterSetupDialog.Execute then
    PrintModule.PrintMemo('Экзаменующийся: '+tabResFIO.Value+#13#10+
                          'Дата: '+tabResDate.AsString,
       DBMemo1,
       '============================================='+#13#10+
       'Затраченное время: '+tabResTimeTotal.AsString+#13#10+
       'Всего вопросов: '+tabResQTotal.AsString+#13#10+
       'Правильных ответов: '+tabResQCorrect.AsString+#13#10+
       'Неправильных ответов: '+tabResQIncorrect.AsString+#13#10+
       'Итог: '+tabResRes.Value, DBMemo1.Font);
end;

procedure TfrmResults.bWordProtClick(Sender: TObject);
  var
    MSWord: Variant;
begin
     MsWord := CreateOleObject('Word.Application');
     MSWord.Documents.Add;
     MSWord.Selection.Font.Bold := true; //выделем жирным
     MSWord.Selection.Font.Size := 12;
     MsWord.Selection.TypeText('Экзаменующийся: '+tabResFIO.Value);
     MSWord.Selection.TypeText(#13#10); //перевод строки
     MsWord.Selection.TypeText('Дата: '+tabResDate.AsString);
     MSWord.Selection.TypeText(#13#10); //перевод строки
     MSWord.Selection.Font.Size := 10;
     MSWord.Selection.Font.Bold := false; //не выделем жирным
     MsWord.Selection.TypeText(DBMemo1.Text);
     MSWord.Selection.TypeText(#13#10); //перевод строки
     MSWord.Selection.Font.Size := 12;
     MSWord.Selection.Font.Bold := true; //выделем жирным
     MsWord.Selection.TypeText('=============================================');
     MSWord.Selection.TypeText(#13#10); //перевод строки
     MsWord.Selection.TypeText('Затраченное время: '+tabResTimeTotal.AsString);
     MSWord.Selection.TypeText(#13#10); //перевод строки
     MsWord.Selection.TypeText('Всего вопросов: '+tabResQTotal.AsString);
     MSWord.Selection.TypeText(#13#10); //перевод строки
     MsWord.Selection.TypeText('Правильных ответов: '+tabResQCorrect.AsString);
     MSWord.Selection.TypeText(#13#10); //перевод строки
     MsWord.Selection.TypeText('Неправильных ответов: '+tabResQIncorrect.AsString);
     MSWord.Selection.TypeText(#13#10); //перевод строки
     MsWord.Selection.TypeText('Итог: '+tabResRes.Value);
     MSWord.Selection.TypeText(#13#10); //перевод строки
     MSWord.Selection.Start:=0; // Перевод курсора в начало текста
     MSWord.Selection.End:=0;
     MsWord.Visible:=true;
     MsWord.activate;
end;

end.
