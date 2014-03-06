program editor;

uses
  Forms,
  Test in 'Test.pas' {FrmTest},
  Main in 'Main.pas' {Form1},
  Mymess in '..\..\MYMESS.PAS' {frmMyMess},
  AskPrn in 'AskPrn.pas' {frmAskPrn},
  WrRAS in '..\..\WRRAS.PAS' {frmWrRAS},
  WybLs in '..\..\Wybls.pas' {FrmWybLs},
  NewTest in 'NewTest.pas' {frmNewTest},
  PrintMod in '..\..\PrintMod.pas' {PrintModule: TDataModule},
  Pass in '..\Pass.pas' {frmPassword},
  Proc in '..\PROC.PAS',
  MyData in '..\MyData.pas',
  DM in '..\DM.pas' {DataModule1: TDataModule},
  Kateg in 'Kateg.pas' {FrmKateg},
  Ini in '..\Ini.pas' {FrmIni},
  NewTema in 'NewTema.pas' {FrmNewTema},
  Adapt in 'Adapt.pas' {FrmAdapt},
  Ask2 in 'Ask2.pas' {FrmAsk2};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Редактор экзаменов';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TPrintModule, PrintModule);
  Application.CreateForm(TfrmPassword, frmPassword);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFrmIni, FrmIni);
  Application.CreateForm(TFrmTest, FrmTest);
  Application.CreateForm(TFrmNewTema, FrmNewTema);
  Application.CreateForm(TFrmAdapt, FrmAdapt);
  Application.CreateForm(TFrmAsk2, FrmAsk2);
  Application.Run;
end.
