
@available(iOS 9.0, *)
class NWHostEndpoint : NWEndpoint {
  @available(iOS 9.0, *)
  convenience init(hostname: String, port: String)
  @available(iOS 9.0, *)
  var hostname: String { get }
  @available(iOS 9.0, *)
  var port: String { get }
  init()
}
