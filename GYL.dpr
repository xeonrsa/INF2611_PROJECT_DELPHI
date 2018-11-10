program GYL;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  Learners in 'Learners.pas' {LearnersForm},
  License in 'License.pas' {LicenseForm},
  ViewAll in 'ViewAll.pas' {ViewAllForm},
  Setup in 'Setup.pas' {SetupForm},
  About in 'About.pas' {AboutForm},
  DBS in 'DBS.pas' {DBases: TDataModule},
  Password in 'Password.pas' {PasswordForm},
  Media in 'Media.pas' {MediaForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDBases, DBases);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TLearnersForm, LearnersForm);
  Application.CreateForm(TLicenseForm, LicenseForm);
  Application.CreateForm(TViewAllForm, ViewAllForm);
  Application.CreateForm(TSetupForm, SetupForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(TPasswordForm, PasswordForm);
  Application.CreateForm(TMediaForm, MediaForm);
  Application.Run;
end.
