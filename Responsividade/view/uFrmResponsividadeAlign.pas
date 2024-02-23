unit uFrmResponsividadeAlign;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox;

type
  TFrmResponsividadeAlign = class(TForm)
    lytTeste: TLayout;
    rec1: TRectangle;
    lytBottom: TLayout;
    btnReset: TButton;
    cboAlinhamentos: TComboBox;
    lblRectangle: TLabel;
    lyt1: TLayout;
    lyt2: TLayout;
    procedure btnResetClick(Sender: TObject);
    procedure cboAlinhamentosChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmResponsividadeAlign: TFrmResponsividadeAlign;

implementation

{$R *.fmx}

procedure TFrmResponsividadeAlign.btnResetClick(Sender: TObject);
begin
  cboAlinhamentos.ItemIndex := -1;
  rec1.Position.X := 140;
  rec1.Position.Y := 250;
  rec1.Height := 100;
  rec1.Width := 100;
end;

procedure TFrmResponsividadeAlign.cboAlinhamentosChange(Sender: TObject);
begin
  case cboAlinhamentos.ItemIndex of
    0: rec1.Align := TAlignLayout.Bottom;
    1: rec1.Align := TAlignLayout.Center;
    2: rec1.Align := TAlignLayout.Client;
    3: rec1.Align := TAlignLayout.Contents;
    4: rec1.Align := TAlignLayout.Left;
    5: rec1.Align := TAlignLayout.Right;
    6: rec1.Align := TAlignLayout.Scale;
    7: rec1.Align := TAlignLayout.Top;
    else
      rec1.Align := TAlignLayout.None;
  end;
end;

end.
