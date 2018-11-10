unit Learners;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TLearnersForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtName: TEdit;
    edtSurname: TEdit;
    edtIDNo: TEdit;
    deDOB: TDateTimePicker;
    cbxLearnersType: TComboBox;
    deTestDate: TDateTimePicker;
    deTestTime: TDateTimePicker;
    btnLearnersSave: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure btnLearnersSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LearnersForm: TLearnersForm;

implementation

{$R *.dfm}

Uses
  Main;

procedure TLearnersForm.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TLearnersForm.btnLearnersSaveClick(Sender: TObject);
begin
  // Call procedure that schedules test date
  ScheduleNewTest(edtName.Text,edtSurname.Text,edtIDNo.Text,'LEARNERS',cbxLearnersType.Text,deDOB.Date,deTestDate.Date,deTestTime.Time);
  // Return to main menu
  ModalResult := mrOk
end;

end.
