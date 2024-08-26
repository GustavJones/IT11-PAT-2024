program BoereRaad_p;

uses
  Vcl.Forms,
  Application_u in 'Application_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
