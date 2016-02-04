
@available(OSX 10.6, *)
let ODSessionProxyAddress: String
@available(OSX 10.6, *)
let ODSessionProxyPort: String
@available(OSX 10.6, *)
let ODSessionProxyUsername: String
@available(OSX 10.6, *)
let ODSessionProxyPassword: String
class ODSession : Object {
  @available(OSX 10.6, *)
  class func defaultSession() -> ODSession!
  @available(OSX 10.6, *)
  init(options inOptions: [Object : AnyObject]! = [:]) throws
  @available(OSX 10.6, *)
  func nodeNames() throws -> [AnyObject]
  @available(OSX 10.9, *)
  var configurationTemplateNames: [AnyObject]! { get }
  @available(OSX 10.9, *)
  var mappingTemplateNames: [AnyObject]! { get }
  @available(OSX 10.9, *)
  func configurationForNodename(nodename: String!) -> ODConfiguration!
  init()
}
