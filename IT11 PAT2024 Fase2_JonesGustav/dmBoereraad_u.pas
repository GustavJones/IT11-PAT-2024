unit dmBoereraad_u;

interface

uses
  System.SysUtils, System.Classes, Data.Win.ADODB, Data.DB;

  // Database field reading constants
  const
      sTBLREMEDY_ID = 'ID';
      sTBLREMEDY_NAME = 'RemedyName';
      sTBLREMEDY_PRICE = 'RemedyPrice';
      sTBLREMEDY_DESCRIPTION = 'RemedyDescription';
      sTBLREMEDY_EASEOFUSE = 'RemedyEaseOfUse';
      sTBLREMEDY_SYMPTOMSUSE = 'RemedySymptomUse';

      sTBLREVIEW_ID = 'ID';
      sTBLREVIEW_USERID = 'UserID';
      sTBLREVIEW_REMEDYID = 'RemedyID';
      sTBLREVIEW_DOSAGE = 'ReviewDosage';
      sTBLREVIEW_DAYSUSED = 'ReviewDaysUsed';
      sTBLREVIEW_EFFECTIVENESS = 'ReviewEffectiveness';

      sTBLUSER_ID = 'ID';
      sTBLUSER_NAME = 'UserName';
      sTBLUSER_SURNAME = 'UserSurname';
      sTBLUSER_EMAIL = 'UserEmail';
      sTBLUSER_PASSWORD = 'UserPassword';
      sTBLUSER_BIRTHDATE = 'UserBirthDate';
      sTBLUSER_GENDER = 'IsMale';
      sTBLUSER_TYPE = 'IsAdmin';

type
  TdmBoereraad = class(TDataModule)
    conBoereraad: TADOConnection;
    tblUser: TADOTable;
    dsrUser: TDataSource;
    dsrRemedy: TDataSource;
    tblRemedy: TADOTable;
    tblReview: TADOTable;
    dsrReview: TDataSource;

  private
    { Private declarations }
  public
    function InitialiseDatabase() : Boolean;
  end;

var
  dmBoereraad: TdmBoereraad;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


function TdmBoereraad.InitialiseDatabase() : Boolean;
begin
  // Setup database for ADO programming
  if not (FileExists('BoereRaadDB.mdb')) then
  begin
    Result := False;
    Exit;
  end;

  // ADO: Setup
  conBoereraad.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=BoereRaadDB.mdb;Mode=ReadWrite;Persist Security Info=False';
  conBoereraad.LoginPrompt := False;
  conBoereraad.Open;

  tblUser.Connection := conBoereraad;
  tblUser.TableName := 'tblUser';
  tblUser.Open;
  dsrUser.DataSet := tblUser;

  tblRemedy.Connection := conBoereraad;
  tblRemedy.TableName := 'tblRemedy';
  tblRemedy.Open;
  dsrRemedy.DataSet := tblRemedy;

  tblReview.Connection := conBoereraad;
  tblReview.TableName := 'tblReview';
  tblReview.Open;
  dsrReview.DataSet := tblReview;

  Result := True;
end;

end.
