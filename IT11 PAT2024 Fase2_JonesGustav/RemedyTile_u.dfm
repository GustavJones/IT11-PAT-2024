object pnlTile: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1141
            Height = 173
            Align = alTop
            BorderStyle = bsSingle
            ShowCaption = False
            TabOrder = 0
            object lblTileTitle: TLabel
              AlignWithMargins = True
              Left = 31
              Top = 4
              Width = 1075
              Height = 32
              Margins.Left = 30
              Margins.Right = 30
              Align = alTop
              Caption = 'Onion:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 72
            end
            object lblSymptom: TLabel
              Left = 743
              Top = 16
              Width = 128
              Height = 20
              Caption = 'Use for Symptoms:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI Semibold'
              Font.Style = []
              ParentFont = False
            end
            object imgImage: TImage
              Left = 31
              Top = 42
              Width = 114
              Height = 111
              Proportional = True
              Stretch = True
            end
            object lblPrice: TLabel
              Left = 1015
              Top = 19
              Width = 84
              Height = 17
              Caption = 'Price per unit:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = []
              ParentFont = False
            end
            object edtPrice: TEdit
              Left = 1015
              Top = 42
              Width = 124
              Height = 23
              TabOrder = 0
              TextHint = 'Price per Unit'
            end
            object cltSymptoms: TCheckListBox
              Left = 743
              Top = 42
              Width = 128
              Height = 79
              ItemHeight = 15
              Items.Strings = (
                'Brusing'
                'Pain'
                'Sore Muscles')
              TabOrder = 1
            end
            object btnRemoveSymptom: TButton
              Left = 877
              Top = 72
              Width = 121
              Height = 25
              Caption = 'Remove Symptom'
              TabOrder = 2
            end
            object btnAddSymptom: TButton
              Left = 877
              Top = 42
              Width = 121
              Height = 24
              Caption = 'Add Symptom'
              TabOrder = 3
            end
            object Edit4: TEdit
              Left = 743
              Top = 127
              Width = 128
              Height = 23
              TabOrder = 4
              TextHint = 'Add symptom'
            end
            object redDescription: TRichEdit
              Left = 160
              Top = 42
              Width = 569
              Height = 111
              Font.Charset = ANSI_CHARSET
              Font.Color = 13431400
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Lines.Strings = (
                'When applied to skin areas, brusing can be reduced')
              ParentFont = False
              TabOrder = 5
            end
            object btnUpdateImage: TButton
              Left = 1015
              Top = 72
              Width = 124
              Height = 25
              Caption = 'Update Image'
              TabOrder = 6
            end
            object bttReset: TBitBtn
              Left = 877
              Top = 128
              Width = 124
              Height = 25
              Caption = 'Reset'
              Kind = bkRetry
              NumGlyphs = 2
              TabOrder = 7
            end
            object bttSave: TBitBtn
              Left = 1015
              Top = 128
              Width = 124
              Height = 25
              Caption = 'Save Updates'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              Kind = bkAll
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 8
            end
          end