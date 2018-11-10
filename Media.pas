unit Media;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer, ExtCtrls;

type
  TMediaForm = class(TForm)
    MediaDisplay: TPanel;
    MediaPlayer1: TMediaPlayer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MediaForm: TMediaForm;

implementation

{$R *.dfm}

end.
