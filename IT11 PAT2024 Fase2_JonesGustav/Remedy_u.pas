unit Remedy_u;

interface

type
  TRemedy = class(TObject)
  public
  var
    iID : Integer;
    iEaseOfUse : Integer;
    sName : String;
    sDescription : String;
    rPrice : Real;

    arrSymptoms : array of string;
  end;

implementation

end.
