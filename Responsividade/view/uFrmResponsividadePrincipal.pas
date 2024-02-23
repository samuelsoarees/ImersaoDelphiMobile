unit uFrmResponsividadePrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TFrmResponsividadePrincipal = class(TForm)
    recTitulo: TRectangle;
    lblImersaoDelphi: TLabel;
    recFloatAnimation: TRectangle;
    btnAlign: TSpeedButton;
    recMargins: TRectangle;
    btnMargins: TSpeedButton;
    procedure btnAlignClick(Sender: TObject);
    procedure btnMarginsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmResponsividadePrincipal: TFrmResponsividadePrincipal;

implementation

uses
  uFrmResponsividadeAlign, uFrmResponsividadeMargins;

{$R *.fmx}

procedure TFrmResponsividadePrincipal.btnAlignClick(Sender: TObject);
begin
  if not Assigned(FrmResponsividadeAlign) then
    Application.CreateForm(TFrmResponsividadeAlign, FrmResponsividadeAlign);
  FrmResponsividadeAlign.Show;
end;

procedure TFrmResponsividadePrincipal.btnMarginsClick(Sender: TObject);
begin
  if not Assigned(FrmResponsividadeMargins) then
    Application.CreateForm(TFrmResponsividadeMargins, FrmResponsividadeMargins);
  FrmResponsividadeMargins.Show;
end;

end.
