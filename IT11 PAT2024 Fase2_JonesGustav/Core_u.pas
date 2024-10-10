unit Core_u;

interface

uses
  System.SysUtils, System.IOUtils;

type
  TCore = class(TObject)

  public
    constructor Create();
    procedure CoreInit();
    function GetDataDirectory(): String;
    function GetImageDirectory(): String;
    function GetPendingChangesDirectory(): String;
    function GetHelpDirectory(): String;
    class procedure CreateFile(pFilepath: string);
    class procedure DeleteFile(pFilepath: string);
    class procedure CreateDir(pPath: string);
    class procedure CopyFile(pFileToCopy: string; pFileOutput: string);
    class function ReadDir(pPath: string; pSeperator: string = #9): string;
    class procedure RenameFile(pOldPath : string; pNewPath : string);

  private
  var
    sDATA_DIRECTORY: string;

  const
    sIMAGE_DIRECTORY = 'images';
    sPENDING_CHANGES_DIRECTORY = 'changes';
    sHELP_DIRECTORY = 'help';

  end;

var
  cProgramCore: TCore;

implementation

class procedure TCore.CopyFile(pFileToCopy, pFileOutput: string);
var
  bByte: Byte;
  tInputFile, tOutputFile: file;
begin
  // Binary copy file from one location to another
  if not FileExists(pFileToCopy) then
  begin
    exit;
  end;

  AssignFile(tInputFile, pFileToCopy);
  AssignFile(tOutputFile, pFileOutput);

  Reset(tInputFile, 1);
  Rewrite(tOutputFile, 1);

  while not(Eof(tInputFile)) do
  begin
    BlockRead(tInputFile, bByte, 1);
    BlockWrite(tOutputFile, bByte, 1);
  end;

  CloseFile(tInputFile);
  CloseFile(tOutputFile);
end;

procedure TCore.CoreInit();
begin
  // Setup directories
  sDATA_DIRECTORY := GetCurrentDir;

  CreateDir(GetImageDirectory);
  CreateDir(GetPendingChangesDirectory);
  CreateDir(GetHelpDirectory);
end;

constructor TCore.Create;
begin
  inherited Create;
  CoreInit;
end;

class procedure TCore.CreateDir(pPath: string);
begin
  // Create directory
  if not System.SysUtils.DirectoryExists(pPath) then
  begin
    System.SysUtils.CreateDir(pPath);
  end;
end;

class procedure TCore.CreateFile(pFilepath: string);
var
  tFile: TextFile;
begin
  // Create a blank file
  if not System.SysUtils.FileExists(pFilepath) then
  begin
    AssignFile(tFile, pFilepath);
    Rewrite(tFile);

    CloseFile(tFile);
  end;
end;

class procedure TCore.DeleteFile(pFilepath: string);
begin
  // Delete a file
  System.SysUtils.DeleteFile(pFilepath);
end;

function TCore.GetDataDirectory: String;
begin
  // Return the directory of the program file
  result := sDATA_DIRECTORY + '\';
end;

function TCore.GetHelpDirectory: String;
begin
  // Return the relative help directory
  result := GetDataDirectory + sHELP_DIRECTORY + '\';
end;

function TCore.GetImageDirectory: String;
begin
  // Return the relative image directory
  result := GetDataDirectory + sIMAGE_DIRECTORY + '\';
end;

function TCore.GetPendingChangesDirectory: String;
begin
  // Return the changes help directory
  result := GetDataDirectory + sPENDING_CHANGES_DIRECTORY + '\';
end;

class function TCore.ReadDir(pPath: string; pSeperator: string = #9): string;
var
  sOutput: string;
  sFileName: string;
  iPathIndex: Integer;
begin
  // Read directory contents and return a seperated string of paths
  sOutput := '';

  for var f in System.IOUtils.TDirectory.GetFiles(pPath) do
  begin
    sFileName := f;
    iPathIndex := Pos(pPath, sFileName);

    if iPathIndex > 0 then
    begin
      Delete(sFileName, 1, (iPathIndex + Length(pPath) - 1));
    end;

    sOutput := sOutput + sFileName + pSeperator;
  end;

  if Length(sOutput) > 0 then
  begin
    if sOutput[Length(sOutput)] = pSeperator then
    begin
      Delete(sOutput, Length(sOutput), 1);
    end;
  end;

  result := sOutput;
end;

class procedure TCore.RenameFile(pOldPath, pNewPath: string);
begin
  // Rename a file
  System.SysUtils.RenameFile(pOldPath, pNewPath);
end;

end.
