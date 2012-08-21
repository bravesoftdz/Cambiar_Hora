object Form1: TForm1
  Left = 362
  Top = 231
  Width = 493
  Height = 228
  Caption = 'Form1'
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 360
    Top = 40
    Width = 65
    Height = 17
    DataField = 'HORA'
    DataSource = DataSource1
    Visible = False
  end
  object Label1: TLabel
    Left = 376
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Label1'
    Visible = False
  end
  object DBText2: TDBText
    Left = 360
    Top = 64
    Width = 65
    Height = 17
    DataField = 'FECHA'
    DataSource = DataSource1
    Visible = False
  end
  object Label2: TLabel
    Left = 116
    Top = 85
    Width = 271
    Height = 24
    Caption = 'Actualizando Fecha y Hora...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16744448
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bt1: TButton
    Left = 352
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Bt1'
    TabOrder = 0
    Visible = False
    OnClick = Bt1Click
  end
  object Bt2: TButton
    Left = 352
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Bt2'
    TabOrder = 1
    Visible = False
    OnClick = Bt2Click
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
    Left = 32
    Top = 24
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
    Left = 32
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = SimpleDataSet1
    Left = 32
    Top = 72
  end
end
