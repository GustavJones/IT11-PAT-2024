program BoereRaad_p;



uses
  Vcl.Forms,
  Application_u in 'Application_u.pas' {frmHome},
  Vcl.Themes,
  Vcl.Styles,
  dmBoereraad_u in 'dmBoereraad_u.pas' {dmBoereraad: TDataModule},
  RemedyTile_u in 'RemedyTile_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmHome, frmHome);
  Application.CreateForm(TdmBoereraad, dmBoereraad);
  Application.Run;
end.
