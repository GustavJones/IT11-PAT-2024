unit Application_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Themes, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.CheckLst, Vcl.Imaging.pngimage, Data.DB,
  Vcl.Grids, Vcl.DBGrids, dmBoereraad_u, RemedyTile_u, ReviewTile_u, Remedy_u, Core_u, AdminHelp_u, UserHelp_u,
  Vcl.Buttons, Vcl.Samples.Spin, Vcl.ExtDlgs, System.DateUtils;

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
    bmbRemediesNavigationHelp: TBitBtn;
    bmbRemediesNavigationHome: TBitBtn;
    bmbRemediesNavigationNext: TBitBtn;
    bmbRemediesNavigationPrevious: TBitBtn;
    pnlAddRemedy: TPanel;
    lblAddRemedyTitle: TLabel;
    pnlAddRemedyNavigation: TPanel;
    bmbAddRemedyNavigationHelp: TBitBtn;
    bmbAddRemedyNavigationHome: TBitBtn;
    bmbAddRemedyNavigationNext: TBitBtn;
    bmbAddRemedyNavigationPrevious: TBitBtn;
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
    bmbAddRemedyNavigationReset: TBitBtn;
    bmbAddRemedyInputsCreateRemedy: TBitBtn;
    btnAddRemedyInputsAddImage: TButton;
    tsRemedyPendingChanges: TTabSheet;
    pnlRemedyPendingChanges: TPanel;
    lblRemedyPendingChanges: TLabel;
    pnlRemedyPendingChangesNavigation: TPanel;
    bmbRemedyPendingChangesNavigationHelp: TBitBtn;
    bmbRemedyPendingChangesNavigationHome: TBitBtn;
    bmbRemedyPendingChangesNavigationNext: TBitBtn;
    bmbRemedyPendingChangesNavigationPrevious: TBitBtn;
    pnlRemedyPendingChangesAdditions: TPanel;
    lblRemedyPendingChangesAdditions: TLabel;
    lstRemedyPendingChangesAdditionsRemediesList: TListBox;
    edtRemedyPendingChangesAdditionsInfoName: TEdit;
    edtRemedyPendingChangesAdditionsInfoPrice: TEdit;
    pnlRemedyPendingChangesAdditionsInfo: TPanel;
    lblPendingChangesAdditionsInfo: TLabel;
    redRemedyPendingChangesAdditionsInfoDescription: TRichEdit;
    bmbRemedyPendingChangesAdditionsInfoReset: TBitBtn;
    bmbRemedyPendingChangesAdditionsInfoAddRemedy: TBitBtn;
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
    bmbRemedyPendingChangesEditInfoReset: TBitBtn;
    bmbRemedyPendingChangesEditInfoSaveRemedy: TBitBtn;
    cltRemedyPendingChangesEditInfoSymptoms: TCheckListBox;
    edtRemedyPendingChangesEditInfoSymptomName: TEdit;
    btnRemedyPendingChangesEditInfoRemoveSymptom: TButton;
    btnRemedyPendingChangesEditInfoAddSymptom: TButton;
    tsRemedyUsage: TTabSheet;
    pnlRemedyUsage: TPanel;
    lblRemedyUsageTitle: TLabel;
    sbxRemedyUsageList: TScrollBox;
    pnlRemedyUsageNavigation: TPanel;
    bmbRemedyUsageNavigationHelp: TBitBtn;
    bmbRemedyUsageNavigationHome: TBitBtn;
    bmbRemedyUsageNavigationNext: TBitBtn;
    bmbRemedyUsageNavigationPrevious: TBitBtn;
    pnlRemedyUsageAdd: TPanel;
    lblRemedyUsageAddDosage: TLabel;
    redRemedyUsageAddDosage: TRichEdit;
    lblRemedyUsageAddDaysUsed: TLabel;
    sedRemedyUsageAddDaysUsed: TSpinEdit;
    bmbRemedyUsageAddReset: TBitBtn;
    bmbRemedyUsageAddAddReview: TBitBtn;
    lblRemedyUsageUseList: TLabel;
    lblRemedyUsageAddRemedyName: TLabel;
    sedAddRemedyInputsEaseOfUse: TSpinEdit;
    lblAddRemedyInputsEaseOfUse: TLabel;
    bmbAdminUserEditRemoveUser: TBitBtn;
    lstAdminUserEditReview: TListBox;
    pnlAdminUserEdit: TPanel;
    bmbAdminUserEditRemoveReview: TBitBtn;
    redAdminUserEditDosage: TRichEdit;
    sedAdminUserEditDaysUsed: TSpinEdit;
    lblAdminUserEditDaysUsed: TLabel;
    lblAdminUserEditDosage: TLabel;
    lblAdminUserEditReview: TLabel;
    edtAdminUserEditName: TEdit;
    edtAdminUserEditSurname: TEdit;
    edtAdminUserEditEmail: TEdit;
    chkAdminUserEditIsMale: TCheckBox;
    bmbAdminUserEditSaveUser: TBitBtn;
    pnlAdminRemedyEdit: TPanel;
    lblAdminRemedyEditDescription: TLabel;
    bmbAdminRemedyEditRemoveRemedy: TBitBtn;
    dbgAdminRemedyEditRemedy: TDBGrid;
    redAdminRemedyEditDescription: TRichEdit;
    edtAdminRemedyEditName: TEdit;
    bmbAdminRemedyEditSaveRemedy: TBitBtn;
    edtAdminRemedyEditPrice: TEdit;
    lblAdminRemedy: TLabel;
    sedAdminRemedyEditEaseOfUse: TSpinEdit;
    chkSignUpAdmin: TCheckBox;
    chkAdminUserEditAdmin: TCheckBox;
    bmbAdminUserEditSaveReview: TBitBtn;
    sedRemedyUsageAddEffectiveness: TSpinEdit;
    lblRemedyUsageAddEffectiveness: TLabel;
    cmbRemedyUsageAddRemedy: TComboBox;
    lblAdminRemedyEditEaseOfUse: TLabel;
    pnlAdminNavigation: TPanel;
    bmbAdminNavigationHelp: TBitBtn;
    bmbAdminNavigationHome: TBitBtn;
    bmbAdminNavigationNext: TBitBtn;
    bmbAdminNavigationPrevious: TBitBtn;
    sedAdminUserEditEffectiveness: TSpinEdit;
    lblAdminUserEditEffectiveness: TLabel;
    btnHomeLogOut: TButton;
    sedRemedyPendingChangesAdditionsInfoEaseOfUse: TSpinEdit;
    lblRemedyPendingChangesAdditionsInfoEaseOfUse: TLabel;
    lblRemedyPendingChangesEditInfoEaseOfUse: TLabel;
    sedRemedyPendingChangesEditInfoEaseOfUse: TSpinEdit;
    edtAdminUserEditPassword: TEdit;
    sedAdminUserEditID: TSpinEdit;
    lblAdminUserEditID: TLabel;
    sedAdminRemedyEditID: TSpinEdit;
    lblRemedyPendingChangesAdditionsSelect: TLabel;
    lblRemedyPendingChangesEditSelect: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pgcTabsChange(Sender: TObject);
    procedure btnLogInClick(Sender: TObject);
    procedure btnSignUpClick(Sender: TObject);

    procedure btnHomeLogOutClick(Sender: TObject);
    procedure NavigationHomeClick(Sender: TObject);
    procedure bmbRemedyUsageAddAddReviewClick(Sender: TObject);
    procedure dbgAdminUserEditUsersCellClick(Column: TColumn);
    procedure bmbAddRemedyInputsCreateRemedyClick(Sender: TObject);
    procedure btnAddRemedyInputsAddSymptomClick(Sender: TObject);
    procedure btnAddRemedyInputsRemoveSymptomClick(Sender: TObject);
    procedure lstRemedyPendingChangesAdditionsRemediesListClick
      (Sender: TObject);
    procedure btnRemedyPendingChangesAdditionsInfoAddSymptomClick
      (Sender: TObject);
    procedure btnRemedyPendingChangesAdditionsInfoRemoveSymptomClick
      (Sender: TObject);
    procedure bmbRemedyPendingChangesAdditionsInfoResetClick(Sender: TObject);
    procedure bmbRemedyPendingChangesAdditionsInfoAddRemedyClick
      (Sender: TObject);
    procedure lstRemedyPendingChangesEditRemediesListClick(Sender: TObject);
    procedure bmbRemedyPendingChangesEditInfoResetClick(Sender: TObject);
    procedure btnRemedyPendingChangesEditInfoAddSymptomClick(Sender: TObject);
    procedure btnRemedyPendingChangesEditInfoRemoveSymptomClick
      (Sender: TObject);
    procedure bmbRemedyPendingChangesEditInfoSaveRemedyClick(Sender: TObject);
    procedure bmbAdminUserEditSaveUserClick(Sender: TObject);
    procedure btnAddRemedyInputsAddImageClick(Sender: TObject);
    procedure bmbAdminUserEditRemoveUserClick(Sender: TObject);
    procedure lstAdminUserEditReviewClick(Sender: TObject);
    procedure dbgAdminRemedyEditRemedyCellClick(Column: TColumn);
    procedure bmbAdminUserEditSaveReviewClick(Sender: TObject);
    procedure bmbAdminUserEditRemoveReviewClick(Sender: TObject);
    procedure bmbAdminRemedyEditSaveRemedyClick(Sender: TObject);
    procedure bmbAdminRemedyEditRemoveRemedyClick(Sender: TObject);
    procedure bmbRemedyUsageAddResetClick(Sender: TObject);
    procedure bmbAddRemedyNavigationResetClick(Sender: TObject);
    procedure NavigationNextClick(Sender: TObject);
    procedure NavigationBackClick(Sender: TObject);
    procedure NavigationHelpClick(Sender: TObject);

  private
    function GetUserPasswordFromDB(pUserID: Integer): string;
    procedure LoadRemediesFromDBToScrollbox;
    procedure LoadReviewsFromDBToScrollBox;
    procedure LoadPendingChangesFromTFToArr;
    procedure SortPendingChangesInArr;
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
  // Add remedy to pending change textfile by reading inputs

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
  // Add a review to the database from inputs
  iTableIndex := dmBoereraad.tblReview.RecNo;

  iDaysUsed := sedRemedyUsageAddDaysUsed.Value;
  sDosageInformation := redRemedyUsageAddDosage.Lines[0];

  for i := 1 to redRemedyUsageAddDosage.Lines.Count do
  begin
    sDosageInformation := sDosageInformation + sDELIMITER +
      redRemedyUsageAddDosage.Lines[i];
  end;

  iEffectiveness := sedRemedyUsageAddEffectiveness.Value;

  // ADO
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
  // Add image to new remedy
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
    imgAddRemedyInputsImage.Visible := True;
  end;

  dlgImageSelect.Destroy;
end;

procedure TfrmHome.btnAddRemedyInputsAddSymptomClick(Sender: TObject);
var
  sSymptom: string;
begin
  // Add a symptom to checklistbox to add to new symptom
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
  bRemoved : Boolean;
begin
  bRemoved := False;

  // Remove checked Symptoms from checklist
  for i := cltAddRemedyInputsSymptoms.Items.Count downto 1 do
  begin
    if cltAddRemedyInputsSymptoms.Checked[i - 1] then
    begin
      cltAddRemedyInputsSymptoms.Items.Delete(i - 1);
      bRemoved := True;
    end;
  end;

  // Validation
  if not bRemoved then
  begin
    ShowMessage('Please select a symptom to remove');
  end;
end;

procedure TfrmHome.btnHomeLogOutClick(Sender: TObject);
var
  i: Integer;
begin
  // Log User out
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
  end;

  edtLogInEmail.Text := '';
  edtLogInPassword.Text := '';
end;

procedure TfrmHome.btnLogInClick(Sender: TObject);
var
  bFound: Boolean;
  iTableIndex: Integer;
  sEmail: string;
  sPassword: string;
begin
  // Validation
  if edtLogInEmail.Text = '' then
  begin
    ShowMessage('Please enter an email');
    exit;
  end;

  if edtLogInPassword.Text = '' then
  begin
    ShowMessage('Please enter a password');
    exit;
  end;

  bFound := False;
  iTableIndex := dmBoereraad.tblUser.RecNo;

  if iUserID > 0 then
  begin
    ShowMessage('Please log out before trying to log in with another account');
    exit;
  end;

  sEmail := edtLogInEmail.Text;
  sPassword := edtLogInPassword.Text;

  // ADO: Get User ID
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
  LoadRemediesFromDBToScrollbox;
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
  // Add symptom to pending change list
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
  // Add symptom to pending change list
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
var
  iDBIndex: Integer;
  dDate : TDate;
  dCurrentDate : TDate;
  bExists : Boolean;
begin
  // Create new user from inputs

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

  if rgpSignUpGender.ItemIndex < 0 then
  begin
    ShowMessage('Please select a birth gender');
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

  // Age Check
  dDate := dtpSignUpBirthDate.Date;
  dCurrentDate := Date;

  if dDate > dCurrentDate then
  begin
    ShowMessage('Cannot select a date in the future');
    exit;
  end
  else if dDate = dCurrentDate then
  begin
    ShowMessage('Cannot select today''s Date');
    exit;
  end
  else if YearsBetween(dCurrentDate, dDate) < 16 then
  begin
    ShowMessage('User Not at least 16 years old');
    exit;
  end;

  // ADO: Search for existing record with same email
  bExists := False;
  iDBIndex := dmBoereraad.tblUser.RecNo;
  dmBoereraad.tblUser.First;
  while not (dmBoereraad.tblUser.Eof) and not (bExists) do
  begin
    if dmBoereraad.tblUser[sTBLUSER_EMAIL] = edtSignUpEmail.Text then
    begin
      bExists := True;
    end;

    dmBoereraad.tblUser.Next;
  end;

  if bExists then
  begin
    ShowMessage('User with this email already exists. Please use another email');
    dmBoereraad.tblUser.RecNo := iDBIndex;
    exit;
  end;

  // ADO: Add record to DB
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

  ShowMessage('Created Account. Please log in.');
  edtSignUpName.Text := '';
  edtSignUpSurname.Text := '';
  edtSignUpEmail.Text := '';
  edtSignUpPassword.Text := '';

  rgpSignUpGender.ItemIndex := -1;
  dtpSignUpBirthDate.Date := Date;
end;

procedure TfrmHome.bmbAddRemedyInputsCreateRemedyClick(Sender: TObject);
var
  iResponse : Integer;
  i: Integer;
  sPrice : String;
begin
  // Validate inputs for new remedy

  // Validation
  if (edtAddRemedyInputsRemedyName.Text = '') then
  begin
    ShowMessage('Please enter a remedy name');
    edtAddRemedyInputsRemedyName.SetFocus;
    exit;
  end;

  if (Length(edtAddRemedyInputsRemedyName.Text) > iREMEDY_NAME_FIELD_SIZE) then
  begin
    ShowMessage('Remedy name too long. Must be less than ' + IntToStr(iREMEDY_NAME_FIELD_SIZE) + ' characters');
    edtAddRemedyInputsRemedyName.SetFocus;
    exit;
  end;

  if (edtAddRemedyInputsPrice.Text = '') then
  begin
    ShowMessage('Please enter a remedy price');
    edtAddRemedyInputsPrice.SetFocus;
    exit;
  end;

  sPrice := edtAddRemedyInputsPrice.Text;
  for i := 1 to Length(sPrice) do
  begin
    if sPrice[i] = '.' then
    begin
      sPrice[i] := ',';
    end;
  end;
  edtAddRemedyInputsPrice.Text := sPrice;

  try
    if edtAddRemedyInputsPrice.Text[1] = 'R' then
    begin
      if StrToFloat(Copy(edtAddRemedyInputsPrice.Text, 2)) < 0 then
      begin
        raise EConvertError.Create('Price cannot be negative');
      end;
    end
    else
    begin
      if StrToFloat(Copy(edtAddRemedyInputsPrice.Text, 1)) < 0 then
      begin
        raise EConvertError.Create('Price cannot be negative');
      end;
    end;
  except
    on E: EConvertError do
    begin
      ShowMessage('Please enter a valid price amount: ' + E.Message);
      exit;
    end;
  end;

  if sedAddRemedyInputsEaseOfUse.Value = 0 then
  begin
    ShowMessage('Please set a ease of use value between 1 - 10');
    sedAddRemedyInputsEaseOfUse.SetFocus;
    exit;
  end;

  if (redAddRemedyInputsDescription.Lines.Count = 0) or ((redAddRemedyInputsDescription.Lines.Count = 1) and (redAddRemedyInputsDescription.Lines[0] = '')) then
  begin
    ShowMessage('Please enter a description for the remedy');
    redAddRemedyInputsDescription.SetFocus;
    exit;
  end;

  if Length(redAddRemedyInputsDescription.Lines.Text) > iREMEDY_DESCRIPTION_FIELD_SIZE then
  begin
    ShowMessage('Description too long. Must be less than ' + IntToStr(iREMEDY_DESCRIPTION_FIELD_SIZE) + ' characters');
    redAddRemedyInputsDescription.SetFocus;
    exit;
  end;


  if cltAddRemedyInputsSymptoms.Items.Count = 0 then
  begin
    ShowMessage('Please add symptoms to use this remedy for');
    edtAddRemedyInputsAddSymptom.SetFocus;
    exit;
  end;

  if not Assigned(imgAddRemedyInputsImage.Picture.Graphic) then
  begin
    iResponse := MessageDlg('No image loaded for remedy. Do you want to continue?', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0);
    if (iResponse = mrNo) or (iResponse = mrCancel) then
    begin
      btnAddRemedyInputsAddImage.SetFocus;
      exit;
    end;
  end;

  if FileExists(cProgramCore.GetPendingChangesDirectory + edtAddRemedyInputsRemedyName.Text + '.txt') then
  begin
    iResponse := MessageDlg('Remedy request already exists. Do you want to overwrite?', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0);
    if (iResponse = mrNo) or (iResponse = mrCancel) then
    begin
      edtAddRemedyInputsRemedyName.SetFocus;
      exit;
    end;
  end;

  AddRemedy;
  ShowMessage('Created Remedy addition request');
end;

procedure TfrmHome.bmbAddRemedyNavigationResetClick(Sender: TObject);
begin
  // Clear inputs for creating remedies
  edtAddRemedyInputsRemedyName.Text := '';
  edtAddRemedyInputsPrice.Text := '';
  sedAddRemedyInputsEaseOfUse.Value := 0;
  redAddRemedyInputsDescription.Lines.Clear;
  cltAddRemedyInputsSymptoms.Items.Clear;
  imgAddRemedyInputsImage.Visible := False;
end;

procedure TfrmHome.bmbAdminRemedyEditRemoveRemedyClick(Sender: TObject);
const
  sDELIMITER = #10;
var
  iResponse : Integer;
  iDBIndex : Integer;
  bFound : Boolean;
begin
  iResponse := MessageDlg('Are you sure you want to remove this remedy?', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0);
  if (iResponse = mrNo) or (iResponse = mrCancel) then
  begin
    exit;
  end;

  // Remove a remedy from DBGrid
  bFound := False;
  iDBIndex := dmBoereraad.tblRemedy.RecNo;

  // ADO : Removing a primary table record and deleting references
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

procedure TfrmHome.bmbAdminRemedyEditSaveRemedyClick(Sender: TObject);
const
  sDELIMITER = #10;
var
  iDBIndex : Integer;
  sPrice, sDescription : string;
  bFound : Boolean;
  i: Integer;
begin
  // Save edits to remedy from DBGrid

  // Validation
  if sedAdminRemedyEditID.Value <= 0 then
  begin
    ShowMessage('Please select a remedy from DBGrid');
    dbgAdminRemedyEditRemedy.SetFocus;
    exit;
  end;

  if (redAdminRemedyEditDescription.Lines.Count = 0) or ((redAdminRemedyEditDescription.Lines.Count = 1) and (redAdminRemedyEditDescription.Lines[0] = '')) then
  begin
    ShowMessage('Please enter a dosage for the review');
    redAdminRemedyEditDescription.SetFocus;
    exit;
  end;

  if edtAdminRemedyEditName.Text = '' then
  begin
    ShowMessage('Please enter a remedy name');
    edtAdminRemedyEditName.SetFocus;
    exit;
  end;

  if sedAdminRemedyEditEaseOfUse.Value <= 0 then
  begin
    ShowMessage('Please set ease of use value between 1 - 10');
    sedAdminRemedyEditEaseOfUse.SetFocus;
    exit;
  end;

  if edtAdminRemedyEditPrice.Text = '' then
  begin
    ShowMessage('Please set a price for the remedy');
    edtAdminRemedyEditPrice.SetFocus;
    exit;
  end;

  sPrice := edtAdminRemedyEditPrice.Text;
  for i := 1 to Length(sPrice) do
  begin
    if sPrice[i] = '.' then
    begin
      sPrice[i] := ',';
    end;
  end;
  edtAdminRemedyEditPrice.Text := sPrice;

  try
    if edtAdminRemedyEditPrice.Text[1] = 'R' then
    begin
      if StrToFloat(Copy(edtAdminRemedyEditPrice.Text, 2)) < 0 then
      begin
        raise EConvertError.Create('Price cannot be negative');
      end;
    end
    else
    begin
      if StrToFloat(Copy(edtAdminRemedyEditPrice.Text, 1)) < 0 then
      begin
        raise EConvertError.Create('Price cannot be negative');
      end;
    end;
  except
    on E: EConvertError do
    begin
      ShowMessage('Please enter a valid price amount: ' + E.Message);
      exit;
    end;
  end;

  bFound := False;
  sDescription := '';
  iDBIndex := dmBoereraad.tblRemedy.RecNo;

  // ADO: Update a record from PK
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

procedure TfrmHome.bmbAdminUserEditRemoveReviewClick(Sender: TObject);
var
  iResponse : Integer;
  bFound: Boolean;
  iIndex: Integer;
begin
  iResponse := MessageDlg('Are you sure you want to remove this review?', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0);
  if (iResponse = mrNo) or (iResponse = mrCancel) then
  begin
    exit;
  end;

  // Remove selected review from DB
  bFound := False;
  iIndex := 0;

  // ADO: Delete child table records
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

procedure TfrmHome.bmbAdminUserEditRemoveUserClick(Sender: TObject);
var
  iResponse : Integer;
  iDBIndex: Integer;
  iID: Integer;
  bFound: Boolean;
begin
  iResponse := MessageDlg('Are you sure you want to remove this user?', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0);
  if (iResponse = mrNo) or (iResponse = mrCancel) then
  begin
    exit;
  end;

  // Delete user from admin page and all it's references
  bFound := False;
  iDBIndex := dmBoereraad.tblUser.RecNo;

  iID := sedAdminUserEditID.Value;

  // Don't delete logged in account
  if iID = iUserID then
  begin
    ShowMessage('Cannot delete logged in account');
    exit;
  end;

  // ADO: Delete primary table record and child table references
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

procedure TfrmHome.bmbAdminUserEditSaveReviewClick(Sender: TObject);
const
  sDELIMITER = #10;
var
  bFound: Boolean;
  iIndex: Integer;
  i, iDelimiter : Integer;
  sParseStr, sLine : String;
begin
  // Save selected review information to DB

  // Validation
  if lstAdminUserEditReview.ItemIndex < 0 then
  begin
    ShowMessage('Please select a review from list');
    lstAdminUserEditReview.SetFocus;
    exit;
  end;

  if (redAdminUserEditDosage.Lines.Count = 0) or ((redAdminUserEditDosage.Lines.Count = 1) and (redAdminUserEditDosage.Lines[0] = '')) then
  begin
    ShowMessage('Please enter a dosage for the review');
    redAdminUserEditDosage.SetFocus;
    exit;
  end;

  if sedAdminUserEditDaysUsed.Value <= 0 then
  begin
    ShowMessage('Please set days remedy used value');
    sedAdminUserEditDaysUsed.SetFocus;
    exit;
  end;

  if sedAdminUserEditEffectiveness.Value <= 0 then
  begin
    ShowMessage('Please set effectiveness value between 1 - 10');
    sedAdminUserEditEffectiveness.SetFocus;
    exit;
  end;

  bFound := False;
  iIndex := 0;

  // ADO: Edit child table records
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

procedure TfrmHome.bmbAdminUserEditSaveUserClick(Sender: TObject);
var
  bFound: Boolean;
  iDBIndex: Integer;
  i: Integer;
begin
  // Edit user records selected in DBGrid

  // Validation
  if edtAdminUserEditName.Text = '' then
  begin
    ShowMessage('Please enter your name');
    edtAdminUserEditName.SetFocus;
    exit;
  end;

  if edtAdminUserEditSurname.Text = '' then
  begin
    ShowMessage('Please enter your surname');
    edtAdminUserEditSurname.SetFocus;
    exit;
  end;

  if edtAdminUserEditPassword.Text = '' then
  begin
    ShowMessage('Please enter your password');
    edtAdminUserEditPassword.SetFocus;
    exit;
  end;

  if edtAdminUserEditEmail.Text = '' then
  begin
    ShowMessage('Please enter your email');
    edtAdminUserEditEmail.SetFocus;
    exit;
  end;

  bFound := False;
  iDBIndex := dmBoereraad.tblUser.RecNo;

  // ADO: Edit a primary table record
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

procedure TfrmHome.bmbRemedyPendingChangesAdditionsInfoAddRemedyClick
  (Sender: TObject);
var
  rCreateRemedy: TRemedy;
  sPrice: string;
  i: Integer;
begin
  // Create a remedy primary table record from input

  // Validation
  if lstRemedyPendingChangesAdditionsRemediesList.ItemIndex < 0 then
  begin
    ShowMessage('Please select a remedy from the list below');
    exit;
  end;

  if edtRemedyPendingChangesAdditionsInfoName.Text = '' then
  begin
    ShowMessage('Please enter a name for the remedy');
    edtRemedyPendingChangesAdditionsInfoName.SetFocus;
    exit;
  end;

  if edtRemedyPendingChangesAdditionsInfoPrice.Text = '' then
  begin
    ShowMessage('Please set a price for the remedy');
    edtRemedyPendingChangesAdditionsInfoPrice.SetFocus;
    exit;
  end;

  sPrice := edtRemedyPendingChangesAdditionsInfoPrice.Text;
  for i := 1 to Length(sPrice) do
  begin
    if sPrice[i] = '.' then
    begin
      sPrice[i] := ',';
    end;
  end;
  edtRemedyPendingChangesAdditionsInfoPrice.Text := sPrice;

  try
    if edtRemedyPendingChangesAdditionsInfoPrice.Text[1] = 'R' then
    begin
      if StrToFloat(Copy(edtRemedyPendingChangesAdditionsInfoPrice.Text, 2)) < 0 then
      begin
        raise EConvertError.Create('Price cannot be negative');
      end;
    end
    else
    begin
      if StrToFloat(Copy(edtRemedyPendingChangesAdditionsInfoPrice.Text, 1)) < 0 then
      begin
        raise EConvertError.Create('Price cannot be negative');
      end;
    end;
  except
    on E: EConvertError do
    begin
      ShowMessage('Please enter a valid price amount: ' + E.Message);
      exit;
    end;
  end;

  if sedRemedyPendingChangesAdditionsInfoEaseOfUse.Value <= 0 then
  begin
    ShowMessage('Please set a ease of use value between 1 - 10');
    sedRemedyPendingChangesAdditionsInfoEaseOfUse.SetFocus;
    exit;
  end;

  if (redRemedyPendingChangesAdditionsInfoDescription.Lines.Count = 0) or ((redRemedyPendingChangesAdditionsInfoDescription.Lines.Count = 1) and (redRemedyPendingChangesAdditionsInfoDescription.Lines[0] = '')) then
  begin
    ShowMessage('Please enter a description for the remedy');
    redRemedyPendingChangesAdditionsInfoDescription.SetFocus;
    exit;
  end;

  if cltRemedyPendingChangesAdditionsInfoSymptoms.Items.Count = 0 then
  begin
    ShowMessage('Please add symptoms to use this remedy for');
    edtRemedyPendingChangesAdditionsInfoSymptomName.SetFocus;
    exit;
  end;

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

procedure TfrmHome.bmbRemedyPendingChangesAdditionsInfoResetClick
  (Sender: TObject);
const
  sDESCRIPTION_DELIMITER = #9;
  sSYMPTOM_DELIMITER = ',';
var
  sRemedyName, sRemedyInfo: string;
  sSymptoms, sDescription, sLine: string;
  i, iDelimiter: Integer;
begin
  // Update UI components from array contents for new remedy changes

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

procedure TfrmHome.bmbRemedyPendingChangesEditInfoResetClick(Sender: TObject);
const
  sDESCRIPTION_DELIMITER = #9;
  sSYMPTOM_DELIMITER = ',';
var
  sRemedyName, sRemedyInfo: string;
  sSymptoms, sDescription, sLine: string;
  i, iDelimiter: Integer;
begin
  // Update UI components from array contents for remedy edit changes

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

procedure TfrmHome.bmbRemedyPendingChangesEditInfoSaveRemedyClick
  (Sender: TObject);
var
  rEditRemedy: TRemedy;
  sPrice: string;
  i: Integer;
begin
  // Save remedy info to DB from arrays (read into UI components)

  // Validation
  if lstRemedyPendingChangesEditRemediesList.ItemIndex < 0 then
  begin
    ShowMessage('Please select a remedy from the list below');
    exit;
  end;

  if edtRemedyPendingChangesEditInfoName.Text = '' then
  begin
    ShowMessage('Please enter a name for the remedy');
    edtRemedyPendingChangesEditInfoName.SetFocus;
    exit;
  end;

  if edtRemedyPendingChangesEditInfoPrice.Text = '' then
  begin
    ShowMessage('Please set a price for the remedy');
    edtRemedyPendingChangesEditInfoPrice.SetFocus;
    exit;
  end;

  sPrice := edtRemedyPendingChangesEditInfoPrice.Text;
  for i := 1 to Length(sPrice) do
  begin
    if sPrice[i] = '.' then
    begin
      sPrice[i] := ',';
    end;
  end;
  edtRemedyPendingChangesEditInfoPrice.Text := sPrice;

  try
    if edtRemedyPendingChangesEditInfoPrice.Text[1] = 'R' then
    begin
      if StrToFloat(Copy(edtRemedyPendingChangesEditInfoPrice.Text, 2)) < 0 then
      begin
        raise EConvertError.Create('Price cannot be negative');
      end;
    end
    else
    begin
      if StrToFloat(Copy(edtRemedyPendingChangesEditInfoPrice.Text, 1)) < 0 then
      begin
        raise EConvertError.Create('Price cannot be negative');
      end;
    end;
  except
    on E: EConvertError do
    begin
      ShowMessage('Please enter a valid price amount: ' + E.Message);
      exit;
    end;
  end;

  if sedRemedyPendingChangesEditInfoEaseOfUse.Value <= 0 then
  begin
    ShowMessage('Please set a ease of use value between 1 - 10');
    sedRemedyPendingChangesEditInfoEaseOfUse.SetFocus;
    exit;
  end;

  if (redRemedyPendingChangesEditInfoDescription.Lines.Count = 0) or ((redRemedyPendingChangesEditInfoDescription.Lines.Count = 1) and (redRemedyPendingChangesEditInfoDescription.Lines[0] = '')) then
  begin
    ShowMessage('Please enter a description for the remedy');
    redRemedyPendingChangesEditInfoDescription.SetFocus;
    exit;
  end;

  if cltRemedyPendingChangesEditInfoSymptoms.Items.Count = 0 then
  begin
    ShowMessage('Please add symptoms to use this remedy for');
    edtRemedyPendingChangesEditInfoSymptomName.SetFocus;
    exit;
  end;

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

procedure TfrmHome.bmbRemedyUsageAddAddReviewClick(Sender: TObject);
begin
  // Validate review inputs and call review creation

  // Validation
  if cmbRemedyUsageAddRemedy.ItemIndex < 0 then
  begin
    ShowMessage('Please select a remedy from remedy list');
    cmbRemedyUsageAddRemedy.SetFocus;
    exit;
  end;

  if sedRemedyUsageAddDaysUsed.Value <= 0 then
  begin
    ShowMessage('Please add the amount of days the remedy was used');
    sedRemedyUsageAddDaysUsed.SetFocus;
    exit;
  end;

  if (redRemedyUsageAddDosage.Lines.Count = 0) or ((redRemedyUsageAddDosage.Lines.Count = 1) and (redRemedyUsageAddDosage.Lines[0] = '')) then
  begin
    ShowMessage('Please enter a description for the remedy');
    redRemedyUsageAddDosage.SetFocus;
    exit;
  end;

  if Length(redRemedyUsageAddDosage.Lines.Text) > iREVIEW_DOSAGE_FIELD_SIZE then
  begin
    ShowMessage('Dosage too long. Must be less than ' + IntToStr(iREVIEW_DOSAGE_FIELD_SIZE) + ' characters');
    redRemedyUsageAddDosage.SetFocus;
    exit;
  end;

  if sedRemedyUsageAddEffectiveness.Value = 0 then
  begin
    ShowMessage('Please set a effectiveness value between 1 - 10');
    sedRemedyUsageAddEffectiveness.SetFocus;
    exit;
  end;

  AddReview;
  bmbRemedyUsageAddResetClick(nil);
  LoadReviewsFromDBToScrollBox;
  ShowMessage('Created Remedy Review');
end;

procedure TfrmHome.bmbRemedyUsageAddResetClick(Sender: TObject);
begin
  // Clear inputs for review creation
  cmbRemedyUsageAddRemedy.ItemIndex := -1;
  cmbRemedyUsageAddRemedy.Text := 'Remedy Name';
  sedRemedyUsageAddDaysUsed.Value := 0;
  redRemedyUsageAddDosage.Lines.Clear;
  sedRemedyUsageAddEffectiveness.Value := 0;
end;

procedure TfrmHome.NavigationBackClick(Sender: TObject);
begin
  // Navigate to previous page
  pgcTabs.TabIndex := pgcTabs.TabIndex - 1;
end;

procedure TfrmHome.NavigationHelpClick(Sender: TObject);
begin
  // Open help forms

  if bUserAdmin then
  begin
    AdminHelp_u.frmAdminHelp.Show;
  end
  else
  begin
    UserHelp_u.frmUserHelp.Show;
  end;
end;

procedure TfrmHome.NavigationHomeClick(Sender: TObject);
begin
  // Navigate to first page
  pgcTabs.TabIndex := 0;
end;

procedure TfrmHome.NavigationNextClick(Sender: TObject);
begin
  // Navigate to next page
  pgcTabs.TabIndex := pgcTabs.TabIndex + 1;
end;

procedure TfrmHome.dbgAdminRemedyEditRemedyCellClick(Column: TColumn);
const
  sDELIMITER = #10;
var
  sParseStr: string;
  i: Integer;
  iDelimiter: Integer;
  sLine: string;
begin
  // Load selected remedy from DBGrid to controls

  // ADO: Display record
  sedAdminRemedyEditID.Value := dmBoereraad.tblRemedy[sTBLREMEDY_ID];
  edtAdminRemedyEditName.Text := dmBoereraad.tblRemedy[sTBLREMEDY_NAME];
  edtAdminRemedyEditPrice.Text := FloatToStrF(dmBoereraad.tblRemedy[sTBLREMEDY_PRICE], ffCurrency, 10, 2);
  sedAdminRemedyEditEaseOfUse.Value := dmBoereraad.tblRemedy[sTBLREMEDY_EASEOFUSE];
  sParseStr := dmBoereraad.tblRemedy[sTBLREMEDY_DESCRIPTION];

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
  // Display User info from DBGrid selection
  // ADO: Display record
  iDBIndex := dmBoereraad.tblReview.RecNo;

  redAdminUserEditDosage.Lines.Clear;
  sedAdminUserEditDaysUsed.Value := 0;
  sedAdminUserEditEffectiveness.Value := 0;

  // Review List
  dmBoereraad.tblReview.First;

  lstAdminUserEditReview.Items.Clear;
  while not(dmBoereraad.tblReview.Eof) do
  begin
    if dmBoereraad.tblReview[sTBLREVIEW_USERID] = dmBoereraad.tblUser[sTBLUSER_ID] then
    begin
      lstAdminUserEditReview.Items.Add
        (GetRemedyName(dmBoereraad.tblReview[sTBLREVIEW_REMEDYID]));
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
  // Initialise Database file
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

  iPendingChangeCount := 0;

  FormatSettings.DecimalSeparator := ',';
  FormatSettings.ThousandSeparator := ' ';
  dtpSignUpBirthDate.Date := Date;
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
  // Load style to UI
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
  // Return the name of a remedy from it's ID
  bFound := False;
  iDBIndex := dmBoereraad.tblRemedy.RecNo;

  // ADO: Search for record by PK
  dmBoereraad.tblRemedy.First;
  while not(dmBoereraad.tblRemedy.Eof) and not(bFound) do
  begin
    if dmBoereraad.tblRemedy[sTBLREMEDY_ID] = pID then
    begin
      sOutput := dmBoereraad.tblRemedy[sTBLREMEDY_NAME];
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
  // Return the password of a user from DB
  bFound := False;
  iDBIndex := dmBoereraad.tblUser.RecNo;

  // ADO: Search for record by PK
  dmBoereraad.tblUser.First;
  while (not(dmBoereraad.tblUser.Eof)) and (not(bFound)) do
  begin
    if (dmBoereraad.tblUser[sTBLUSER_ID] = pUserID) then
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
  // Read Files and populate parallel arrays

  // Array
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

    // Array: Add item to array
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
  SortPendingChangesInArr;
end;

procedure TfrmHome.LoadRemediesFromDBToScrollbox;
const
  sDELIMITER = ', ';
var
  bEnd : Boolean;
  iDBIndex: Integer;
  rRemedy: TRemedy;
  rtRemedyTile: TdynRemedyTile;
  i: Integer;
begin
  // Create Remedy tiles for records in DB

  // Dynamic Component
  for i := 0 to Length(arrRemedyTiles) - 1 do
  begin
    arrRemedyTiles[i].Destroy;
  end;

  SetLength(arrRemedyTiles, 0);

  bEnd := False;
  rRemedy := TRemedy.Create;
  rtRemedyTile := TdynRemedyTile.Create(Self);
  iDBIndex := dmBoereraad.tblRemedy.RecNo;

  // ADO: Loop through records to get PK and pull info from PK
  dmBoereraad.tblRemedy.Last;
  while (dmBoereraad.tblRemedy.RecNo > 0) and not (bEnd) do
  begin
    rRemedy.ReadDBRecord(dmBoereraad.tblRemedy[sTBLREMEDY_ID]);
    rtRemedyTile.Init(sbxRemediesList, rRemedy);

    // Add to array
    SetLength(arrRemedyTiles, Length(arrRemedyTiles) + 1);
    arrRemedyTiles[Length(arrRemedyTiles) - 1] := rtRemedyTile;

    rtRemedyTile := TdynRemedyTile.Create(Self);

    if dmBoereraad.tblRemedy.RecNo > 1 then
    begin
      dmBoereraad.tblRemedy.Prior;
    end
    else
    begin
      bEnd := True;
    end;
  end;

  rRemedy.Destroy;

  dmBoereraad.tblRemedy.RecNo := iDBIndex;
end;

procedure TfrmHome.LoadReviewsFromDBToScrollBox;
var
  bEnd : Boolean;
  rtReviewTile: TdynReviewTile;
  iReviewID : Integer;
  i : Integer;
begin
  // Create review tiles from DB records
  bEnd := False;

  // Dynamic Component
  for i := 0 to Length(arrReviewTiles) - 1 do
  begin
    arrReviewTiles[i].Destroy;
  end;

  SetLength(arrReviewTiles, 0);

 // ADO: Loop through records to get PK and pull info from PK
  dmBoereraad.tblReview.Last;
  while (dmBoereraad.tblReview.RecNo > 0) and not (bEnd) do
  begin
    if dmBoereraad.tblReview[sTBLREVIEW_USERID] = iUserID then
    begin
      rtReviewTile := TdynReviewTile.Create(Self);
      iReviewID := dmBoereraad.tblReview[sTBLREVIEW_ID];
      rtReviewTile.Init(sbxRemedyUsageList, iReviewID);

      // Add to array
      SetLength(arrReviewTiles, Length(arrReviewTiles) + 1);
      arrReviewTiles[Length(arrReviewTiles) - 1] := rtReviewTile;
    end;

    if dmBoereraad.tblReview.RecNo > 1 then
    begin
      dmBoereraad.tblReview.Prior;
    end
    else
    begin
      bEnd := True;
    end;
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
  // Display review info from selected user in DBGrid
  bFound := False;
  iIndex := 0;

  // ADO: Search for record and display
  dmBoereraad.tblReview.First;
  while not(dmBoereraad.tblReview.Eof) and not(bFound) do
  begin
    if dmBoereraad.tblReview[sTBLREVIEW_USERID] = sedAdminUserEditID.Value then
    begin
      Inc(iIndex);
    end;

    // Load Review
    if iIndex = lstAdminUserEditReview.ItemIndex + 1 then
    begin
      // Dosage
      redAdminUserEditDosage.Lines.Clear;
      sParseStr := dmBoereraad.tblReview[sTBLREVIEW_DOSAGE];
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

      sedAdminUserEditDaysUsed.Value := dmBoereraad.tblReview[sTBLREVIEW_DAYSUSED];
      sedAdminUserEditEffectiveness.Value := dmBoereraad.tblReview[sTBLREVIEW_EFFECTIVENESS];
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
  // Set selected item index
  iIndex := 0;

  // Array: Search for ID < 0 and index = listbox index
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

  bmbRemedyPendingChangesAdditionsInfoResetClick(Self);
end;

procedure TfrmHome.lstRemedyPendingChangesEditRemediesListClick
  (Sender: TObject);
var
  iIndex: Integer;
  i: Integer;
begin
  // Set selected item index
  iIndex := 0;

  // Array: Search for ID > 0 and index = listbox index
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

  bmbRemedyPendingChangesEditInfoResetClick(Self);
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
        // Populate remedies for review creation
        iTableIndex := dmBoereraad.tblRemedy.RecNo;
        cmbRemedyUsageAddRemedy.Items.Clear;

        // ADO: Populate combobox with records
        while not(dmBoereraad.tblRemedy.Eof) do
        begin
          cmbRemedyUsageAddRemedy.Items.Add
            (dmBoereraad.tblRemedy[sTBLREMEDY_NAME]);

          dmBoereraad.tblRemedy.Next;
        end;

        dmBoereraad.tblRemedy.RecNo := iTableIndex;
      end;
    iPENDING_CHANGES_PAGE_INDEX:
      begin
        // Populate listboxes from arrays
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

        bmbRemedyPendingChangesAdditionsInfoResetClick(Self);
        bmbRemedyPendingChangesEditInfoResetClick(Self);
      end;
  end;
end;

procedure TfrmHome.SetupPages;
begin
  // Show pages on login
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

procedure TfrmHome.SortPendingChangesInArr;
var
  i: Integer;
  j: Integer;
  k: Integer;
  bSort : Boolean;
  sFirst, sSecond : string;
  sNameTemp, sInfoTemp : string;
begin
  // Sort pending changes array in alphabetical order
  // Array: Sorting alphabetically
  for i := 1 to iPendingChangeCount - 1 do
  begin
    for j := i + 1 to iPendingChangeCount do
    begin
      bSort := False;
      sFirst := arrPendingChangeRemedyName[i];
      sSecond := arrPendingChangeRemedyName[j];

      k := 1;
      while (k <= Length(sFirst)) and (k <= Length(sSecond)) and not (bSort) do
      begin
        if arrPendingChangeRemedyName[i][k] > arrPendingChangeRemedyName[j][k] then
        begin
          sNameTemp := arrPendingChangeRemedyName[i];
          sInfoTemp := arrPendingChangeRemedyInformation[i];

          arrPendingChangeRemedyName[i] := arrPendingChangeRemedyName[j];
          arrPendingChangeRemedyName[j] := sNameTemp;

          arrPendingChangeRemedyInformation[i] := arrPendingChangeRemedyInformation[j];
          arrPendingChangeRemedyInformation[j] := sInfoTemp;
          bSort := True;
        end
        else if arrPendingChangeRemedyName[i][k] < arrPendingChangeRemedyName[j][k] then
        begin
          bSort := True;
        end;
        Inc(k);
      end;
    end;

    if not (bSort) then
    begin
      if Length(arrPendingChangeRemedyName[i]) > Length(arrPendingChangeRemedyName[j]) then
      begin
        sNameTemp := arrPendingChangeRemedyName[i];
        sInfoTemp := arrPendingChangeRemedyInformation[i];

        arrPendingChangeRemedyName[i] := arrPendingChangeRemedyName[j];
        arrPendingChangeRemedyName[j] := sNameTemp;

        arrPendingChangeRemedyInformation[i] := arrPendingChangeRemedyInformation[j];
        arrPendingChangeRemedyInformation[j] := sInfoTemp;
      end;
    end;
  end;
end;

end.
