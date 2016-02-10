
class SCNetworkReachability {
}
struct SCNetworkReachabilityContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)?
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?, release: (@convention(c) (UnsafePointer<Void>) -> Void)?, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?)
}
struct SCNetworkReachabilityFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var transientConnection: SCNetworkReachabilityFlags { get }
  static var reachable: SCNetworkReachabilityFlags { get }
  static var connectionRequired: SCNetworkReachabilityFlags { get }
  static var connectionOnTraffic: SCNetworkReachabilityFlags { get }
  static var interventionRequired: SCNetworkReachabilityFlags { get }
  static var connectionOnDemand: SCNetworkReachabilityFlags { get }
  static var isLocalAddress: SCNetworkReachabilityFlags { get }
  static var isDirect: SCNetworkReachabilityFlags { get }
  static var iswwan: SCNetworkReachabilityFlags { get }
  static var connectionAutomatic: SCNetworkReachabilityFlags { get }
}
typealias SCNetworkReachabilityCallBack = @convention(c) (SCNetworkReachability, SCNetworkReachabilityFlags, UnsafeMutablePointer<Void>) -> Void
@available(iOS 2.0, *)
func SCNetworkReachabilityCreateWithAddress(allocator: CFAllocator?, _ address: UnsafePointer<sockaddr>) -> SCNetworkReachability?
@available(iOS 2.0, *)
func SCNetworkReachabilityCreateWithAddressPair(allocator: CFAllocator?, _ localAddress: UnsafePointer<sockaddr>, _ remoteAddress: UnsafePointer<sockaddr>) -> SCNetworkReachability?
@available(iOS 2.0, *)
func SCNetworkReachabilityCreateWithName(allocator: CFAllocator?, _ nodename: UnsafePointer<Int8>) -> SCNetworkReachability?
@available(iOS 2.0, *)
func SCNetworkReachabilityGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func SCNetworkReachabilityGetFlags(target: SCNetworkReachability, _ flags: UnsafeMutablePointer<SCNetworkReachabilityFlags>) -> Bool
@available(iOS 2.0, *)
func SCNetworkReachabilitySetCallback(target: SCNetworkReachability, _ callout: SCNetworkReachabilityCallBack?, _ context: UnsafeMutablePointer<SCNetworkReachabilityContext>) -> Bool
@available(iOS 2.0, *)
func SCNetworkReachabilityScheduleWithRunLoop(target: SCNetworkReachability, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
@available(iOS 2.0, *)
func SCNetworkReachabilityUnscheduleFromRunLoop(target: SCNetworkReachability, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
@available(iOS 4.0, *)
func SCNetworkReachabilitySetDispatchQueue(target: SCNetworkReachability, _ queue: dispatch_queue_t?) -> Bool