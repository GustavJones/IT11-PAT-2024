unit Remedy_u;

interface

uses System.SysUtils, Vcl.Dialogs, dmBoereraad_u, Core_u;

type
  TRemedy = class(TObject)
  public
    procedure Print;
    procedure CreateDBRecord;
    procedure UpdateDBRecord;
    procedure ReadDBRecord(pID: Integer);
    procedure CreatePendingChange;
    procedure ApplyPendingChange;

    function GetID: Integer;

  var
    iEaseOfUse: Integer;
    sName: String;
    sDescription: String;
    rPrice: Real;

    arrSymptoms: array of string;

  private
  var
    iID: Integer;
  end;

implementation

{ TRemedy }

// TODO
procedure TRemedy.ApplyPendingChange;
begin

end;

procedure TRemedy.CreateDBRecord;
const
  sSEPERATOR = ', ';
var
  iDBIndex: Integer;
  i: Integer;

  sSymptomsStr: String;
begin
  iDBIndex := dmBoereraad.tblRemedy.RecNo;

  dmBoereraad.tblRemedy.Last;
  dmBoereraad.tblRemedy.Append;
  dmBoereraad.tblRemedy.Post;

  iID := dmBoereraad.tblRemedy['ID'];
  UpdateDBRecord;

  dmBoereraad.tblRemedy.RecNo := iDBIndex;
end;

// TODO
procedure TRemedy.CreatePendingChange;
var
  tFile : TextFile;
begin
  if FileExists(cProgramCore.GetPendingChangesDirectory + sName + '.txt') then
  begin
    raise Exception.Create('Change already exists');
  end;


end;

function TRemedy.GetID: Integer;
begin
  result := iID;
end;

procedure TRemedy.Print;
var
  sSymptoms: String;
  i: Integer;
begin
  ShowMessage('ID: ' + IntToStr(iID));
  ShowMessage('Name: ' + sName);
  ShowMessage('Description: ' + sDescription);
  ShowMessage('Price: ' + FloatToStrF(rPrice, ffCurrency, 10, 2));
  ShowMessage('Ease of Use: ' + IntToStr(iEaseOfUse));

  sSymptoms := '';
  for i := 0 to Length(arrSymptoms) - 1 do
  begin
    sSymptoms := arrSymptoms[i] + ', ';
  end;

  ShowMessage('Symptoms : ' + sSymptoms);
end;

procedure TRemedy.ReadDBRecord(pID: Integer);
const
  sDELIMITER = ', ';
var
  i: Integer;
  iDelimiter: Integer;
  iDBIndex: Integer;
  sSymptomsStr: String;
  sSymptom: String;

  bFound : Boolean;
begin
  bFound := False;

  iDBIndex := dmBoereraad.tblRemedy.RecNo;

  dmBoereraad.tblRemedy.First;

  while (not(dmBoereraad.tblRemedy.Eof)) and (not (bFound)) do
  begin
    if (dmBoereraad.tblRemedy['ID'] = pID) then
    begin
      iID := dmBoereraad.tblRemedy['ID'];
      sName := dmBoereraad.tblRemedy['RemedyName'];
      rPrice := dmBoereraad.tblRemedy['PricePerDose'];
      sDescription := dmBoereraad.tblRemedy['Description'];
      iEaseOfUse := dmBoereraad.tblRemedy['EaseOfUse'];

      sSymptomsStr := dmBoereraad.tblRemedy['SymptomUse'];
      SetLength(arrSymptoms, 0);

      // Symptom String parsing
      i := 0;
      while (i <= Length(sSymptomsStr)) do
      begin
        iDelimiter := Pos(sDELIMITER, sSymptomsStr, i + 1);

        if iDelimiter <= 0 then
        begin
          sSymptom := Copy(sSymptomsStr, i, Length(sSymptomsStr) - i + 1);
        end
        else
        begin
          sSymptom := Copy(sSymptomsStr, i, iDelimiter - i - 1);
        end;

        SetLength(arrSymptoms, Length(arrSymptoms) + 1);
        arrSymptoms[Length(arrSymptoms) - 1] := sSymptom;

        if iDelimiter <= 0 then
        begin
          i := Length(sSymptomsStr) + 1;
        end
        else
        begin
          i := iDelimiter + Length(sDELIMITER);
        end;
      end;
    end;

    dmBoereraad.tblRemedy.Next;
  end;

  dmBoereraad.tblRemedy.RecNo := iDBIndex;
end;

procedure TRemedy.UpdateDBRecord;
const
  sSEPERATOR = ', ';
var
  iDBIndex: Integer;
  bFound: Boolean;
  i: Integer;

  sSymptomsStr: String;

begin
  iDBIndex := dmBoereraad.tblRemedy.RecNo;

  dmBoereraad.tblRemedy.First;
  while (not(dmBoereraad.tblRemedy.Eof)) and (not(bFound)) do
  begin
    sSymptomsStr := '';

    if (dmBoereraad.tblRemedy['ID'] = iID) then
    begin
      dmBoereraad.tblRemedy.Edit;
      dmBoereraad.tblRemedy['RemedyName'] := sName;
      dmBoereraad.tblRemedy['Description'] := sDescription;
      dmBoereraad.tblRemedy['EaseOfUse'] := iEaseOfUse;
      dmBoereraad.tblRemedy['PricePerDose'] := rPrice;

      // Symptoms
      for i := 0 to Length(arrSymptoms) do
      begin
        sSymptomsStr := sSymptomsStr + arrSymptoms[i] + sSEPERATOR;
      end;

      Delete(sSymptomsStr, Length(sSymptomsStr) - Length(sSEPERATOR) + 1,
        Length(sSEPERATOR));
      dmBoereraad.tblRemedy['SymptomUse'] := sSymptomsStr;
      dmBoereraad.tblRemedy.Post;

      bFound := True;
    end;

    dmBoereraad.tblRemedy.Next;
  end;

  dmBoereraad.tblRemedy.RecNo := iDBIndex;
end;

end.
