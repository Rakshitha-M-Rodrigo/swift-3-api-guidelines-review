
@available(OSX 10.11, *)
enum NWTCPConnectionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Connecting
  case Waiting
  case Connected
  case Disconnected
  case Cancelled
}
@available(OSX 10.11, *)
class NWTCPConnection : Object {
  @available(OSX 10.11, *)
  init(upgradeFor connection: NWTCPConnection)
  @available(OSX 10.11, *)
  var state: NWTCPConnectionState { get }
  @available(OSX 10.11, *)
  var isViable: Bool { get }
  @available(OSX 10.11, *)
  var hasBetterPath: Bool { get }
  @available(OSX 10.11, *)
  var endpoint: NWEndpoint { get }
  @available(OSX 10.11, *)
  var connectedPath: NWPath? { get }
  @available(OSX 10.11, *)
  var localAddress: NWEndpoint? { get }
  @available(OSX 10.11, *)
  var remoteAddress: NWEndpoint? { get }
  @available(OSX 10.11, *)
  var txtRecord: Data? { get }
  @available(OSX 10.11, *)
  var error: Error? { get }
  @available(OSX 10.11, *)
  func cancel()
  @available(OSX 10.11, *)
  func readLength(length: Int, completionHandler completion: (Data?, Error?) -> Void)
  @available(OSX 10.11, *)
  func readMinimumLength(minimum: Int, maximumLength maximum: Int, completionHandler completion: (Data?, Error?) -> Void)
  @available(OSX 10.11, *)
  func write(data: Data, completionHandler completion: (Error?) -> Void)
  @available(OSX 10.11, *)
  func writeClose()
  init()
}
protocol NWTCPConnectionAuthenticationDelegate : ObjectProtocol {
  @available(OSX 10.11, *)
  optional func shouldProvideIdentityFor(connection: NWTCPConnection) -> Bool
  @available(OSX 10.11, *)
  optional func provideIdentityFor(connection: NWTCPConnection, completionHandler completion: (SecIdentity, [AnyObject]) -> Void)
  @available(OSX 10.11, *)
  optional func shouldEvaluateTrustFor(connection: NWTCPConnection) -> Bool
  @available(OSX 10.11, *)
  optional func evaluateTrustFor(connection: NWTCPConnection, peerCertificateChain: [AnyObject], completionHandler completion: (SecTrust) -> Void)
}
