object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 335
  ClientWidth = 510
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 24
    Top = 190
    Width = 441
    Height = 137
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 136
    Top = 145
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 249
    Height = 113
    Caption = 'GroupBox1'
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 136
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 136
    Top = 80
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
  end
  object Button1: TButton
    Left = 24
    Top = 41
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 5
    OnClick = Button1Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\Antonia H' +
      'entrich\Desktop\test\Database1.accdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 448
    Top = 88
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Login')
    Left = 384
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 384
    Top = 56
  end
end
