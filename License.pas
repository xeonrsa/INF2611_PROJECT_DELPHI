unit License;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TLicenseForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LicenseForm: TLicenseForm;

implementation

{$R *.dfm}

procedure TLicenseForm.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
