unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Samples.Spin;

type
//============================EMPLOYEE CLASS
  Employee = class
    private
      _name : string;
      _age : integer;
      _isFired : boolean;
    public
      Constructor New(name : string; age: integer; isFired : boolean);Overload;
      Constructor New(edtName:TEdit; edtAge : TSpinEdit; cbIsFired : TCheckBox);Overload;
      function GetName():string;
      function GetAge():integer;
      function GetIsFired():boolean;
  end;
//========================================
  TfMain = class(TForm)
    btnShow: TSpeedButton;
    mmoOutput: TDBMemo;
    edtName: TEdit;
    cbIsFired: TCheckBox;
    edtAge: TSpinEdit;
    procedure btnShowClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
//========================================


var
  fMain: TfMain;
  emp_dull,emp_processed,emp_direct : Employee;
  emp_arrr : array [0..2] of Employee;

implementation

{$R *.dfm}

constructor Employee.New(name: string; age: Integer; isFired: Boolean);
begin
  self._name:=name;
  self._age:=age;
  self._isFired := isFired;
end;

constructor Employee.New(edtName:TEdit; edtAge : TSpinEdit; cbIsFired : TCheckBox);
begin
  self._name:=edtName.Text;
  self._age:=edtAge.Value;
  self._isFired := cbIsFired.Checked;
end;

function Employee.GetName():string;
begin
  result := self._name;
end;

function Employee.GetAge():integer;
begin
  result := self._age;
end;

function Employee.GetIsFired():boolean;
begin
  result := self._isFired;
end;
//============================================


procedure TfMain.btnShowClick(Sender: TObject);
begin
  emp_dull := Employee.New('Vova',12,false);
  emp_processed := Employee.New(fMain.edtName.Text,fMain.edtAge.Value,fMain.cbIsFired.Checked);
  emp_direct := Employee.New(fMain.edtName,fMain.edtAge,fMain.cbIsFired);

  fMain.mmoOutput.Lines.Add('Emp 1 name: ' + emp_dull.GetName + ' Emp 1 age: ' + INTTOSTR(emp_dull.GetAge) + '  Emp 1 Fired: ' + emp_dull.GetIsFired.ToString());
  fMain.mmoOutput.Lines.Add('Emp 2 name: ' + emp_processed.GetName + ' Emp 2 age: ' + INTTOSTR(emp_processed.GetAge) + '  Emp 2 Fired: ' + emp_processed.GetIsFired.ToString());
  fMain.mmoOutput.Lines.Add('Emp 3 name: ' + emp_direct.GetName + ' Emp 3 age: ' + INTTOSTR(emp_direct.GetAge) + '  Emp 3 Fired: ' + emp_direct.GetIsFired.ToString());



end;

end.
