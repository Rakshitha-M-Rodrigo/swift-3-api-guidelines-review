
enum NSTabState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case SelectedTab
  case BackgroundTab
  case PressedTab
}
class NSTabViewItem : Object, Coding {
  @available(OSX 10.10, *)
  convenience init(viewController: NSViewController)
  init(identifier: AnyObject)
  var identifier: AnyObject
  @NSCopying var color: NSColor
  var label: String
  @available(OSX 10.10, *)
  var image: NSImage?
  var view: NSView?
  @available(OSX 10.10, *)
  var viewController: NSViewController?
  var tabState: NSTabState { get }
  var tabView: NSTabView? { get }
  unowned(unsafe) var initialFirstResponder: @sil_unmanaged NSView?
  @available(OSX 10.6, *)
  var toolTip: String?
  func drawLabel(shouldTruncateLabel: Bool, in labelRect: Rect)
  func sizeOfLabel(computeMin: Bool) -> Size
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
struct __tviFlags {
  var hasCustomColor: UInt32
  var labelSizeIsValid: UInt32
  var autoGeneratedIFR: UInt32
  var isTabDisabled: UInt32
  var isActive: UInt32
  var RESERVED: UInt32
  init()
  init(hasCustomColor: UInt32, labelSizeIsValid: UInt32, autoGeneratedIFR: UInt32, isTabDisabled: UInt32, isActive: UInt32, RESERVED: UInt32)
}
