
var foundationVersionNumber: Double
var foundationVersionNumber10_0: Double { get }
var foundationVersionNumber10_1: Double { get }
var foundationVersionNumber10_1_1: Double { get }
var foundationVersionNumber10_1_2: Double { get }
var foundationVersionNumber10_1_3: Double { get }
var foundationVersionNumber10_1_4: Double { get }
var foundationVersionNumber10_2: Double { get }
var foundationVersionNumber10_2_1: Double { get }
var foundationVersionNumber10_2_2: Double { get }
var foundationVersionNumber10_2_3: Double { get }
var foundationVersionNumber10_2_4: Double { get }
var foundationVersionNumber10_2_5: Double { get }
var foundationVersionNumber10_2_6: Double { get }
var foundationVersionNumber10_2_7: Double { get }
var foundationVersionNumber10_2_8: Double { get }
var foundationVersionNumber10_3: Double { get }
var foundationVersionNumber10_3_1: Double { get }
var foundationVersionNumber10_3_2: Double { get }
var foundationVersionNumber10_3_3: Double { get }
var foundationVersionNumber10_3_4: Double { get }
var foundationVersionNumber10_3_5: Double { get }
var foundationVersionNumber10_3_6: Double { get }
var foundationVersionNumber10_3_7: Double { get }
var foundationVersionNumber10_3_8: Double { get }
var foundationVersionNumber10_3_9: Double { get }
var foundationVersionNumber10_4: Double { get }
var foundationVersionNumber10_4_1: Double { get }
var foundationVersionNumber10_4_2: Double { get }
var foundationVersionNumber10_4_3: Double { get }
var foundationVersionNumber10_4_4_Intel: Double { get }
var foundationVersionNumber10_4_4_PowerPC: Double { get }
var foundationVersionNumber10_4_5: Double { get }
var foundationVersionNumber10_4_6: Double { get }
var foundationVersionNumber10_4_7: Double { get }
var foundationVersionNumber10_4_8: Double { get }
var foundationVersionNumber10_4_9: Double { get }
var foundationVersionNumber10_4_10: Double { get }
var foundationVersionNumber10_4_11: Double { get }
var foundationVersionNumber10_5: Double { get }
var foundationVersionNumber10_5_1: Double { get }
var foundationVersionNumber10_5_2: Double { get }
var foundationVersionNumber10_5_3: Double { get }
var foundationVersionNumber10_5_4: Double { get }
var foundationVersionNumber10_5_5: Double { get }
var foundationVersionNumber10_5_6: Double { get }
var foundationVersionNumber10_5_7: Double { get }
var foundationVersionNumber10_5_8: Double { get }
var foundationVersionNumber10_6: Double { get }
var foundationVersionNumber10_6_1: Double { get }
var foundationVersionNumber10_6_2: Double { get }
var foundationVersionNumber10_6_3: Double { get }
var foundationVersionNumber10_6_4: Double { get }
var foundationVersionNumber10_6_5: Double { get }
var foundationVersionNumber10_6_6: Double { get }
var foundationVersionNumber10_6_7: Double { get }
var foundationVersionNumber10_6_8: Double { get }
var foundationVersionNumber10_7: Double { get }
var foundationVersionNumber10_7_1: Double { get }
var foundationVersionNumber10_7_2: Double { get }
var foundationVersionNumber10_7_3: Double { get }
var foundationVersionNumber10_7_4: Double { get }
var foundationVersionNumber10_8: Double { get }
var foundationVersionNumber10_8_1: Double { get }
var foundationVersionNumber10_8_2: Double { get }
var foundationVersionNumber10_8_3: Double { get }
var foundationVersionNumber10_8_4: Double { get }
var foundationVersionNumber10_9: Int32 { get }
var foundationVersionNumber10_9_1: Int32 { get }
var foundationVersionNumber10_9_2: Double { get }
var foundationVersionNumber10_10: Double { get }
var foundationVersionNumber10_10_1: Double { get }
var foundationVersionNumber10_10_2: Double { get }
var foundationVersionNumber10_10_3: Double { get }
var foundationVersionNumber_iPhoneOS_2_0: Double { get }
var foundationVersionNumber_iPhoneOS_2_1: Double { get }
var foundationVersionNumber_iPhoneOS_2_2: Double { get }
var foundationVersionNumber_iPhoneOS_3_0: Double { get }
var foundationVersionNumber_iPhoneOS_3_1: Double { get }
var foundationVersionNumber_iPhoneOS_3_2: Double { get }
var foundationVersionNumber_iOS_4_0: Double { get }
var foundationVersionNumber_iOS_4_1: Double { get }
var foundationVersionNumber_iOS_4_2: Double { get }
var foundationVersionNumber_iOS_4_3: Double { get }
var foundationVersionNumber_iOS_5_0: Double { get }
var foundationVersionNumber_iOS_5_1: Double { get }
var foundationVersionNumber_iOS_6_0: Double { get }
var foundationVersionNumber_iOS_6_1: Double { get }
var foundationVersionNumber_iOS_7_0: Double { get }
var foundationVersionNumber_iOS_7_1: Double { get }
var foundationVersionNumber_iOS_8_0: Double { get }
var foundationVersionNumber_iOS_8_1: Double { get }
var foundationVersionNumber_iOS_8_2: Double { get }
var foundationVersionNumber_iOS_8_3: Double { get }
func stringFromSelector(aSelector: Selector) -> String
func selectorFromString(aSelectorName: String) -> Selector
func stringFromClass(aClass: AnyClass) -> String
func classFromString(aClassName: String) -> AnyClass?
@available(watchOS 2.0, *)
func stringFromProtocol(proto: Protocol) -> String
@available(watchOS 2.0, *)
func protocolFromString(namestr: String) -> Protocol?
func getSizeAndAlignment(typePtr: UnsafePointer<Int8>, _ sizep: UnsafeMutablePointer<Int>, _ alignp: UnsafeMutablePointer<Int>) -> UnsafePointer<Int8>
func logv(format: String, _ args: CVaListPointer)
enum ComparisonResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case OrderedAscending
  case OrderedSame
  case OrderedDescending
}
typealias Comparator = (AnyObject, AnyObject) -> ComparisonResult
struct EnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Concurrent: EnumerationOptions { get }
  static var Reverse: EnumerationOptions { get }
}
struct SortOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Concurrent: SortOptions { get }
  static var Stable: SortOptions { get }
}
@available(watchOS 2.0, *)
enum QualityOfService : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UserInteractive
  case UserInitiated
  case Utility
  case Background
  case Default
}
let notFound: Int
