program eyes_keeper;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'eyes';
  Application.CreateForm(TForm1, Form1);
  //Form1.Hide;
  Application.Run;
end.
