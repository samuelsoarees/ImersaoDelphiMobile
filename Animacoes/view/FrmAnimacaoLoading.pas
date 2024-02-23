unit FrmAnimacaoLoading;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani, FMX.Objects, FMX.Layouts;

type
  TFrmLoading = class(TForm)
    lytLoading: TLayout;
    rec12: TRectangle;
    lyt2: TLayout;
    img6: TImage;
    fltaniLoading: TFloatAnimation;
    lyt1: TLayout;
    btnExibir: TSpeedButton;
    procedure btnExibirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLoading: TFrmLoading;

implementation

{$R *.fmx}

procedure TFrmLoading.btnExibirClick(Sender: TObject);
begin
  lytLoading.Visible := True;
  TThread.CreateAnonymousThread(
  procedure
  begin
    Sleep(3000);

    TThread.Synchronize(TThread.CurrentThread,
    procedure
    begin
      lytLoading.Visible := False;
    end);
  end).Start;
end;

end.
