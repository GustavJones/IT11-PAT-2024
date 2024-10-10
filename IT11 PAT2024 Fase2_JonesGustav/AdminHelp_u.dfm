object frmAdminHelp: TfrmAdminHelp
  Left = 327
  Top = 145
  BorderStyle = bsDialog
  Caption = 'Admin Help'
  ClientHeight = 442
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
    Caption = 'Admin Help for Boereraad'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 252
  end
  object pnlHelp: TPanel
    AlignWithMargins = True
    Left = 323
    Top = 33
    Width = 302
    Height = 406
    Align = alRight
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = 319
    ExplicitHeight = 405
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
      Height = 370
      Margins.Left = 10
      Margins.Right = 10
      Margins.Bottom = 6
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      ExplicitHeight = 369
    end
  end
  object pnlInfo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 33
    Width = 302
    Height = 406
    Align = alLeft
    ShowCaption = False
    TabOrder = 1
    ExplicitHeight = 405
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
        'Remedy Pending Changes'
        'Admin')
    end
    object redInfo: TRichEdit
      AlignWithMargins = True
      Left = 11
      Top = 81
      Width = 280
      Height = 318
      Margins.Left = 10
      Margins.Right = 10
      Margins.Bottom = 6
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Rea'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      ExplicitHeight = 317
    end
  end
end
