program ImersaoDelphiResponsividade;

uses
  System.StartUpCopy,
  FMX.Forms,
  uFrmResponsividadeAlign in 'view\uFrmResponsividadeAlign.pas' {FrmResponsividadeAlign},
  uFrmResponsividadeMargins in 'view\uFrmResponsividadeMargins.pas' {FrmResponsividadeMargins},
  uFrmResponsividadePrincipal in 'view\uFrmResponsividadePrincipal.pas' {FrmResponsividadePrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmResponsividadePrincipal, FrmResponsividadePrincipal);
  Application.Run;
end.
