program ImersaoDelphiAnimacao;

uses
  System.StartUpCopy,
  FMX.Forms,
  FrmAnimacaoFiltros in 'view\FrmAnimacaoFiltros.pas' {FrmFiltros},
  FrmAnimacaoFloatAnimation in 'view\FrmAnimacaoFloatAnimation.pas' {FrmFloatAnimation},
  FrmAnimacaoLoading in 'view\FrmAnimacaoLoading.pas' {FrmLoading},
  FrmAnimacaoPrincipal in 'view\FrmAnimacaoPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
