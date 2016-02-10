
struct DataReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var dataReadingMappedIfSafe: DataReadingOptions { get }
  static var dataReadingUncached: DataReadingOptions { get }
  @available(iOS 5.0, *)
  static var dataReadingMappedAlways: DataReadingOptions { get }
  static var dataReadingMapped: DataReadingOptions { get }
  static var mappedRead: DataReadingOptions { get }
  static var uncachedRead: DataReadingOptions { get }
}
struct DataWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var dataWritingAtomic: DataWritingOptions { get }
  @available(iOS 6.0, *)
  static var dataWritingWithoutOverwriting: DataWritingOptions { get }
  @available(iOS 4.0, *)
  static var dataWritingFileProtectionNone: DataWritingOptions { get }
  @available(iOS 4.0, *)
  static var dataWritingFileProtectionComplete: DataWritingOptions { get }
  @available(iOS 5.0, *)
  static var dataWritingFileProtectionCompleteUnlessOpen: DataWritingOptions { get }
  @available(iOS 5.0, *)
  static var dataWritingFileProtectionCompleteUntilFirstUserAuthentication: DataWritingOptions { get }
  @available(iOS 4.0, *)
  static var dataWritingFileProtectionMask: DataWritingOptions { get }
  static var atomicWrite: DataWritingOptions { get }
}
@available(iOS 4.0, *)
struct DataSearchOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var backwards: DataSearchOptions { get }
  static var anchored: DataSearchOptions { get }
}
@available(iOS 7.0, *)
struct DataBase64EncodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var encoding64CharacterLineLength: DataBase64EncodingOptions { get }
  static var encoding76CharacterLineLength: DataBase64EncodingOptions { get }
  static var encodingEndLineWithCarriageReturn: DataBase64EncodingOptions { get }
  static var encodingEndLineWithLineFeed: DataBase64EncodingOptions { get }
}
@available(iOS 7.0, *)
struct DataBase64DecodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ignoreUnknownCharacters: DataBase64DecodingOptions { get }
}
class Data : Object, Copying, MutableCopying, SecureCoding {
  var length: Int { get }
  var bytes: UnsafePointer<Void> { get }
  init()
  func copyWith(zone: Zone = nil) -> AnyObject
  func mutableCopyWith(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension Data {
  var description: String { get }
  func getBytes(buffer: UnsafeMutablePointer<Void>, length: Int)
  func getBytes(buffer: UnsafeMutablePointer<Void>, range: NSRange)
  func isEqualTo(other: Data) -> Bool
  func subdataWith(range: NSRange) -> Data
  func writeTo(file path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeTo(url: URL, atomically: Bool) -> Bool
  func writeTo(file path: String, options writeOptionsMask: DataWritingOptions = []) throws
  func writeTo(url: URL, options writeOptionsMask: DataWritingOptions = []) throws
  @available(iOS 4.0, *)
  func rangeOf(dataToFind: Data, options mask: DataSearchOptions = [], range searchRange: NSRange) -> NSRange
  @available(iOS 7.0, *)
  func enumerateByteRanges(block: (UnsafePointer<Void>, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
extension Data {
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(iOS 7.0, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: DataReadingOptions = []) throws
  init(contentsOf url: URL, options readOptionsMask: DataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: URL)
  init(data: Data)
}
extension Data {
  @available(iOS 7.0, *)
  init?(base64EncodedString base64String: String, options: DataBase64DecodingOptions = [])
  @available(iOS 7.0, *)
  func base64EncodedString(options: DataBase64EncodingOptions = []) -> String
  @available(iOS 7.0, *)
  init?(base64EncodedData base64Data: Data, options: DataBase64DecodingOptions = [])
  @available(iOS 7.0, *)
  func base64EncodedData(options: DataBase64EncodingOptions = []) -> Data
}
extension Data {
  @available(iOS, introduced=2.0, deprecated=8.0, message="This method is unsafe because it could potentially cause buffer overruns. Use -getBytes:length: instead.")
  func getBytes(buffer: UnsafeMutablePointer<Void>)
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use +dataWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  class func dataWithContentsOf(mappedFile path: String) -> AnyObject?
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
}
class MutableData : Data {
  var mutableBytes: UnsafeMutablePointer<Void> { get }
  var length: Int
  init()
  init?(coder aDecoder: Coder)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(iOS 7.0, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: DataReadingOptions = []) throws
  init(contentsOf url: URL, options readOptionsMask: DataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: URL)
  init(data: Data)
  @available(iOS 7.0, *)
  init?(base64EncodedString base64String: String, options: DataBase64DecodingOptions = [])
  @available(iOS 7.0, *)
  init?(base64EncodedData base64Data: Data, options: DataBase64DecodingOptions = [])
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
}
extension MutableData {
  func appendBytes(bytes: UnsafePointer<Void>, length: Int)
  func append(other: Data)
  func increaseLengthBy(extraLength: Int)
  func replaceBytesIn(range: NSRange, withBytes bytes: UnsafePointer<Void>)
  func resetBytesIn(range: NSRange)
  func setData(data: Data)
  func replaceBytesIn(range: NSRange, withBytes replacementBytes: UnsafePointer<Void>, length replacementLength: Int)
}
extension MutableData {
  init?(capacity: Int)
  init?(length: Int)
}
@available(iOS 4.0, *)
class PurgeableData : MutableData, DiscardableContent {
  init()
  init?(coder aDecoder: Coder)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(iOS 7.0, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil)
  init(contentsOfFile path: String, options readOptionsMask: DataReadingOptions = []) throws
  init(contentsOf url: URL, options readOptionsMask: DataReadingOptions = []) throws
  init?(contentsOfFile path: String)
  init?(contentsOf url: URL)
  init(data: Data)
  @available(iOS 7.0, *)
  init?(base64EncodedString base64String: String, options: DataBase64DecodingOptions = [])
  @available(iOS 7.0, *)
  init?(base64EncodedData base64Data: Data, options: DataBase64DecodingOptions = [])
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
  init?(capacity: Int)
  init?(length: Int)
  @available(iOS 4.0, *)
  func beginContentAccess() -> Bool
  @available(iOS 4.0, *)
  func endContentAccess()
  @available(iOS 4.0, *)
  func discardContentIfPossible()
  @available(iOS 4.0, *)
  func isContentDiscarded() -> Bool
}