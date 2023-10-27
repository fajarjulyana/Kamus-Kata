program kamus;

uses
  Forms,
  source in 'src\source.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Kamus Kata';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
