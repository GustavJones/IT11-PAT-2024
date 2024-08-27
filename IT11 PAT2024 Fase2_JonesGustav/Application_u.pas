unit Application_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Themes, Vcl.ComCtrls, Vcl.StdCtrls, Login_u, SignUp_u;

type
  TfrmHome = class(TForm)
    pgcTabs: TPageControl;
    tsHome: TTabSheet;
    btnSignUp: TButton;
    btnLogIn: TButton;
    procedure btnSignUpClick(Sender: TObject);
    procedure btnLogInClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHome: TfrmHome;

implementation

{$R *.dfm}

procedure TfrmHome.btnLogInClick(Sender: TObject);
begin
  frmLogIn.Show;
end;

procedure TfrmHome.btnSignUpClick(Sender: TObject);
begin
  frmSignUp.Show;
end;

procedure TfrmHome.FormCreate(Sender: TObject);
const
  sSTYLE_PATH = 'BoereRaadStyle.vsf';
var
  shStyleHandle : TStyleManager.TStyleServicesHandle;
  smStyleManager : TStyleManager;
  siStyleInfo : TStyleInfo;
begin
  smStyleManager := TStyleManager.Create;

  if FileExists(sSTYLE_PATH) then
  begin
    if (smStyleManager.IsValidStyle(sSTYLE_PATH, siStyleInfo)) then
    begin
      shStyleHandle := smStyleManager.LoadFromFile(sSTYLE_PATH);
      smStyleManager.SetStyle(shStyleHandle);
    end
    else
    begin
      ShowMessage('Not A valid style');
    end;
  end
  else
  begin
    ShowMessage('Style file not found');
  end;
end;

end.