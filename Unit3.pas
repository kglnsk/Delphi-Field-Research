unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm3 = class(TForm)
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
  Form3: TForm3;

implementation

uses Unit2, Unit9;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
form2.show;
form3.close;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
mathmodel.show;
form3.Close;
end;

end.
