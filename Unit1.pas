unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, CoolTrayIcon, Menus, Buttons, Unit2;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    Tray: TCoolTrayIcon;
    PopupMenu1: TPopupMenu;
    Options: TMenuItem;
    Exit: TMenuItem;
    BtnOptions: TSpeedButton;
    BtnAction: TSpeedButton;
    BtnExit: TSpeedButton;
    procedure Timer1Timer(Sender: TObject);
    procedure ExitClick(Sender: TObject);
    procedure BtnOptionsClick(Sender: TObject);
    procedure BtnActionClick(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure OptionsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Form1.Show;
  Timer1.Enabled := false;
end;

procedure TForm1.ExitClick(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.BtnOptionsClick(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.BtnActionClick(Sender: TObject);
begin
  Form1.Hide;
  Timer1.Interval := Unit2.Form2.getSettings();
  Timer1.Enabled := true;
end;

procedure TForm1.BtnExitClick(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.OptionsClick(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Timer1.Interval := Unit2.Form2.getSettings();
end;

end.
