
@available(iOS 8.0, *)
class HKUnit : Object, SecureCoding, Copying {
  var unitString: String { get }
  convenience init(from string: String)
  convenience init(from massFormatterUnit: MassFormatterUnit)
  class func massFormatterUnitFrom(unit: HKUnit) -> MassFormatterUnit
  convenience init(from lengthFormatterUnit: LengthFormatterUnit)
  class func lengthFormatterUnitFrom(unit: HKUnit) -> LengthFormatterUnit
  convenience init(from energyFormatterUnit: EnergyFormatterUnit)
  class func energyFormatterUnitFrom(unit: HKUnit) -> EnergyFormatterUnit
  func isNull() -> Bool
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
enum HKMetricPrefix : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Pico
  case Nano
  case Micro
  case Milli
  case Centi
  case Deci
  case Deca
  case Hecto
  case Kilo
  case Mega
  case Giga
  case Tera
}
extension HKUnit {
  class func gramUnitWith(prefix: HKMetricPrefix) -> Self
  class func gram() -> Self
  class func ounce() -> Self
  class func pound() -> Self
  class func stone() -> Self
  class func moleUnitWith(prefix: HKMetricPrefix, molarMass gramsPerMole: Double) -> Self
  class func moleUnitWithMolarMass(gramsPerMole: Double) -> Self
}
extension HKUnit {
  class func meterUnitWith(prefix: HKMetricPrefix) -> Self
  class func meter() -> Self
  class func inch() -> Self
  class func foot() -> Self
  @available(iOS 9.0, *)
  class func yard() -> Self
  class func mile() -> Self
}
extension HKUnit {
  class func literUnitWith(prefix: HKMetricPrefix) -> Self
  class func liter() -> Self
  class func fluidOunceUS() -> Self
  class func fluidOunceImperial() -> Self
  class func pintUS() -> Self
  class func pintImperial() -> Self
  @available(iOS 9.0, *)
  class func cupUS() -> Self
  @available(iOS 9.0, *)
  class func cupImperial() -> Self
}
extension HKUnit {
  class func pascalUnitWith(prefix: HKMetricPrefix) -> Self
  class func pascal() -> Self
  class func millimeterOfMercury() -> Self
  class func centimeterOfWater() -> Self
  class func atmosphere() -> Self
}
extension HKUnit {
  class func secondUnitWith(prefix: HKMetricPrefix) -> Self
  class func second() -> Self
  class func minute() -> Self
  class func hour() -> Self
  class func day() -> Self
}
extension HKUnit {
  class func jouleUnitWith(prefix: HKMetricPrefix) -> Self
  class func joule() -> Self
  class func calorie() -> Self
  class func kilocalorie() -> Self
}
extension HKUnit {
  class func degreeCelsius() -> Self
  class func degreeFahrenheit() -> Self
  class func kelvin() -> Self
}
extension HKUnit {
  class func siemenUnitWith(prefix: HKMetricPrefix) -> Self
  class func siemen() -> Self
}
extension HKUnit {
  class func count() -> Self
  class func percent() -> Self
}
extension HKUnit {
  func unitMultipliedBy(unit: HKUnit) -> HKUnit
  func unitDividedBy(unit: HKUnit) -> HKUnit
  func unitRaisedToPower(power: Int) -> HKUnit
  func reciprocal() -> HKUnit
}
var HKUnitMolarMassBloodGlucose: Double { get }
