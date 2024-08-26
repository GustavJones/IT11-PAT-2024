program BoereRaad_p;

uses
  Vcl.Forms,
  Application_u in 'Application_u.pas' {frmHome};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmHome, frmHome);
  Application.Run;
end.
