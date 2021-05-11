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
  isLoading: Boolean;

implementation

uses
  REP.models.TModelRegistro;

{$R *.dfm}

procedure TfrmInserirREP.etnExplorarClick(Sender: TObject);
var
  linhaFormatada: string;
  tamanhoDaLinha: Integer;
  pedaco1, pedaco2, pedaco3, pedaco4, pedaco5: string;
  ModelRegistro: TModelRegistro;
begin
  dlgExplorar.Execute();
  CaminhoArquivoAFD := dlgExplorar.FileName;
  AssignFile(TxtDadosREP, CaminhoArquivoAFD);
  isLoading := false;
{$I-}
  Reset(TxtDadosREP);
{$I+}

  if isLoading then
  begin
    pnlStatus.Caption := 'Aguarde enquanto os dados são processados.';
  end
  else
  begin
    pnlStatus.Caption := '';
  end;

  if (IoResult <> 0) then
    pnlStatus.Caption := ('Erro na abertura do arquivo!!😤😡😓')
  else
  begin
    ModelRegistro := TModelRegistro.Create;

    // Começa limpando caso haja dados anteriores
    mnmDadosREP.Clear;

    // enquanto não chegar no fim da linha faça.
    while (not eof(TxtDadosREP)) do
    begin
    {$I-}
      Readln(TxtDadosREP, line);
      tamanhoDaLinha := line.Trim.Length;
      linhaFormatada := line.Trim;

      if tamanhoDaLinha = 34 then
      begin
        pedaco1 := Copy(linhaFormatada, 1, 9);
        pedaco2 := Copy(linhaFormatada, 10, 1);
        pedaco3 := Copy(linhaFormatada, 11, 8);
        pedaco4 := Copy(linhaFormatada, 19, 4);
        pedaco5 := Copy(linhaFormatada, 22, 12);
        ShowMessage('Linha processada: ' + pedaco1 + ' ' + pedaco2 + ' ' + pedaco3 + ' ' + pedaco4 + ' ' + pedaco5);

      end;
//      ShowMessage('Tamanho da linha:  \n' + IntToStr(tamanhoDaLinha) + '\n   linha formatada:  \n' + linhaFormatada);
//      mnmDadosREP.Lines.Add(line);
      if line.StartsWith('999999999') then
      begin
        isLoading := false;
      end;
    {$I+}
    end;

  end;
  closefile(TxtDadosREP);

end;

//procedure SliceAllLine(Line: string; WhereSlice: array of AnsiString);
//begin
//
//end;

end.

