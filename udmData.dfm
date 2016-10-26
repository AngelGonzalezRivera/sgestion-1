object dmData: TdmData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 386
  Width = 518
  object cntData: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = 'localhost'
    Port = 0
    Database = 'C:\AppData\SGESTION.FDB'
    User = 'sysdba'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 24
    Top = 8
  end
  object dsCatalogo: TDataSource
    DataSet = cdsCatalogo
    Left = 24
    Top = 200
  end
  object dspCatalogo: TDataSetProvider
    DataSet = qryCatalogo
    Left = 24
    Top = 104
  end
  object cdsCatalogo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCatalogo'
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsNewRecord
    Left = 24
    Top = 152
  end
  object qryCatalogo: TZQuery
    Connection = cntData
    Params = <>
    Left = 24
    Top = 56
  end
  object dsFamilias: TDataSource
    DataSet = cdsFamilias
    Left = 96
    Top = 200
  end
  object dspFamilias: TDataSetProvider
    DataSet = qryFamilias
    Left = 96
    Top = 104
  end
  object cdsFamilias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFamilias'
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsNewRecord
    Left = 96
    Top = 152
  end
  object qryFamilias: TZQuery
    Connection = cntData
    SQL.Strings = (
      'select * from familias')
    Params = <>
    Left = 96
    Top = 56
  end
end
