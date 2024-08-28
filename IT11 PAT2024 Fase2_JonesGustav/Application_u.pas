unit Application_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Themes, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.CheckLst, Vcl.Imaging.pngimage;

type
  TfrmHome = class(TForm)
    pgcTabs: TPageControl;
    tsHome: TTabSheet;
    imgBackground: TImage;
    pnlRegister: TPanel;
    lblTitle: TLabel;
    imgIcon: TImage;
    lblDescription: TLabel;
    pnlLogIn: TPanel;
    pnlSignUp: TPanel;
    lblLogIn: TLabel;
    lblSignUp: TLabel;
    btnLogIn: TButton;
    btnSignUp: TButton;
    edtLogInEmail: TEdit;
    edtLogInPassword: TEdit;
    edtSignUpEmail: TEdit;
    edtSignUpPassword: TEdit;
    edtSignUpSurname: TEdit;
    edtSignUpName: TEdit;
    rgpGender: TRadioGroup;
    dtpSignUpBirthDate: TDateTimePicker;
    lblSignUpBirthDay: TLabel;
    tsRemedies: TTabSheet;
    pnlRemedies: TPanel;
    pnlRemedy1: TPanel;
    lblRemediesTitle: TLabel;
    lblRemediesRemedy1: TLabel;
    edtRemediesRemedy1Price: TEdit;
    btnRemediesRemedy1Update: TButton;
    cltRemediesRemedy1SymptomUse: TCheckListBox;
    lblRemediesRemedy1SymptomsUse: TLabel;
    btnRemediesRemedy1RemoveSymptom: TButton;
    btnRemediesRemedy1AddSymptom: TButton;
    edtRemediesRemedy1AddSymptom: TEdit;
    redDescription: TRichEdit;
    Image1: TImage;
    lblRemediesRemedy1Price: TLabel;
    chkRemediesRemedy1Natural: TCheckBox;
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

procedure TfrmHome.FormCreate(Sender: TObject);
const
  sSTYLE_PATH = 'BoereRaadStyle.vsf';
  bUSE_CUSTOM_STYLE = True;
var
  shStyleHandle : TStyleManager.TStyleServicesHandle;
  smStyleManager : TStyleManager;
  siStyleInfo : TStyleInfo;
begin
  smStyleManager := TStyleManager.Create;

  if (bUSE_CUSTOM_STYLE) then
  begin
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
end;

end.
