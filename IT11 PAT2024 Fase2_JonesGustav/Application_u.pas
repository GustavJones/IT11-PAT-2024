unit Application_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Themes, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.CheckLst, Vcl.Imaging.pngimage, Data.DB,
  Vcl.Grids, Vcl.DBGrids, dmBoereraad_u, RemedyTile_u, Remedy_u,
  Vcl.Buttons, Vcl.Samples.Spin;

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
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    RichEdit3: TRichEdit;
    SpinEdit1: TSpinEdit;
    BitBtn7: TBitBtn;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    SpinEdit3: TSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pgcTabsChange(Sender: TObject);
    procedure btnLogInClick(Sender: TObject);
    procedure btnSignUpClick(Sender: TObject);

    function CalculateFieldInformation(pFieldName: string;
      pSerializedChanges: string): string;
    function GetUserPasswordFromDB(pUserID: Integer): string;
    procedure LoadRemediesFromDBToScrollbox;
    procedure AddRemedy();
    procedure AddReview();
    procedure btnHomeLogOutClick(Sender: TObject);
    procedure NavigationHomeClick(Sender: TObject);
    procedure bttRemedyUsageAddAddReviewClick(Sender: TObject);
    procedure dbgAdminUserEditUsersCellClick(Column: TColumn);
    procedure bttAddRemedyInputsCreateRemedyClick(Sender: TObject);

  private
  var
    iUserID: Integer;
    bUserAdmin: Boolean;

    arrPendingChangeRemedyName: array [1 .. 150] of string;
    arrPendingChangeRemedyInformation: array [1 .. 150] of string;

    arrRemedyTiles : array of TdynRemedyTile;
  public
  var
    bDBInit: Boolean;
  end;

var
  frmHome: TfrmHome;

implementation

{$R *.dfm}

// TODO
procedure TfrmHome.AddRemedy;
var
  rRemedy : TRemedy;
  sPrice : String;
  i : Integer;
begin
  // Read Inputs
  rRemedy := TRemedy.Create;

  rRemedy.sName := edtAddRemedyInputsRemedyName.Text;
  rRemedy.iEaseOfUse := sedAddRemedyInputsEaseOfUse.Value;

  // Price
  sPrice := edtPrice.Text;
  Delete(sPrice, 1, 1);
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
    rRemedy.sDescription := rRemedy.sDescription + redAddRemedyInputsDescription.Lines[i] + #10;
  end;

  if (rRemedy.sDescription[Length(rRemedy.sDescription)] = #10) then
  begin
    Delete(rRemedy.sDescription, Length(rRemedy.sDescription), 1);
  end;

  rRemedy.CreatePendingChange;

  rRemedy.Destroy;
end;

// TODO
procedure TfrmHome.AddReview;
begin
  //
end;

procedure TfrmHome.btnHomeLogOutClick(Sender: TObject);
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
  end;
end;

procedure TfrmHome.btnLogInClick(Sender: TObject);
var
  bFound, bLogIn: Boolean;
  iTableIndex: Integer;
begin
  bFound := False;
  bLogIn := False;
  iTableIndex := dmBoereraad.tblUser.RecNo;

  while not(dmBoereraad.tblUser.Eof) and not(bFound) do
  begin
    if (dmBoereraad.tblUser['Email'] = edtLogInEmail.Text) then
    begin
      bFound := True;

      if (dmBoereraad.tblUser['Password'] = edtLogInPassword.Text) then
      begin
        bLogIn := True;
        iUserID := dmBoereraad.tblUser['ID'];
        bUserAdmin := dmBoereraad.tblUser['IsAdmin'];
      end;

    end;

    dmBoereraad.tblUser.Next;
  end;

  if not bFound then
  begin
    ShowMessage('Login information incorrect try again');
  end
  else if not(bLogIn) then
  begin
    ShowMessage('Incorrect Password for Account Email');
  end
  else
  begin
    ShowMessage('Login Successful');
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

    pgcTabs.TabIndex := pgcTabs.TabIndex + 1;
    frmHome.pgcTabsChange(btnLogIn);
  end;

  dmBoereraad.tblUser.RecNo := iTableIndex;

end;

procedure TfrmHome.btnSignUpClick(Sender: TObject);
const
  iUSER_NAME_FIELD_SIZE = 40;
  iUSER_SURNAME_FIELD_SIZE = 70;
  iUSER_EMAIL_FIELD_SIZE = 50;
  iUSER_PASSWORD_FIELD_SIZE = 30;
var
  iDBIndex : Integer;
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
    ShowMessage('Name must be smaller than ' + IntToStr(iUSER_NAME_FIELD_SIZE) + ' characters');
    exit;
  end;

  if Length(edtSignUpSurname.Text) > iUSER_SURNAME_FIELD_SIZE then
  begin
    ShowMessage('Surname must be smaller than ' + IntToStr(iUSER_SURNAME_FIELD_SIZE) + ' characters');
    exit;
  end;

  if Length(edtSignUpPassword.Text) > iUSER_PASSWORD_FIELD_SIZE then
  begin
    ShowMessage('Password must be smaller than ' + IntToStr(iUSER_PASSWORD_FIELD_SIZE) + ' characters');
    exit;
  end;

  if Length(edtSignUpEmail.Text) > iUSER_EMAIL_FIELD_SIZE then
  begin
    ShowMessage('Email must be smaller than ' + IntToStr(iUSER_EMAIL_FIELD_SIZE) + ' characters');
    exit;
  end;

  // Add to DB
  iDBIndex := dmBoereraad.tblUser.RecNo;

  dmBoereraad.tblUser.Last;
  dmBoereraad.tblUser.Append;

  dmBoereraad.tblUser['UserName'] := edtSignUpName.Text;
  dmBoereraad.tblUser['UserSurname'] := edtSignUpSurname.Text;
  dmBoereraad.tblUser['Email'] := edtSignUpEmail.Text;
  dmBoereraad.tblUser['Password'] := edtSignUpPassword.Text;
  dmBoereraad.tblUser['BirthDate'] := dtpSignUpBirthDate.Date;

  case rgpSignUpGender.ItemIndex of
    0:
      dmBoereraad.tblUser['IsMale'] := True;
    1:
      dmBoereraad.tblUser['IsMale'] := False;
  end;

  dmBoereraad.tblUser['IsAdmin'] := chkSignUpAdmin.Checked;
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

procedure TfrmHome.bttRemedyUsageAddAddReviewClick(Sender: TObject);
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
    sDosageInformation := sDosageInformation + '#' + redRemedyUsageAddDosage.Lines[i];
  end;

  iEffectiveness := sedRemedyUsageAddEffectiveness.Value;

  dmBoereraad.tblRemedy.First;
  while not(dmBoereraad.tblRemedy.Eof) do
  begin
    if dmBoereraad.tblRemedy['RemedyName'] = cmbRemedyUsageAddRemedy.Items
      [cmbRemedyUsageAddRemedy.ItemIndex] then
    begin
      iRemedyID := dmBoereraad.tblRemedy['ID'];
    end;

    dmBoereraad.tblRemedy.Next;
  end;

  dmBoereraad.tblReview.Last;

  dmBoereraad.tblReview.Append;
  dmBoereraad.tblReview['DaysUsed'] := iDaysUsed;
  dmBoereraad.tblReview['Dosage'] := sDosageInformation;
  dmBoereraad.tblReview['Effectiveness'] := iEffectiveness;
  dmBoereraad.tblReview['UserID'] := iUserID;
  dmBoereraad.tblReview['RemedyID'] := iRemedyID;
  dmBoereraad.tblReview.Post;

  dmBoereraad.tblReview.RecNo := iTableIndex;
end;

procedure TfrmHome.NavigationHomeClick(Sender: TObject);
begin
  pgcTabs.TabIndex := 0;
end;

// TODO
function TfrmHome.CalculateFieldInformation(pFieldName, pSerializedChanges
  : string): string;
begin
  //
end;

procedure TfrmHome.dbgAdminUserEditUsersCellClick(Column: TColumn);
begin
  dmBoereraad.tblReview.First;

  while not(dmBoereraad.tblReview.Eof) do
  begin
    if dmBoereraad.tblReview['UserID'] = dmBoereraad.tblUser['ID'] then
    begin
      lstAdminUserEditReview.Items.Add(dmBoereraad.tblReview['RemedyID'])
    end;

    dmBoereraad.tblReview.Next;
  end;
end;

procedure TfrmHome.FormActivate(Sender: TObject);
begin
  if not(bDBInit) then
  begin
    if not(dmBoereraad.InitialiseDatabase) then
    begin
      ShowMessage('Failed to find database');
    end;
  end;

  LoadRemediesFromDBToScrollbox;
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

function TfrmHome.GetUserPasswordFromDB(pUserID: Integer): string;
var
  iDBIndex : Integer;
  bFound : Boolean;

  sPassword : String;
begin
  bFound := False;
  iDBIndex := dmBoereraad.tblUser.RecNo;

  dmBoereraad.tblUser.First;
  while (not (dmBoereraad.tblUser.Eof)) and (not (bFound)) do
  begin
    if (dmBoereraad.tblUser['ID'] = pUserID) then
    begin
      sPassword := dmBoereraad.tblUser['Password'];

      bFound := True;
    end;

    dmBoereraad.tblUser.Next;
  end;

  dmBoereraad.tblUser.RecNo := iDBIndex;

  result := sPassword;
end;

procedure TfrmHome.LoadRemediesFromDBToScrollbox;
const
  sDELIMITER = ', ';
var
  iDBIndex : Integer;
  rRemedy : TRemedy;
  rtRemedyTile : TdynRemedyTile;
begin
  rRemedy := TRemedy.Create;
  rtRemedyTile := TdynRemedyTile.Create(Self);
  iDBIndex := dmBoereraad.tblRemedy.RecNo;

  dmBoereraad.tblRemedy.First;
  while not (dmBoereraad.tblRemedy.Eof) do
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

// TODO
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
begin
  case pgcTabs.TabIndex of
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
    iADMIN_PAGE_INDEX:
      begin
        // Update selected user and remedy information
      end;
  end;
end;

end.
