unit DBS;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDBases = class(TDataModule)
    Reports: TADOQuery;
    GYL: TADOConnection;
    Users: TADOQuery;
    TestTypes: TADOQuery;
    Tests: TADOQuery;
    Reports_Data: TDataSource;
    Users_Data: TDataSource;
    Tests_Data: TDataSource;
    TestTypes_Data: TDataSource;
    UsersRecID: TAutoIncField;
    UsersUsername: TStringField;
    UsersPassword: TStringField;
    UsersAdministrator: TBooleanField;
    TestsRecID: TAutoIncField;
    TestsName: TStringField;
    TestsSurname: TStringField;
    TestsDateOfBirth: TDateTimeField;
    TestsIDNo: TStringField;
    TestsLearnersOrLicense: TStringField;
    TestsTestType: TStringField;
    TestsTestDate: TDateTimeField;
    TestsTestTime: TWideStringField;
    TestsResult: TFloatField;
    TestTypesRecID: TAutoIncField;
    TestTypesLearnerOrLicense: TStringField;
    TestTypesTestType: TStringField;
    TestTypesMinPassRate: TFloatField;
    Log: TADOQuery;
    Log_Data: TDataSource;
    LogRecID: TAutoIncField;
    LogDate: TDateTimeField;
    LogUser: TStringField;
    LogAction: TStringField;
    LogDetail: TMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DBases: TDBases;

implementation

{$R *.dfm}

end.
