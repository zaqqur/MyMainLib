inherited NewCollectionWizard: TNewCollectionWizard
  Caption = 'MyHomeLib - '#1052#1072#1089#1090#1077#1088' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1082#1086#1083#1083#1077#1082#1094#1080#1080
  ClientWidth = 524
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 540
  TextHeight = 13
  inherited pnButtons: TPanel
    Width = 524
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 514
    inherited btnCancel: TButton
      Left = 410
      ExplicitLeft = 400
    end
    inherited btnForward: TButton
      Left = 316
      ExplicitLeft = 306
    end
    inherited btnBackward: TButton
      Left = 235
      ExplicitLeft = 225
    end
  end
end
