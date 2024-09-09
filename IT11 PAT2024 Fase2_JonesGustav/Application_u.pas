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
    chkHomeAdmin: TCheckBox;
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
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    Edit1: TEdit;
    CheckListBox1: TCheckListBox;
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    RichEdit1: TRichEdit;
    Button3: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Image2: TImage;
    Label6: TLabel;
    Edit3: TEdit;
    CheckListBox2: TCheckListBox;
    Button4: TButton;
    Button5: TButton;
    Edit4: TEdit;
    RichEdit2: TRichEdit;
    Button6: TButton;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
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
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pgcTabsChange(Sender: TObject);
    procedure btnLogInClick(Sender: TObject);
    procedure btnSignUpClick(Sender: TObject);

    function CalculateFieldInformation(pFieldName: string;
      pSerializedChanges: string): string;
    function GetUserPassword(pUserID: Integer): string;
    procedure AddRemedy();
    procedure AddReview();
    procedure btnHomeLogOutClick(Sender: TObject);
    procedure NavigationHomeClick(Sender: TObject);
    procedure bttRemedyUsageAddAddReviewClick(Sender: TObject);
    procedure dbgAdminUserEditUsersCellClick(Column: TColumn);

  private
  var
    iUserID: Integer;
    bUserAdmin: Boolean;

    arrPendingChangeRemedyName: array [1 .. 150] of string;
    arrPendingChangeRemedyInformation: array [1 .. 150] of string;
  public
  var
    bDBInit: Boolean;
  end;

var
  frmHome: TfrmHome;

implementation

{$R *.dfm}

procedure TfrmHome.AddRemedy;
begin
  //
end;

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
      end

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
  end;

  dmBoereraad.tblUser.RecNo := iTableIndex;

end;

procedure TfrmHome.btnSignUpClick(Sender: TObject);
begin
  //
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

function TfrmHome.GetUserPassword(pUserID: Integer): string;
begin

  //
end;

procedure TfrmHome.pgcTabsChange(Sender: TObject);
var
  iTableIndex: Integer;
begin
  case pgcTabs.TabIndex of
    1:
      begin
        // List Remedies in DB
      end;
    3:
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
    5:
      begin
        // Update selected user and remedy information

      end;
  end;
end;

end.
