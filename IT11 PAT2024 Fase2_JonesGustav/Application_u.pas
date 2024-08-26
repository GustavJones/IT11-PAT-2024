unit Application_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Themes;

type
  TfrmHome = class(TForm)
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHome: TfrmHome;

implementation

{$R *.dfm}

procedure TfrmHome.FormActivate(Sender: TObject);
var
  shStyleHandle : TStyleManager.TStyleServicesHandle;
  smStyleManager : TStyleManager;
begin
  smStyleManager := TStyleManager.Create;
  if (smStyleManager.IsValidStyle('BoereRaadStyle.vsf')) then
  begin
    shStyleHandle := smStyleManager.LoadFromFile('BoereRaadStyle.vsf');
    smStyleManager.SetStyle(shStyleHandle);
  end
  else
    ShowMessage('Not A valid style');

end;

end.
