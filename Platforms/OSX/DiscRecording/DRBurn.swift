
class DRBurn : NSObject {
  /*not inherited*/ init!(for device: DRDevice!)
  init!(device: DRDevice!)
  func writeLayout(layout: AnyObject!)
  func status() -> [NSObject : AnyObject]!
  func abort()
  func properties() -> [NSObject : AnyObject]!
  func setProperties(properties: [NSObject : AnyObject]!)
  func device() -> DRDevice!
  init()
}
extension DRBurn {
  func requestedBurnSpeed() -> Float
  func setRequestedBurnSpeed(speed: Float)
  func appendable() -> Bool
  func setAppendable(appendable: Bool)
  func verifyDisc() -> Bool
  func setVerifyDisc(verify: Bool)
  func completionAction() -> String!
  func setCompletionAction(action: String!)
}
@available(OSX 10.2, *)
let DRBurnRequestedSpeedKey: String
@available(OSX 10.2, *)
let DRBurnAppendableKey: String
@available(OSX 10.3, *)
let DRBurnOverwriteDiscKey: String
@available(OSX 10.2, *)
let DRBurnVerifyDiscKey: String
@available(OSX 10.2, *)
let DRBurnCompletionActionKey: String
@available(OSX 10.2, *)
let DRBurnUnderrunProtectionKey: String
@available(OSX 10.2, *)
let DRBurnTestingKey: String
@available(OSX 10.2, *)
let DRSynchronousBehaviorKey: String
@available(OSX 10.3, *)
let DRBurnFailureActionKey: String
@available(OSX 10.3, *)
let DRMediaCatalogNumberKey: String
@available(OSX 10.4, *)
let DRBurnDoubleLayerL0DataZoneBlocksKey: String
@available(OSX 10.3, *)
let DRBurnStrategyKey: String
@available(OSX 10.3, *)
let DRBurnStrategyIsRequiredKey: String
@available(OSX 10.4, *)
let DRCDTextKey: String
@available(OSX 10.2, *)
let DRBurnCompletionActionEject: String
@available(OSX 10.2, *)
let DRBurnCompletionActionMount: String
@available(OSX 10.3, *)
let DRBurnFailureActionEject: String
@available(OSX 10.3, *)
let DRBurnFailureActionNone: String
@available(OSX 10.3, *)
let DRBurnStrategyCDTAO: String
@available(OSX 10.3, *)
let DRBurnStrategyCDSAO: String
@available(OSX 10.3, *)
let DRBurnStrategyDVDDAO: String
@available(OSX 10.5, *)
let DRBurnStrategyBDDAO: String
@available(OSX 10.2, *)
let DRBurnStatusChangedNotification: String
