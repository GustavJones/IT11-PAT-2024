unit RemedyTile_u;

interface

uses
  System.SysUtils, System.Classes, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.CheckLst, Vcl.ComCtrls;

type
  TdynRemedyTile = class(TPanel)
  bttReset : TBitBtn;
  bttSave : TBitBtn;
  btnUpdateImage : TButton;
  btnRemoveSymptom : TButton;
  btnAddSymptom : TButton;
  edtSymptom : TEdit;
  edtPrice : TEdit;
  lblRemedy : TLabel;
  lblPrice : TLabel;
  lblSymptoms : TLabel;
  redDescription : TRichEdit;
  cltSymptoms : TCheckListBox;
  imgImage : TImage;

  private
  public
  end;

implementation

end.
