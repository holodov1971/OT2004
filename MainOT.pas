unit MainOT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls,  jpeg, ExtCtrls, ToolWin,
  ActnMan, ActnCtrls, ActnMenus, StdActns, ExtActns, ActnList, Ini, ShellAPI,
  XPStyleActnCtrls, XPActnCtrls, ActnColorMaps, ImgList, StdCtrls, ComCtrls,groups;

type
  TfrmMain = class(TForm)
    BG: TImage;
    ActionManager1: TActionManager;
    FileExit1: TFileExit;
    MenuBar: TActionMainMenuBar;
    MyColorMap: TXPColorMap;
    ActLS: TAction;
    ActExam: TAction;
    ActMO: TAction;
    ImageList: TImageList;
    ActPodr: TAction;
    ActDolg: TAction;
    pApp: TPanel;
    iExam: TImage;
    ilInAct: TImageList;
    ilAct: TImageList;
    iBio: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Ani: TAnimate;
    iExamEdit: TImage;
    Label3: TLabel;
    maGroups: TAction;
    procedure FormCreate(Sender: TObject);
    procedure ActLSExecute(Sender: TObject);
    procedure ActExamExecute(Sender: TObject);
    procedure ActMOExecute(Sender: TObject);
    procedure ActPodrExecute(Sender: TObject);
    procedure ActDolgExecute(Sender: TObject);
    procedure pAppMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iconMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iExamClick(Sender: TObject);
    procedure iExamEditClick(Sender: TObject);
    procedure iBioClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure maGroupsExecute(Sender: TObject);
  private
    { Private declarations }
    procedure PopupClass(Sender: TObject; var PopupClass: TCustomPopupClass);
    function  ExecuteFile(const FileName, Params, DefaultDir: string; ShowCmd: Integer): THandle;
    procedure SaveBackUp(S: string);  //СБЭКАПИТЬ БАЗЫ (список чего бэкапить - в файле backup.lst)
    procedure LoadBackUp(S: string);  //ВОССТАНОВИТЬ ИЗ АРХИВА
  public
    { Public declarations }
  end;

  { TCustomLayeredActionPopupEx для прозрачности меню}
  TCustomLayeredActionPopupEx = class(TXPStylePopupMenu)
  private
    FAlphaBlend: Boolean;
    FAlphaBlendValue: Byte;
    FTransparentColor: Boolean;
    FTransparentColorValue: TColor;
    procedure SetAlphaBlend(const Value: Boolean);
    procedure SetAlphaBlendValue(const Value: Byte);
    procedure SetTransparentColor(const Value: Boolean);
    procedure SetTransparentColorValue(const Value: TColor);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWindowHandle(const Params: TCreateParams); override;
    procedure InitAlphaBlending(var Params: TCreateParams);
    procedure SetLayeredAttribs;
    property AlphaBlend: Boolean read FAlphaBlend write SetAlphaBlend;
    property AlphaBlendValue: Byte read FAlphaBlendValue write SetAlphaBlendValue;
    property TransparentColor: Boolean read FTransparentColor write SetTransparentColor;
    property TransparentColorValue: TColor read FTransparentColorValue write SetTransparentColorValue;
  public
    constructor Create(AOwner: TComponent); override;
  end;

  TIcon = record
            Img: TImage;
            Lbl: string;
          end;
var
  frmMain: TfrmMain;
  Icons: TIcon; //массив "иконок"
  IconNum: integer; //кол-во выводимых иконок

implementation

uses Ls, ProvTB, Medosv, Perpodr, Perdolg;

{$R *.dfm}

{ TCustomLayeredActionPopup }

procedure TCustomLayeredActionPopupEx.SetAlphaBlend(const Value: Boolean);
begin
  if FAlphaBlend <> Value then
  begin
    FAlphaBlend := Value;
    SetLayeredAttribs;
  end;
end;

procedure TCustomLayeredActionPopupEx.SetAlphaBlendValue(const Value: Byte);
begin
  if FAlphaBlendValue <> Value then
  begin
    FAlphaBlendValue := Value;
    SetLayeredAttribs;
  end;
end;

procedure TCustomLayeredActionPopupEx.SetLayeredAttribs;
const
  cUseAlpha: array [Boolean] of Integer = (0, LWA_ALPHA);
  cUseColorKey: array [Boolean] of Integer = (0, LWA_COLORKEY);
var
  AStyle: Integer;
begin
  if not (csDesigning in ComponentState) and
    (Assigned(SetLayeredWindowAttributes)) and HandleAllocated then
  begin
    AStyle := GetWindowLong(Handle, GWL_EXSTYLE);
    if FAlphaBlend then
    begin
      if (AStyle and WS_EX_LAYERED) = 0 then
        SetWindowLong(Handle, GWL_EXSTYLE, AStyle or WS_EX_LAYERED);
      SetLayeredWindowAttributes(Handle, FTransparentColorValue, FAlphaBlendValue,
        cUseAlpha[FAlphaBlend] or cUseColorKey[FTransparentColor]);
    end
    else
    begin
      SetWindowLong(Handle, GWL_EXSTYLE, AStyle and not WS_EX_LAYERED);
      RedrawWindow(Handle, nil, 0, RDW_ERASE or RDW_INVALIDATE or RDW_FRAME or RDW_ALLCHILDREN);
    end;
  end;
end;

procedure TCustomLayeredActionPopupEx.SetTransparentColorValue(const Value: TColor);
begin
  if FTransparentColorValue <> Value then
  begin
    FTransparentColorValue := Value;
    SetLayeredAttribs;
  end;
end;

procedure TCustomLayeredActionPopupEx.SetTransparentColor(const Value: Boolean);
begin
  if FTransparentColor <> Value then
  begin
    FTransparentColor := Value;
    SetLayeredAttribs;
  end;
end;

procedure TCustomLayeredActionPopupEx.InitAlphaBlending(var Params: TCreateParams);
begin
  if not (csDesigning in ComponentState) and (assigned(SetLayeredWindowAttributes)) then
    if FAlphaBlend or FTransparentColor then
      Params.ExStyle := Params.ExStyle or WS_EX_LAYERED;
end;

procedure TCustomLayeredActionPopupEx.CreateWindowHandle(
  const Params: TCreateParams);
begin
  inherited;
  SetLayeredAttribs;
end;

constructor TCustomLayeredActionPopupEx.Create(AOwner: TComponent);
begin
  inherited;
  FAlphaBlend := True;
  FAlphaBlendValue := 180;
  FTransparentColorValue := clWhite;
end;

procedure TCustomLayeredActionPopupEx.CreateParams(
  var Params: TCreateParams);
begin
  inherited;
  InitAlphaBlending(Params);
end;

procedure TfrmMain.PopupClass(Sender: TObject;
  var PopupClass: TCustomPopupClass);
begin
  PopupClass := TCustomLayeredActionPopupEx;
end;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

procedure TfrmMain.FormCreate(Sender: TObject); //--------------------------------
begin
  //Interface Settings:
  MenuBar.OnGetPopupClass := PopupClass;
  MyColorMap.Color:=$00EEDBD6;
  MyColorMap.MenuColor:=$00FCF7F3;
  MyColorMap.HotColor:=$00D09B8C;
  Ani.ResHandle:=frmMain.ClientHandle;
  Ani.ResName:='LOGO';
  Ani.Active:=True;
end;//--------------------------------------------------------------------------

procedure TfrmMain.FormActivate(Sender: TObject);
begin
  IniPodr;
  IniDolz;
  IniDolzDop;
end;

procedure TfrmMain.ActLSExecute(Sender: TObject);
begin
  //Вывод LS
  frmLS:=TfrmLS.Create(Application);
  frmLS.ShowModal;
  frmLS.Free;
end;

procedure TfrmMain.ActExamExecute(Sender: TObject);
begin
  //Сдачи экзам.
   frmProvTB:=TFrmProvTB.Create(Application);
   frmProvTB.ShowModal;
   frmProvTB.Free;
end;

procedure TfrmMain.ActMOExecute(Sender: TObject);
begin
  //Прох. МО
  frmMedOsv:=TFrmMedOsv.Create(Application);
  frmMedOsv.ShowModal;
  frmMedOsv.Free;
end;

procedure TfrmMain.ActPodrExecute(Sender: TObject);
begin
  //список подр.
  frmPerPodr:=TfrmPerPodr.Create(Application);
    frmPerPodr.Width:=pApp.Left;
    frmPerPodr.Height:=pApp.Height;
    frmPerPodr.Left:=0;
    frmPerPodr.Top:=0;
  frmPerPodr.ShowModal;
  frmPerPodr.Free;
end;

procedure TfrmMain.ActDolgExecute(Sender: TObject);
begin
  //спис.должн.
  frmPerDolg:=TfrmPerDolg.Create(Application);
    frmPerDolg.Width:=pApp.Left;
    frmPerDolg.Height:=pApp.Height;
    frmPerDolg.Left:=0;
    frmPerDolg.Top:=0;
  frmPerDolg.ShowModal;
  frmPerDolg.Free;
end;

procedure TfrmMain.pAppMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin  //...отключаем подсветку...
   ilInAct.GetBitmap(0, iExam.Picture.Bitmap);
   ilInAct.GetBitmap(1, iExamEdit.Picture.Bitmap);
   ilInAct.GetBitmap(2, iBio.Picture.Bitmap);

   pApp.Repaint;
end;

procedure TfrmMain.iconMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   with (Sender as TImage) do
   begin
     ilAct.GetBitmap(Tag, Picture.Bitmap); //навели
     Repaint;
   end;
end;

procedure TfrmMain.iExamClick(Sender: TObject);
begin
  //Экзаменатор
   ExecuteFile('exam.exe','',ExtractFilePath(Application.EXEName),SW_SHOWNORMAL);
end;

procedure TfrmMain.iExamEditClick(Sender: TObject);
begin
   //Редактор экзамен-ра
   ExecuteFile('editor.exe','',ExtractFilePath(Application.EXEName),SW_SHOWNORMAL);
end;

procedure TfrmMain.iBioClick(Sender: TObject);
begin
   //Биоритмы
   ExecuteFile('biotb.exe','',ExtractFilePath(Application.EXEName),SW_SHOWNORMAL);
end;

function TFrmMain.ExecuteFile(const FileName, {имя программы}
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

procedure TFrmMain.SaveBackUp(S: string);  //СБЭКАПИТЬ БАЗЫ
//S - название архива  rar a backup @backup.lst
begin
   try ExecuteFile('winrar.exe','a '+S+' @backup.lst',ExtractFilePath(Application.EXEName),SW_SHOWNORMAL)
   finally
   end;
end;

procedure TFrmMain.LoadBackUp(S: string);  //ВОССТАНОВИТЬ УКАЗАННЫЙ БЭКАП
begin
   try ExecuteFile('winrar.exe','x '+S,ExtractFilePath(Application.EXEName),SW_SHOWNORMAL) finally end;
end;

procedure TfrmMain.maGroupsExecute(Sender: TObject);
begin
  with TFormGroups.Create(Self) do
   begin
    ShowModal;
    Free;
   end;

end;

end.
