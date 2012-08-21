object Form1: TForm1
  Left = 265
  Top = 359
  Width = 632
  Height = 355
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 264
    Top = 96
    Width = 65
    Height = 17
    DataField = 'HORA'
    DataSource = DataSource1
  end
  object Label1: TLabel
    Left = 264
    Top = 56
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Button1: TButton
    Left = 256
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 296
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=5.108.175.106:D:\Easy System News\DATA.FDB'
      'RoleName=RoleName'
      'User_Name=SYSDBA'
      'Password=juan173mateo69'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=True')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 128
    Top = 104
  end
  object SimpleDataSet1: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'SELECT CURRENT_TIME AS HORA, CURRENT_DATE AS FECHA FROM ALEATORI' +
      'O'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 304
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = SimpleDataSet1
    Left = 136
    Top = 184
  end
end
