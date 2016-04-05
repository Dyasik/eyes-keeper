unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form1.Hide;
  Timer1.Enabled := true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Form1.Show;
  Timer1.Enabled := false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Left := Screen.Width;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  Timer2.Enabled := true;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  Form1.Hide;
  Form1.Left := 200;
  Timer2.Enabled := false;
end;

end.
