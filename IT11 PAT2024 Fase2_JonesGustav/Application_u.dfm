object frmHome: TfrmHome
  Left = 0
  Top = 0
  Caption = 'Boereraad'
  ClientHeight = 440
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object pgcTabs: TPageControl
    Left = 8
    Top = 8
    Width = 604
    Height = 424
    ActivePage = tsHome
    TabOrder = 0
    object tsHome: TTabSheet
      Caption = 'Home'
      object btnSignUp: TButton
        Left = 264
        Top = 168
        Width = 75
        Height = 25
        Caption = 'Sign Up'
        TabOrder = 0
        OnClick = btnSignUpClick
      end
      object btnLogIn: TButton
        Left = 264
        Top = 199
        Width = 75
        Height = 25
        Caption = 'Log In'
        TabOrder = 1
        OnClick = btnLogInClick
      end
    end
  end
end
