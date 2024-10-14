object frmUserHelp: TfrmUserHelp
  Left = 286
  Top = 83
  BorderStyle = bsDialog
  Caption = 'User Help'
  ClientHeight = 525
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object lblTitle: TLabel
    Left = 0
    Top = 0
    Width = 628
    Height = 30
    Align = alTop
    Alignment = taCenter
    Caption = 'User Help for Boereraad'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 232
  end
  object pnlInfo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 33
    Width = 302
    Height = 268
    Align = alLeft
    ShowCaption = False
    TabOrder = 0
    object lblSelectPage: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 29
      Width = 280
      Height = 17
      Margins.Left = 10
      Margins.Right = 10
      Align = alTop
      Caption = 'Select Page'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 69
    end
    object lblInfo: TLabel
      Left = 1
      Top = 1
      Width = 300
      Height = 25
      Align = alTop
      Alignment = taCenter
      Caption = 'Page Info'
      Color = 11130150
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11130150
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      StyleElements = [seClient, seBorder]
      ExplicitWidth = 81
    end
    object cmbPage: TComboBox
      AlignWithMargins = True
      Left = 11
      Top = 52
      Width = 280
      Height = 23
      Margins.Left = 10
      Margins.Right = 10
      Align = alTop
      TabOrder = 0
      Text = 'User Page'
      OnChange = cmbPageChange
      Items.Strings = (
        'Remedies'
        'Add Remedy'
        'Remedy Reviews')
    end
    object redInfo: TRichEdit
      AlignWithMargins = True
      Left = 11
      Top = 81
      Width = 280
      Height = 180
      Margins.Left = 10
      Margins.Right = 10
      Margins.Bottom = 6
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      HideScrollBars = False
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object pnlHelp: TPanel
    AlignWithMargins = True
    Left = 323
    Top = 33
    Width = 302
    Height = 268
    Align = alRight
    ShowCaption = False
    TabOrder = 1
    object lblHelp: TLabel
      Left = 1
      Top = 1
      Width = 300
      Height = 25
      Align = alTop
      Alignment = taCenter
      Caption = 'Page Help'
      Color = 11130150
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11130150
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      StyleElements = [seClient, seBorder]
      ExplicitWidth = 86
    end
    object redHelp: TRichEdit
      AlignWithMargins = True
      Left = 11
      Top = 29
      Width = 280
      Height = 235
      Margins.Left = 10
      Margins.Right = 10
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      HideScrollBars = False
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object pnlAdvancedHelp: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 304
    Width = 622
    Height = 218
    Margins.Top = 0
    Align = alBottom
    Alignment = taLeftJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = []
    ParentFont = False
    ShowCaption = False
    TabOrder = 2
    VerticalAlignment = taAlignTop
    object lblAdvancedHelpTitle: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 614
      Height = 21
      Align = alTop
      Alignment = taCenter
      Caption = 'Advanced Help'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11130150
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
      ExplicitWidth = 112
    end
    object redAdvancedHelpOutput: TRichEdit
      AlignWithMargins = True
      Left = 11
      Top = 63
      Width = 600
      Height = 151
      Margins.Left = 10
      Margins.Right = 10
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      HideScrollBars = False
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object pnlAdvancedHelpControls: TPanel
      AlignWithMargins = True
      Left = 11
      Top = 28
      Width = 600
      Height = 32
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      ShowCaption = False
      TabOrder = 1
      object btnAdvancedHelpGenerate: TButton
        AlignWithMargins = True
        Left = 476
        Top = 4
        Width = 120
        Height = 24
        Align = alRight
        Caption = 'Generate Answer'
        TabOrder = 0
        OnClick = btnAdvancedHelpGenerateClick
      end
      object bmbAdvancedHelpReset: TBitBtn
        AlignWithMargins = True
        Left = 395
        Top = 4
        Width = 75
        Height = 24
        Align = alRight
        Caption = 'Reset'
        Kind = bkRetry
        NumGlyphs = 2
        TabOrder = 1
        OnClick = bmbAdvancedHelpResetClick
      end
      object edtAdvancedHelpPrompt: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 371
        Height = 24
        Align = alLeft
        TabOrder = 2
        TextHint = 'Help Prompt'
        ExplicitHeight = 25
      end
    end
  end
  object rcClient: TRESTClient
    BaseURL = 'http://127.0.0.1:11434/api/generate'
    Params = <>
    SynchronizedEvents = False
    Left = 456
    Top = 456
  end
  object reqRequest: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = rcClient
    Method = rmPOST
    Params = <
      item
        Kind = pkREQUESTBODY
        Name = 'body'
        ContentTypeStr = 'application/json'
      end>
    Response = respResponse
    SynchronizedEvents = False
    Left = 512
    Top = 456
  end
  object respResponse: TRESTResponse
    Left = 560
    Top = 456
  end
end
