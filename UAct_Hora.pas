unit UAct_Hora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, StdCtrls, DBCtrls, DB, DBClient, SimpleDS, SqlExpr, ShellApi;

type
  TForm1 = class(TForm)
    SQLConnection1: TSQLConnection;
    SimpleDataSet1: TSimpleDataSet;
    DBText1: TDBText;
    DataSource1: TDataSource;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    procedure CrearArchivoBat(rutArchivo: string);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  cHora, FormatoHora: String;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
SimpleDataSet1.Open;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Label1.Caption:= FormatDateTime('hh:mm:ss am/pm', now);
if Label1.Caption <> DBText1.Caption then
begin
Label1.Caption:= DBText1.Caption;
cHora:= Label1.Caption;
SetLength(cHora, 8);
FormatoHora:= Label1.Caption;
Delete(FormatoHora, 1, 8);
if FormatoHora = ' p.m.' then
cHora:= cHora + ' pm'
else
cHora:=cHora + ' am';


end;
end;

procedure TForm1.CrearArchivoBat(rutArchivo: string);
 var
   temp: TStrings;
 begin
   temp := TStringList.Create;
   try
     temp.Add('@echo off');
     temp.Add('time ' + cHora);
     temp.SaveToFile(rutArchivo);
   finally
     temp.Free;
   end;
 end;

procedure TForm1.Button2Click(Sender: TObject);
begin
CrearArchivoBat('C:\archivo.bat');
shellexecute(Handle, 'open','c:\archivo.bat',nil,nil,SW_HIDE);
end;

end.
