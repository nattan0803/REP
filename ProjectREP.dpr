program ProjectREP;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmInserirREP},
  REP.models.TModelRegistro in 'models\REP.models.TModelRegistro.pas',
  REP.models.TModelListaRegistro in 'models\REP.models.TModelListaRegistro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmInserirREP, frmInserirREP);
  Application.Run;
end.
