
struct NSPropertyListMutabilityOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var immutable: NSPropertyListMutabilityOptions { get }
  static var mutableContainers: NSPropertyListMutabilityOptions { get }
  static var mutableContainersAndLeaves: NSPropertyListMutabilityOptions { get }
}
enum NSPropertyListFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case openStepFormat
  case xmlFormat_v1_0
  case binaryFormat_v1_0
}
typealias NSPropertyListReadOptions = NSPropertyListMutabilityOptions
typealias NSPropertyListWriteOptions = Int
class NSPropertyListSerialization : NSObject {
  class func propertyList(plist: AnyObject, isValidFor format: NSPropertyListFormat) -> Bool
  @available(watchOS 2.0, *)
  class func data(withPropertyList plist: AnyObject, format: NSPropertyListFormat, options opt: NSPropertyListWriteOptions) throws -> NSData
  @available(watchOS 2.0, *)
  class func writePropertyList(plist: AnyObject, to stream: NSOutputStream, format: NSPropertyListFormat, options opt: NSPropertyListWriteOptions, error: NSErrorPointer) -> Int
  @available(watchOS 2.0, *)
  class func propertyList(with data: NSData, options opt: NSPropertyListReadOptions = [], format: UnsafeMutablePointer<NSPropertyListFormat>) throws -> AnyObject
  @available(watchOS 2.0, *)
  class func propertyList(with stream: NSInputStream, options opt: NSPropertyListReadOptions = [], format: UnsafeMutablePointer<NSPropertyListFormat>) throws -> AnyObject
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use dataWithPropertyList:format:options:error: instead.")
  class func data(fromPropertyList plist: AnyObject, format: NSPropertyListFormat, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> NSData?
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use propertyListWithData:options:format:error: instead.")
  class func propertyList(from data: NSData, mutabilityOption opt: NSPropertyListMutabilityOptions = [], format: UnsafeMutablePointer<NSPropertyListFormat>, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> AnyObject?
  init()
}
