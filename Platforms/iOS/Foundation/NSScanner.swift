
class NSScanner : NSObject, NSCopying {
  var string: String { get }
  var scanLocation: Int
  @NSCopying var charactersToBeSkipped: NSCharacterSet?
  var caseSensitive: Bool
  var locale: AnyObject?
  init(string: String)
  convenience init()
  func copy(with zone: NSZone = nil) -> AnyObject
}
extension NSScanner {
  func scanInt(result: UnsafeMutablePointer<Int32>) -> Bool
  @available(iOS 2.0, *)
  func scanInteger(result: UnsafeMutablePointer<Int>) -> Bool
  func scanLongLong(result: UnsafeMutablePointer<Int64>) -> Bool
  @available(iOS 7.0, *)
  func scanUnsignedLongLong(result: UnsafeMutablePointer<UInt64>) -> Bool
  func scanFloat(result: UnsafeMutablePointer<Float>) -> Bool
  func scanDouble(result: UnsafeMutablePointer<Double>) -> Bool
  func scanHexInt(result: UnsafeMutablePointer<UInt32>) -> Bool
  @available(iOS 2.0, *)
  func scanHexLongLong(result: UnsafeMutablePointer<UInt64>) -> Bool
  @available(iOS 2.0, *)
  func scanHexFloat(result: UnsafeMutablePointer<Float>) -> Bool
  @available(iOS 2.0, *)
  func scanHexDouble(result: UnsafeMutablePointer<Double>) -> Bool
  func scanString(string: String, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanCharacters(from set: NSCharacterSet, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUp(to string: String, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpToCharacters(from set: NSCharacterSet, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  var isAtEnd: Bool { get }
  class func localizedScanner(with string: String) -> AnyObject
}
