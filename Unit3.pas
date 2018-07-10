unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Shape1: TShape;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  Fr : Int64 = 0;
  t : Int64 = 0;
  Dt : Extended = 0;
  out : Extended = 0;
  clocks:shortint;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  QueryPerformanceCounter(t);
  out := (t - Dt) / (Fr);
  if Dt = 0 then memo1.Lines.Add('fail') else memo1.Lines.Add(floattostr(out*1000));
  Dt:=0;
  t:=0;
  shape1.Brush.Color:=clred;
  timer2.Enabled:=false;
  clocks:= clocks + 1;
  if clocks = 20 then  begin
    Timer1.Enabled := false;
    Button2.Show;
  end;

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
QueryPerformanceFrequency(Fr);
  if Fr = 0 then begin
    ShowMessage('Ќе удалось получить сведени€ о тактовой частоте.');
    Exit;
  end;
  Timer1.Interval:=(40+Random(60))*100;
  Timer1.Enabled:=true;
  Button2.Hide;
  Memo1.Clear;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TForm3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 	$0D then Button1.Click;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
  shape1.Brush.Color:=cllime;
  QueryPerformanceCounter(t);
  Dt := t;
  Timer1.Interval:=(50+Random(50))*100;
  timer2.Enabled:=true;
end;

procedure TForm3.Timer2Timer(Sender: TObject);
begin
  shape1.Brush.Color:=clred;
  timer2.Enabled:=false;
  memo1.Lines.Add('fail');
  clocks:= clocks + 1;

end;

end.
