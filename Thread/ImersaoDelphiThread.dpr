program ImersaoDelphiThread;

uses
  System.StartUpCopy,
  FMX.Forms,
  uFrmThreadPrincipal in 'view\uFrmThreadPrincipal.pas' {FrmThreadPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmThreadPrincipal, FrmThreadPrincipal);
  Application.Run;
end.
