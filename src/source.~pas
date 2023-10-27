unit source;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
     Dictionary: TStringList;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
 // Fungsi pencarian kamus sederhana
function LookupWord(Word: string): string;
begin
  // Anda dapat menggantikan ini dengan kode untuk mencari kata dalam kamus
  // dan mengembalikan definisinya.
  if Word = 'contoh' then
    Result := 'Ini adalah contoh definisi kata.'
  else
    Result := 'Kata tidak ditemukan dalam kamus.';
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  WordIndex: Integer;
begin
  if Assigned(Dictionary) then
  begin
    WordIndex := Dictionary.IndexOfName(Edit2.Text);
    if WordIndex >= 0 then
      Edit1.Text := Dictionary.ValueFromIndex[WordIndex]
    else
      Edit1.Text := 'Kata tidak ditemukan dalam kamus.';
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
  begin
    Dictionary := TStringList.Create;
    Dictionary.LoadFromFile('list.txt');
  end;

end.
