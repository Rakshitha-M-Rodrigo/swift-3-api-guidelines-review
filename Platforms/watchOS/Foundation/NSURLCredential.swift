
enum NSURLCredentialPersistence : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case forSession
  case permanent
  @available(watchOS 2.0, *)
  case synchronizable
}
class NSURLCredential : NSObject, NSSecureCoding, NSCopying {
  var persistence: NSURLCredentialPersistence { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
}
extension NSURLCredential {
  init(user: String, password: String, persistence: NSURLCredentialPersistence)
  var user: String? { get }
  var password: String? { get }
  var hasPassword: Bool { get }
}
extension NSURLCredential {
  @available(watchOS 2.0, *)
  init(identity: SecIdentity, certificates certArray: [AnyObject]?, persistence: NSURLCredentialPersistence)
  var identity: SecIdentity? { get }
  @available(watchOS 2.0, *)
  var certificates: [AnyObject] { get }
}
extension NSURLCredential {
  @available(watchOS 2.0, *)
  init(trust: SecTrust)
  @available(watchOS 2.0, *)
  /*not inherited*/ init(for trust: SecTrust)
}
