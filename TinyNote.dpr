program TinyNote;

uses
  Forms,
  main in 'main.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '�����ǩ';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
