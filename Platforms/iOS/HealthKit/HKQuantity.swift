
@available(iOS 8.0, *)
class HKQuantity : NSObject, NSSecureCoding, NSCopying {
  convenience init(unit unit: HKUnit, doubleValue value: Double)
  func isCompatibleWith(_ unit: HKUnit) -> Bool
  func doubleValue(for unit: HKUnit) -> Double
  func compare(_ quantity: HKQuantity) -> NSComparisonResult
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
