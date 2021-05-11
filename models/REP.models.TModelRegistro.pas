unit REP.models.TModelRegistro;

interface

type
  TModelRegistro = class
  private
    FNSR: string;
    FTipoRegistro: string;
    FData: string;
    FHoraMinuto: string;
    FPIS: string;
    FExcedente: string;
  public
    constructor Create;
    destructor Destroy; override;
    function ToString: string; override;
    property NSR: string read FNSR write FNSR;
    property TipoRegistro: string read FTipoRegistro write FTipoRegistro;
    property Data: string read FData write FData;
    property HoraMinuto: string read FHoraMinuto write FHoraMinuto;
    property PIS: string read FPIS write FPIS;
    property Excedente: string read FExcedente write FExcedente;
  end;

implementation

{ TModelRegistro }

constructor TModelRegistro.Create;
begin

end;

destructor TModelRegistro.Destroy;
begin

  inherited;
end;

function TModelRegistro.ToString: string;
begin

end;

end.

