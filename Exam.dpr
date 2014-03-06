program Exam;

uses
  Forms,
  title in 'Exam\title.pas' {frmExam},
  card in 'Exam\card.pas' {frmCard},
  init in 'Exam\INIT.PAS' {frmInit},
  Ini in 'Exam\Ini.pas' {FrmIni},
  NTesta in 'Exam\NTESTA.PAS' {FrmNTesta},
  Results in 'Exam\Results.pas' {frmResults},
  Nastr in 'Exam\EDITOR\Nastr.pas' {FrmNastr},
  WybLs in 'Exam\WybLs.pas' {FrmWybLs},
  Proc in 'Exam\PROC.PAS',
  DM in 'Exam\DM.pas' {DataModule1: TDataModule},
  Mydata in 'Exam\MyData.pas',
  Pass in 'Exam\Pass.pas' {frmPassword},
  PravOtv in 'Exam\PravOtv.pas' {FrmPravOtv};

{$R *.RES}

begin
  Application.Initialize;
  with TfrmInit.Create(nil) do
  try
    Update;
    Application.Title := 'Экзаменатор';
    Application.CreateForm(TfrmExam, frmExam);
  Application.CreateForm(TfrmPassword, frmPassword);
  Application.CreateForm(TFrmPravOtv, FrmPravOtv);
  Show;
  ProgressBar1.StepBy(10);
  Application.CreateForm(TFrmIni, FrmIni);
  ProgressBar1.StepBy(20);
  Application.CreateForm(TDataModule1, DataModule1);
  ProgressBar1.StepBy(20);
  Application.CreateForm(TFrmWybLs, FrmWybLs);
  ProgressBar1.StepBy(20);
  Application.CreateForm(TFrmNTesta, FrmNTesta);
  ProgressBar1.StepBy(30);
    Application.CreateForm(TfrmCard, frmCard);
  finally Free end;
  Application.Run;
end.
