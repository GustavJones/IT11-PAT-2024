unit dmBoereraad_u;

interface

uses
  System.SysUtils, System.Classes, Data.Win.ADODB, Data.DB;

type
  TdmBoereraad = class(TDataModule)
    conBoereraad: TADOConnection;
    tblUser: TADOTable;
    dsrUser: TDataSource;
    dsrRemedy: TDataSource;
    tblRemedy: TADOTable;

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

{ TDataModule1 }

function TdmBoereraad.InitialiseDatabase() : Boolean;
begin
  if not (FileExists('BoereRaadDB.mdb')) then
  begin
    Result := False;
    Exit;
  end;

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

  Result := True;
end;

end.
