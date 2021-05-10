unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtDlgs;

type
  TfrmInserirREP = class(TForm)
    edtCaminho: TEdit;
    etnExplorar: TButton;
    dlgExplorar: TOpenTextFileDialog;
    grdDadosRep: TDBGrid;
    mnmDadosREP: TMemo;
    procedure etnExplorarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TxtDadosREP: TextFile;
  line: string;
  CaminhoArquivoAFD: string;
  frmInserirREP: TfrmInserirREP;

implementation

{$R *.dfm}

procedure TfrmInserirREP.etnExplorarClick(Sender: TObject);
begin
  dlgExplorar.Execute();
  CaminhoArquivoAFD := dlgExplorar.FileName;
  AssignFile(TxtDadosREP, CaminhoArquivoAFD);
{$I-}
  Reset(TxtDadosREP);
{$I+}
  if (IoResult <> 0) then
    mnmDadosREP.Lines.Add('Erro na abertura do arquivo!!😤😡😓')
  else
  begin
    while (not eof(TxtDadosREP)) do
    begin
      Readln(TxtDadosREP, line);
      mnmDadosREP.Lines.Add(line);
    end;
    closefile (TxtDadosREP);
  end;

end;

end.
