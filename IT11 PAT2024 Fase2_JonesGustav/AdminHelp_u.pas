unit AdminHelp_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Core_u,
  Vcl.Buttons;

type
  TfrmAdminHelp = class(TForm)
    lblTitle: TLabel;
    pnlHelp: TPanel;
    lblHelp: TLabel;
    redHelp: TRichEdit;
    pnlInfo: TPanel;
    lblSelectPage: TLabel;
    lblInfo: TLabel;
    cmbPage: TComboBox;
    redInfo: TRichEdit;
    pnlAdvancedHelp: TPanel;
    lblAdvancedHelpTitle: TLabel;
    redAdvancedHelpOutput: TRichEdit;
    edtAdvancedHelpPrompt: TEdit;
    btnAdvancedHelpGenerate: TButton;
    pnlAdvancedHelpControls: TPanel;
    bmbAdvancedHelpReset: TBitBtn;
    procedure cmbPageChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdminHelp: TfrmAdminHelp;

implementation

{$R *.dfm}

procedure TfrmAdminHelp.cmbPageChange(Sender: TObject);
var
  sInfoFile : string;
  sHelpFile : string;
  sLine : string;
  tFile : TextFile;
begin
  // Read help information from textfiles
  redInfo.Lines.Clear;
  redHelp.Lines.Clear;

  sInfoFile := cProgramCore.GetHelpDirectory + cmbPage.Items[cmbPage.ItemIndex] + '_info.txt';
  sHelpFile := cProgramCore.GetHelpDirectory + cmbPage.Items[cmbPage.ItemIndex] + '_help.txt';

  if FileExists(sInfoFile) then
  begin
    AssignFile(tFile, sInfoFile);
    Reset(tFile);

    while not Eof(tFile) do
    begin
      Readln(tFile, sLine);
      redInfo.Lines.Add(sLine);
    end;

    CloseFile(tFile);
  end
  else
  begin
    TCore.CreateFile(sInfoFile);
  end;

  if FileExists(sHelpFile) then
  begin
    AssignFile(tFile, sHelpFile);
    Reset(tFile);

    while not Eof(tFile) do
    begin
      Readln(tFile, sLine);
      redHelp.Lines.Add(sLine);
    end;

    CloseFile(tFile);
  end
  else
  begin
    TCore.CreateFile(sHelpFile);
  end;
end;
end.
