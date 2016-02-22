
enum NSScrollArrowPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case scrollerArrowsMaxEnd
  case scrollerArrowsMinEnd
  static var scrollerArrowsDefaultSetting: NSScrollArrowPosition { get }
  case scrollerArrowsNone
}
enum NSUsableScrollerParts : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case noScrollerParts
  case onlyScrollerArrows
  case allScrollerParts
}
enum NSScrollerPart : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case noPart
  case decrementPage
  case knob
  case incrementPage
  case decrementLine
  case incrementLine
  case knobSlot
}
enum NSScrollerArrow : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case incrementArrow
  case decrementArrow
}
@available(OSX 10.7, *)
enum NSScrollerStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case legacy
  case overlay
}
@available(OSX 10.7, *)
enum NSScrollerKnobStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case dark
  case light
}
class NSScroller : NSControl {
  @available(OSX 10.7, *)
  class func isCompatibleWithOverlayScrollers() -> Bool
  @available(OSX 10.7, *)
  class func scrollerWidth(for controlSize: NSControlSize, scrollerStyle: NSScrollerStyle) -> CGFloat
  @available(OSX 10.7, *)
  class func preferredScrollerStyle() -> NSScrollerStyle
  @available(OSX 10.7, *)
  var scrollerStyle: NSScrollerStyle
  @available(OSX 10.7, *)
  var knobStyle: NSScrollerKnobStyle
  func rect(for partCode: NSScrollerPart) -> NSRect
  func checkSpaceForParts()
  var usableParts: NSUsableScrollerParts { get }
  var arrowsPosition: NSScrollArrowPosition
  var controlTint: NSControlTint
  var controlSize: NSControlSize
  func draw(whichArrow: NSScrollerArrow, highlight flag: Bool)
  func drawKnob()
  func drawKnobSlot(in slotRect: NSRect, highlight flag: Bool)
  func highlight(flag: Bool)
  func testPart(thePoint: NSPoint) -> NSScrollerPart
  func trackKnob(theEvent: NSEvent)
  func trackScrollButtons(theEvent: NSEvent)
  var hitPart: NSScrollerPart { get }
  var knobProportion: CGFloat
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct __sFlags2 {
  var hitPart: UInt32
  var controlSize: UInt32
  var inMaxEnd: UInt32
  var setFloatValueOverridden: UInt32
  var setFloatValueKnobProportionOverridden: UInt32
  var style: UInt32
  var styleCompatibility: UInt32
  var overlayScrollerState: UInt32
  var knobStyle: UInt32
  var sbPaused: UInt32
  var isAnimatingKnob: UInt32
  var isTrackingMouse: UInt32
  var reserved: UInt32
  init()
  init(hitPart: UInt32, controlSize: UInt32, inMaxEnd: UInt32, setFloatValueOverridden: UInt32, setFloatValueKnobProportionOverridden: UInt32, style: UInt32, styleCompatibility: UInt32, overlayScrollerState: UInt32, knobStyle: UInt32, sbPaused: UInt32, isAnimatingKnob: UInt32, isTrackingMouse: UInt32, reserved: UInt32)
}
struct _sFlags {
  var isHoriz: UInt32
  var arrowsLoc: NSScrollArrowPosition
  var partsUsable: NSUsableScrollerParts
  var fine: UInt32
  var needsEnableFlush: UInt32
  var thumbing: UInt32
  var slotDrawn: UInt32
  var knobDrawn: UInt32
  var lit: UInt32
  var knobLit: UInt32
  var reserved: UInt32
  var controlTint: UInt32
  var repeatCount: UInt32
  init()
  init(isHoriz: UInt32, arrowsLoc: NSScrollArrowPosition, partsUsable: NSUsableScrollerParts, fine: UInt32, needsEnableFlush: UInt32, thumbing: UInt32, slotDrawn: UInt32, knobDrawn: UInt32, lit: UInt32, knobLit: UInt32, reserved: UInt32, controlTint: UInt32, repeatCount: UInt32)
}
extension NSScroller {
}
@available(OSX 10.7, *)
let NSPreferredScrollerStyleDidChangeNotification: String
