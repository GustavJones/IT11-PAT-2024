unit Remedy_u;

interface

uses System.SysUtils, Vcl.Dialogs, dmBoereraad_u, Core_u;

type
  TRemedy = class(TObject)
  public
    constructor Create;
    procedure Assign(pRemedy : TRemedy); overload;
    procedure Assign(pName : string; pString : string); overload;

    procedure Print;
    procedure CreateDBRecord;
    procedure UpdateDBRecord;
    procedure ReadDBRecord(pID: Integer);
    function CreatePendingChange : string;

    class procedure WritePendingChange(pName : string; pChanges : string); overload;
    procedure WritePendingChange(pChanges : string); overload;

    function ReadPendingChange : string; overload;
    class function ReadPendingChange(pName : string) : string; overload;
    function GetID: Integer;

    class function CalculateFieldInformation(pFieldName: string; pSerializedChanges: string): string;

  var
    iEaseOfUse: Integer;
    sName: String;
    sDescription: String;
    rPrice: Real;

    arrSymptoms: array of string;

  private

  const
    sSYMPTOM_SEPERATOR = ',';
    sNEWLINE_SEPERATOR = #9;
    sFIELD_SEPERATOR = #10;

  var
    iID: Integer;
  end;

implementation

{ TRemedy }

function TRemedy.ReadPendingChange : string;
begin
  Result := TRemedy.ReadPendingChange(sName);
end;

procedure TRemedy.Assign(pRemedy: TRemedy);
var
  i: Integer;
begin
  iID := pRemedy.GetID;
  iEaseOfUse := pRemedy.iEaseOfUse;
  sName := pRemedy.sName;
  sDescription := pRemedy.sDescription;
  rPrice := pRemedy.rPrice;

  SetLength(arrSymptoms, Length(pRemedy.arrSymptoms));

  for i := 0 to Length(pRemedy.arrSymptoms) - 1 do
  begin
    arrSymptoms[i] := pRemedy.arrSymptoms[i];
  end;
end;

// TODO TESTING
procedure TRemedy.Assign(pName : string; pString : string);
var
  sSymptomsStr, sSymptom, sModifiedDescription : string;
  i, iSymptomSeperatorIndex : Integer;
begin
  sName := pName;
  iID := StrToInt(CalculateFieldInformation('ID', pString));
  rPrice := StrToFloat(CalculateFieldInformation('Price', pString));
  iEaseOfUse := StrToInt(CalculateFieldInformation('EaseOfUse', pString));

  // Symptoms
  sSymptomsStr := CalculateFieldInformation('Symptoms', pString);

  i := 1;
  while i > 0 do
  begin
    if i <> 1 then
    begin
      Inc(i);
    end;

    iSymptomSeperatorIndex := Pos(sSYMPTOM_SEPERATOR, sSymptomsStr, i);

    if iSymptomSeperatorIndex > 0 then
    begin
      sSymptom := Copy(sSymptomsStr, i, iSymptomSeperatorIndex - i);
    end
    else
    begin
      sSymptom := Copy(sSymptomsStr, i, Length(sSymptomsStr) - i + 1);
    end;

    SetLength(arrSymptoms, Length(arrSymptoms) + 1);
    arrSymptoms[Length(arrSymptoms) - 1] := sSymptom;

    i := iSymptomSeperatorIndex;
  end;

  // Description
  sModifiedDescription := CalculateFieldInformation('Description', pString);

  for i := 1 to Length(sModifiedDescription) do
  begin
    if sModifiedDescription[i] = sNEWLINE_SEPERATOR then
    begin
      sModifiedDescription[i] := #10;
    end;
  end;

  sDescription := sModifiedDescription;
end;

class function TRemedy.CalculateFieldInformation(pFieldName,
  pSerializedChanges: string): string;
var
  iFieldIndex, iFieldSeperatorIndex : Integer;
  sOutput : string;
begin
  iFieldIndex := Pos(pFieldName, pSerializedChanges);

  if iFieldIndex > 0 then
  begin
    iFieldSeperatorIndex := Pos(sFIELD_SEPERATOR, pSerializedChanges, iFieldIndex);

    sOutput := Copy(pSerializedChanges, iFieldIndex + Length(pFieldName) + 1, iFieldSeperatorIndex - (iFieldIndex + Length(pFieldName) + 1));
    result := sOutput;
    exit;
  end
  else
  begin
    result := '';
    exit;
  end;
end;

constructor TRemedy.Create;
begin
  iID := -1;
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
  dmBoereraad.tblRemedy['RemedyName'] := '';
  dmBoereraad.tblRemedy['Description'] := '';
  dmBoereraad.tblRemedy['EaseOfUse'] := 0;
  dmBoereraad.tblRemedy['PricePerDose'] := 0.0;
  dmBoereraad.tblRemedy.Post;

  iID := dmBoereraad.tblRemedy['ID'];
  UpdateDBRecord;

  dmBoereraad.tblRemedy.RecNo := iDBIndex;
end;

function TRemedy.CreatePendingChange : string;
var
  sSymptoms, sModifiedDescription : string;
  sOutput : string;
  i : Integer;
begin
  sOutput := '';
  sSymptoms := '';
  sModifiedDescription := '';

  sOutput := sOutput + 'ID:' + IntToStr(iID) + sFIELD_SEPERATOR;
  sOutput := sOutput + 'Price:' + FloatToStrF(rPrice, ffFixed, 10, 2) + sFIELD_SEPERATOR;
  sOutput := sOutput + 'EaseOfUse:' + IntToStr(iEaseOfUse) + sFIELD_SEPERATOR;

  for i := 0 to Length(arrSymptoms) - 1 do
  begin
    sSymptoms := sSymptoms + arrSymptoms[i] + sSYMPTOM_SEPERATOR;
  end;

  if sSymptoms[Length(sSymptoms)] = sSYMPTOM_SEPERATOR then
  begin
    Delete(sSymptoms, Length(sSymptoms), 1);
  end;

  sOutput := sOutput + 'Symptoms:' + sSymptoms + sFIELD_SEPERATOR;

  for i := 1 to Length(sDescription) do
  begin
    if sDescription[i] = #10 then
    begin
      sModifiedDescription := sModifiedDescription + sNEWLINE_SEPERATOR;
    end
    else
    begin
      sModifiedDescription := sModifiedDescription + sDescription[i];
    end;
  end;

  sOutput := sOutput + 'Description:' + sModifiedDescription + sFIELD_SEPERATOR;
  Result := sOutput;
end;

function TRemedy.GetID: Integer;
begin
  result := iID;
end;

class function TRemedy.ReadPendingChange(pName : string) : string;
var
  tFile : TextFile;
  sDirPath : string;
  sFileName : string;
  sSymptoms, sModifiedDescription : string;
  sLine, sOutput : string;
  i : Integer;
begin
  sOutput := '';
  sSymptoms := '';
  sModifiedDescription := '';

  sDirPath := cProgramCore.GetPendingChangesDirectory;
  sFileName := sDirPath + pName + '.txt';

  if FileExists(sFileName) then
  begin
    AssignFile(tFile, sFileName);
    Reset(tFile);

    while not (Eof(tFile)) do
    begin
      Readln(tFile, sLine);
      sOutput := sOutput + sLine + #10;
    end;

    CloseFile(tFile);

    result := sOutput;
    exit;
  end
  else
  begin
    result := '';
    exit;
  end;
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
      for i := 0 to Length(arrSymptoms) - 1 do
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

class procedure TRemedy.WritePendingChange(pName, pChanges: string);
var
  tFile : TextFile;
  sDirPath : string;
  sFileName : string;
begin
  sDirPath := cProgramCore.GetPendingChangesDirectory;
  sFileName := sDirPath + pName + '.txt';

  TCore.CreateDir(sDirPath);
  TCore.CreateFile(sFileName);

  AssignFile(tFile, sFileName);
  Rewrite(tFile);
  Write(tFile, pChanges);
  CloseFile(tFile);
end;

procedure TRemedy.WritePendingChange(pChanges : string);
begin
  WritePendingChange(sName, pChanges);
end;

end.
