unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  adoquery1.SQL.Text:= 'select * from Login where Benutzername:= p1 and Passwort:= p2';
  adoquery1.Parameters.ParamByName('p1').Value:= Edit1.Text;
  adoquery1.Parameters.ParamByName('p2').Value:= Edit2.Text;
  adoquery1.ExecSQL;
  adoquery1.Open;

  if  adoquery1.FieldByName('Benutzername').AsString<>'' then
    begin
      dbgrid1.Visible:=true;
      dbnavigator1.visible:= true;
      groupbox1.Visible:=false;
    end
  else
    showmessage ('Benutzername oder Passwort ist falsch')

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  dbnavigator1.Visible:= false;
  dbgrid1.Visible:= false;
end;

end.
