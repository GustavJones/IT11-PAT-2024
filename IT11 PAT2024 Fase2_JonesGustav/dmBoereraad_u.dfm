object dmBoereraad: TdmBoereraad
  Height = 480
  Width = 640
  object conBoereraad: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=BoereRaadDB.mdb;Mod' +
      'e=ReadWrite;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 120
    Top = 176
  end
  object tblUser: TADOTable
    Active = True
    Connection = conBoereraad
    CursorType = ctStatic
    TableName = 'tblUser'
    Left = 192
    Top = 176
  end
  object dsrUser: TDataSource
    Left = 256
    Top = 184
  end
end
