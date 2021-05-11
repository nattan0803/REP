unit REP.models.TModelListaRegistro;

interface

uses
  System.Classes, REP.models.TModelRegistro, System.SysUtils;

type
  TModelListaRegistro = class
  private
    FModelListaRegistro: TList;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Adicionar(pModelRegistro: TModelRegistro);
    procedure Remover(Index: Integer);
    function Count: Integer;
  end;

implementation

uses
  Vcl.Dialogs;

{ TModelListaRegistro }

procedure TModelListaRegistro.Adicionar(pModelRegistro: TModelRegistro);
begin
  FModelListaRegistro.Add(pModelRegistro);
end;

function TModelListaRegistro.Count: Integer;
begin
  Result := FModelListaRegistro.Count;
end;

constructor TModelListaRegistro.Create;
begin

end;

destructor TModelListaRegistro.Destroy;
begin

  inherited;
end;

procedure TModelListaRegistro.Remover(Index: Integer);
begin
  if Index < Count then
    FModelListaRegistro.Delete(Index)
  else
  begin
    ShowMessage('Objeto id: ' + IntToStr(Index) + ' não encontrado na Lista de Registros');
  end;

end;

end.

