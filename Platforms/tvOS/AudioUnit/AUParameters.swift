
typealias AUValue = Float
typealias AUParameterAddress = UInt64
struct AURecordedParameterEvent {
  var hostTime: UInt64
  var address: AUParameterAddress
  var value: AUValue
  init()
  init(hostTime: UInt64, address: AUParameterAddress, value: AUValue)
}
typealias AUParameterObserver = (AUParameterAddress, AUValue) -> Void
typealias AUParameterRecordingObserver = (Int, UnsafePointer<AURecordedParameterEvent>) -> Void
typealias AUParameterObserverToken = UnsafeMutablePointer<Void>
@available(tvOS 9.0, *)
class AUParameterNode : NSObject {
  var identifier: String { get }
  var keyPath: String { get }
  var displayName: String { get }
  func displayName(length maximumLength: Int) -> String
  func token(byAddingParameterObserver observer: AUParameterObserver) -> AUParameterObserverToken
  func token(byAddingParameterRecordingObserver observer: AUParameterRecordingObserver) -> AUParameterObserverToken
  func removeParameterObserver(token: AUParameterObserverToken)
  init()
}
@available(tvOS 9.0, *)
class AUParameterGroup : AUParameterNode, NSSecureCoding {
  var children: [AUParameterNode] { get }
  var allParameters: [AUParameter] { get }
  init()
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 9.0, *)
class AUParameterTree : AUParameterGroup, NSSecureCoding {
  func parameter(withAddress address: AUParameterAddress) -> AUParameter?
  func parameter(withID paramID: AudioUnitParameterID, scope: AudioUnitScope, element: AudioUnitElement) -> AUParameter?
  init()
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 9.0, *)
class AUParameter : AUParameterNode, NSSecureCoding {
  var minValue: AUValue { get }
  var maxValue: AUValue { get }
  var unit: AudioUnitParameterUnit { get }
  var unitName: String? { get }
  var flags: AudioUnitParameterOptions { get }
  var address: AUParameterAddress { get }
  var valueStrings: [String]? { get }
  var dependentParameters: [NSNumber]? { get }
  var value: AUValue
  func setValue(value: AUValue, originator: AUParameterObserverToken)
  func setValue(value: AUValue, originator: AUParameterObserverToken, atHostTime hostTime: UInt64)
  func string(fromValue value: UnsafePointer<AUValue>) -> String
  func value(from string: String) -> AUValue
  init()
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
