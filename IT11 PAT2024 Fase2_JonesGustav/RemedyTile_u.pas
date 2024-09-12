unit RemedyTile_u;

interface

uses
  System.SysUtils, System.Classes, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.CheckLst, Vcl.ComCtrls, Vcl.Controls, Vcl.Forms, Vcl.Graphics, Vcl.Dialogs, Vcl.ExtDlgs,
  Winapi.Windows;

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
    lblSymptoms: TLabel;
    redDescription: TRichEdit;
    cltSymptoms: TCheckListBox;
    imgImage: TImage;

    constructor Create(pOwner: TComponent); override;

  private
    procedure AddSymptom(pSender : TObject);
    procedure RemoveSymptom(pSender : TObject);
    procedure UpdateImage(pSender : TObject);

  public
    procedure Init(pParent: TWinControl);
  end;

implementation

{ TdynRemedyTile }

procedure TdynRemedyTile.AddSymptom(pSender: TObject);
var
  sSymptom : String;
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
    Showmessage('Symptom Added');
  end;
end;

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
  lblSymptoms := TLabel.Create(Self);
  redDescription := TRichEdit.Create(Self);
  cltSymptoms := TCheckListBox.Create(Self);
  imgImage := TImage.Create(Self);

  Self.Visible := False;
end;

procedure TdynRemedyTile.Init(pParent: TWinControl);
begin
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
  lblRemedy.Caption := 'Test';
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
  lblSymptoms.Caption := 'User for Symptoms:';
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

  // Testing
  imgImage.Picture.LoadFromFile('K:\Delphi\GR 11\IT11-PAT-2024\IT11 PAT2024 Fase2_JonesGustav\style\onion.JPG');

  lblPrice.Parent := Self;
  lblPrice.Left := 1015;
  lblPrice.Top := 19;
  lblPrice.Width := 84;
  lblPrice.Height := 17;
  lblPrice.Caption := 'Price per Unit: ';
  lblPrice.Font.Charset := DEFAULT_CHARSET;
  lblPrice.Font.Color := clWindowText;
  lblPrice.Font.Height := -13;
  lblPrice.Font.Name := 'Segoe UI Semibold';
  lblPrice.Font.Style := [];
  lblPrice.ParentFont := False;

  edtPrice.Parent := Self;
  edtPrice.Left := 1015;
  edtPrice.Top := 42;
  edtPrice.Width := 124;
  edtPrice.Height := 23;
  edtPrice.TabOrder := 0;
  edtPrice.TextHint := 'Price per Unit: ';

  cltSymptoms.Parent := Self;
  cltSymptoms.Left := 743;
  cltSymptoms.Top := 42;
  cltSymptoms.Width := 128;
  cltSymptoms.Height := 79;
  cltSymptoms.Items.Add('Brusing');
  cltSymptoms.Items.Add('Pain');
  cltSymptoms.Items.Add('Muscles');
  cltSymptoms.TabOrder := 1;

  btnRemoveSymptom.Parent := Self;
  btnRemoveSymptom.Left := 877;
  btnRemoveSymptom.Top := 72;
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
  redDescription.Lines.Add('When applied to skin areas, brusing can be reduced');
  redDescription.ParentFont := False;
  redDescription.TabOrder := 5;

  btnUpdateImage.Parent := Self;
  btnUpdateImage.Left := 1015;
  btnUpdateImage.Top := 72;
  btnUpdateImage.Width := 124;
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

  bttSave.Parent := Self;
  bttSave.Left := 1015;
  bttSave.Top := 128;
  bttSave.Width := 124;
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
end;

procedure TdynRemedyTile.RemoveSymptom(pSender: TObject);
var
  bEmpty : Boolean;
begin
// TODO

//  for i := 1 to cltSymptoms.Items do


end;

procedure TdynRemedyTile.UpdateImage(pSender: TObject);
var
  dlgImageSelect : TOpenPictureDialog;
begin
  dlgImageSelect := TOpenPictureDialog.Create(Self);
  dlgImageSelect.Execute;

  if not FileExists(dlgImageSelect.FileName) then
  begin
    ShowMessage('File not found. Please try again!');
  end
  else
  begin
    imgImage.Picture.LoadFromFile(dlgImageSelect.FileName);

    // TODO
    // Store image in file
  end;

  dlgImageSelect.Destroy;
end;

end.
