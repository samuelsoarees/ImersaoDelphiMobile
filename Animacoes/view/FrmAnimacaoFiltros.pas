unit FrmAnimacaoFiltros;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.TabControl;

type
  TFrmFiltros = class(TForm)
    btnSemAnimacao: TButton;
    btnSemAnimacao1: TButton;
    lytFiltros: TLayout;
    rec: TRectangle;
    recFiltros: TRectangle;
    fltAniRecFiltros: TFloatAnimation;
    lyt: TLayout;
    lyt5: TLayout;
    rec4: TRectangle;
    btnCancelar: TSpeedButton;
    rec5: TRectangle;
    btnConfirmar: TSpeedButton;
    lyt10: TLayout;
    lbl8: TLabel;
    btnCloseFiltros: TSpeedButton;
    tbcFiltros: TTabControl;
    tbitFiltros: TTabItem;
    recBackFiltros: TRectangle;
    vrtscrlbxFiltros: TVertScrollBox;
    tbitListagem: TTabItem;
    rec3: TRectangle;
    lyt13: TLayout;
    lblTituloLista: TLabel;
    btnBackFiltros: TSpeedButton;
    rec6: TRectangle;
    lvDadosFiltros: TListView;
    imgSelected: TImage;
    imgNotSelected: TImage;
    fltaniAniFiltro: TFloatAnimation;
    procedure fltaniAniFiltroFinish(Sender: TObject);
    procedure fltAniRecFiltrosFinish(Sender: TObject);
    procedure btnSemAnimacao1Click(Sender: TObject);
    procedure btnSemAnimacaoClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure ExibirFiltros;
    procedure EsconderFiltros;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltros: TFrmFiltros;

implementation

{$R *.fmx}


procedure TFrmFiltros.btnCancelarClick(Sender: TObject);
begin
  lytFiltros.Visible := False;
end;

procedure TFrmFiltros.btnConfirmarClick(Sender: TObject);
begin
  EsconderFiltros;
end;

procedure TFrmFiltros.btnSemAnimacao1Click(Sender: TObject);
begin
  ExibirFiltros;
end;

procedure TFrmFiltros.btnSemAnimacaoClick(Sender: TObject);
begin
  lytFiltros.Visible := True;
end;

procedure TFrmFiltros.EsconderFiltros;
begin
  fltaniAniFiltro.Start;
  fltAniRecFiltros.Start;
end;

procedure TFrmFiltros.ExibirFiltros;
begin
  lytFiltros.Opacity := 0;
  lytFiltros.Visible := True;
  recFiltros.Margins.Bottom := -220;

  fltaniAniFiltro.Tag := 0;
  fltaniAniFiltro.Inverse := false;
  fltaniAniFiltro.StartValue := 0;
  fltaniAniFiltro.StopValue := 1;

  fltAniRecFiltros.Tag := 0;
  fltAniRecFiltros.Inverse := false;
  fltAniRecFiltros.StartValue := -220;
  fltAniRecFiltros.StopValue := -20;

  fltaniAniFiltro.Start;
  fltAniRecFiltros.Start;
end;

procedure TFrmFiltros.fltaniAniFiltroFinish(Sender: TObject);
begin
  if fltaniAniFiltro.Tag = 0 then
  begin
    fltaniAniFiltro.Tag := 1;
    fltaniAniFiltro.Inverse := true;
  end
  else
    lytFiltros.Visible := false;
end;

procedure TFrmFiltros.fltAniRecFiltrosFinish(Sender: TObject);
begin
  if fltAniRecFiltros.Tag = 0 then
  begin
    fltAniRecFiltros.Tag := 1;
    fltAniRecFiltros.Inverse := true;
  end
  else
    recFiltros.Margins.Bottom := -220;
end;

procedure TFrmFiltros.FormCreate(Sender: TObject);
begin
  lytFiltros.Visible := False;
end;

end.
