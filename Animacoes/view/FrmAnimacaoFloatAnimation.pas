unit FrmAnimacaoFloatAnimation;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Ani, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit,
  FMX.EditBox, FMX.NumberBox;

type
  TFrmFloatAnimation = class(TForm)
    fltaniBack: TFloatAnimation;
    crclBack: TCircle;
    crclBounce: TCircle;
    fltaniBounce: TFloatAnimation;
    crclCircular: TCircle;
    fltaniCircular: TFloatAnimation;
    lblBack: TLabel;
    lblInterpolacoes: TLabel;
    lblBounce: TLabel;
    lblCircular: TLabel;
    crclCubic: TCircle;
    fltaniCubic: TFloatAnimation;
    lblCubic: TLabel;
    crclElastic: TCircle;
    fltaniElastic: TFloatAnimation;
    lblElastic: TLabel;
    crclExponential: TCircle;
    fltaniExponential: TFloatAnimation;
    lblExponential: TLabel;
    crclLinear: TCircle;
    fltaniLinear: TFloatAnimation;
    lblLinear: TLabel;
    crclQuadratic: TCircle;
    fltaniQuadratic: TFloatAnimation;
    lblQuadratic: TLabel;
    crclQuartic: TCircle;
    fltaniQuartic: TFloatAnimation;
    lblQuartic: TLabel;
    crclQuintic: TCircle;
    fltaniQuintic: TFloatAnimation;
    lblQuintic: TLabel;
    crclSinusoidal: TCircle;
    fltaniSinusoidal: TFloatAnimation;
    lblSinusoidal: TLabel;
    rbIn: TRadioButton;
    rbInOut: TRadioButton;
    rbOut: TRadioButton;
    lytAnimationType: TLayout;
    lblTituloAnimationType: TLabel;
    chkLoop: TCheckBox;
    btnStart: TButton;
    btnStop: TButton;
    chkInverse: TCheckBox;
    nmbrbxTime: TNumberBox;
    lblTempo: TLabel;
    chkAutoReverse: TCheckBox;
    procedure chkLoopChange(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure chkInverseChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbInChange(Sender: TObject);
    procedure nmbrbxTimeChange(Sender: TObject);
    procedure chkAutoReverseChange(Sender: TObject);
  private
    procedure SetAnimationType;
    procedure SetTimeAnimation;
  public
    { Public declarations }
  end;

var
  FrmFloatAnimation: TFrmFloatAnimation;

implementation

{$R *.fmx}

procedure TFrmFloatAnimation.btnStartClick(Sender: TObject);
begin
  SetTimeAnimation;
  fltaniBack.Start;
  fltaniBounce.Start;
  fltaniCircular.Start;
  fltaniCubic.Start;
  fltaniElastic.Start;
  fltaniExponential.Start;
  fltaniLinear.Start;
  fltaniQuadratic.Start;
  fltaniQuartic.Start;
  fltaniQuintic.Start;
  fltaniSinusoidal.Start;
end;

procedure TFrmFloatAnimation.btnStopClick(Sender: TObject);
begin
  fltaniBack.Stop;
  fltaniBounce.Stop;
  fltaniCircular.Stop;
  fltaniCubic.Stop;
  fltaniElastic.Stop;
  fltaniExponential.Stop;
  fltaniLinear.Stop;
  fltaniQuadratic.Stop;
  fltaniQuartic.Stop;
  fltaniQuintic.Stop;
  fltaniSinusoidal.Stop;
end;

procedure TFrmFloatAnimation.chkAutoReverseChange(Sender: TObject);
begin
  fltaniBack.AutoReverse := chkAutoReverse.IsChecked;
  fltaniBounce.AutoReverse := chkAutoReverse.IsChecked;
  fltaniCircular.AutoReverse := chkAutoReverse.IsChecked;
  fltaniCubic.AutoReverse := chkAutoReverse.IsChecked;
  fltaniElastic.AutoReverse := chkAutoReverse.IsChecked;
  fltaniExponential.AutoReverse := chkAutoReverse.IsChecked;
  fltaniLinear.AutoReverse := chkAutoReverse.IsChecked;
  fltaniQuadratic.AutoReverse := chkAutoReverse.IsChecked;
  fltaniQuartic.AutoReverse := chkAutoReverse.IsChecked;
  fltaniQuintic.AutoReverse := chkAutoReverse.IsChecked;
  fltaniSinusoidal.AutoReverse := chkAutoReverse.IsChecked;
end;

procedure TFrmFloatAnimation.chkInverseChange(Sender: TObject);
begin
  fltaniBack.Inverse := chkInverse.IsChecked;
  fltaniBounce.Inverse := chkInverse.IsChecked;
  fltaniCircular.Inverse := chkInverse.IsChecked;
  fltaniCubic.Inverse := chkInverse.IsChecked;
  fltaniElastic.Inverse := chkInverse.IsChecked;
  fltaniExponential.Inverse := chkInverse.IsChecked;
  fltaniLinear.Inverse := chkInverse.IsChecked;
  fltaniQuadratic.Inverse := chkInverse.IsChecked;
  fltaniQuartic.Inverse := chkInverse.IsChecked;
  fltaniQuintic.Inverse := chkInverse.IsChecked;
  fltaniSinusoidal.Inverse := chkInverse.IsChecked;
end;

procedure TFrmFloatAnimation.chkLoopChange(Sender: TObject);
begin
  fltaniBack.Loop := chkLoop.IsChecked;
  fltaniBounce.Loop := chkLoop.IsChecked;
  fltaniCircular.Loop := chkLoop.IsChecked;
  fltaniCubic.Loop := chkLoop.IsChecked;
  fltaniElastic.Loop := chkLoop.IsChecked;
  fltaniExponential.Loop := chkLoop.IsChecked;
  fltaniLinear.Loop := chkLoop.IsChecked;
  fltaniQuadratic.Loop := chkLoop.IsChecked;
  fltaniQuartic.Loop := chkLoop.IsChecked;
  fltaniQuintic.Loop := chkLoop.IsChecked;
  fltaniSinusoidal.Loop := chkLoop.IsChecked;
end;

procedure TFrmFloatAnimation.FormShow(Sender: TObject);
begin
  SetAnimationType;
  SetTimeAnimation;
end;

procedure TFrmFloatAnimation.nmbrbxTimeChange(Sender: TObject);
begin
  SetTimeAnimation;
end;

procedure TFrmFloatAnimation.rbInChange(Sender: TObject);
begin
  SetAnimationType;
end;

procedure TFrmFloatAnimation.SetAnimationType;
var
  LAnimationType: TAnimationType;
begin
  if rbIn.IsChecked then
    LAnimationType := TAnimationType.In
  else if rbInOut.IsChecked then
    LAnimationType := TAnimationType.InOut
  else
    LAnimationType := TAnimationType.Out;

  fltaniBack.AnimationType := LAnimationType;
  fltaniBounce.AnimationType := LAnimationType;
  fltaniCircular.AnimationType := LAnimationType;
  fltaniCubic.AnimationType := LAnimationType;
  fltaniElastic.AnimationType := LAnimationType;
  fltaniExponential.AnimationType := LAnimationType;
  fltaniLinear.AnimationType := LAnimationType;
  fltaniQuadratic.AnimationType := LAnimationType;
  fltaniQuartic.AnimationType := LAnimationType;
  fltaniQuintic.AnimationType := LAnimationType;
  fltaniSinusoidal.AnimationType := LAnimationType;
end;

procedure TFrmFloatAnimation.SetTimeAnimation;
begin
  fltaniBack.Duration := nmbrbxTime.Value;
  fltaniBounce.Duration := nmbrbxTime.Value;
  fltaniCircular.Duration := nmbrbxTime.Value;
  fltaniCubic.Duration := nmbrbxTime.Value;
  fltaniElastic.Duration := nmbrbxTime.Value;
  fltaniExponential.Duration := nmbrbxTime.Value;
  fltaniLinear.Duration := nmbrbxTime.Value;
  fltaniQuadratic.Duration := nmbrbxTime.Value;
  fltaniQuartic.Duration := nmbrbxTime.Value;
  fltaniQuintic.Duration := nmbrbxTime.Value;
  fltaniSinusoidal.Duration := nmbrbxTime.Value;
end;

end.
