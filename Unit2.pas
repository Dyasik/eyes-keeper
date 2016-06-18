unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, CoolTrayIcon;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EditH: TEdit;
    Label3: TLabel;
    EditM: TEdit;
    Label4: TLabel;
    EditS: TEdit;
    BtnSave: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormShow(Sender: TObject);
    function getSettings: integer;
    procedure BtnSaveClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form2: TForm2;
  h, m, s: integer;
  settings: textfile;
  time: integer;


implementation

{$R *.dfm}

function TForm2.getSettings: integer;
{
  Reads the 'settings.txt' file and gets the amount of milliseconds from it.
  All (or most) exceptions are handled, if the file or data is bad, new file
  is created.
}
var
  set_found: boolean; // was settings file found or not?
begin
  set_found := true;
  result := 3600000; // to avoid Delphi warning
  AssignFile(settings, 'settings.txt');
  try
    reset(settings);
  except
    on EInOutError do // FILE NOT FOUND
    begin
      ShowMessage('''Settings'' file not found; new file created.');
      set_found := false;
      rewrite(settings);
      writeln(settings, 3600000);
      result := 3600000;
    end;
  end;

  if set_found then
  try
    readln(settings, result);
    if result < 1800000 then raise Exception.Create('Delay time is too small.');
    if result > 7200000 then raise Exception.Create('Delay time is too big.');
  except on e: Exception do
  begin
    ShowMessage('Settings'' content is corrupt: ' + e.Message
    + ' Restored to default.');
    CloseFile(settings);
    rewrite(settings);
    writeln(settings, 3600000);
    result := 3600000;
  end;
  end;

  CloseFile(settings);
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  time := getSettings;

  h := time div 3600000;
  m := (time - h * 3600000) div 60000;
  s := (time - h * 3600000 - m * 60000) div 1000;

  EditH.Text := inttostr(h);
  EditM.Text := inttostr(m);
  EditS.Text := inttostr(s);

end;



procedure TForm2.BtnSaveClick(Sender: TObject);
var
  inp_ok: boolean; // is the input valid?
begin
  inp_ok := true;
  try
    h := strtoint(EditH.Text);
    m := strtoint(EditM.Text);
    s := strtoint(EditS.Text);
    if (h > 2) or (h < 0) then raise Exception.Create('Bad Hours value.');
    if (m > 59) or (m < 0) then raise Exception.Create('Bad Mins value.');
    if (s > 59) or (s < 0) then raise Exception.Create('Bad Secs value.');
    time := h * 3600000 + m * 60000 + s * 1000;
    if time > 7200000 then raise Exception.Create('Delay time is too big!');
    if time < 1800000 then raise Exception.Create('Delay time is too small!');
  except
    on e: Exception do
    begin
      ShowMessage('Bad input: ' + e.Message);
      inp_ok := false;
    end;
  end;

  if inp_ok then // assuming that file is not changed or opened or etc. since
                 // the Form was shown
  begin
    AssignFile(settings, 'settings.txt');
    rewrite(settings);
    writeln(settings, time);
    CloseFile(settings);
    ShowMessage('Settings are successfully changed! Changes will  be applied' +
                ' after the next program showup or when you press ''GOT IT!''.');
    Form2.Close;            
  end;

end;

end.
