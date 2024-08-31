unit Application_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Themes, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.CheckLst, Vcl.Imaging.pngimage, Data.DB,
  Vcl.Grids, Vcl.DBGrids, dmBoereraad_u, Vcl.Buttons;

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
    cltRemediesRemedy1SymptomUse: TCheckListBox;
    lblRemediesRemedy1SymptomsUse: TLabel;
    btnRemediesRemedy1RemoveSymptom: TButton;
    btnRemediesRemedy1AddSymptom: TButton;
    edtRemediesRemedy1AddSymptom: TEdit;
    redRemediesRemedy1Description: TRichEdit;
    imgRemediesRemedy1Image: TImage;
    lblRemediesRemedy1Price: TLabel;
    chkRemediesRemedy1Natural: TCheckBox;
    tsAdmin: TTabSheet;
    btnRemediesRemedy1PickImage: TButton;
    pnlAdmin: TPanel;
    lblAdminPendingChanges: TLabel;
    dbgUsers: TDBGrid;
    dbgRemedies: TDBGrid;
    dbgSymptoms: TDBGrid;
    pnlHomeTitle: TPanel;
    pnlHomeSignUpBirthDate: TPanel;
    pnlHomeLoginFields: TPanel;
    sbxRemediesList: TScrollBox;
    tsAddRemedy: TTabSheet;
    pnlRemediesNavigation: TPanel;
    bttRemediesRemedy1Save: TBitBtn;
    bttRemediesNavigationHelp: TBitBtn;
    bttRemediesNavigationHome: TBitBtn;
    bttRemediesNavigationNext: TBitBtn;
    bttRemediesNavigationPrevious: TBitBtn;
    bttRemediesRemedy1Reset: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
  public
  var
    bDBInit: Boolean;
  end;

var
  frmHome: TfrmHome;

implementation

{$R *.dfm}

procedure TfrmHome.FormActivate(Sender: TObject);
begin
  if not(bDBInit) then
  begin
    if not(dmBoereraad.InitialiseDatabase) then
    begin
      ShowMessage('Failed to find database');
    end;
  end;
end;

procedure TfrmHome.FormCreate(Sender: TObject);
const
  sSTYLE_PATH = 'BoereRaadStyle.vsf';
  bUSE_CUSTOM_STYLE = True;
var
  shStyleHandle: TStyleManager.TStyleServicesHandle;
  smStyleManager: TStyleManager;
  siStyleInfo: TStyleInfo;
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

  bDBInit := False;
end;

end.
