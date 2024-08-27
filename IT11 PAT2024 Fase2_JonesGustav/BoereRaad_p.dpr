program BoereRaad_p;

uses
  Vcl.Forms,
  Application_u in 'Application_u.pas' {frmHome},
  Vcl.Themes,
  Vcl.Styles,
  SignUp_u in 'SignUp_u.pas' {frmSignUp},
  LogIn_u in 'LogIn_u.pas' {frmLogIn};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmHome, frmHome);
  Application.CreateForm(TfrmSignUp, frmSignUp);
  Application.CreateForm(TfrmLogIn, frmLogIn);
  Application.Run;
end.
