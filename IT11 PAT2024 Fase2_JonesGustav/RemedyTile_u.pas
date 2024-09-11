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
  lblRemedy.Visible := True;

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
  lblSymptoms.Visible := True;

  imgImage.Parent := Self;
  imgImage.Left := 31;
  imgImage.Top := 42;
  imgImage.Width := 114;
  imgImage.Height := 11;
  imgImage.Proportional := True;
  imgImage.Stretch := True;
  imgImage.Visible := True;
end;

end.
