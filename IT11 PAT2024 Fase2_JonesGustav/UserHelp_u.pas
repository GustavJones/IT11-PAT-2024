unit UserHelp_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Core_u,
  Vcl.Buttons, System.JSON, REST.Client, REST.Types, Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TfrmUserHelp = class(TForm)
    lblTitle: TLabel;
    cmbPage: TComboBox;
    pnlInfo: TPanel;
    pnlHelp: TPanel;
    lblSelectPage: TLabel;
    lblHelp: TLabel;
    lblInfo: TLabel;
    redInfo: TRichEdit;
    redHelp: TRichEdit;
    pnlAdvancedHelp: TPanel;
    lblAdvancedHelpTitle: TLabel;
    redAdvancedHelpOutput: TRichEdit;
    pnlAdvancedHelpControls: TPanel;
    btnAdvancedHelpGenerate: TButton;
    bmbAdvancedHelpReset: TBitBtn;
    edtAdvancedHelpPrompt: TEdit;
    rcClient: TRESTClient;
    reqRequest: TRESTRequest;
    respResponse: TRESTResponse;
    procedure cmbPageChange(Sender: TObject);
    procedure btnAdvancedHelpGenerateClick(Sender: TObject);
    procedure bmbAdvancedHelpResetClick(Sender: TObject);
  private
    const
      sAI_URL_FILE = 'ollama.txt';
      sPROMPT_TEMPLATE_FILE = 'prompt.json';
      sDEFAULT_URL = 'http://127.0.0.1:11434/api/generate';
  public
    { Public declarations }
  end;

var
  frmUserHelp: TfrmUserHelp;

implementation

{$R *.dfm}

procedure TfrmUserHelp.bmbAdvancedHelpResetClick(Sender: TObject);
begin
  // Clear output and inputs
  edtAdvancedHelpPrompt.Text := '';
  redAdvancedHelpOutput.Lines.Clear;
end;

procedure TfrmUserHelp.btnAdvancedHelpGenerateClick(Sender: TObject);
const
  sPROMPT_REPLACE_STRING = '$PROMPT';
var
  tAIFile : TextFile;
  tPromptTemplate : TextFile;
  sLine : string;
  iReplaceIndex : Integer;
  sPrompt : string;
  sURL : string;
  sRequest : string;
  sResponse : string;
  jvJSONValue : TJSONValue;
begin
  // Get help from a prompt
  // Validation
  if edtAdvancedHelpPrompt.Text = '' then
  begin
    ShowMessage('Please enter a prompt');
    edtAdvancedHelpPrompt.SetFocus;
    exit;
  end;

  sPrompt := edtAdvancedHelpPrompt.Text;

  if FileExists(cProgramCore.GetDataDirectory + sPROMPT_TEMPLATE_FILE) then
  begin
    AssignFile(tPromptTemplate, cProgramCore.GetDataDirectory + sPROMPT_TEMPLATE_FILE);
    Reset(tPromptTemplate);

    while not Eof(tPromptTemplate) do
    begin
      Readln(tPromptTemplate, sLine);
      sRequest := sRequest + sLine + #10;
    end;

    CloseFile(tPromptTemplate);
  end
  else
  begin
    TCore.CreateFile(cProgramCore.GetDataDirectory + sPROMPT_TEMPLATE_FILE);
    sRequest := '';
  end;

  if FileExists(cProgramCore.GetDataDirectory + sAI_URL_FILE) then
  begin
    AssignFile(tAIFile, cProgramCore.GetDataDirectory + sAI_URL_FILE);
    Reset(tAIFile);

    Read(tAIFile, sURL);

    CloseFile(tAIFile);
  end
  else
  begin
    sURL := sDEFAULT_URL;
    AssignFile(tAIFile, cProgramCore.GetDataDirectory + sAI_URL_FILE);
    Rewrite(tAIFile);

    Write(tAIFile, sURL);

    CloseFile(tAIFile);
  end;

  if sRequest = '' then
  begin
    ShowMessage('Error in getting request template');
    exit;
  end;

  if sURL = '' then
  begin
    ShowMessage('Error in getting AI server URL');
    exit;
  end;

  rcClient.BaseURL := sURL;

  iReplaceIndex := Pos(sPROMPT_REPLACE_STRING, sRequest);
  Insert(sPrompt, sRequest, iReplaceIndex + Length(sPROMPT_REPLACE_STRING));
  Delete(sRequest, iReplaceIndex, Length(sPROMPT_REPLACE_STRING));

  reqRequest.Params.Items[0].Value := sRequest;
  reqRequest.Execute;

  jvJSONValue := respResponse.JSONValue;

  if jvJSONValue.TryGetValue<string>('response', sResponse) then
  begin
    redAdvancedHelpOutput.Lines.Add(sResponse);
  end
  else
  begin
    ShowMessage('Invalid response from server. Please try again.');
  end;
end;

procedure TfrmUserHelp.cmbPageChange(Sender: TObject);
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
