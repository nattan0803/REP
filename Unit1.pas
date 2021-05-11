unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtDlgs, Vcl.ExtCtrls;

type
  TfrmInserirREP = class(TForm)
    edtCaminho: TEdit;
    etnExplorar: TButton;
    dlgExplorar: TOpenTextFileDialog;
    grdDadosRep: TDBGrid;
    mnmDadosREP: TMemo;
    pnlStatus: TPanel;
    DataSource1: TDataSource;
    brCount: TButton;
    procedure etnExplorarClick(Sender: TObject);
    procedure brCountClick(Sender: TObject);
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
  isLoading: Boolean;

implementation

uses
  REP.models.TModelRegistro, REP.models.TModelListaRegistro;

{$R *.dfm}

procedure TfrmInserirREP.brCountClick(Sender: TObject);
var
  instance: TModelListaRegistro;
begin
  instance.Listar;
end;

procedure TfrmInserirREP.etnExplorarClick(Sender: TObject);
var
  linhaFormatada: string;
  tamanhoDaLinha, i: Integer;
  ModelRegistro: TModelRegistro;
  ModelListaRegistro: TModelListaRegistro;
  list: string;
begin



//  list :=    ModelListaRegistro.Create.Listar;






  dlgExplorar.Execute();
  CaminhoArquivoAFD := dlgExplorar.FileName;
  AssignFile(TxtDadosREP, CaminhoArquivoAFD);
{$I-}
  Reset(TxtDadosREP);
{$I+}

  if (IoResult <> 0) then
    pnlStatus.Caption := ('Erro na abertura do arquivo!!😤😡😓')
  else
  begin

    // Começa limpando caso haja dados anteriores
    mnmDadosREP.Clear;

    // enquanto não chegar no fim da linha faça.
    while (not eof(TxtDadosREP)) do
    begin
    {$I-}
      Readln(TxtDadosREP, line);
      tamanhoDaLinha := line.Trim.Length;
      linhaFormatada := line.Trim;
//      mnmDadosREP.Lines.Add(line);
      if tamanhoDaLinha = 34 then
      begin
        ModelRegistro := TModelRegistro.Create;
        ModelListaRegistro := TModelListaRegistro.Create;
        ModelRegistro.NSR := Copy(linhaFormatada, 1, 9);
        ModelRegistro.TipoRegistro := Copy(linhaFormatada, 10, 1);
        ModelRegistro.Data := Copy(linhaFormatada, 11, 8);
        ModelRegistro.HoraMinuto := Copy(linhaFormatada, 19, 4);
        ModelRegistro.PIS := Copy(linhaFormatada, 22, 12);
        ModelListaRegistro.Adicionar(ModelRegistro);
        ShowMessage('Objeto salvo com PIS: ' + ModelRegistro.PIS + ' Tamanho atual da Lista: ');
//        ModelListaRegistro.FreeInstance;
//        ModelRegistro.FreeInstance;
      end;
//      mnmDadosREP.Lines.Add(ModelRegistro);
    {$I+}
    end;

//    for i := 0 to ModelListaRegistro.Count do
//    begin
//    mnmDadosREP.Lines.Add(ModelListaRegistro);
//    end;
//    DataSource1.DataSet.SetFields(ModelListaRegistro);
  end;
  closefile(TxtDadosREP);

end;

end.

