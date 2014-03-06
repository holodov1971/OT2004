unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, IniFiles,
  Buttons, StdCtrls, jpeg, ExtCtrls, MyData,  Menus, DB, DBTables, ShellAPI, Ini,
  DateUtils;

const  KolTipPodr=6;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Image1: TImage;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    bQuestions: TSpeedButton;
    bTests: TSpeedButton;
    bExit: TSpeedButton;
    bConfig: TSpeedButton;
    ListBox1: TListBox;
    Bevel2: TBevel;
    Bevel3: TBevel;
    bSave: TSpeedButton;
    bLoad: TSpeedButton;
    SaveDialog: TSaveDialog;
    OpenDialog: TOpenDialog;
    Label2: TLabel;
    procedure bQuestionsClick(Sender: TObject);
    procedure bTestsClick(Sender: TObject);
    procedure bExitClick(Sender: TObject);
    procedure bConfigClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure bLoadClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    function  ExecuteFile(const FileName, Params, DefaultDir: string; ShowCmd: Integer): THandle;
    procedure SaveBackUp(S: string);  //СБЭКАПИТЬ БАЗЫ (список чего бэкапить - в файле backup.lst)
    procedure LoadBackUp(S: string);  //ВОССТАНОВИТЬ ИЗ АРХИВА
  public
    { Public declarations }
  end;

var
    Form1: TForm1;

implementation

uses Test, Pass, Unit2, Kateg, Adapt, Ask2;

{$R *.DFM}
function TForm1.ExecuteFile(const FileName, {имя программы}
                           Params,   {парамы}
                           DefaultDir: string;          {рабочий каталог}
                           ShowCmd: Integer): THandle;  {параметры окна}
//Функция запуска внешней программы (winrar, etc.)
//Пример запуска: executeFile('maker.exe','text_file','c:\maker', SW_SHOWNORMAL);
var
  zFileName, zParams, zDir: array[0..79] of Char;
begin
  Result := ShellExecute(Application.MainForm.Handle, nil,
  StrPCopy(zFileName, FileName), StrPCopy(zParams, Params),
  StrPCopy(zDir, DefaultDir), ShowCmd);
end;

procedure TForm1.SaveBackUp(S: string);  //СБЭКАПИТЬ БАЗЫ
//S - название архива  rar a backup @backup.lst
begin
   ExecuteFile('winrar.exe','a '+S+' @exbackup.lst',ExtractFilePath(Application.EXEName),SW_SHOWNORMAL);
end;

procedure TForm1.LoadBackUp(S: string);  //ВОССТАНОВИТЬ УКАЗАННЫЙ БЭКАП
begin
   try ExecuteFile('winrar.exe','x '+S,ExtractFilePath(Application.EXEName),SW_SHOWNORMAL) finally end;
end;

procedure TForm1.bQuestionsClick(Sender: TObject);
begin
   FrmAsk2:=TFrmAsk2.Create(Application);
   FrmAsk2.ShowModal;
   FrmAsk2.Free;
end;

procedure TForm1.bTestsClick(Sender: TObject);
begin
 if YesPasswAD then YesPassword:=true else
 begin
  frmPassword:=TfrmPassword.Create(Application);
  Repeat
     frmPassword.TipPass:='A';
     YesPassword:=false;
     frmPassword.ShowModal;
     frmPassword.TipPass:='-';
  Until YesPassword or frmPassword.Cancel;
  frmPassword.Free;
 end;
 if YesPassword then
 begin
   FrmAdapt:=TFrmAdapt.Create(Application);
   FrmAdapt.ShowModal;
   FrmAdapt.Free;
 end;
end;

procedure TForm1.bExitClick(Sender: TObject);
begin
   Close
end;

procedure TForm1.bConfigClick(Sender: TObject);
begin
 if YesPasswAD then YesPassword:=true else
 begin
  frmPassword:=TfrmPassword.Create(Application);
  Repeat
     frmPassword.TipPass:='A';
     YesPassword:=false;
     frmPassword.ShowModal;
     frmPassword.TipPass:='-';
  Until YesPassword or frmPassword.Cancel;
  frmPassword.Free;
 end;
 if YesPassword then
 begin
   FrmKateg:=TFrmKateg.Create(Application);
   FrmKateg.ShowModal;
   FrmKateg.Free;
 end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:integer;
    IniFile: TIniFile;
    StringList: TStringList;
begin
  Session.AddPassword('xamenator');
  Session.AddPassword('122605');
  YesPasswAD:=false;
  OldPass:='kdfkshfk';
   DataPath:=ExtractFilePath(Application.EXEName)+'data';
   RabDisk:=DataPath[1]+':';
   IniFile:=TIniFile.Create(DataPath+'\exam.ini');
   PasswAd:=IniFile.ReadString('Main','PA','');
   PasswExam:=IniFile.ReadString('Main','PE','');
   ModeExam:=IniFile.ReadInteger('Main','ModeE',0);
   YesPasswKat:=IniFile.ReadBool('Main','PasswKat',false);
   YesPasswTem:=IniFile.ReadBool('Main','PasswTem',false);
   ServerIB:=IniFile.ReadString('Main','ServerIB',''); // Holodov 20140212   
   IniFile.Free;

(*  frmPassword:=TfrmPassword.Create(Application);
  Repeat
     frmPassword.TipPass:='X';
     YesPassword:=false;
     frmPassword.ShowModal;
     frmPassword.TipPass:='-';
  Until YesPassword or frmPassword.Cancel;

  if frmPassword.Cancel then Application.Terminate;*)

YesPassword:=true;
  if YesPassword then
  begin
  end;
//  IniPodr;
//  IniDolz;
end;

procedure TForm1.bSaveClick(Sender: TObject);
var s: string; // имя файла
    t: TFormatSettings;
begin
  t.ShortDateFormat:='ddmmyy';
  SaveDialog.InitialDir:=ExtractFilePath(Application.EXEName);
  SaveDialog.FileName:='exam'+DateToStr(now,t)+'.backup';
  if SaveDialog.Execute then
  try
    Screen.Cursor:=crHourGlass;
    SaveBackUp(SaveDialog.FileName);
  finally Screen.Cursor:=crDefault end;
end;

procedure TForm1.bLoadClick(Sender: TObject);
begin
   OpenDialog.InitialDir:=BkUpDIR;
   if OpenDialog.Execute then LoadBackUp(OpenDialog.FileName);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   FrmKateg:=TFrmKateg.Create(Application);
   FrmKateg.ShowModal;
   FrmKateg.Free;

end;

end.
