unit dmBoereraad_u;

interface

uses
  System.SysUtils, System.Classes, Data.Win.ADODB, Data.DB;

type
  TdmBoereraad = class(TDataModule)
    conBoereraad: TADOConnection;
    tblUser: TADOTable;
    dsrUser: TDataSource;

  private
    { Private declarations }
  public
    procedure InitialiseDatabase(pDatabaseFile : string);
  end;

var
  dmBoereraad: TdmBoereraad;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

procedure TdmBoereraad.InitialiseDatabase(pDatabaseFile : string);
begin
  conBoereraad.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + pDatabaseFile + ';Mode=ReadWrite;Persist Security Info=False';
  conBoereraad.LoginPrompt := False;
  conBoereraad.Open;

  tblUser.Connection := conBoereraad;
  tblUser.TableName := 'tblUser';
  tblUser.Open;
  dsrUser.DataSet := tblUser;
end;

end.
