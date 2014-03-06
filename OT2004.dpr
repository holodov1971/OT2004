program OT2004;

uses
  Forms,
  MainOT in 'MainOT.pas' {frmMain},
  Ls in 'Ls.pas' {frmLS},
  ProvTB in 'PROVTB.PAS' {frmProvTB},
  Medosv in 'MEDOSV.PAS' {FrmMedosv},
  Ini in 'Ini.pas' {FrmIni},
  Perdolg in 'PERDOLG.PAS' {frmPerDolg},
  Perpodr in 'PERPODR.PAS' {frmPerPodr},
  Proc in 'Proc.pas',
  Format in 'FORMAT.PAS' {frmFormatPage},
  Mydata in 'MyData.pas',
  Mydate in 'MYDATE.PAS',
  groups in 'groups.pas' {FormGroups},
  newgroup in 'newgroup.pas' {FormNewGroup},
  dmMain in 'dmMain.pas' {dtmMain: TDataModule};

{$R *.res}
{$R myres.res}

begin
  //asm int 3 end;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TFrmIni, FrmIni);
  Application.CreateForm(TfrmFormatPage, frmFormatPage);
  Application.CreateForm(TdtmMain, dtmMain);
  Application.Run;
end.
