
@available(OSX 10.10, *)
enum SCNActionTimingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case linear
  case easeIn
  case easeOut
  case easeInEaseOut
}
typealias SCNActionTimingFunction = (Float) -> Float
protocol SCNActionable : NSObjectProtocol {
  @available(OSX 10.10, *)
  func run(action: SCNAction)
  @available(OSX 10.10, *)
  func run(action: SCNAction, completionHandler block: (() -> Void)? = nil)
  @available(OSX 10.10, *)
  func run(action: SCNAction, forKey key: String?)
  @available(OSX 10.10, *)
  func run(action: SCNAction, forKey key: String?, completionHandler block: (() -> Void)? = nil)
  @available(OSX 10.10, *)
  var hasActions: Bool { get }
  @available(OSX 10.10, *)
  func action(forKey key: String) -> SCNAction?
  @available(OSX 10.10, *)
  func removeAction(forKey key: String)
  @available(OSX 10.10, *)
  func removeAllActions()
  @available(OSX 10.10, *)
  var actionKeys: [String] { get }
}
@available(OSX 10.10, *)
class SCNAction : NSObject, NSCopying, NSSecureCoding {
  var duration: NSTimeInterval
  var timingMode: SCNActionTimingMode
  var timingFunction: SCNActionTimingFunction?
  var speed: CGFloat
  func reversed() -> SCNAction
  class func moveBy(x deltaX: CGFloat, y deltaY: CGFloat, z deltaZ: CGFloat, duration: NSTimeInterval) -> SCNAction
  class func move(by delta: SCNVector3, duration: NSTimeInterval) -> SCNAction
  class func move(to location: SCNVector3, duration: NSTimeInterval) -> SCNAction
  class func rotateBy(x xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: NSTimeInterval) -> SCNAction
  class func rotateTo(x xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: NSTimeInterval) -> SCNAction
  class func rotateTo(x xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: NSTimeInterval, shortestUnitArc: Bool) -> SCNAction
  class func rotate(byAngle angle: CGFloat, aroundAxis axis: SCNVector3, duration: NSTimeInterval) -> SCNAction
  class func rotate(toAxisAngle axisAngle: SCNVector4, duration: NSTimeInterval) -> SCNAction
  class func scale(by scale: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func scale(to scale: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func sequence(actions: [SCNAction]) -> SCNAction
  class func group(actions: [SCNAction]) -> SCNAction
  class func repeatAction(action: SCNAction, count: Int) -> SCNAction
  class func repeatForever(action: SCNAction) -> SCNAction
  class func fadeIn(duration sec: NSTimeInterval) -> SCNAction
  class func fadeOut(duration sec: NSTimeInterval) -> SCNAction
  class func fadeOpacity(by factor: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func fadeOpacity(to opacity: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  @available(OSX 10.11, *)
  class func hide() -> SCNAction
  @available(OSX 10.11, *)
  class func unhide() -> SCNAction
  class func wait(forDuration sec: NSTimeInterval) -> SCNAction
  class func wait(forDuration sec: NSTimeInterval, withRange durationRange: NSTimeInterval) -> SCNAction
  class func removeFromParentNode() -> SCNAction
  class func run(block: (SCNNode) -> Void) -> SCNAction
  class func run(block: (SCNNode) -> Void, queue: dispatch_queue_t) -> SCNAction
  class func javaScriptAction(withScript script: String, duration seconds: NSTimeInterval) -> SCNAction
  class func customAction(withDuration seconds: NSTimeInterval, actionBlock block: (SCNNode, CGFloat) -> Void) -> SCNAction
  @available(OSX 10.11, *)
  class func play(source: SCNAudioSource, waitForCompletion wait: Bool) -> SCNAction
  init()
  @available(OSX 10.10, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
