unit RemedyTile_u;

interface

uses
  System.SysUtils, System.Classes, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.CheckLst, Vcl.ComCtrls, Vcl.Controls, Vcl.Forms, Vcl.Graphics,
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

  public
    procedure Init(pParent: TWinControl);
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
  lblSymptoms := TLabel.Create(Self);
  redDescription := TRichEdit.Create(Self);
  cltSymptoms := TCheckListBox.Create(Self);
  imgImage := TImage.Create(Self);
end;

procedure TdynRemedyTile.Init(pParent: TWinControl);
begin
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

  btnAddSymptom.Parent := Self;
  btnAddSymptom.Left := 877;
  btnAddSymptom.Top := 42;
  btnAddSymptom.Width := 121;
  btnAddSymptom.Height := 24;
  btnAddSymptom.Caption := 'Add Symptom';
  btnAddSymptom.TabOrder := 3;

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
end;

end.
