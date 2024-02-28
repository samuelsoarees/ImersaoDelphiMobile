unit uFrmThreadPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TFrmThreadPrincipal = class(TForm)
    recTitulo: TRectangle;
    lblImersaoDelphi: TLabel;
    recSemThread: TRectangle;
    btnSemThread: TSpeedButton;
    recComThread: TRectangle;
    btnComThread: TSpeedButton;
    lblTeste: TLabel;
    recComThreadComSync: TRectangle;
    btnComThreadComSync: TSpeedButton;
    recThreadException: TRectangle;
    btnThreadException: TSpeedButton;
    procedure btnSemThreadClick(Sender: TObject);
    procedure btnComThreadClick(Sender: TObject);
    procedure btnComThreadComSyncClick(Sender: TObject);
    procedure btnThreadExceptionClick(Sender: TObject);
  private
    procedure IniciarThread;
    procedure IniciarThreadComSync;
    procedure IniciarThreadComErro;
    procedure OnFinished(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FrmThreadPrincipal: TFrmThreadPrincipal;

implementation

{$R *.fmx}

procedure TFrmThreadPrincipal.btnComThreadClick(Sender: TObject);
begin
  IniciarThread;
end;

procedure TFrmThreadPrincipal.btnComThreadComSyncClick(Sender: TObject);
begin
  IniciarThreadComSync;
end;

procedure TFrmThreadPrincipal.btnSemThreadClick(Sender: TObject);
begin
  Sleep(5000);
end;

procedure TFrmThreadPrincipal.btnThreadExceptionClick(Sender: TObject);
begin
  IniciarThreadComErro;
end;

procedure TFrmThreadPrincipal.IniciarThread;
var
  LThread: TThread;
begin
  LThread := TThread.CreateAnonymousThread(
  procedure
  begin
    lblTeste.Text := 'Ola mundo sem sincronização';
    Sleep(5000);
  end);

  LThread.OnTerminate := OnFinished;

  LThread.Start;
end;

procedure TFrmThreadPrincipal.IniciarThreadComErro;
var
  LThread: TThread;
begin
  LThread := TThread.CreateAnonymousThread(
  procedure
  begin
    Sleep(1000);
    raise Exception.Create('Erro ao rodar a thread');
  end);

  LThread.OnTerminate := OnFinished;

  LThread.Start;
end;

procedure TFrmThreadPrincipal.IniciarThreadComSync;
var
  LThread: TThread;
begin
  LThread := TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Queue(nil,
    procedure
    begin
      lblTeste.Text := 'Ola mundo com Sincronização';
    end);
    Sleep(5000);
  end);

  LThread.OnTerminate := OnFinished;

  LThread.Start;
end;

procedure TFrmThreadPrincipal.OnFinished(Sender: TObject);
begin
  if Sender is TThread then
  begin
    if Assigned(TThread(Sender).FatalException) then
      ShowMessage('Ops....  ' + #13 + Exception(TThread(Sender).FatalException).Message)
    else
      ShowMessage('Thread finalizada!');
  end;
end;

end.
