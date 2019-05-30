object dmRules: TdmRules
  OldCreateOrder = False
  Height = 299
  Width = 436
  object DSServer1: TDSServer
    AutoStart = False
    Left = 224
    Top = 40
  end
  object DSHTTPService1: TDSHTTPService
    Server = DSServer1
    Filters = <>
    AuthenticationManager = DSAuthenticationManager1
    Left = 72
    Top = 112
  end
  object DSAuthenticationManager1: TDSAuthenticationManager
    Roles = <>
    Left = 225
    Top = 193
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    LifeCycle = 'Invocation'
    Left = 360
    Top = 120
  end
end
