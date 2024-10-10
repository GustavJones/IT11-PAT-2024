unit Application_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Themes, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.CheckLst, Vcl.Imaging.pngimage, Data.DB,
  Vcl.Grids, Vcl.DBGrids, dmBoereraad_u, RemedyTile_u, ReviewTile_u, Remedy_u, Core_u,
  Vcl.Buttons, Vcl.Samples.Spin, Vcl.ExtDlgs;

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
    rgpSignUpGender: TRadioGroup;
    dtpSignUpBirthDate: TDateTimePicker;
    lblSignUpBirthDay: TLabel;
    tsRemedies: TTabSheet;
    pnlRemedies: TPanel;
    lblRemediesTitle: TLabel;
    tsAdmin: TTabSheet;
    pnlAdmin: TPanel;
    lblAdminUser: TLabel;
    dbgAdminUserEditUsers: TDBGrid;
    pnlHomeTitle: TPanel;
    pnlHomeSignUpBirthDate: TPanel;
    pnlHomeLoginFields: TPanel;
    sbxRemediesList: TScrollBox;
    tsAddRemedy: TTabSheet;
    pnlRemediesNavigation: TPanel;
    bttRemediesNavigationHelp: TBitBtn;
    bttRemediesNavigationHome: TBitBtn;
    bttRemediesNavigationNext: TBitBtn;
    bttRemediesNavigationPrevious: TBitBtn;
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
    pnlReview1: TPanel;
    lblReview1: TLabel;
    bttReview1Save: TBitBtn;
    pnlRemedyUsageAdd: TPanel;
    bttReview1Reset: TBitBtn;
    redReview1Dosage: TRichEdit;
    sedReview1DaysUsed: TSpinEdit;
    lblReview1Dosage: TLabel;
    lblReview1DaysUsed: TLabel;
    lblRemedyUsageAddDosage: TLabel;
    redRemedyUsageAddDosage: TRichEdit;
    lblRemedyUsageAddDaysUsed: TLabel;
    sedRemedyUsageAddDaysUsed: TSpinEdit;
    bttRemedyUsageAddReset: TBitBtn;
    bttRemedyUsageAddAddReview: TBitBtn;
    lblRemedyUsageUseList: TLabel;
    lblRemedyUsageAddRemedyName: TLabel;
    sedAddRemedyInputsEaseOfUse: TSpinEdit;
    lblAddRemedyInputsEaseOfUse: TLabel;
    bttAdminUserEditRemoveUser: TBitBtn;
    lstAdminUserEditReview: TListBox;
    bttReview1Remove: TBitBtn;
    pnlAdminUserEdit: TPanel;
    bttAdminUserEditRemoveReview: TBitBtn;
    redAdminUserEditDosage: TRichEdit;
    sedAdminUserEditDaysUsed: TSpinEdit;
    lblAdminUserEditDaysUsed: TLabel;
    lblAdminUserEditDosage: TLabel;
    lblAdminUserEditReview: TLabel;
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
    lblAdminRemedy: TLabel;
    sedAdminRemedyEditEaseOfUse: TSpinEdit;
    chkSignUpAdmin: TCheckBox;
    chkAdminUserEditAdmin: TCheckBox;
    bttAdminUserEditSaveReview: TBitBtn;
    sedRemedyUsageAddEffectiveness: TSpinEdit;
    sedReview1Effectiveness: TSpinEdit;
    lblReview1Effectiveness: TLabel;
    lblRemedyUsageAddEffectiveness: TLabel;
    cmbRemedyUsageAddRemedy: TComboBox;
    lblAdminRemedyEditEaseOfUse: TLabel;
    pnlAdminNavigation: TPanel;
    bttAdminNavigationHelp: TBitBtn;
    bttAdminNavigationHome: TBitBtn;
    bttAdminNavigationNext: TBitBtn;
    bttAdminNavigationPrevious: TBitBtn;
    sedAdminUserEditEffectiveness: TSpinEdit;
    lblAdminUserEditEffectiveness: TLabel;
    btnHomeLogOut: TButton;
    pnlTile: TPanel;
    lblTileTitle: TLabel;
    lblSymptom: TLabel;
    imgImage: TImage;
    lblPrice: TLabel;
    edtPrice: TEdit;
    cltSymptoms: TCheckListBox;
    btnRemoveSymptom: TButton;
    btnAddSymptom: TButton;
    Edit4: TEdit;
    redDescription: TRichEdit;
    btnUpdateImage: TButton;
    bttReset: TBitBtn;
    bttSave: TBitBtn;
    Label1: TLabel;
    SpinEdit3: TSpinEdit;
    sedRemedyPendingChangesAdditionsInfoEaseOfUse: TSpinEdit;
    lblRemedyPendingChangesAdditionsInfoEaseOfUse: TLabel;
    lblRemedyPendingChangesEditInfoEaseOfUse: TLabel;
    sedRemedyPendingChangesEditInfoEaseOfUse: TSpinEdit;
    edtAdminUserEditPassword: TEdit;
    sedAdminUserEditID: TSpinEdit;
    lblAdminUserEditID: TLabel;
    sedAdminRemedyEditID: TSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pgcTabsChange(Sender: TObject);
    procedure btnLogInClick(Sender: TObject);
    procedure btnSignUpClick(Sender: TObject);

    procedure btnHomeLogOutClick(Sender: TObject);
    procedure NavigationHomeClick(Sender: TObject);
    procedure bttRemedyUsageAddAddReviewClick(Sender: TObject);
    procedure dbgAdminUserEditUsersCellClick(Column: TColumn);
    procedure bttAddRemedyInputsCreateRemedyClick(Sender: TObject);
    procedure btnAddRemedyInputsAddSymptomClick(Sender: TObject);
    procedure btnAddRemedyInputsRemoveSymptomClick(Sender: TObject);
    procedure lstRemedyPendingChangesAdditionsRemediesListClick
      (Sender: TObject);
    procedure btnRemedyPendingChangesAdditionsInfoAddSymptomClick
      (Sender: TObject);
    procedure btnRemedyPendingChangesAdditionsInfoRemoveSymptomClick
      (Sender: TObject);
    procedure bttRemedyPendingChangesAdditionsInfoResetClick(Sender: TObject);
    procedure bttRemedyPendingChangesAdditionsInfoAddRemedyClick
      (Sender: TObject);
    procedure lstRemedyPendingChangesEditRemediesListClick(Sender: TObject);
    procedure bttRemedyPendingChangesEditInfoResetClick(Sender: TObject);
    procedure btnRemedyPendingChangesEditInfoAddSymptomClick(Sender: TObject);
    procedure btnRemedyPendingChangesEditInfoRemoveSymptomClick
      (Sender: TObject);
    procedure bttRemedyPendingChangesEditInfoSaveRemedyClick(Sender: TObject);
    procedure bttAdminUserEditSaveUserClick(Sender: TObject);
    procedure btnAddRemedyInputsAddImageClick(Sender: TObject);
    procedure bttAdminUserEditRemoveUserClick(Sender: TObject);
    procedure lstAdminUserEditReviewClick(Sender: TObject);
    procedure dbgAdminRemedyEditRemedyCellClick(Column: TColumn);
    procedure bttAdminUserEditSaveReviewClick(Sender: TObject);
    procedure bttAdminUserEditRemoveReviewClick(Sender: TObject);
    procedure bttAdminRemedyEditSaveRemedyClick(Sender: TObject);
    procedure bttAdminRemedyEditRemoveRemedyClick(Sender: TObject);
    procedure bttRemedyUsageAddResetClick(Sender: TObject);

  private
    function GetUserPasswordFromDB(pUserID: Integer): string;
    procedure LoadRemediesFromDBToScrollbox;
    procedure LoadReviewsFromDBToScrollBox;
    procedure LoadPendingChangesFromTFToArr;
    procedure AddRemedy();
    procedure AddReview();
    procedure SetupPages();
    function GetRemedyName(pID: Integer): string;

  const
    iMAX_PENDING_CHANGES = 150;

  var
    iUserID: Integer;
    bUserAdmin: Boolean;
    arrRemedyTiles: array of TdynRemedyTile;
    arrReviewTiles: array of TdynReviewTile;

    arrPendingChangeRemedyName: array [1 .. iMAX_PENDING_CHANGES] of string;
    arrPendingChangeRemedyInformation: array [1 .. iMAX_PENDING_CHANGES] of string;

    iPendingChangeCount: Integer;
    iAdditionsSelectedIndex: Integer;
    iEditSelectedIndex: Integer;
  public
  var
    bDBInit: Boolean;
  end;

var
  frmHome: TfrmHome;

implementation

{$R *.dfm}

procedure TfrmHome.AddRemedy;
var
  rRemedy: TRemedy;
  sPrice: String;
  i: Integer;
begin
  // Read Inputs
  rRemedy := TRemedy.Create;

  rRemedy.sName := edtAddRemedyInputsRemedyName.Text;
  rRemedy.iEaseOfUse := sedAddRemedyInputsEaseOfUse.Value;

  // Price
  sPrice := edtAddRemedyInputsPrice.Text;

  if sPrice[1] = 'R' then
  begin
    Delete(sPrice, 1, 1);
  end;

  rRemedy.rPrice := StrToFloat(sPrice);

  // Symptoms
  SetLength(rRemedy.arrSymptoms, 0);
  for i := 0 to cltAddRemedyInputsSymptoms.Items.Count - 1 do
  begin
    SetLength(rRemedy.arrSymptoms, Length(rRemedy.arrSymptoms) + 1);
    rRemedy.arrSymptoms[Length(rRemedy.arrSymptoms) - 1] :=
      cltAddRemedyInputsSymptoms.Items[i];
  end;

  // Description
  rRemedy.sDescription := '';
  for i := 0 to redAddRemedyInputsDescription.Lines.Count - 1 do
  begin
    rRemedy.sDescription := rRemedy.sDescription +
      redAddRemedyInputsDescription.Lines[i] + #10;
  end;

  if (rRemedy.sDescription[Length(rRemedy.sDescription)] = #10) then
  begin
    Delete(rRemedy.sDescription, Length(rRemedy.sDescription), 1);
  end;

  rRemedy.WritePendingChange(rRemedy.CreatePendingChange);
  imgAddRemedyInputsImage.Picture.SaveToFile(cProgramCore.GetImageDirectory +
    rRemedy.sName + '.jpg');
  ShowMessage('Created Remedy create request');
  rRemedy.Destroy;
end;

procedure TfrmHome.AddReview;
const
  sDELIMITER = #10;
var
  iTableIndex: Integer;
  iDaysUsed: Integer;
  sDosageInformation: String;
  iEffectiveness: Integer;
  iRemedyID: Integer;
  i: Integer;
begin
  iTableIndex := dmBoereraad.tblReview.RecNo;

  iDaysUsed := sedRemedyUsageAddDaysUsed.Value;
  sDosageInformation := redRemedyUsageAddDosage.Lines[0];

  for i := 1 to redRemedyUsageAddDosage.Lines.Count do
  begin
    sDosageInformation := sDosageInformation + sDELIMITER +
      redRemedyUsageAddDosage.Lines[i];
  end;

  iEffectiveness := sedRemedyUsageAddEffectiveness.Value;

  dmBoereraad.tblRemedy.First;
  while not(dmBoereraad.tblRemedy.Eof) do
  begin
    if dmBoereraad.tblRemedy[sTBLREMEDY_NAME] = cmbRemedyUsageAddRemedy.Items
      [cmbRemedyUsageAddRemedy.ItemIndex] then
    begin
      iRemedyID := dmBoereraad.tblRemedy[sTBLREMEDY_ID];
    end;

    dmBoereraad.tblRemedy.Next;
  end;

  dmBoereraad.tblReview.Last;

  dmBoereraad.tblReview.Append;
  dmBoereraad.tblReview[sTBLREVIEW_DAYSUSED] := iDaysUsed;
  dmBoereraad.tblReview[sTBLREVIEW_DOSAGE] := sDosageInformation;
  dmBoereraad.tblReview[sTBLREVIEW_EFFECTIVENESS] := iEffectiveness;
  dmBoereraad.tblReview[sTBLREVIEW_USERID] := iUserID;
  dmBoereraad.tblReview[sTBLREVIEW_REMEDYID] := iRemedyID;
  dmBoereraad.tblReview.Post;

  dmBoereraad.tblReview.RecNo := iTableIndex;
end;

procedure TfrmHome.btnAddRemedyInputsAddImageClick(Sender: TObject);
var
  dlgImageSelect: TOpenPictureDialog;
begin
  dlgImageSelect := TOpenPictureDialog.Create(Self);
  dlgImageSelect.Filter := 'JPEG Images (*.jpg, *.jpeg)|*.JPG;*.JPEG';
  dlgImageSelect.Execute;

  if not FileExists(dlgImageSelect.FileName) then
  begin
    ShowMessage('File not found. Please try again!');
  end
  else
  begin
    imgAddRemedyInputsImage.Picture.LoadFromFile(dlgImageSelect.FileName);
  end;

  dlgImageSelect.Destroy;
end;

procedure TfrmHome.btnAddRemedyInputsAddSymptomClick(Sender: TObject);
var
  sSymptom: string;
begin
  if (edtAddRemedyInputsAddSymptom.Text = '') then
  begin
    ShowMessage('Please enter a symptom');
    edtAddRemedyInputsAddSymptom.SetFocus;
  end
  else
  begin
    sSymptom := edtAddRemedyInputsAddSymptom.Text;

    cltAddRemedyInputsSymptoms.Items.Add(sSymptom);
    edtAddRemedyInputsAddSymptom.Clear;
    ShowMessage('Symptom Added');
  end;
end;

procedure TfrmHome.btnAddRemedyInputsRemoveSymptomClick(Sender: TObject);
var
  i: Integer;
begin
  // Remove checked Symptoms from checklist
  for i := cltAddRemedyInputsSymptoms.Items.Count downto 1 do
  begin
    if cltAddRemedyInputsSymptoms.Checked[i - 1] then
    begin
      cltAddRemedyInputsSymptoms.Items.Delete(i - 1);
    end;
  end;
end;

procedure TfrmHome.btnHomeLogOutClick(Sender: TObject);
var
  i: Integer;
begin
  if bUserAdmin then
  begin
    tsAdmin.TabVisible := False;
    tsRemedyPendingChanges.TabVisible := False;

    iUserID := 0;
    bUserAdmin := False;
  end
  else
  begin
    tsRemedies.TabVisible := False;
    tsAddRemedy.TabVisible := False;
    tsRemedyUsage.TabVisible := False;

    iUserID := 0;
    bUserAdmin := False;

    for i := 0 to Length(arrReviewTiles) - 1 do
    begin
      arrReviewTiles[i].Destroy;
    end;

    SetLength(arrReviewTiles, 0);
  end;
end;

procedure TfrmHome.btnLogInClick(Sender: TObject);
var
  bFound: Boolean;
  iTableIndex: Integer;
  sEmail: string;
  sPassword: string;
begin
  bFound := False;
  iTableIndex := dmBoereraad.tblUser.RecNo;

  if iUserID > 0 then
  begin
    ShowMessage('Please log out before trying to log in with another account');
    exit;
  end;

  sEmail := edtLogInEmail.Text;
  sPassword := edtLogInPassword.Text;

  // Get User ID
  dmBoereraad.tblUser.First;
  while (not dmBoereraad.tblUser.Eof) and (not bFound) do
  begin
    if dmBoereraad.tblUser[sTBLUSER_EMAIL] = sEmail then
    begin
      bFound := True;
      iUserID := dmBoereraad.tblUser[sTBLUSER_ID];
      if dmBoereraad.tblUser[sTBLUSER_TYPE] then
      begin
        bUserAdmin := True;
      end
      else
      begin
        bUserAdmin := False;
      end;

    end;

    dmBoereraad.tblUser.Next;
  end;

  if not bFound then
  begin
    ShowMessage('User email account not found. Please sign up');
    edtLogInEmail.SetFocus;
    dmBoereraad.tblUser.RecNo := iTableIndex;
    exit;
  end;

  if not(GetUserPasswordFromDB(iUserID) = sPassword) then
  begin
    ShowMessage('Incorrect password. Try again');
    iUserID := -1;
    edtLogInPassword.SetFocus;
    dmBoereraad.tblUser.RecNo := iTableIndex;
    exit;
  end;

  LoadReviewsFromDBToScrollBox;
  ShowMessage('Login Successful');
  SetupPages;

  pgcTabs.TabIndex := pgcTabs.TabIndex + 1;
  frmHome.pgcTabsChange(btnLogIn);

  dmBoereraad.tblUser.RecNo := iTableIndex;
end;

procedure TfrmHome.btnRemedyPendingChangesAdditionsInfoAddSymptomClick
  (Sender: TObject);
var
  sSymptom: String;
begin
  if (edtRemedyPendingChangesAdditionsInfoSymptomName.Text = '') then
  begin
    ShowMessage('Please enter a symptom');
    edtRemedyPendingChangesAdditionsInfoSymptomName.SetFocus;
  end
  else
  begin
    sSymptom := edtRemedyPendingChangesAdditionsInfoSymptomName.Text;

    cltRemedyPendingChangesAdditionsInfoSymptoms.Items.Add(sSymptom);
    edtRemedyPendingChangesAdditionsInfoSymptomName.Clear;
    ShowMessage('Symptom Added');
  end;
end;

procedure TfrmHome.btnRemedyPendingChangesAdditionsInfoRemoveSymptomClick
  (Sender: TObject);
var
  i: Integer;
begin
  // Remove checked Symptoms from checklist
  for i := cltRemedyPendingChangesAdditionsInfoSymptoms.Items.Count downto 1 do
  begin
    if cltRemedyPendingChangesAdditionsInfoSymptoms.Checked[i - 1] then
    begin
      cltRemedyPendingChangesAdditionsInfoSymptoms.Items.Delete(i - 1);
    end;
  end;

end;

procedure TfrmHome.btnRemedyPendingChangesEditInfoAddSymptomClick
  (Sender: TObject);
var
  sSymptom: String;
begin
  if (edtRemedyPendingChangesEditInfoSymptomName.Text = '') then
  begin
    ShowMessage('Please enter a symptom');
    edtRemedyPendingChangesEditInfoSymptomName.SetFocus;
  end
  else
  begin
    sSymptom := edtRemedyPendingChangesEditInfoSymptomName.Text;

    cltRemedyPendingChangesEditInfoSymptoms.Items.Add(sSymptom);
    edtRemedyPendingChangesEditInfoSymptomName.Clear;
    ShowMessage('Symptom Added');
  end;
end;

procedure TfrmHome.btnRemedyPendingChangesEditInfoRemoveSymptomClick
  (Sender: TObject);
var
  i: Integer;
begin
  // Remove checked Symptoms from checklist
  for i := cltRemedyPendingChangesEditInfoSymptoms.Items.Count downto 1 do
  begin
    if cltRemedyPendingChangesEditInfoSymptoms.Checked[i - 1] then
    begin
      cltRemedyPendingChangesEditInfoSymptoms.Items.Delete(i - 1);
    end;
  end;
end;

procedure TfrmHome.btnSignUpClick(Sender: TObject);
const
  iUSER_NAME_FIELD_SIZE = 40;
  iUSER_SURNAME_FIELD_SIZE = 70;
  iUSER_EMAIL_FIELD_SIZE = 50;
  iUSER_PASSWORD_FIELD_SIZE = 30;
var
  iDBIndex: Integer;
begin
  // Validation
  // Presence check
  if edtSignUpName.Text = '' then
  begin
    ShowMessage('Please enter your name');
    exit;
  end;

  if edtSignUpSurname.Text = '' then
  begin
    ShowMessage('Please enter your surname');
    exit;
  end;

  if edtSignUpPassword.Text = '' then
  begin
    ShowMessage('Please enter your password');
    exit;
  end;

  if edtSignUpEmail.Text = '' then
  begin
    ShowMessage('Please enter your email');
    exit;
  end;

  // Length Check
  if Length(edtSignUpName.Text) > iUSER_NAME_FIELD_SIZE then
  begin
    ShowMessage('Name must be smaller than ' + IntToStr(iUSER_NAME_FIELD_SIZE) +
      ' characters');
    exit;
  end;

  if Length(edtSignUpSurname.Text) > iUSER_SURNAME_FIELD_SIZE then
  begin
    ShowMessage('Surname must be smaller than ' +
      IntToStr(iUSER_SURNAME_FIELD_SIZE) + ' characters');
    exit;
  end;

  if Length(edtSignUpPassword.Text) > iUSER_PASSWORD_FIELD_SIZE then
  begin
    ShowMessage('Password must be smaller than ' +
      IntToStr(iUSER_PASSWORD_FIELD_SIZE) + ' characters');
    exit;
  end;

  if Length(edtSignUpEmail.Text) > iUSER_EMAIL_FIELD_SIZE then
  begin
    ShowMessage('Email must be smaller than ' + IntToStr(iUSER_EMAIL_FIELD_SIZE)
      + ' characters');
    exit;
  end;

  // Add to DB
  iDBIndex := dmBoereraad.tblUser.RecNo;

  dmBoereraad.tblUser.Last;
  dmBoereraad.tblUser.Append;

  dmBoereraad.tblUser[sTBLUSER_NAME] := edtSignUpName.Text;
  dmBoereraad.tblUser[sTBLUSER_SURNAME] := edtSignUpSurname.Text;
  dmBoereraad.tblUser[sTBLUSER_EMAIL] := edtSignUpEmail.Text;
  dmBoereraad.tblUser[sTBLUSER_PASSWORD] := edtSignUpPassword.Text;
  dmBoereraad.tblUser[sTBLUSER_BIRTHDATE] := dtpSignUpBirthDate.Date;

  case rgpSignUpGender.ItemIndex of
    0:
      dmBoereraad.tblUser[sTBLUSER_GENDER] := True;
    1:
      dmBoereraad.tblUser[sTBLUSER_GENDER] := False;
  end;

  dmBoereraad.tblUser[sTBLUSER_TYPE] := chkSignUpAdmin.Checked;
  dmBoereraad.tblUser.Post;
end;

procedure TfrmHome.bttAddRemedyInputsCreateRemedyClick(Sender: TObject);
begin
  // Validation
  if (edtAddRemedyInputsRemedyName.Text = '') then
  begin
    ShowMessage('Please enter a remedy name');
    exit;
  end;

  if (edtAddRemedyInputsPrice.Text = '') then
  begin
    ShowMessage('Please enter a remedy price');
    exit;
  end;

  AddRemedy;
end;

procedure TfrmHome.bttAdminRemedyEditRemoveRemedyClick(Sender: TObject);
const
  sDELIMITER = #10;
var
  iDBIndex : Integer;
  bFound : Boolean;
begin
  bFound := False;
  iDBIndex := dmBoereraad.tblRemedy.RecNo;

  dmBoereraad.tblRemedy.First;
  while not (dmBoereraad.tblRemedy.Eof) and not (bFound) do
  begin
    if dmBoereraad.tblRemedy[sTBLREMEDY_ID] = sedAdminRemedyEditID.Value then
    begin
      dmBoereraad.tblReview.First;
      while not (dmBoereraad.tblReview.Eof) do
      begin
        if dmBoereraad.tblReview[sTBLREVIEW_REMEDYID] = dmBoereraad.tblRemedy[sTBLREMEDY_ID] then
        begin
          dmBoereraad.tblReview.Delete;
        end
        else
        begin
          dmBoereraad.tblReview.Next;
        end;
      end;

      dmBoereraad.tblRemedy.Delete;
      bFound := True;
    end;

    dmBoereraad.tblRemedy.Next;
  end;

  dmBoereraad.tblRemedy.RecNo := iDBIndex;
end;

procedure TfrmHome.bttAdminRemedyEditSaveRemedyClick(Sender: TObject);
const
  sDELIMITER = #10;
var
  iDBIndex : Integer;
  sPrice, sDescription : string;
  bFound : Boolean;
  i: Integer;
begin
  bFound := False;
  sDescription := '';
  iDBIndex := dmBoereraad.tblRemedy.RecNo;

  dmBoereraad.tblRemedy.First;
  while not (dmBoereraad.tblRemedy.Eof) and not (bFound) do
  begin
    if dmBoereraad.tblRemedy[sTBLREMEDY_ID] = sedAdminRemedyEditID.Value then
    begin
      sPrice := edtAdminRemedyEditPrice.Text;

      if sPrice[1] = 'R' then
      begin
        Delete(sPrice, 1, 1);
      end;

      for i := 0 to redAdminRemedyEditDescription.Lines.Count - 1 do
      begin
        sDescription := sDescription + redAdminRemedyEditDescription.Lines[i] + sDELIMITER;
      end;

      dmBoereraad.tblRemedy.Edit;

      dmBoereraad.tblRemedy[sTBLREMEDY_NAME] := edtAdminRemedyEditName.Text;
      dmBoereraad.tblRemedy[sTBLREMEDY_PRICE] := StrToFloat(sPrice);
      dmBoereraad.tblRemedy[sTBLREMEDY_DESCRIPTION] := sDescription;
      dmBoereraad.tblRemedy[sTBLREMEDY_EASEOFUSE] := sedAdminRemedyEditEaseOfUse.Value;

      dmBoereraad.tblRemedy.Post;

      bFound := True;
    end;

    dmBoereraad.tblRemedy.Next;
  end;


  dmBoereraad.tblRemedy.RecNo := iDBIndex;
end;

procedure TfrmHome.bttAdminUserEditRemoveReviewClick(Sender: TObject);
var
  bFound: Boolean;
  iIndex: Integer;
begin
  bFound := False;
  iIndex := 0;

  dmBoereraad.tblReview.First;
  while not(dmBoereraad.tblReview.Eof) and not(bFound) do
  begin
    if dmBoereraad.tblReview[sTBLREVIEW_USERID] = sedAdminUserEditID.Value then
    begin
      Inc(iIndex);
    end;

    // Delete Review
    if iIndex = lstAdminUserEditReview.ItemIndex + 1 then
    begin
      dmBoereraad.tblReview.Delete;
      dbgAdminUserEditUsersCellClick(nil);

      bFound := True;
    end;

    dmBoereraad.tblReview.Next;
  end;
end;

procedure TfrmHome.bttAdminUserEditRemoveUserClick(Sender: TObject);
var
  iDBIndex: Integer;
  iID: Integer;
  bFound: Boolean;
begin
  bFound := False;
  iDBIndex := dmBoereraad.tblUser.RecNo;

  iID := sedAdminUserEditID.Value;

  if iID = iUserID then
  begin
    ShowMessage('Cannot delete logged in account');
    exit;
  end;

  dmBoereraad.tblUser.First;
  while not(dmBoereraad.tblUser.Eof) and not(bFound) do
  begin
    if dmBoereraad.tblUser[sTBLUSER_ID] = iID then
    begin
      dmBoereraad.tblReview.First;
      while not (dmBoereraad.tblReview.Eof) do
      begin
        if dmBoereraad.tblReview[sTBLREVIEW_USERID] = dmBoereraad.tblUser[sTBLUSER_ID] then
        begin
          dmBoereraad.tblReview.Delete;
        end
        else
        begin
          dmBoereraad.tblReview.Next;
        end;
      end;

      dmBoereraad.tblUser.Delete;
      bFound := True;
    end
    else
    begin
      dmBoereraad.tblUser.Next;
    end;
  end;

  dmBoereraad.tblUser.RecNo := iDBIndex;
end;

procedure TfrmHome.bttAdminUserEditSaveReviewClick(Sender: TObject);
const
  sDELIMITER = #10;
var
  bFound: Boolean;
  iIndex: Integer;
  i, iDelimiter : Integer;
  sParseStr, sLine : String;
begin
  bFound := False;
  iIndex := 0;

  dmBoereraad.tblReview.First;
  while not(dmBoereraad.tblReview.Eof) and not(bFound) do
  begin
    if dmBoereraad.tblReview[sTBLREVIEW_USERID] = sedAdminUserEditID.Value then
    begin
      Inc(iIndex);
    end;

    // Save Review
    if iIndex = lstAdminUserEditReview.ItemIndex + 1 then
    begin
      // Dosage

      for i := 0 to redAdminUserEditDosage.Lines.Count - 1 do
      begin
        sParseStr := sParseStr + redAdminUserEditDosage.Lines[i] + sDELIMITER;
      end;

      dmBoereraad.tblReview.Edit;
      dmBoereraad.tblReview[sTBLREVIEW_DOSAGE] := sParseStr;

      dmBoereraad.tblReview[sTBLREVIEW_DAYSUSED] := sedAdminUserEditDaysUsed.Value;
      dmBoereraad.tblReview[sTBLREVIEW_EFFECTIVENESS] := sedAdminUserEditEffectiveness.Value;
      dmBoereraad.tblReview.Post;
      bFound := True;
    end;

    dmBoereraad.tblReview.Next;
  end;
end;

procedure TfrmHome.bttAdminUserEditSaveUserClick(Sender: TObject);
var
  bFound: Boolean;
  iDBIndex: Integer;
  i: Integer;
begin
  bFound := False;
  iDBIndex := dmBoereraad.tblUser.RecNo;

  dmBoereraad.tblUser.First;
  while not(dmBoereraad.tblUser.Eof) and not(bFound) do
  begin
    if dmBoereraad.tblUser[sTBLUSER_ID] = sedAdminUserEditID.Value then
    begin
      bFound := True;
    end;

    dmBoereraad.tblUser.Next;
  end;

  dmBoereraad.tblUser.Prior;

  dmBoereraad.tblUser.Edit;
  dmBoereraad.tblUser[sTBLUSER_NAME] := edtAdminUserEditName.Text;
  dmBoereraad.tblUser[sTBLUSER_SURNAME] := edtAdminUserEditSurname.Text;
  dmBoereraad.tblUser[sTBLUSER_TYPE] := chkAdminUserEditAdmin.Checked;
  dmBoereraad.tblUser[sTBLUSER_GENDER] := chkAdminUserEditIsMale.Checked;
  dmBoereraad.tblUser[sTBLUSER_EMAIL] := edtAdminUserEditEmail.Text;
  dmBoereraad.tblUser[sTBLUSER_PASSWORD] := edtAdminUserEditPassword.Text;
  dmBoereraad.tblUser.Post;

  dmBoereraad.tblUser.RecNo := iDBIndex;
end;

procedure TfrmHome.bttRemedyPendingChangesAdditionsInfoAddRemedyClick
  (Sender: TObject);
var
  rCreateRemedy: TRemedy;
  sPrice: string;
  i: Integer;
begin
  rCreateRemedy := TRemedy.Create;
  rCreateRemedy.sName := edtRemedyPendingChangesAdditionsInfoName.Text;
  rCreateRemedy.iEaseOfUse :=
    sedRemedyPendingChangesAdditionsInfoEaseOfUse.Value;

  // Desciption
  for i := 0 to redRemedyPendingChangesAdditionsInfoDescription.Lines.
    Count - 1 do
  begin
    rCreateRemedy.sDescription := rCreateRemedy.sDescription +
      redRemedyPendingChangesAdditionsInfoDescription.Lines[i] + #10;
  end;

  // Price
  sPrice := edtRemedyPendingChangesAdditionsInfoPrice.Text;

  if sPrice[1] = 'R' then
  begin
    Delete(sPrice, 1, 1);
  end;

  rCreateRemedy.rPrice := StrToFloat(sPrice);

  // Symptoms
  SetLength(rCreateRemedy.arrSymptoms,
    cltRemedyPendingChangesAdditionsInfoSymptoms.Items.Count);
  for i := 0 to cltRemedyPendingChangesAdditionsInfoSymptoms.Items.Count - 1 do
  begin
    rCreateRemedy.arrSymptoms[i] :=
      cltRemedyPendingChangesAdditionsInfoSymptoms.Items[i];
  end;

  rCreateRemedy.CreateDBRecord;
  TCore.DeleteFile(cProgramCore.GetPendingChangesDirectory + rCreateRemedy.sName
    + '.txt');
  TCore.CopyFile(cProgramCore.GetImageDirectory + rCreateRemedy.sName + '.jpg',
    cProgramCore.GetImageDirectory + IntToStr(rCreateRemedy.GetID) + '.jpg');
  TCore.DeleteFile(cProgramCore.GetImageDirectory + rCreateRemedy.sName
    + '.jpg');

  pgcTabsChange(Self);

  ShowMessage('Remedy Created');
  rCreateRemedy.Destroy;
end;

procedure TfrmHome.bttRemedyPendingChangesAdditionsInfoResetClick
  (Sender: TObject);
const
  sDESCRIPTION_DELIMITER = #9;
  sSYMPTOM_DELIMITER = ',';
var
  sRemedyName, sRemedyInfo: string;
  sSymptoms, sDescription, sLine: string;
  i, iDelimiter: Integer;
begin
  if iAdditionsSelectedIndex < 0 then
  begin
    edtRemedyPendingChangesAdditionsInfoName.Text := '';
    edtRemedyPendingChangesAdditionsInfoPrice.Text := '';
    sedRemedyPendingChangesAdditionsInfoEaseOfUse.Value := 0;
    redRemedyPendingChangesAdditionsInfoDescription.Lines.Clear;
    cltRemedyPendingChangesAdditionsInfoSymptoms.Items.Clear;
    imgRemedyPendingChangesAdditionsInfoImage.Visible := False;

    exit;
  end;

  sRemedyName := arrPendingChangeRemedyName[iAdditionsSelectedIndex];
  sRemedyInfo := arrPendingChangeRemedyInformation[iAdditionsSelectedIndex];

  edtRemedyPendingChangesAdditionsInfoName.Text := sRemedyName;
  edtRemedyPendingChangesAdditionsInfoPrice.Text :=
    'R' + TRemedy.CalculateFieldInformation('Price', sRemedyInfo);
  sedRemedyPendingChangesAdditionsInfoEaseOfUse.Value :=
    StrToInt(TRemedy.CalculateFieldInformation('EaseOfUse', sRemedyInfo));

  // Description
  sDescription := TRemedy.CalculateFieldInformation('Description', sRemedyInfo);
  redRemedyPendingChangesAdditionsInfoDescription.Lines.Clear;
  i := 1;
  while (i <= Length(sDescription)) do
  begin
    iDelimiter := Pos(sDESCRIPTION_DELIMITER, sDescription, i);

    if (iDelimiter > 0) then
      sLine := Copy(sDescription, i, iDelimiter - i)
    else
      sLine := Copy(sDescription, i, Length(sDescription) - i + 1);

    redRemedyPendingChangesAdditionsInfoDescription.Lines.Add(sLine);

    if (iDelimiter > 0) then
    begin
      i := iDelimiter + 1;
    end
    else
    begin
      i := Length(sDescription) + 1;
    end;
  end;

  // Symptoms
  sSymptoms := TRemedy.CalculateFieldInformation('Symptoms', sRemedyInfo);
  cltRemedyPendingChangesAdditionsInfoSymptoms.Items.Clear;
  i := 1;
  while i > 0 do
  begin
    iDelimiter := Pos(sSYMPTOM_DELIMITER, sSymptoms, i);

    if iDelimiter > 0 then
    begin
      sLine := Copy(sSymptoms, i, iDelimiter - i);
    end
    else
    begin
      sLine := Copy(sSymptoms, i, Length(sSymptoms) - i + 1);
    end;

    cltRemedyPendingChangesAdditionsInfoSymptoms.Items.Add(sLine);

    if (iDelimiter > 0) then
    begin
      i := iDelimiter + 1;
    end
    else
    begin
      i := iDelimiter;
    end;
  end;

  if FileExists(cProgramCore.GetImageDirectory + sRemedyName + '.jpg') then
  begin
    imgRemedyPendingChangesAdditionsInfoImage.Picture.LoadFromFile
      (cProgramCore.GetImageDirectory + sRemedyName + '.jpg');
    imgRemedyPendingChangesAdditionsInfoImage.Visible := True;
  end;
end;

procedure TfrmHome.bttRemedyPendingChangesEditInfoResetClick(Sender: TObject);
const
  sDESCRIPTION_DELIMITER = #9;
  sSYMPTOM_DELIMITER = ',';
var
  sRemedyName, sRemedyInfo: string;
  sSymptoms, sDescription, sLine: string;
  i, iDelimiter: Integer;
begin
  if iEditSelectedIndex < 0 then
  begin
    edtRemedyPendingChangesEditInfoName.Text := '';
    edtRemedyPendingChangesEditInfoPrice.Text := '';
    sedRemedyPendingChangesEditInfoEaseOfUse.Value := 0;
    redRemedyPendingChangesEditInfoDescription.Lines.Clear;
    cltRemedyPendingChangesEditInfoSymptoms.Items.Clear;
    imgRemedyPendingChangesEditInfoImage.Visible := False;

    exit;
  end;

  sRemedyName := arrPendingChangeRemedyName[iEditSelectedIndex];
  sRemedyInfo := arrPendingChangeRemedyInformation[iEditSelectedIndex];

  edtRemedyPendingChangesEditInfoName.Text := sRemedyName;
  edtRemedyPendingChangesEditInfoPrice.Text :=
    'R' + TRemedy.CalculateFieldInformation('Price', sRemedyInfo);
  sedRemedyPendingChangesEditInfoEaseOfUse.Value :=
    StrToInt(TRemedy.CalculateFieldInformation('EaseOfUse', sRemedyInfo));

  // Description
  sDescription := TRemedy.CalculateFieldInformation('Description', sRemedyInfo);
  redRemedyPendingChangesEditInfoDescription.Lines.Clear;
  i := 1;
  while (i <= Length(sDescription)) do
  begin
    iDelimiter := Pos(sDESCRIPTION_DELIMITER, sDescription, i);

    if (iDelimiter > 0) then
      sLine := Copy(sDescription, i, iDelimiter - i)
    else
      sLine := Copy(sDescription, i, Length(sDescription) - i + 1);

    redRemedyPendingChangesEditInfoDescription.Lines.Add(sLine);

    if (iDelimiter > 0) then
    begin
      i := iDelimiter + 1;
    end
    else
    begin
      i := Length(sDescription) + 1;
    end;
  end;

  // Symptoms
  sSymptoms := TRemedy.CalculateFieldInformation('Symptoms', sRemedyInfo);
  cltRemedyPendingChangesEditInfoSymptoms.Items.Clear;
  i := 1;
  while i > 0 do
  begin
    iDelimiter := Pos(sSYMPTOM_DELIMITER, sSymptoms, i);

    if iDelimiter > 0 then
    begin
      sLine := Copy(sSymptoms, i, iDelimiter - i);
    end
    else
    begin
      sLine := Copy(sSymptoms, i, Length(sSymptoms) - i + 1);
    end;

    cltRemedyPendingChangesEditInfoSymptoms.Items.Add(sLine);

    if (iDelimiter > 0) then
    begin
      i := iDelimiter + 1;
    end
    else
    begin
      i := iDelimiter;
    end;
  end;

  if FileExists(cProgramCore.GetImageDirectory +
    TRemedy.CalculateFieldInformation('ID', sRemedyInfo) + '.jpg') then
  begin
    imgRemedyPendingChangesEditInfoImage.Picture.LoadFromFile
      (cProgramCore.GetImageDirectory + TRemedy.CalculateFieldInformation('ID',
      sRemedyInfo) + '.jpg');
    imgRemedyPendingChangesEditInfoImage.Visible := True;
  end;
end;

procedure TfrmHome.bttRemedyPendingChangesEditInfoSaveRemedyClick
  (Sender: TObject);
var
  rEditRemedy: TRemedy;
  sPrice: string;
  i: Integer;
begin
  rEditRemedy := TRemedy.Create;
  rEditRemedy.Assign(arrPendingChangeRemedyName[iEditSelectedIndex],
    arrPendingChangeRemedyInformation[iEditSelectedIndex]);
  rEditRemedy.sName := edtRemedyPendingChangesEditInfoName.Text;
  rEditRemedy.iEaseOfUse := sedRemedyPendingChangesEditInfoEaseOfUse.Value;

  // Desciption
  rEditRemedy.sDescription := '';
  for i := 0 to redRemedyPendingChangesEditInfoDescription.Lines.Count - 1 do
  begin
    rEditRemedy.sDescription := rEditRemedy.sDescription +
      redRemedyPendingChangesEditInfoDescription.Lines[i] + #10;
  end;

  // Price
  sPrice := edtRemedyPendingChangesEditInfoPrice.Text;

  if sPrice[1] = 'R' then
  begin
    Delete(sPrice, 1, 1);
  end;

  rEditRemedy.rPrice := StrToFloat(sPrice);

  // Symptoms
  SetLength(rEditRemedy.arrSymptoms,
    cltRemedyPendingChangesEditInfoSymptoms.Items.Count);
  for i := 0 to cltRemedyPendingChangesEditInfoSymptoms.Items.Count - 1 do
  begin
    rEditRemedy.arrSymptoms[i] :=
      cltRemedyPendingChangesEditInfoSymptoms.Items[i];
  end;

  rEditRemedy.UpdateDBRecord;
  TCore.DeleteFile(cProgramCore.GetPendingChangesDirectory + rEditRemedy.sName
    + '.txt');

  pgcTabsChange(Self);

  ShowMessage('Remedy Edited');
  rEditRemedy.Destroy;
end;

procedure TfrmHome.bttRemedyUsageAddAddReviewClick(Sender: TObject);
begin
  // Validation

  AddReview;
  bttRemedyUsageAddResetClick(nil);
end;

procedure TfrmHome.bttRemedyUsageAddResetClick(Sender: TObject);
begin
  cmbRemedyUsageAddRemedy.ItemIndex := -1;
  cmbRemedyUsageAddRemedy.Text := 'Remedy Name';
  sedRemedyUsageAddDaysUsed.Value := 0;
  redRemedyUsageAddDosage.Lines.Clear;
  sedRemedyUsageAddEffectiveness.Value := 0;
end;

procedure TfrmHome.NavigationHomeClick(Sender: TObject);
begin
  pgcTabs.TabIndex := 0;
end;

// TODO DB REFACTOR
procedure TfrmHome.dbgAdminRemedyEditRemedyCellClick(Column: TColumn);
const
  sDELIMITER = #10;
var
  sParseStr: string;
  i: Integer;
  iDelimiter: Integer;
  sLine: string;
begin
  // Remedy Edit
  sedAdminRemedyEditID.Value := dmBoereraad.tblRemedy['ID'];
  edtAdminRemedyEditName.Text := dmBoereraad.tblRemedy['RemedyName'];
  edtAdminRemedyEditPrice.Text := FloatToStrF(dmBoereraad.tblRemedy['PricePerDose'], ffCurrency, 10, 2);
  sedAdminRemedyEditEaseOfUse.Value := dmBoereraad.tblRemedy['EaseOfUse'];
  sParseStr := dmBoereraad.tblRemedy['Description'];

  // Description Line Seperation
  redAdminRemedyEditDescription.Lines.Clear;
  i := 1;
  while (i <= Length(sParseStr)) do
  begin
    iDelimiter := Pos(sDELIMITER, sParseStr, i);

    if (iDelimiter > 0) then
      sLine := Copy(sParseStr, i, iDelimiter - i)
    else
      sLine := Copy(sParseStr, i, Length(sParseStr) - i + 1);

    redAdminRemedyEditDescription.Lines.Add(sLine);

    if (iDelimiter > 0) then
    begin
      i := iDelimiter + 1;
    end
    else
    begin
      i := Length(sParseStr) + 1;
    end;
  end;
end;

procedure TfrmHome.dbgAdminUserEditUsersCellClick(Column: TColumn);
var
  iDBIndex: Integer;
begin
  iDBIndex := dmBoereraad.tblReview.RecNo;

  redAdminUserEditDosage.Lines.Clear;
  sedAdminUserEditDaysUsed.Value := 0;
  sedAdminUserEditEffectiveness.Value := 0;

  // Review List
  dmBoereraad.tblReview.First;

  lstAdminUserEditReview.Items.Clear;
  while not(dmBoereraad.tblReview.Eof) do
  begin
    if dmBoereraad.tblReview['UserID'] = dmBoereraad.tblUser['ID'] then
    begin
      lstAdminUserEditReview.Items.Add
        (GetRemedyName(dmBoereraad.tblReview['RemedyID']));
    end;

    dmBoereraad.tblReview.Next;
  end;

  // User Edit
  sedAdminUserEditID.Value := dmBoereraad.tblUser[sTBLUSER_ID];
  edtAdminUserEditName.Text := dmBoereraad.tblUser[sTBLUSER_NAME];
  edtAdminUserEditSurname.Text := dmBoereraad.tblUser[sTBLUSER_SURNAME];
  edtAdminUserEditEmail.Text := dmBoereraad.tblUser[sTBLUSER_EMAIL];
  edtAdminUserEditPassword.Text := dmBoereraad.tblUser[sTBLUSER_PASSWORD];

  chkAdminUserEditIsMale.Checked := dmBoereraad.tblUser[sTBLUSER_GENDER];
  chkAdminUserEditAdmin.Checked := dmBoereraad.tblUser[sTBLUSER_TYPE];

  dmBoereraad.tblReview.RecNo := iDBIndex;
end;

procedure TfrmHome.FormActivate(Sender: TObject);
begin
  if not(bDBInit) then
  begin
    if not(dmBoereraad.InitialiseDatabase) then
    begin
      ShowMessage('Failed to find database');
    end
    else
    begin
      bDBInit := True;
    end;
  end;

  LoadRemediesFromDBToScrollbox;
  iPendingChangeCount := 0;
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
  pgcTabs.ActivePage := tsHome;
end;

function TfrmHome.GetRemedyName(pID: Integer): string;
var
  iDBIndex: Integer;
  bFound: Boolean;
  sOutput: string;
begin
  bFound := False;
  iDBIndex := dmBoereraad.tblRemedy.RecNo;

  dmBoereraad.tblRemedy.First;
  while not(dmBoereraad.tblRemedy.Eof) and not(bFound) do
  begin
    if dmBoereraad.tblRemedy['ID'] = pID then
    begin
      sOutput := dmBoereraad.tblRemedy['RemedyName'];
      bFound := True;
    end;

    dmBoereraad.tblRemedy.Next;
  end;

  dmBoereraad.tblRemedy.RecNo := iDBIndex;
  result := sOutput;
end;

function TfrmHome.GetUserPasswordFromDB(pUserID: Integer): string;
var
  iDBIndex: Integer;
  bFound: Boolean;

  sPassword: String;
begin
  bFound := False;
  iDBIndex := dmBoereraad.tblUser.RecNo;

  dmBoereraad.tblUser.First;
  while (not(dmBoereraad.tblUser.Eof)) and (not(bFound)) do
  begin
    if (dmBoereraad.tblUser['ID'] = pUserID) then
    begin
      sPassword := dmBoereraad.tblUser[sTBLUSER_PASSWORD];

      bFound := True;
    end;

    dmBoereraad.tblUser.Next;
  end;

  dmBoereraad.tblUser.RecNo := iDBIndex;

  result := sPassword;
end;

procedure TfrmHome.LoadPendingChangesFromTFToArr;
var
  sDirContents: String;
  rPendingRemedy: TRemedy;
  sRemedyName, sRemedyInfo: string;
  i, iSeperator, iExtensionIndex: Integer;
  bMaxChanges: Boolean;
begin
  iPendingChangeCount := 0;
  bMaxChanges := False;
  i := 1;
  rPendingRemedy := TRemedy.Create;
  sDirContents := TCore.ReadDir(cProgramCore.GetPendingChangesDirectory);

  while (i <= Length(sDirContents)) and (i > 0) and not(bMaxChanges) do
  begin
    if i <> 1 then
    begin
      Inc(i);
    end;

    iSeperator := Pos(#9, sDirContents, i);

    if iSeperator > 0 then
    begin
      sRemedyName := Copy(sDirContents, i, iSeperator - i);
    end
    else
    begin
      sRemedyName := Copy(sDirContents, i, Length(sDirContents) - i + 1);
    end;

    iExtensionIndex := Pos('.txt', sRemedyName);
    if iExtensionIndex > 0 then
    begin
      Delete(sRemedyName, iExtensionIndex, 4);
    end;

    sRemedyInfo := TRemedy.ReadPendingChange(sRemedyName);

    if iPendingChangeCount < iMAX_PENDING_CHANGES then
    begin
      Inc(iPendingChangeCount);
      arrPendingChangeRemedyName[iPendingChangeCount] := sRemedyName;
      arrPendingChangeRemedyInformation[iPendingChangeCount] := sRemedyInfo;
    end
    else
    begin
      bMaxChanges := True;
    end;

    i := iSeperator;
  end;

  rPendingRemedy.Destroy;
end;

procedure TfrmHome.LoadRemediesFromDBToScrollbox;
const
  sDELIMITER = ', ';
var
  iDBIndex: Integer;
  rRemedy: TRemedy;
  rtRemedyTile: TdynRemedyTile;
begin
  rRemedy := TRemedy.Create;
  rtRemedyTile := TdynRemedyTile.Create(Self);
  iDBIndex := dmBoereraad.tblRemedy.RecNo;

  dmBoereraad.tblRemedy.First;
  while not(dmBoereraad.tblRemedy.Eof) do
  begin
    rRemedy.ReadDBRecord(dmBoereraad.tblRemedy['ID']);
    rtRemedyTile.Init(sbxRemediesList, rRemedy);

    // Add to array
    SetLength(arrRemedyTiles, Length(arrRemedyTiles) + 1);
    arrRemedyTiles[Length(arrRemedyTiles) - 1] := rtRemedyTile;

    rtRemedyTile := TdynRemedyTile.Create(Self);

    dmBoereraad.tblRemedy.Next;
  end;

  rRemedy.Destroy;

  dmBoereraad.tblRemedy.RecNo := iDBIndex;
end;

procedure TfrmHome.LoadReviewsFromDBToScrollBox;
var
  rtReviewTile: TdynReviewTile;
  iReviewID : Integer;
begin
  dmBoereraad.tblReview.First;
  while not(dmBoereraad.tblReview.Eof) do
  begin
    if dmBoereraad.tblReview['UserID'] = iUserID then
    begin
      rtReviewTile := TdynReviewTile.Create(Self);
      iReviewID := dmBoereraad.tblReview['ID'];
      rtReviewTile.Init(sbxRemedyUsageList, iReviewID);

      // Add to array
      SetLength(arrReviewTiles, Length(arrReviewTiles) + 1);
      arrReviewTiles[Length(arrReviewTiles) - 1] := rtReviewTile;
    end;

    dmBoereraad.tblReview.Next;
  end;
end;

procedure TfrmHome.lstAdminUserEditReviewClick(Sender: TObject);
const
  sDELIMITER = #10;
var
  bFound: Boolean;
  iIndex: Integer;
  i, iDelimiter : Integer;
  sParseStr, sLine : String;
begin
  bFound := False;
  iIndex := 0;

  dmBoereraad.tblReview.First;
  while not(dmBoereraad.tblReview.Eof) and not(bFound) do
  begin
    if dmBoereraad.tblReview['UserID'] = sedAdminUserEditID.Value then
    begin
      Inc(iIndex);
    end;

    // Load Review
    if iIndex = lstAdminUserEditReview.ItemIndex + 1 then
    begin
      // Dosage
      redAdminUserEditDosage.Lines.Clear;
      sParseStr := dmBoereraad.tblReview['Dosage'];
      i := 1;
      while (i <= Length(sParseStr)) do
      begin
        iDelimiter := Pos(sDELIMITER, sParseStr, i);

        if (iDelimiter > 0) then
          sLine := Copy(sParseStr, i, iDelimiter - i)
        else
          sLine := Copy(sParseStr, i, Length(sParseStr) - i + 1);

        redAdminUserEditDosage.Lines.Add(sLine);

        if (iDelimiter > 0) then
        begin
          i := iDelimiter + 1;
        end
        else
        begin
          i := Length(sParseStr) + 1;
        end;
      end;

      sedAdminUserEditDaysUsed.Value := dmBoereraad.tblReview['DaysUsed'];
      sedAdminUserEditEffectiveness.Value := dmBoereraad.tblReview['Effectiveness'];
      bFound := True;
    end;

    dmBoereraad.tblReview.Next;
  end;
end;

procedure TfrmHome.lstRemedyPendingChangesAdditionsRemediesListClick
  (Sender: TObject);
var
  iIndex: Integer;
  i: Integer;
begin
  iIndex := 0;

  for i := 1 to iPendingChangeCount do
  begin
    if StrToInt(TRemedy.CalculateFieldInformation('ID',
      arrPendingChangeRemedyInformation[i])) < 0 then
    begin
      Inc(iIndex);
    end;

    if iIndex = lstRemedyPendingChangesAdditionsRemediesList.ItemIndex + 1 then
    begin
      iAdditionsSelectedIndex := i;
      Inc(iIndex);
    end;
  end;

  bttRemedyPendingChangesAdditionsInfoResetClick(Self);
end;

procedure TfrmHome.lstRemedyPendingChangesEditRemediesListClick
  (Sender: TObject);
var
  iIndex: Integer;
  i: Integer;
begin
  iIndex := 0;

  for i := 1 to iPendingChangeCount do
  begin
    if StrToInt(TRemedy.CalculateFieldInformation('ID',
      arrPendingChangeRemedyInformation[i])) >= 0 then
    begin
      Inc(iIndex);
    end;

    if iIndex = lstRemedyPendingChangesEditRemediesList.ItemIndex + 1 then
    begin
      iEditSelectedIndex := i;
      Inc(iIndex);
    end;
  end;

  bttRemedyPendingChangesEditInfoResetClick(Self);
end;

procedure TfrmHome.pgcTabsChange(Sender: TObject);
const
  iHOME_PAGE_INDEX = 0;
  iREMEDIES_PAGE_INDEX = 1;
  iADD_REMEDY_PAGE_INDEX = 2;
  iREMEDY_REVIEWS_PAGE_INDEX = 3;
  iPENDING_CHANGES_PAGE_INDEX = 4;
  iADMIN_PAGE_INDEX = 5;
var
  iTableIndex: Integer;
  i: Integer;
begin
  case pgcTabs.ActivePageIndex of
    iREMEDY_REVIEWS_PAGE_INDEX:
      begin
        // List Reviews of selected user
        iTableIndex := dmBoereraad.tblRemedy.RecNo;
        cmbRemedyUsageAddRemedy.Items.Clear;

        while not(dmBoereraad.tblRemedy.Eof) do
        begin
          cmbRemedyUsageAddRemedy.Items.Add
            (dmBoereraad.tblRemedy['RemedyName']);

          dmBoereraad.tblRemedy.Next;
        end;

        dmBoereraad.tblRemedy.RecNo := iTableIndex;
      end;
    iPENDING_CHANGES_PAGE_INDEX:
      begin
        iAdditionsSelectedIndex := -1;
        iEditSelectedIndex := -1;

        LoadPendingChangesFromTFToArr;

        lstRemedyPendingChangesAdditionsRemediesList.Items.Clear;
        lstRemedyPendingChangesEditRemediesList.Items.Clear;
        for i := 1 to iPendingChangeCount do
        begin
          if StrToInt(TRemedy.CalculateFieldInformation('ID',
            arrPendingChangeRemedyInformation[i])) < 0 then
          begin
            lstRemedyPendingChangesAdditionsRemediesList.Items.Add
              (arrPendingChangeRemedyName[i]);
          end
          else
          begin
            lstRemedyPendingChangesEditRemediesList.Items.Add
              (arrPendingChangeRemedyName[i]);
          end;
        end;

        bttRemedyPendingChangesAdditionsInfoResetClick(Self);
        bttRemedyPendingChangesEditInfoResetClick(Self);
      end;
  end;
end;

procedure TfrmHome.SetupPages;
begin
  if bUserAdmin then
  begin
    tsAdmin.TabVisible := True;
    tsRemedyPendingChanges.TabVisible := True;
  end
  else
  begin
    tsRemedies.TabVisible := True;
    tsAddRemedy.TabVisible := True;
    tsRemedyUsage.TabVisible := True;
  end;
end;

end.
