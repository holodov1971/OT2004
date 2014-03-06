unit Mydata;
interface
Uses IniFiles, Registry, Windows, DBTables, SysUtils, BDE;
type st80=string[80];
     st40=string[40];
     st20=string[20];
     st10=string[10];
     TSortBy= set of (byName, byPost); //сортировка - по имени или по должности

const KolPodr=300;
      KolTipPodr=5;
      KolDolz=500;
      TextVsego='ВСЕГО:';
      KolKp=80;
      KolDorog=10;
      KolDist=15;
      NameMes:array[1..12]of string=('січень','лютий','березень','квітень','травень','червень','липень','серпень','вересень','жовтень','листопад','грудень');

var {новая версия}
    IDVidExam,IDKatExam:integer;
    NameExam:string;
var DataPath, GlPathDius, TBPath:string;
    BkUpDir: string;
    IniFile: TIniFile;
    KodKr,NameDiskWord,ScanR:st10;
    PrizProg:char;
    KolPodrReal,KolDolzReal,KolDolzDopReal, KolLetHr:integer;
    NumEche, NameECHE, nameEcheRod, FIOTB, IOTB, OboznTB:string;
    NEche,TabNumTB,KolPodrEXAM:integer;
    NamePodr:array[1..KolTipPodr]of string;
    ChPodr:array[0..KolTipPodr]of char;
    NumPodrWybLS:integer;
    KodKrOld:st10;
    PodrArr:array[1..KolPodr]of string[20];
    ChKodPodrArr,ChKodPodrLArr:array[1..KolPodr]of char;
    KodPodrArr:array[1..KolPodr]of integer;
    KodKrPodrArr:array[1..KolPodr]of string[5];
    DolzArr,DolzDopArr:array[1..KolDolz]of string[60];
    TipDolzArr,KodDolzArr,KodDolzDopArr:array[1..KolDolz]of integer;
    RabDisk:string[5];
    PasswProfotb,PasswTren,PasswServ,PasswAll, PasswExam:st10;
    YesPassword, YesGrup:boolean;
    NameDor,NameDist,nameDorSl,FIOSl,FIOUZ:st80;
    NDor:integer; {По порядку}
    NameScanSh:st80;
    admin: boolean;
    SortBy: TSortBy;  //способ сортировки списка персонала

{удаленный доступ}
    PrizRAS:array[1..100]of integer;
    NFrm:integer;
    Doroga:st10;
    NumDor:integer;
    YesRAS:boolean;
    SlPath: string; //путь к службе
    OKPath: string; //путь к ОК

    ModemComPort:integer;
    

{для выбора ЛС}
    LSTabNum,LSKodPodr,LSKodDolz,LSKodDolzDop:integer;
    LSNameF,LSNameIO,LSDolzCalc,LSPodr,LSBorn:st40;
    Group: integer;

{УкрЗалізниця}
    KodDost:char;
    NDorogi_Ar:array[1..KolDorog] of integer;{автоинкрементное поле}
    Doroga_Ar:array[1..KolDorog] of st40;
    KodDoroga_Ar:array[1..KolDorog] of st10;
    NDist_Ar,NPPDist_Ar:array[1..KolDorog,1..KolDist] of integer;{автоинкрементное поле  и № ЭЧ п/п}
    Dist_Ar:array[1..KolDorog,1..KolDist] of st40;
    DistPoln_Ar:array[1..KolDorog,1..KolDist] of st80;
    KolDorReal:integer;
    KolDistReal:array[1..KolDorog]of integer;
    WybDoroga,WybDist:integer;
    ActForm,ActFormIzm:integer;

{проф.отбор}
    Pr,PrSS,UBD:real;
    SR:integer;
{экзаменатор}
    ExamTabNum: integer;
    KolVopr,KolNOtv,Mode:integer;

    CommonStr:array[1..10]of string[100];
    CommonInt:array[1..10]of integer;
    CommonData:array[1..10]of TDateTime;

    WybLSPodr:integer;
  {цвета для объектов и секций}
  {цвета для объектов и секций}
const ClNeisprBlock=$00A67B0D;
      clZablok=$00A67B0D;
      clOtklRab=$00A67B0D;
      clMU=$008AB0FF;
      clTU_RU=$00A67B0D;
      clNoZvuk=$00A67B0D;
      clOtklSekc=$00FF00;//color_LightGreen;
      clOtklDlaRabSekc=$00A67B0D;
      clWybSekc=$00A67B0D;
      DocRegKey='\Software\Microsoft\Windows\CurrentVersion\Extensions\';

//      'HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options'
// HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Extensions\  doc  ^...

var YesKino,YesGame:boolean;
    act:integer;
    WordPath: string;

function ShellFolder(const folderType:string):string;
function GetAliasDir(sAlias: string): string;

implementation

//Cache,Cookies,Desktop,Favorites,Fonts,Personal,Programs,SendTo,Start Menu,Startup,NetHood,AppData
function ShellFolder(const folderType:string):string;
var registry:TRegistry;
begin
  result:='';
  Registry := TRegistry.Create;
  try
     Registry.RootKey := HKEY_CURRENT_USER;
     Registry.OpenKey('Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders', False);
     result:= Registry.ReadString(folderType);
  finally
     Registry.Free;
  end;
end;

function GetAliasDir(sAlias: string): string;
var
  Database: TDatabase;
  pszDir: PChar;
begin
  Database := TDatabase.Create(nil);        {выделяем времмено память}

  pszDir := StrAlloc(255);
  try
    Database.AliasName := sAlias;
    Database.DatabaseName := 'TEMP';   {requires a name -- is ignored}
    Database.Connected := True;    {connect without opening any table}
    DbiGetDirectory(Database.Handle, True, pszDir);     {get the dir.}
    Database.Connected := False;                          {disconnect}
    Result := StrPas(pszDir);                    {convert to a string}
  finally
    Database.Free;                                       {free memory}
    StrDispose(pszDir);
  end;
end;

end.
