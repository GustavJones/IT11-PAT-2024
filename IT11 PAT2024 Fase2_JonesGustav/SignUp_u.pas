unit SignUp_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmSignUp = class(TForm)
    edtName: TEdit;
    edtSurname: TEdit;
    edtEmail: TEdit;
    Edit1: TEdit;
    rgpGender: TRadioGroup;
    dtpBirthDate: TDateTimePicker;
    btnSignUp: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSignUp: TfrmSignUp;

implementation

{$R *.dfm}

end.
