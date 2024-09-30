unit Core_u;

interface

uses
  System.SysUtils;

type
  TCore = class(TObject)

  public
    constructor Create();
    procedure CoreInit();
    function GetDataDirectory(): String;
    function GetImageDirectory(): String;
    class procedure CreateFile(pFilepath: string);
    class procedure CopyFile(pFileToCopy: string; pFileOutput: string);

  private
  var
    sDATA_DIRECTORY: string;

  const
    sIMAGE_DIRECTORY = 'images';

  end;

var
  cProgramCore: TCore;

implementation

class procedure TCore.CopyFile(pFileToCopy, pFileOutput: string);
var
  bByte : Byte;
  tInputFile, tOutputFile : file;
begin
  AssignFile(tInputFile, pFileToCopy);
  AssignFile(tOutputFile, pFileOutput);

  Reset(tInputFile, 1);
  Rewrite(tOutputFile, 1);

  while not (Eof(tInputFile)) do
  begin
    BlockRead(tInputFile, bByte, 1);
    BlockWrite(tOutputFile, bByte, 1);
  end;

  CloseFile(tInputFile);
  CloseFile(tOutputFile);
end;

procedure TCore.CoreInit();
begin
  sDATA_DIRECTORY := GetCurrentDir;
end;

constructor TCore.Create;
begin
  inherited Create;
  CoreInit;
end;

class procedure TCore.CreateFile(pFilepath: string);
var
  tFile : TextFile;
begin
  if not System.SysUtils.FileExists(pFilepath) then
  begin
    AssignFile(tFile, pFilepath);
    Rewrite(tFile);

    CloseFile(tFile);
  end;
end;

function TCore.GetDataDirectory: String;
begin
  result := sDATA_DIRECTORY + '\';
end;

function TCore.GetImageDirectory: String;
begin
  result := GetDataDirectory + sIMAGE_DIRECTORY + '\';
end;

end.
