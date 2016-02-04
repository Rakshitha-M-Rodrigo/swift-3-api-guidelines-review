
@available(iOS 8.0, *)
enum NEVPNStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Disconnected
  case Connecting
  case Connected
  case Reasserting
  case Disconnecting
}
@available(iOS 8.0, *)
let NEVPNStatusDidChangeNotification: String
@available(iOS 9.0, *)
let NEVPNConnectionStartOptionUsername: String
@available(iOS 9.0, *)
let NEVPNConnectionStartOptionPassword: String
@available(iOS 8.0, *)
class NEVPNConnection : Object {
  @available(iOS 8.0, *)
  func startVPNTunnel() throws
  @available(iOS 9.0, *)
  func startVPNTunnel(options options: [String : Object]? = [:]) throws
  @available(iOS 8.0, *)
  func stopVPNTunnel()
  @available(iOS 8.0, *)
  var status: NEVPNStatus { get }
  @available(iOS 9.0, *)
  var connectedDate: Date? { get }
  init()
}
