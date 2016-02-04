
@available(OSX 10.5, *)
class NSAnimationContext : Object {
  @available(OSX 10.7, *)
  class func runAnimationGroup(changes: (NSAnimationContext) -> Void, completionHandler: (() -> Void)? = nil)
  class func beginGrouping()
  class func endGrouping()
  class func current() -> NSAnimationContext
  var duration: TimeInterval
  @available(OSX 10.7, *)
  var timingFunction: CAMediaTimingFunction?
  @available(OSX 10.7, *)
  var completionHandler: (() -> Void)?
  @available(OSX 10.8, *)
  var allowsImplicitAnimation: Bool
  init()
}
