unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Buttons, ADODB;

type
  TMainForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    MainMenu1: TMainMenu;
    Seyup1: TMenuItem;
    Admin1: TMenuItem;
    About1: TMenuItem;
    BitBtn1: TBitBtn;
    estTypes1: TMenuItem;
    Learners1: TMenuItem;
    License1: TMenuItem;
    Log1: TMenuItem;
    utorial1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Log1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure ScheduleNewTest(sntName,sntSurname,sntIDNo,sntLearnersOrLicense,sntType : String; sntDOB,sntTestDate : TDate; sntTestTime : TTime);
  Procedure AddToLog(atlAction : String; atlDetail : WideString);
  Procedure CleanLog;

var
  MainForm: TMainForm;

  gActiveUser : String;
  gAdmin      : Boolean;

implementation

uses Learners, License, DBS, ViewAll;

{$R *.dfm}

procedure TMainForm.Button1Click(Sender: TObject);
begin
  LearnersForm.ShowModal;
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
  LicenseForm.ShowModal;
end;

procedure TMainForm.BitBtn1Click(Sender: TObject);
begin
  Application.Terminate;
end;

{***************** ScheduleNewTest *****************}

Procedure ScheduleNewTest(sntName,sntSurname,sntIDNo,sntLearnersOrLicense,sntType : String; sntDOB,sntTestDate : TDate; sntTestTime : TTime);
Begin
  // Close and open ADO Component 
  DBases.Tests.Close;
  DBases.Tests.Open;

  DBases.Tests.Append;  // Append new record and place ado comp in insert status to allow assign of data to fields
  //DB.TestsRecID // No need as Auto Increment in SQL table
  // Assign required data to relating fields
  DBases.TestsName.Value              := sntName;
  DBases.TestsSurname.Value           := sntSurname;
  DBases.TestsDateOfBirth.Value       := sntDOB;
  DBases.TestsIDNo.Value              := sntIDNo;
  DBases.TestsLearnersOrLicense.Value := sntLearnersOrLicense;
  DBases.TestsTestType.Value          := sntType;
  DBases.TestsTestDate.Value          := sntTestDate;
  DBases.TestsTestTime.Value          := TimeToStr(sntTestTime);
  DBases.TestsResult.Value            := 0; // Set Result 0 as test still needs to be taken
  DBases.Tests.Post;                        // Post Record to table

  // Refresh Table
  DBases.Tests.Close;
  DBases.Tests.Open;

End;

procedure TMainForm.Button3Click(Sender: TObject);
begin
  ViewAllForm.ShowModal;
end;

{***************** AddToLog *****************}

Procedure AddToLog(atlAction : String; atlDetail : WideString);
Begin
  // Refresh Table // Ensure open for append
  DBases.Log.Close;
  DBases.Log.Open;
  // Append new Record
  DBases.Log.Append;
  // Asign Vals to fields
  DBases.LogDate.Value   := Now;
  DBases.LogUser.Value   := gActiveUser;
  DBases.LogAction.Value := atlAction;
  DBases.LogDetail.Value := atlDetail;
  // Post To Table
  DBases.Log.Post;    
  // Refresh Table
  DBases.Log.Close;
  DBases.Log.Open;
End;

{***************** CleanLog *****************}

Procedure CleanLog;
Var
  tQ : TADOQuery;
Begin
  // Create Dynmaic Comp
  tQ := TADOQuery.Create(nil);
  Try
    // Assign Connection to ADO Comp
    tQ.Connection := DBases.GYL;
    // Add SQL text to ADO
    tQ.SQL.Add('Delete Log');
    tQ.SQL.Add('Where Date < DateAdd(YEAR,-1,GetDate())');
    // Excute SQL Text removing all log records older than one year
    tQ.ExecSQL;
  Finally
    // Free Component to prevent mem leaks
    tQ.Free;
  End;
End;


procedure TMainForm.FormCreate(Sender: TObject);
begin
  gActiveUser := 'DEWALD';
  gAdmin      := True;
  CleanLog;
end;

procedure TMainForm.Log1Click(Sender: TObject);
begin
  // Check If Admin
  If Not (gAdmin) Then Exit;
  // Refresh Table/Report
  DBases.Log.Close;
  DBases.Log.Open;
  // Link DBGrid to DataSource
  ViewAllForm.DBReport.DataSource := DBases.Log_Data;
  // Show Report Form
  ViewAllForm.ShowModal;
end;

end.
