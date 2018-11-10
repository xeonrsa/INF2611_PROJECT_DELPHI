object DBases: TDBases
  OldCreateOrder = False
  Left = 236
  Top = 115
  Height = 385
  Width = 282
  object Reports: TADOQuery
    Connection = GYL
    Parameters = <>
    Left = 24
    Top = 56
  end
  object GYL: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=GYL;Data Source=XEON-GAMING\SQLEXPRESS0' +
      '1'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 8
  end
  object Users: TADOQuery
    Connection = GYL
    Parameters = <>
    SQL.Strings = (
      'Select * from Users')
    Left = 24
    Top = 104
    object UsersRecID: TAutoIncField
      FieldName = 'RecID'
      ReadOnly = True
    end
    object UsersUsername: TStringField
      FieldName = 'Username'
      Size = 50
    end
    object UsersPassword: TStringField
      FieldName = 'Password'
      Size = 50
    end
    object UsersAdministrator: TBooleanField
      FieldName = 'Administrator'
    end
  end
  object TestTypes: TADOQuery
    Connection = GYL
    Parameters = <>
    SQL.Strings = (
      'Select * from TestTypes')
    Left = 24
    Top = 200
    object TestTypesRecID: TAutoIncField
      FieldName = 'RecID'
      ReadOnly = True
    end
    object TestTypesLearnerOrLicense: TStringField
      FieldName = 'LearnerOrLicense'
      Size = 50
    end
    object TestTypesTestType: TStringField
      FieldName = 'TestType'
      Size = 50
    end
    object TestTypesMinPassRate: TFloatField
      FieldName = 'MinPassRate'
    end
  end
  object Tests: TADOQuery
    Connection = GYL
    Parameters = <>
    SQL.Strings = (
      'Select * from Tests')
    Left = 24
    Top = 152
    object TestsRecID: TAutoIncField
      FieldName = 'RecID'
      ReadOnly = True
    end
    object TestsName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object TestsSurname: TStringField
      FieldName = 'Surname'
      Size = 50
    end
    object TestsDateOfBirth: TDateTimeField
      FieldName = 'DateOfBirth'
    end
    object TestsIDNo: TStringField
      FieldName = 'IDNo'
      Size = 13
    end
    object TestsLearnersOrLicense: TStringField
      FieldName = 'LearnersOrLicense'
      Size = 50
    end
    object TestsTestType: TStringField
      FieldName = 'TestType'
      Size = 50
    end
    object TestsTestDate: TDateTimeField
      FieldName = 'TestDate'
    end
    object TestsTestTime: TWideStringField
      FieldName = 'TestTime'
      Size = 16
    end
    object TestsResult: TFloatField
      FieldName = 'Result'
    end
  end
  object Reports_Data: TDataSource
    DataSet = Reports
    Left = 96
    Top = 56
  end
  object Users_Data: TDataSource
    DataSet = Users
    Left = 96
    Top = 104
  end
  object Tests_Data: TDataSource
    DataSet = Tests
    Left = 96
    Top = 152
  end
  object TestTypes_Data: TDataSource
    DataSet = TestTypes
    Left = 96
    Top = 200
  end
  object Log: TADOQuery
    Connection = GYL
    Parameters = <>
    SQL.Strings = (
      'Select * From Log')
    Left = 24
    Top = 256
    object LogRecID: TAutoIncField
      FieldName = 'RecID'
      ReadOnly = True
    end
    object LogDate: TDateTimeField
      FieldName = 'Date'
    end
    object LogUser: TStringField
      FieldName = 'User'
      Size = 50
    end
    object LogAction: TStringField
      FieldName = 'Action'
      Size = 50
    end
    object LogDetail: TMemoField
      FieldName = 'Detail'
      BlobType = ftMemo
    end
  end
  object Log_Data: TDataSource
    DataSet = Log
    Left = 96
    Top = 248
  end
end
