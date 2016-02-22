
typealias NSSocketNativeHandle = Int32
let NSPortDidBecomeInvalidNotification: String
class NSPort : NSObject, NSCopying, NSCoding {
  func invalidate()
  var isValid: Bool { get }
  func setDelegate(anObject: NSPortDelegate?)
  func delegate() -> NSPortDelegate?
  func schedule(in runLoop: NSRunLoop, forMode mode: String)
  func remove(from runLoop: NSRunLoop, forMode mode: String)
  var reservedSpaceLength: Int { get }
  func send(before limitDate: NSDate, components: NSMutableArray?, from receivePort: NSPort?, reserved headerSpaceReserved: Int) -> Bool
  func send(before limitDate: NSDate, msgid msgID: Int, components: NSMutableArray?, from receivePort: NSPort?, reserved headerSpaceReserved: Int) -> Bool
  init()
  func copy(with zone: NSZone = nil) -> AnyObject
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol NSPortDelegate : NSObjectProtocol {
}
class NSMachPort : NSPort {
  class func port(withMachPort machPort: UInt32) -> NSPort
  init(machPort: UInt32)
  func setDelegate(anObject: NSMachPortDelegate?)
  func delegate() -> NSMachPortDelegate?
  @available(watchOS 2.0, *)
  class func port(withMachPort machPort: UInt32, options f: NSMachPortOptions = []) -> NSPort
  @available(watchOS 2.0, *)
  init(machPort: UInt32, options f: NSMachPortOptions = [])
  var machPort: UInt32 { get }
  func schedule(in runLoop: NSRunLoop, forMode mode: String)
  func remove(from runLoop: NSRunLoop, forMode mode: String)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
struct NSMachPortOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var deallocateNone: NSMachPortOptions { get }
  static var deallocateSendRight: NSMachPortOptions { get }
  static var deallocateReceiveRight: NSMachPortOptions { get }
}
protocol NSMachPortDelegate : NSPortDelegate {
  optional func handleMachMessage(msg: UnsafeMutablePointer<Void>)
}
class NSMessagePort : NSPort {
  init()
  init?(coder aDecoder: NSCoder)
}
