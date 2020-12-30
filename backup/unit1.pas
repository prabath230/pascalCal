unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TCalculator }

  TCalculator = class(TForm)
    Button1: TButton;
    Buttonclear: TButton;
    Buttonexit: TButton;
    RadioAdd: TRadioButton;
    Radiomulty: TRadioButton;
    RadioDivide: TRadioButton;
    RadioSub: TRadioButton;
    RadioGroup1: TRadioGroup;
    result_lbl: TLabel;
    sign_lbl: TLabel;
    tedit_n1: TEdit;
    tedit_n2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ButtonclearClick(Sender: TObject);
    procedure ButtonexitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure RadioAddChange(Sender: TObject);
    procedure RadioDivideChange(Sender: TObject);
    procedure RadiomultyChange(Sender: TObject);
    procedure RadioSubChange(Sender: TObject);
  private

  public

  end;

var
  Calculator: TCalculator;

implementation

{$R *.lfm}

{ TCalculator }

procedure TCalculator.Label1Click(Sender: TObject);
begin

end;

procedure TCalculator.RadioAddChange(Sender: TObject);
begin
     sign_lbl.Caption := '+';
end;

procedure TCalculator.RadioDivideChange(Sender: TObject);
begin
  sign_lbl.Caption := '/';
end;

procedure TCalculator.RadiomultyChange(Sender: TObject);
begin
   sign_lbl.Caption := '*';
end;

procedure TCalculator.RadioSubChange(Sender: TObject);
begin
  sign_lbl.Caption := '-';
end;

procedure TCalculator.Button1Click(Sender: TObject);
begin
  try
  if RadioAdd.Checked = True then
  result_lbl.Caption := FloatToStr(StrToFloat(tedit_n1.Text) + StrToFloat(tedit_n2.Text))
  else if Radiomulty.Checked = True then
  result_lbl.Caption := FloatToStr(StrToFloat(tedit_n1.Text) * StrToFloat(tedit_n2.Text))
  else if RadioDivide.Checked = True then
  result_lbl.Caption := FloatToStr(StrToFloat(tedit_n1.Text) / StrToFloat(tedit_n2.Text))
  else if RadioSub.Checked = True then
  result_lbl.Caption := FloatToStr(StrToFloat(tedit_n1.Text) - StrToFloat(tedit_n2.Text))
  else
  ShowMessage('select one option');
  except
    showMessage ('please check your Numbers');
  end;
  end;

procedure TCalculator.ButtonclearClick(Sender: TObject);
begin
    tedit_n1.Clear;
    tedit_n2.Clear;
end;

procedure TCalculator.ButtonexitClick(Sender: TObject);
begin

end;

procedure TCalculator.FormCreate(Sender: TObject);
begin

end;

end.

