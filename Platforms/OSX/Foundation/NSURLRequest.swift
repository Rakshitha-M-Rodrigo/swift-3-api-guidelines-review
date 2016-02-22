
enum NSURLRequestCachePolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case useProtocolCachePolicy
  case reloadIgnoringLocalCacheData
  case reloadIgnoringLocalAndRemoteCacheData
  static var reloadIgnoringCacheData: NSURLRequestCachePolicy { get }
  case returnCacheDataElseLoad
  case returnCacheDataDontLoad
  case reloadRevalidatingCacheData
}
enum NSURLRequestNetworkServiceType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case networkServiceTypeDefault
  case networkServiceTypeVoIP
  case networkServiceTypeVideo
  case networkServiceTypeBackground
  case networkServiceTypeVoice
}
class NSURLRequest : NSObject, NSSecureCoding, NSCopying, NSMutableCopying {
  class func supportsSecureCoding() -> Bool
  convenience init(url URL: NSURL)
  init(url URL: NSURL, cachePolicy: NSURLRequestCachePolicy, timeoutInterval: NSTimeInterval)
  @NSCopying var url: NSURL? { get }
  var cachePolicy: NSURLRequestCachePolicy { get }
  var timeoutInterval: NSTimeInterval { get }
  @NSCopying var mainDocumentURL: NSURL? { get }
  @available(OSX 10.7, *)
  var networkServiceType: NSURLRequestNetworkServiceType { get }
  @available(OSX 10.8, *)
  var allowsCellularAccess: Bool { get }
  convenience init()
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
class NSMutableURLRequest : NSURLRequest {
  @NSCopying var url: NSURL?
  var cachePolicy: NSURLRequestCachePolicy
  var timeoutInterval: NSTimeInterval
  @NSCopying var mainDocumentURL: NSURL?
  @available(OSX 10.7, *)
  var networkServiceType: NSURLRequestNetworkServiceType
  @available(OSX 10.8, *)
  var allowsCellularAccess: Bool
  convenience init(url URL: NSURL)
  init(url URL: NSURL, cachePolicy: NSURLRequestCachePolicy, timeoutInterval: NSTimeInterval)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
extension NSURLRequest {
  var httpMethod: String? { get }
  var allHTTPHeaderFields: [String : String]? { get }
  func value(forHTTPHeaderField field: String) -> String?
  @NSCopying var httpBody: NSData? { get }
  var httpBodyStream: NSInputStream? { get }
  var httpShouldHandleCookies: Bool { get }
  @available(OSX 10.7, *)
  var httpShouldUsePipelining: Bool { get }
}
extension NSMutableURLRequest {
  var httpMethod: String
  var allHTTPHeaderFields: [String : String]?
  func setValue(value: String?, forHTTPHeaderField field: String)
  func addValue(value: String, forHTTPHeaderField field: String)
  @NSCopying var httpBody: NSData?
  var httpBodyStream: NSInputStream?
  var httpShouldHandleCookies: Bool
  @available(OSX 10.7, *)
  var httpShouldUsePipelining: Bool
}
