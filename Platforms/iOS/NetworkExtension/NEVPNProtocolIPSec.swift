
@available(iOS 8.0, *)
enum NEVPNIKEAuthenticationMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Certificate
  case SharedSecret
}
@available(iOS 8.0, *)
class NEVPNProtocolIPSec : NEVPNProtocol {
  @available(iOS 8.0, *)
  var authenticationMethod: NEVPNIKEAuthenticationMethod
  @available(iOS 8.0, *)
  var useExtendedAuthentication: Bool
  @available(iOS 8.0, *)
  @NSCopying var sharedSecretReference: Data?
  @available(iOS 8.0, *)
  var localIdentifier: String?
  @available(iOS 8.0, *)
  var remoteIdentifier: String?
  init()
  init?(coder aDecoder: Coder)
}
