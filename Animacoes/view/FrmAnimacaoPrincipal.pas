unit FrmAnimacaoPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    recTitulo: TRectangle;
    lblImersaoDelphi: TLabel;
    recLoading: TRectangle;
    btnLoading: TSpeedButton;
    recFloatAnimation: TRectangle;
    btnFloatAnimation: TSpeedButton;
    recFiltros: TRectangle;
    btnFiltros: TSpeedButton;
    procedure btnFloatAnimationClick(Sender: TObject);
    procedure btnLoadingClick(Sender: TObject);
    procedure btnFiltrosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  FrmAnimacaoFloatAnimation,
  FrmAnimacaoFiltros,
  FrmAnimacaoLoading;

{$R *.fmx}

procedure TfrmPrincipal.btnFiltrosClick(Sender: TObject);
begin
  if not Assigned(FrmLoading) then
    Application.CreateForm(TFrmLoading, FrmLoading);

  FrmLoading.Show;
end;

procedure TfrmPrincipal.btnFloatAnimationClick(Sender: TObject);
begin
  if not Assigned(FrmFloatAnimation) then
    Application.CreateForm(TFrmFloatAnimation, FrmFloatAnimation);

  FrmFloatAnimation.Show;
end;

procedure TfrmPrincipal.btnLoadingClick(Sender: TObject);
begin
  if not Assigned(FrmFiltros) then
    Application.CreateForm(TFrmFiltros, FrmFiltros);

  FrmFiltros.Show;
end;

end.
