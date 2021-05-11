unit REP.models.TModelListaRegistro;

interface

uses
  REP.models.TModelRegistro, System.SysUtils, System.Classes,
  System.Generics.Collections;

type
  TModelListaRegistro = class
  private
    FModelListaRegistro: TObjectList<TModelRegistro>;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Adicionar(pModelRegistro: TModelRegistro);
    procedure Remover(Index: Integer);
    function Listar(): TObjectList<TModelRegistro>;
    function Count: Integer;
    function ToString: string; override;
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
  inherited Create;
  FModelListaRegistro := TObjectList<TModelRegistro>.Create;
end;

destructor TModelListaRegistro.Destroy;
begin

  inherited;
end;

function TModelListaRegistro.Listar(): TArray<TModelRegistro>;
//var
//  i: integer;
//  Items: string;
//begin
//  for i := 0 to Self.Count do
//  begin
//    Self.Items[i];
//  end;
begin
  Result := FModelListaRegistro.List;
end;

procedure TModelListaRegistro.Remover(Index: Integer);
begin
  if Index < Count then
    FModelListaRegistro.Delete(Index)
  else
  begin
    ShowMessage('Objeto id: ' + IntToStr(Index) + ' n�o encontrado na Lista de Registros');
  end;

end;

function TModelListaRegistro.ToString: string;
begin
  inherited ToString;
end;

end.

