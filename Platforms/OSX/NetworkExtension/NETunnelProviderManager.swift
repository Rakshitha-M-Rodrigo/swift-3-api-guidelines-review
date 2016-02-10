
@available(OSX 10.11, *)
class NETunnelProviderManager : NEVPNManager {
  @available(OSX 10.11, *)
  class func loadAllFromPreferences(completionHandler completionHandler: ([NETunnelProviderManager]?, Error?) -> Void)
  @available(OSX 10.11, *)
  func copyAppRules() -> [NEAppRule]?
  @available(OSX 10.11, *)
  var routingMethod: NETunnelProviderRoutingMethod { get }
  init()
}