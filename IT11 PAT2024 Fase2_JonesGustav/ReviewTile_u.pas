unit ReviewTile_u;

interface

uses
  System.SysUtils, System.Classes, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.CheckLst, Vcl.ComCtrls, Vcl.Controls, Vcl.Forms, Vcl.Graphics,
  Vcl.Dialogs, Vcl.ExtDlgs, Vcl.Samples.Spin, Vcl.Imaging.jpeg,
  Winapi.Windows, Core_u, dmBoereraad_u;

type
  TdynReviewTile = class(TPanel)
    bttRemove: TBitBtn;
    bttReset: TBitBtn;
    bttSave: TBitBtn;
    lblReview: TLabel;
    lblDaysUsed: TLabel;
    lblDosage: TLabel;
    lblEffectiveness: TLabel;
    redDosage: TRichEdit;
    sedDaysUsed : TSpinEdit;
    sedEffectiveness : TSpinEdit;

    constructor Create(pOwner: TComponent); override;

  private
    procedure RemoveReview(pSender: TObject);
    procedure ResetReview(pSender: TObject);
    procedure SaveReview(pSender: TObject);

  var
    iReviewID : Integer;
  public
    procedure Init(pParent: TWinControl) overload;
    procedure Init(pParent: TWinControl; pReviewID : Integer) overload;

  end;

implementation

{ TdynReviewTile }

constructor TdynReviewTile.Create(pOwner: TComponent);
begin
  inherited Create(pOwner);
  bttRemove:= TBitBtn.Create(Self);
  bttReset:= TBitBtn.Create(Self);
  bttSave:= TBitBtn.Create(Self);
  lblReview:= TLabel.Create(Self);
  lblDaysUsed:= TLabel.Create(Self);
  lblDosage:= TLabel.Create(Self);
  lblEffectiveness:= TLabel.Create(Self);
  redDosage:= TRichEdit.Create(Self);
  sedDaysUsed := TSpinEdit.Create(Self);
  sedEffectiveness := TSpinEdit.Create(Self);
end;

procedure TdynReviewTile.Init(pParent: TWinControl);
begin
  Self.Visible := True;

  Self.Parent := pParent;
  Self.AlignWithMargins := True;
  Self.Left := 3;
  Self.Top := 3;
  Self.Width := 1133;
  Self.Height := 182;
  Self.Align := alTop;
  Self.BorderStyle := bsSingle;
  Self.ShowCaption := False;
  Self.TabOrder := 0;


  lblReview.Parent := Self;
  lblReview.AlignWithMargins := True;
  lblReview.Left := 31;
  lblReview.Top := 4;
  lblReview.Width := 1067;
  lblReview.Height := 32;
  lblReview.Margins.Left := 30;
  lblReview.Margins.Right := 30;
  lblReview.Align := alTop;
  lblReview.Caption := '';
  lblReview.Font.Charset := DEFAULT_CHARSET;
  lblReview.Font.Color := clWindowText;
  lblReview.Font.Height := -24;
  lblReview.Font.Name := 'Segoe UI Semibold';
  lblReview.Font.Style := [TFontStyle.fsBold];
  lblReview.ParentFont := False;

  lblDosage.Parent := Self;
  lblDosage.Left := 31;
  lblDosage.Top := 54;
  lblDosage.Width := 140;
  lblDosage.Height := 20;
  lblDosage.Caption := 'Dosage Information:';
  lblDosage.Font.Charset := DEFAULT_CHARSET;
  lblDosage.Font.Color := clWindowText;
  lblDosage.Font.Height := -15;
  lblDosage.Font.Name := 'Segoe UI Semibold';
  lblDosage.Font.Style := [];
  lblDosage.ParentFont := False;

  lblDaysUsed.Parent := Self;
  lblDaysUsed.Left := 868;
  lblDaysUsed.Top := 54;
  lblDaysUsed.Width := 75;
  lblDaysUsed.Height := 20;
  lblDaysUsed.Caption := 'Days Used:';
  lblDaysUsed.Font.Charset := DEFAULT_CHARSET;
  lblDaysUsed.Font.Color := clWindowText;
  lblDaysUsed.Font.Height := -15;
  lblDaysUsed.Font.Name := 'Segoe UI Semibold';
  lblDaysUsed.Font.Style := [];
  lblDaysUsed.ParentFont := False;

  lblEffectiveness.Parent := Self;
  lblEffectiveness.Left := 868;
  lblEffectiveness.Top := 110;
  lblEffectiveness.Width := 141;
  lblEffectiveness.Height := 20;
  lblEffectiveness.Caption := 'Effectiveness: (0 - 10)';
  lblEffectiveness.Font.Charset := DEFAULT_CHARSET;
  lblEffectiveness.Font.Color := clWindowText;
  lblEffectiveness.Font.Height := -15;
  lblEffectiveness.Font.Name := 'Segoe UI Semibold';
  lblEffectiveness.Font.Style := [];
  lblEffectiveness.ParentFont := False;

  bttSave.Parent := Self;
  bttSave.Left := 1015;
  bttSave.Top := 136;
  bttSave.Width := 98;
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
  bttSave.TabOrder := 0;
  bttSave.OnClick := SaveReview;

  bttReset.Parent := Self;
  bttReset.Left := 1015;
  bttReset.Top := 74;
  bttReset.Width := 98;
  bttReset.Height := 25;
  bttReset.Kind := bkRetry;
  bttReset.Caption := 'Reset';
  bttReset.NumGlyphs := 2;
  bttReset.TabOrder := 1;
  bttReset.OnClick := ResetReview;

  redDosage.Parent := Self;
  redDosage.Left := 31;
  redDosage.Top := 80;
  redDosage.Width := 818;
  redDosage.Height := 81;
  redDosage.Font.Charset := ANSI_CHARSET;
  redDosage.Font.Color := 13431400;
  redDosage.Font.Height := -15;
  redDosage.Font.Name := 'Segoe UI';
  redDosage.Font.Style := [fsBold];
  redDosage.ParentFont := False;
  redDosage.TabOrder := 2;

  sedDaysUsed.Parent := Self;
  sedDaysUsed.Left := 868;
  sedDaysUsed.Top := 80;
  sedDaysUsed.Width := 129;
  sedDaysUsed.Height := 24;
  sedDaysUsed.MaxValue := 10000;
  sedDaysUsed.MinValue := 0;
  sedDaysUsed.TabOrder := 3;
  sedDaysUsed.Value := 0;

  bttRemove.Parent := Self;
  bttRemove.Left := 1015;
  bttRemove.Top := 105;
  bttRemove.Width := 98;
  bttRemove.Height := 25;
  bttRemove.Kind := bkCancel;
  bttRemove.Caption := 'Remove';
  bttRemove.Font.Charset := DEFAULT_CHARSET;
  bttRemove.Font.Color := clWindowText;
  bttRemove.Font.Height := -12;
  bttRemove.Font.Name := 'Segoe UI';
  bttRemove.Font.Style := [];
  bttRemove.NumGlyphs := 2;
  bttRemove.ParentFont := False;
  bttRemove.TabOrder := 4;
  bttRemove.OnClick := RemoveReview;

  sedEffectiveness.Parent := Self;
  sedEffectiveness.Left := 868;
  sedEffectiveness.Top := 136;
  sedEffectiveness.Width := 129;
  sedEffectiveness.Height := 24;
  sedEffectiveness.MaxValue := 10;
  sedEffectiveness.MinValue := 0;
  sedEffectiveness.TabOrder := 5;
  sedEffectiveness.Value := 0;
end;

procedure TdynReviewTile.Init(pParent: TWinControl; pReviewID : Integer);
begin
  Init(pParent);
  iReviewID := pReviewID;
  ResetReview(nil);
end;

procedure TdynReviewTile.RemoveReview(pSender: TObject);
var
  iDBIndex : Integer;
  bFound : Boolean;
begin
  bFound := False;
  iDBIndex := dmBoereraad.tblReview.RecNo;

  dmBoereraad.tblReview.First;
  while not (dmBoereraad.tblReview.Eof) and not (bFound) do
  begin
    if dmBoereraad.tblReview[sTBLREVIEW_ID] = iReviewID then
    begin
      bFound := True;
    end
    else
    begin
      dmBoereraad.tblReview.Next;
    end;
  end;

  dmBoereraad.tblReview.Delete;
  dmBoereraad.tblReview.RecNo := iDBIndex;
  Self.Visible := False;
end;

procedure TdynReviewTile.ResetReview(pSender: TObject);
var
  bFound : Boolean;
  iRemedyDBIndex, iReviewDBIndex : Integer;
  i, iDelimiter : Integer;
  sReview, sDosage, sLine : string;
  iDaysUsed, iEffectiveness : Integer;
begin
  bFound := False;
  iRemedyDBIndex := dmBoereraad.tblRemedy.RecNo;
  iReviewDBIndex := dmBoereraad.tblReview.RecNo;

  // Load info
  dmBoereraad.tblReview.First;
  while not (dmBoereraad.tblReview.Eof) and not (bFound) do
  begin
    if dmBoereraad.tblReview[sTBLREVIEW_ID] = iReviewID then
    begin
      dmBoereraad.tblRemedy.First;
      while not (dmBoereraad.tblRemedy.Eof) do
      begin
        if dmBoereraad.tblReview[sTBLREVIEW_REMEDYID] = dmBoereraad.tblRemedy[sTBLREMEDY_ID] then
        begin
          sReview := dmBoereraad.tblRemedy[sTBLREMEDY_NAME];
        end;

        dmBoereraad.tblRemedy.Next;
      end;

      sDosage := dmBoereraad.tblReview[sTBLREVIEW_DOSAGE];
      iDaysUsed := dmBoereraad.tblReview[sTBLREVIEW_DAYSUSED];
      iEffectiveness := dmBoereraad.tblReview[sTBLREVIEW_EFFECTIVENESS];
    end;

    dmBoereraad.tblReview.Next;
  end;

  // Apply visually
  lblReview.Caption := sReview;

  // Dosage
  redDosage.Lines.Clear;
  i := 1;
  while (i <= Length(sDosage)) do
  begin
    iDelimiter := Pos(#10, sDosage, i);

    if (iDelimiter > 0) then
      sLine := Copy(sDosage, i, iDelimiter - i)
    else
      sLine := Copy(sDosage, i, Length(sDosage) - i + 1);

    redDosage.Lines.Add(sLine);

    if (iDelimiter > 0) then
    begin
      i := iDelimiter + 1;
    end
    else
    begin
      i := Length(sDosage) + 1;
    end;
  end;

  sedDaysUsed.Value := iDaysUsed;
  sedEffectiveness.Value := iEffectiveness;

  dmBoereraad.tblRemedy.RecNo := iRemedyDBIndex;
  dmBoereraad.tblReview.RecNo := iReviewDBIndex;
end;

procedure TdynReviewTile.SaveReview(pSender: TObject);
var
  iDBIndex : Integer;
  bFound : Boolean;
  sDosage : string;
  i: Integer;
begin
  sDosage := '';
  bFound := False;
  iDBIndex := dmBoereraad.tblReview.RecNo;

  dmBoereraad.tblReview.First;
  while not (dmBoereraad.tblReview.Eof) and not (bFound) do
  begin
    if dmBoereraad.tblReview[sTBLREVIEW_ID] = iReviewID then
    begin
      bFound := True;
    end
    else
    begin
      dmBoereraad.tblReview.Next;
    end;
  end;

  for i := 0 to redDosage.Lines.Count - 1 do
  begin
    sDosage := sDosage + redDosage.Lines[i] + #10;
  end;

  dmBoereraad.tblReview.Edit;

  dmBoereraad.tblReview[sTBLREVIEW_DAYSUSED] := sedDaysUsed.Value;
  dmBoereraad.tblReview[sTBLREVIEW_EFFECTIVENESS] := sedEffectiveness.Value;
  dmBoereraad.tblReview[sTBLREVIEW_DOSAGE] := sDosage;

  dmBoereraad.tblReview.Post;

  dmBoereraad.tblReview.RecNo := iDBIndex;
end;

end.
