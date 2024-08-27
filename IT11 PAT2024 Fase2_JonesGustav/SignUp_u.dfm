object frmSignUp: TfrmSignUp
  Left = 538
  Top = 310
  BorderStyle = bsDialog
  Caption = 'Sign Up'
  ClientHeight = 170
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object edtName: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = 'Name'
  end
  object edtSurname: TEdit
    Left = 8
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 1
    TextHint = 'Surname'
  end
  object edtEmail: TEdit
    Left = 8
    Top = 66
    Width = 121
    Height = 23
    TabOrder = 2
    TextHint = 'Email'
  end
  object Edit1: TEdit
    Left = 8
    Top = 95
    Width = 121
    Height = 23
    TabOrder = 3
    TextHint = 'Password'
  end
  object rgpGender: TRadioGroup
    Left = 176
    Top = 8
    Width = 185
    Height = 65
    Caption = 'Select a birth gender'
    Items.Strings = (
      'Male'
      'Female')
    TabOrder = 4
  end
  object dtpBirthDate: TDateTimePicker
    Left = 175
    Top = 95
    Width = 186
    Height = 23
    Date = 45531.000000000000000000
    Time = 0.579857326389174000
    TabOrder = 5
  end
  object btnSignUp: TButton
    Left = 136
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Sign Up'
    TabOrder = 6
  end
end
