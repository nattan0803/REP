unit REP.models.TModelRegistro;

interface

type
  TModelRegistro = class
  private
    FNSR: string;
    FTipoRegistro: string;
    FData: TDate;
    FHoraMinuto: string;
    FPIS: string;
    FExcedente: string;
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TRegistro }



{ TModelRegistro }

constructor TModelRegistro.Create;
begin

end;

destructor TModelRegistro.Destroy;
begin

  inherited;
end;

end.

