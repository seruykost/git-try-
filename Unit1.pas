unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit3, Unit2;

//����� ����

procedure TForm1.Button1Click(Sender: TObject);
begin
form3.visible:=true;
form1.hide;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
form2.visible:=true;
form1.hide;
end;

end.