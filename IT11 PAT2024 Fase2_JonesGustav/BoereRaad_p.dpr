program BoereRaad_p;

uses
  Vcl.Forms,
  Application_u in 'Application_u.pas' {frmHome},
  Vcl.Themes,
  Vcl.Styles,
  dmBoereraad_u in 'dmBoereraad_u.pas' {dmBoereraad: TDataModule},
  RemedyTile_u in 'RemedyTile_u.pas',
  Remedy_u in 'Remedy_u.pas',
  Core_u in 'Core_u.pas',
  ReviewTile_u in 'ReviewTile_u.pas',
  AdminHelp_u in 'AdminHelp_u.pas' {frmAdminHelp},
  UserHelp_u in 'UserHelp_u.pas' {frmUserHelp};

{$R *.res}

begin
  cProgramCore := TCore.Create;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'BoereRaad';
  Application.CreateForm(TfrmHome, frmHome);
  Application.CreateForm(TdmBoereraad, dmBoereraad);
  Application.CreateForm(TfrmAdminHelp, frmAdminHelp);
  Application.CreateForm(TfrmUserHelp, frmUserHelp);
  Application.Run;

  cProgramCore.Destroy;
end.
