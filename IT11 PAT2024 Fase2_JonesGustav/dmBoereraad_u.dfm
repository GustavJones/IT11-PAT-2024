object dmBoereraad: TdmBoereraad
  Height = 480
  Width = 640
  object conBoereraad: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=BoereRaadDB.mdb;Mod' +
      'e=ReadWrite;Persist Security Info=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 120
    Top = 176
  end
  object tblUser: TADOTable
    Connection = conBoereraad
    CursorType = ctStatic
    TableName = 'tblUser'
    Left = 192
    Top = 176
  end
  object dsrUser: TDataSource
    Left = 192
    Top = 240
  end
  object dsrRemedy: TDataSource
    Left = 256
    Top = 240
  end
  object tblRemedy: TADOTable
    Connection = conBoereraad
    CursorType = ctStatic
    TableName = 'tblUser'
    Left = 256
    Top = 176
  end
end
