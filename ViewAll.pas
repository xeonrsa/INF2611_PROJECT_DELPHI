unit ViewAll;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DB, ADODB, StdCtrls, Menus;

type
  TViewAllForm = class(TForm)
    DBReport: TDBGrid;
    Panel1: TPanel;
    btnTestToCome: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    popupReports: TPopupMenu;
    Edit1: TMenuItem;
    Delete1: TMenuItem;
    View1: TMenuItem;
    Sort1: TMenuItem;
    Name1: TMenuItem;
    Date1: TMenuItem;
    Result1: TMenuItem;
    procedure btnTestToComeClick(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewAllForm: TViewAllForm;

implementation

{$R *.dfm}

Uses
  DBS, Main;

procedure TViewAllForm.btnTestToComeClick(Sender: TObject);
begin
  // Refresh Ado Comp
  DBases.Tests.Close;
  DBases.Tests.Open;
  // Link Ado comp to db grid
  ViewAllForm.DBReport.DataSource := DBases.Tests_Data;
end;

procedure TViewAllForm.Edit1Click(Sender: TObject);
begin
  // Place ADO Comp in edit more
  DBases.Tests.Edit;
  // Assign New value from inputbox to field
  DBases.TestsName.Value := InputBox('Edit Name','New Name?','');
  // Add To Log
  AddToLog('EDIT', DBases.TestsRecID.AsString);
  // Post change to table
  DBases.Tests.Post;
  // Refresh table / Comp
  DBases.Tests.Close;
  DBases.Tests.Open;
end;

procedure TViewAllForm.Delete1Click(Sender: TObject);
begin
  // Confirm if user wishes to delete record
  If MessageDlg('Are you sure you wish to delete this record?',mtConfirmation,[mbYes,mbNo],0) = mrYes Then Begin
  // Add To Log
  AddToLog('DELETE', DBases.TestsIDNo.Value);
  // Delete record // automitcally posts to table
    DBases.Tests.Delete;
  End;
  // Refresh table / Comp
  DBases.Tests.Close;
  DBases.Tests.Open;
end;

end.
