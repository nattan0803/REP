program ProjectREP;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmInserirREP};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmInserirREP, frmInserirREP);
  Application.Run;
end.
