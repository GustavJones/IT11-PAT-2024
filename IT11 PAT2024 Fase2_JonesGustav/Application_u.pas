unit Application_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Themes, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.CheckLst, Vcl.Imaging.pngimage, Data.DB,
  Vcl.Grids, Vcl.DBGrids, dmBoereraad_u, Vcl.Buttons, Vcl.Samples.Spin;

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
    lblAdminUser: TLabel;
    dbgAdminUserEditUsers: TDBGrid;
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
    pnlAddRemedy: TPanel;
    lblAddRemedyTitle: TLabel;
    pnlAddRemedyNavigation: TPanel;
    bttAddRemedyNavigationHelp: TBitBtn;
    bttAddRemedyNavigationHome: TBitBtn;
    bttAddRemedyNavigationNext: TBitBtn;
    bttAddRemedyNavigationPrevious: TBitBtn;
    pnlAddRemedyInputs: TPanel;
    edtAddRemedyInputsRemedyName: TEdit;
    redAddRemedyInputsDescription: TRichEdit;
    cltAddRemedyInputsSymptoms: TCheckListBox;
    edtAddRemedyInputsAddSymptom: TEdit;
    btnAddRemedyInputsRemoveSymptom: TButton;
    btnAddRemedyInputsAddSymptom: TButton;
    lblAddRemedyInputsRemedyName: TLabel;
    lblAddRemedyInputsRemedyInfo: TLabel;
    edtAddRemedyInputsPrice: TEdit;
    imgAddRemedyInputsImage: TImage;
    chkAddRemedyInputsNatural: TCheckBox;
    bttAddRemedyNavigationReset: TBitBtn;
    bttAddRemedyInputsCreateRemedy: TBitBtn;
    btnAddRemedyInputsAddImage: TButton;
    tsRemedyPendingChanges: TTabSheet;
    pnlRemedyPendingChanges: TPanel;
    lblRemedyPendingChanges: TLabel;
    pnlRemedyPendingChangesNavigation: TPanel;
    bttRemedyPendingChangesNavigationHelp: TBitBtn;
    bttRemedyPendingChangesNavigationHome: TBitBtn;
    bttRemedyPendingChangesNavigationNext: TBitBtn;
    bttRemedyPendingChangesNavigationPrevious: TBitBtn;
    pnlRemedyPendingChangesAdditions: TPanel;
    lblRemedyPendingChangesAdditions: TLabel;
    lstRemedyPendingChangesAdditionsRemediesList: TListBox;
    edtRemedyPendingChangesAdditionsInfoName: TEdit;
    edtRemedyPendingChangesAdditionsInfoPrice: TEdit;
    pnlRemedyPendingChangesAdditionsInfo: TPanel;
    chkRemedyPendingChangesAdditionsInfoNatural: TCheckBox;
    lblPendingChangesAdditionsInfo: TLabel;
    redRemedyPendingChangesAdditionsInfoDescription: TRichEdit;
    bttRemedyPendingChangesAdditionsInfoReset: TBitBtn;
    bttRemedyPendingChangesAdditionsInfoAddRemedy: TBitBtn;
    cltRemedyPendingChangesAdditionsInfoSymptoms: TCheckListBox;
    edtRemedyPendingChangesAdditionsInfoSymptomName: TEdit;
    btnRemedyPendingChangesAdditionsInfoRemoveSymptom: TButton;
    btnRemedyPendingChangesAdditionsInfoAddSymptom: TButton;
    lblRemedyPendingChangesAdditionsInfoSymptoms: TLabel;
    imgRemedyPendingChangesAdditionsInfoImage: TImage;
    pnlRemedyPendingChangesEdit: TPanel;
    lblRemedyPendingChangesEdit: TLabel;
    lstRemedyPendingChangesEditRemediesList: TListBox;
    pnlRemedyPendingChangesEditInfo: TPanel;
    lblRemedyPendingChangesEditInfo: TLabel;
    lblRemedyPendingChangesEditInfoSymptoms: TLabel;
    imgRemedyPendingChangesEditInfoImage: TImage;
    edtRemedyPendingChangesEditInfoName: TEdit;
    edtRemedyPendingChangesEditInfoPrice: TEdit;
    chkRemedyPendingChangesEditInfoNatural: TCheckBox;
    redRemedyPendingChangesEditInfoDescription: TRichEdit;
    bttRemedyPendingChangesEditInfoReset: TBitBtn;
    bttRemedyPendingChangesEditInfoSaveRemedy: TBitBtn;
    cltRemedyPendingChangesEditInfoSymptoms: TCheckListBox;
    edtRemedyPendingChangesEditInfoSymptomName: TEdit;
    btnRemedyPendingChangesEditInfoRemoveSymptom: TButton;
    btnRemedyPendingChangesEditInfoAddSymptom: TButton;
    tsRemedyUsage: TTabSheet;
    pnlRemedyUsage: TPanel;
    lblRemedyUsageTitle: TLabel;
    sbxRemedyUsageList: TScrollBox;
    pnlRemedyUsageNavigation: TPanel;
    bttRemedyUsageNavigationHelp: TBitBtn;
    bttRemedyUsageNavigationHome: TBitBtn;
    bttRemedyUsageNavigationNext: TBitBtn;
    bttRemedyUsageNavigationPrevious: TBitBtn;
    pnlPrescription1: TPanel;
    lblPrescription1: TLabel;
    bttPrescription1Save: TBitBtn;
    pnlRemedyUsageAdd: TPanel;
    bttPrescription1Reset: TBitBtn;
    redPrescription1Dosage: TRichEdit;
    sedPrescription1DaysUsed: TSpinEdit;
    lblPrescription1Dosage: TLabel;
    lblPrescription1DaysUsed: TLabel;
    lblRemedyUsageAddDosage: TLabel;
    redRemedyUsageAddDosage: TRichEdit;
    lblRemedyUsageAddDaysUsed: TLabel;
    sedRemedyUsageAddDaysUsed: TSpinEdit;
    bttRemedyUsageAddReset: TBitBtn;
    bttRemedyUsageAddAddPrescription: TBitBtn;
    lblRemedyUsageUseList: TLabel;
    lblRemedyUsageAddRemedyName: TLabel;
    sedAddRemedyInputsEaseOfUse: TSpinEdit;
    lblAddRemedyInputsEaseOfUse: TLabel;
    bttAdminUserEditRemoveUser: TBitBtn;
    lstAdminUserEditPrescription: TListBox;
    bttPrescription1Remove: TBitBtn;
    pnlAdminUserEdit: TPanel;
    bttAdminUserEditRemovePrescription: TBitBtn;
    redAdminUserEditDosage: TRichEdit;
    sedAdminUserEditDaysUsed: TSpinEdit;
    lblAdminUserEditDaysUsed: TLabel;
    lblAdminUserEditDosage: TLabel;
    lblAdminUserEditPrescription: TLabel;
    edtAdminUserEditName: TEdit;
    edtAdminUserEditSurname: TEdit;
    edtAdminUserEditEmail: TEdit;
    chkAdminUserEditIsMale: TCheckBox;
    bttAdminUserEditSaveUser: TBitBtn;
    pnlAdminRemedyEdit: TPanel;
    lblAdminRemedyEditDescription: TLabel;
    bttAdminRemedyEditRemoveRemedy: TBitBtn;
    dbgAdminRemedyEditRemedy: TDBGrid;
    redAdminRemedyEditDescription: TRichEdit;
    edtAdminRemedyEditName: TEdit;
    bttAdminRemedyEditSaveRemedy: TBitBtn;
    edtAdminRemedyEditPrice: TEdit;
    chkAdminRemedyEditNatural: TCheckBox;
    lblAdminRemedy: TLabel;
    sedAdminRemedyEditEaseOfUse: TSpinEdit;
    chkHomeAdmin: TCheckBox;
    chkAdminUserEditAdmin: TCheckBox;
    bttAdminUserEditSavePrescription: TBitBtn;
    sedRemedyUsageAddEffectiveness: TSpinEdit;
    SpinEdit1: TSpinEdit;
    lblPrescription1Effectiveness: TLabel;
    lblRemedyUsageAddEffectiveness: TLabel;
    cmbRemedyUsageAddRemedy: TComboBox;
    lblAdminRemedyEditEaseOfUse: TLabel;
    pnlAdminNavigation: TPanel;
    bttAdminNavigationHelp: TBitBtn;
    bttAdminNavigationHome: TBitBtn;
    bttAdminNavigationNext: TBitBtn;
    bttAdminNavigationPrevious: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pgcTabsChange(Sender: TObject);
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

procedure TfrmHome.pgcTabsChange(Sender: TObject);
begin
case pgcTabs.TabIndex of
  1:
  begin
    // List Remedies in DB
  end;
  3:
  begin
    // List Prescriptions of selected user
  end;
  5:
  begin
    // Update selected user and remedy information
  end;
end;
end;

end.
