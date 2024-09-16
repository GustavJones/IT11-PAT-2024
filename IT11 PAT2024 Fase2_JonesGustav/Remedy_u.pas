unit Remedy_u;

interface

uses System.SysUtils, Vcl.Dialogs;

type
  TRemedy = class(TObject)
  public
  procedure Print;

  var
    iID : Integer;
    iEaseOfUse : Integer;
    sName : String;
    sDescription : String;
    rPrice : Real;

    arrSymptoms : array of string;
  end;

implementation

{ TRemedy }

procedure TRemedy.Print;
var
  sSymptoms : String;
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

end.
