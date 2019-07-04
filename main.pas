unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RXShell, RxGrdCpt, rxPlacemnt, Menus, ExtCtrls;

type
  TfrmMain = class(TForm)
    Memo1: TMemo;
    FormStorage1: TFormStorage;
    RxTrayIcon1: TRxTrayIcon;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Timer1: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxTrayIcon1DblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Hide;
  Action := caNone;
end;

procedure TfrmMain.RxTrayIcon1DblClick(Sender: TObject);
begin
  Show;
end;

procedure TfrmMain.N1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  SetWindowLong(Application.Handle, GWL_EXSTYLE, WS_EX_TOOLWINDOW);
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
  FormStorage1.SaveFormPlacement;
end;

end.
