unit RemedyTile_u;

interface

uses
  System.SysUtils, System.Classes, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.CheckLst, Vcl.ComCtrls, Vcl.Controls, Vcl.Forms, Vcl.Graphics,
  Vcl.Dialogs, Vcl.ExtDlgs, Vcl.Samples.Spin, Vcl.Imaging.jpeg,
  Winapi.Windows, Remedy_u, Core_u;

type
  TdynRemedyTile = class(TPanel)
    bttReset: TBitBtn;
    bttSave: TBitBtn;
    btnUpdateImage: TButton;
    btnRemoveSymptom: TButton;
    btnAddSymptom: TButton;
    edtSymptom: TEdit;
    edtPrice: TEdit;
    lblRemedy: TLabel;
    lblPrice: TLabel;
    lblEaseOfUse: TLabel;
    lblSymptoms: TLabel;
    redDescription: TRichEdit;
    cltSymptoms: TCheckListBox;
    imgImage: TImage;
    sedEaseOfUse: TSpinEdit;

    constructor Create(pOwner: TComponent); override;

  private
    procedure AddSymptom(pSender: TObject);
    procedure RemoveSymptom(pSender: TObject);
    procedure UpdateImage(pSender: TObject);
    procedure UpdateRemedy(pSender: TObject);
    procedure ResetRemedy(pSender: TObject);

  public
  var
    rRemedy: TRemedy;

    procedure Init(pParent: TWinControl)overload;
    procedure Init(pParent: TWinControl; pRemedy: TRemedy)overload;
  end;

implementation

{ TdynRemedyTile }

constructor TdynRemedyTile.Create(pOwner: TComponent);
begin
  inherited Create(pOwner);

  bttReset := TBitBtn.Create(Self);
  bttSave := TBitBtn.Create(Self);
  btnUpdateImage := TButton.Create(Self);
  btnRemoveSymptom := TButton.Create(Self);
  btnAddSymptom := TButton.Create(Self);
  edtSymptom := TEdit.Create(Self);
  edtPrice := TEdit.Create(Self);
  lblRemedy := TLabel.Create(Self);
  lblPrice := TLabel.Create(Self);
  lblEaseOfUse := TLabel.Create(Self);
  lblSymptoms := TLabel.Create(Self);
  redDescription := TRichEdit.Create(Self);
  cltSymptoms := TCheckListBox.Create(Self);
  imgImage := TImage.Create(Self);
  sedEaseOfUse := TSpinEdit.Create(Self);

  Self.Visible := False;
end;

procedure TdynRemedyTile.AddSymptom(pSender: TObject);
var
  sSymptom: String;
begin
  if (edtSymptom.Text = '') then
  begin
    ShowMessage('Please enter a symptom');
    edtSymptom.SetFocus;
  end
  else
  begin
    sSymptom := edtSymptom.Text;

    cltSymptoms.Items.Add(sSymptom);
    edtSymptom.Clear;
    ShowMessage('Symptom Added');
  end;
end;

procedure TdynRemedyTile.Init(pParent: TWinControl; pRemedy: TRemedy);
const
  sDELIMITER = #10;
var
  i: Integer;
  iDelimiter: Integer;

  sSymptom: String;
  sParseStr: String;
  sLine: String;
begin
  Init(pParent);

  lblRemedy.Caption := pRemedy.sName;
  sedEaseOfUse.Value := pRemedy.iEaseOfUse;
  edtPrice.Text := FloatToStrF(pRemedy.rPrice, ffCurrency, 10, 2);

  sParseStr := pRemedy.sDescription;

  // Description Line Seperation
  i := 1;
  while (i <= Length(sParseStr)) do
  begin
    iDelimiter := Pos(sDELIMITER, sParseStr, i);

    if (iDelimiter > 0) then
      sLine := Copy(sParseStr, i, iDelimiter - i - 1)
    else
      sLine := Copy(sParseStr, i, Length(sParseStr) - i + 1);

    redDescription.Lines.Add(sLine);

    if (iDelimiter > 0) then
    begin
      i := iDelimiter + 1;
    end
    else
    begin
      i := Length(sParseStr) + 1;
    end;
  end;

  // Symptoms
  for sSymptom in pRemedy.arrSymptoms do
  begin
    cltSymptoms.Items.Add(sSymptom);
  end;

  // Image
  if FileExists(cProgramCore.GetImageDirectory + IntToStr(pRemedy.GetID) + '.jpg') then
    imgImage.Picture.LoadFromFile(cProgramCore.GetImageDirectory + IntToStr(pRemedy.GetID) + '.jpg');

  // Load Info into rRemedy
  rRemedy.Assign(pRemedy);
end;

procedure TdynRemedyTile.Init(pParent: TWinControl);
begin
  rRemedy := TRemedy.Create;

  Self.Visible := True;

  Self.Parent := pParent;
  Self.AlignWithMargins := True;
  Self.Left := 3;
  Self.Top := 3;
  Self.Width := 1141;
  Self.Height := 173;
  Self.Align := alTop;
  Self.BorderStyle := bsSingle;
  Self.ShowCaption := False;
  Self.TabOrder := 0;
  Self.Visible := True;

  lblRemedy.Parent := Self;
  lblRemedy.AlignWithMargins := True;
  lblRemedy.Left := 31;
  lblRemedy.Top := 4;
  lblRemedy.Width := 1075;
  lblRemedy.Height := 32;
  lblRemedy.Margins.Left := 30;
  lblRemedy.Margins.Right := 30;
  lblRemedy.Align := alTop;
  lblRemedy.Caption := '';
  lblRemedy.Font.Charset := DEFAULT_CHARSET;
  lblRemedy.Font.Color := clWindowText;
  lblRemedy.Font.Height := -24;
  lblRemedy.Font.Name := 'Segoe UI Semibold';
  lblRemedy.Font.Style := [fsBold];
  lblRemedy.ParentFont := False;

  lblSymptoms.Parent := Self;
  lblSymptoms.Left := 743;
  lblSymptoms.Top := 16;
  lblSymptoms.Width := 128;
  lblSymptoms.Height := 20;
  lblSymptoms.Caption := 'Uses for Symptoms:';
  lblSymptoms.Font.Charset := DEFAULT_CHARSET;
  lblSymptoms.Font.Color := clWindowText;
  lblSymptoms.Font.Height := -15;
  lblSymptoms.Font.Name := 'Segoe UI Semibold';
  lblSymptoms.Font.Style := [];
  lblSymptoms.ParentFont := False;

  imgImage.Parent := Self;
  imgImage.Left := 31;
  imgImage.Top := 42;
  imgImage.Width := 114;
  imgImage.Height := 111;
  imgImage.AutoSize := False;
  imgImage.Center := True;
  imgImage.Proportional := True;
  imgImage.Stretch := True;

  lblPrice.Parent := Self;
  lblPrice.Left := 1015;
  lblPrice.Top := 19;
  lblPrice.Width := 100;
  lblPrice.Height := 17;
  lblPrice.Caption := 'Price per Unit: ';
  lblPrice.Font.Charset := DEFAULT_CHARSET;
  lblPrice.Font.Color := clWindowText;
  lblPrice.Font.Height := -13;
  lblPrice.Font.Name := 'Segoe UI Semibold';
  lblPrice.Font.Style := [];
  lblPrice.ParentFont := False;

  lblEaseOfUse.Parent := Self;
  lblEaseOfUse.Left := 1015;
  lblEaseOfUse.Top := 65;
  lblEaseOfUse.Width := 100;
  lblEaseOfUse.Height := 17;
  lblEaseOfUse.Caption := 'Ease Of Use: ';
  lblEaseOfUse.Font.Charset := DEFAULT_CHARSET;
  lblEaseOfUse.Font.Color := clWindowText;
  lblEaseOfUse.Font.Height := -13;
  lblEaseOfUse.Font.Name := 'Segoe UI Semibold';
  lblEaseOfUse.Font.Style := [];
  lblEaseOfUse.ParentFont := False;

  edtPrice.Parent := Self;
  edtPrice.Left := 1015;
  edtPrice.Top := 42;
  edtPrice.Width := 100;
  edtPrice.Height := 23;
  edtPrice.TabOrder := 0;
  edtPrice.TextHint := 'Price per Unit: ';

  cltSymptoms.Parent := Self;
  cltSymptoms.Left := 743;
  cltSymptoms.Top := 42;
  cltSymptoms.Width := 128;
  cltSymptoms.Height := 79;
  cltSymptoms.TabOrder := 1;

  btnRemoveSymptom.Parent := Self;
  btnRemoveSymptom.Left := 877;
  btnRemoveSymptom.Top := 65;
  btnRemoveSymptom.Width := 121;
  btnRemoveSymptom.Height := 25;
  btnRemoveSymptom.Caption := 'Remove Symptom';
  btnRemoveSymptom.TabOrder := 2;
  btnRemoveSymptom.OnClick := RemoveSymptom;

  btnAddSymptom.Parent := Self;
  btnAddSymptom.Left := 877;
  btnAddSymptom.Top := 42;
  btnAddSymptom.Width := 121;
  btnAddSymptom.Height := 24;
  btnAddSymptom.Caption := 'Add Symptom';
  btnAddSymptom.TabOrder := 3;
  btnAddSymptom.OnClick := AddSymptom;

  edtSymptom.Parent := Self;
  edtSymptom.Left := 743;
  edtSymptom.Top := 127;
  edtSymptom.Width := 128;
  edtSymptom.Height := 23;
  edtSymptom.TabOrder := 4;
  edtSymptom.TextHint := 'Add Symptom: ';

  redDescription.Parent := Self;
  redDescription.Left := 160;
  redDescription.Top := 42;
  redDescription.Width := 569;
  redDescription.Height := 111;
  redDescription.Font.Charset := ANSI_CHARSET;
  redDescription.Font.Color := 13431400;
  redDescription.Font.Height := 15;
  redDescription.Font.Name := 'Segoe UI';
  redDescription.Font.Style := [fsBold];
  redDescription.ParentFont := False;
  redDescription.TabOrder := 5;

  btnUpdateImage.Parent := Self;
  btnUpdateImage.Left := 877;
  btnUpdateImage.Top := 88;
  btnUpdateImage.Width := 121;
  btnUpdateImage.Height := 25;
  btnUpdateImage.Caption := 'Update Image';
  btnUpdateImage.TabOrder := 6;
  btnUpdateImage.OnClick := UpdateImage;

  bttReset.Parent := Self;
  bttReset.Left := 877;
  bttReset.Top := 128;
  bttReset.Width := 124;
  bttReset.Height := 25;
  bttReset.Kind := bkRetry;
  bttReset.Caption := 'Reset';
  bttReset.NumGlyphs := 2;
  bttReset.TabOrder := 7;
  bttReset.OnClick := ResetRemedy;

  bttSave.Parent := Self;
  bttSave.Left := 1015;
  bttSave.Top := 128;
  bttSave.Width := 100;
  bttSave.Height := 25;
  bttSave.Kind := bkAll;
  bttSave.Caption := 'Save Updates';
  bttSave.Font.Charset := DEFAULT_CHARSET;
  bttSave.Font.Color := clWindowText;
  bttSave.Font.Height := -12;
  bttSave.Font.Name := 'Segoe UI';
  bttSave.Font.Style := [];
  bttSave.NumGlyphs := 2;
  bttSave.ParentFont := False;
  bttSave.TabOrder := 8;
  bttSave.OnClick := UpdateRemedy;

  sedEaseOfUse.Parent := Self;
  sedEaseOfUse.Left := 1015;
  sedEaseOfUse.Top := 88;
  sedEaseOfUse.Width := 100;
  sedEaseOfUse.Height := 24;
  sedEaseOfUse.MaxValue := 10;
  sedEaseOfUse.MinValue := 0;
  sedEaseOfUse.TabOrder := 9;
  sedEaseOfUse.Value := 0;
end;

procedure TdynRemedyTile.RemoveSymptom(pSender: TObject);
var
  i: Integer;
begin
  // Remove checked Symptoms from checklist
  for i := cltSymptoms.Items.Count downto 1 do
  begin
    if cltSymptoms.Checked[i - 1] then
    begin
      cltSymptoms.Items.Delete(i - 1);
    end;
  end;

end;

procedure TdynRemedyTile.ResetRemedy(pSender: TObject);
const
  sDELIMITER = #10;
var
  i: Integer;
  iDelimiter: Integer;

  sSymptom: String;
  sParseStr: String;
  sLine: String;
begin
  redDescription.Lines.Clear;
  cltSymptoms.Items.Clear;

  rRemedy.ReadDBRecord(rRemedy.GetID);

  lblRemedy.Caption := rRemedy.sName;
  sedEaseOfUse.Value := rRemedy.iEaseOfUse;
  edtPrice.Text := FloatToStrF(rRemedy.rPrice, ffCurrency, 10, 2);

  sParseStr := rRemedy.sDescription;

  // Description Line Seperation
  i := 1;
  while (i <= Length(sParseStr)) do
  begin
    iDelimiter := Pos(sDELIMITER, sParseStr, i);

    if (iDelimiter > 0) then
      sLine := Copy(sParseStr, i, iDelimiter - i - 1)
    else
      sLine := Copy(sParseStr, i, Length(sParseStr) - i + 1);

    redDescription.Lines.Add(sLine);

    if (iDelimiter > 0) then
    begin
      i := iDelimiter + 1;
    end
    else
    begin
      i := Length(sParseStr) + 1;
    end;
  end;

  // Symptoms
  for sSymptom in rRemedy.arrSymptoms do
  begin
    cltSymptoms.Items.Add(sSymptom);
  end;

  // Image
  if FileExists(cProgramCore.GetImageDirectory + IntToStr(rRemedy.GetID) + '.jpg') then
    imgImage.Picture.LoadFromFile(cProgramCore.GetImageDirectory + IntToStr(rRemedy.GetID) + '.jpg');
end;

procedure TdynRemedyTile.UpdateImage(pSender: TObject);
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
    imgImage.Picture.LoadFromFile(dlgImageSelect.FileName);

    // Create image directory
    if not System.SysUtils.DirectoryExists(cProgramCore.GetImageDirectory) then
    begin
      ShowMessage(cProgramCore.GetImageDirectory + ' not found. Creating new directory');
      System.SysUtils.CreateDir(cProgramCore.GetImageDirectory);
    end;

    // Store image in file
    imgImage.Picture.SaveToFile(cProgramCore.GetImageDirectory + IntToStr(rRemedy.GetID) + '.jpg');
  end;

  dlgImageSelect.Destroy;
end;

procedure TdynRemedyTile.UpdateRemedy;
var
  i: Integer;
  sPrice: String;
begin
  rRemedy.sName := lblRemedy.Caption;
  rRemedy.iEaseOfUse := sedEaseOfUse.Value;

  // Price
  sPrice := edtPrice.Text;
  Delete(sPrice, 1, 1);
  rRemedy.rPrice := StrToFloat(sPrice);

  // Symptoms
  SetLength(rRemedy.arrSymptoms, 0);
  for i := 0 to cltSymptoms.Items.Count - 1 do
  begin
    SetLength(rRemedy.arrSymptoms, Length(rRemedy.arrSymptoms) + 1);
    rRemedy.arrSymptoms[Length(rRemedy.arrSymptoms) - 1] :=
      cltSymptoms.Items[i];
  end;

  // Description
  rRemedy.sDescription := '';
  for i := 0 to redDescription.Lines.Count - 1 do
  begin
    rRemedy.sDescription := rRemedy.sDescription + redDescription.Lines
      [i] + #10;
  end;

  if (rRemedy.sDescription[Length(rRemedy.sDescription)] = #10) then
  begin
    Delete(rRemedy.sDescription, Length(rRemedy.sDescription), 1);
  end;
end;

end.
