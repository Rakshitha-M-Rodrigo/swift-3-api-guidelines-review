
enum NSPathStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case standard
  case popUp
}
@available(OSX 10.5, *)
class NSPathCell : NSActionCell, NSOpenSavePanelDelegate {
  var pathStyle: NSPathStyle
  @NSCopying var url: NSURL?
  func setObjectValue(obj: NSCopying?)
  var allowedTypes: [String]?
  unowned(unsafe) var delegate: @sil_unmanaged NSPathCellDelegate?
  class func pathComponentCellClass() -> AnyClass
  var pathComponentCells: [NSPathComponentCell]
  func rectOf(cell: NSPathComponentCell, withFrame frame: NSRect, in view: NSView) -> NSRect
  func pathComponentCell(at point: NSPoint, withFrame frame: NSRect, in view: NSView) -> NSPathComponentCell?
  var clickedPathComponentCell: NSPathComponentCell? { get }
  func mouseEntered(event: NSEvent, withFrame frame: NSRect, in view: NSView)
  func mouseExited(event: NSEvent, withFrame frame: NSRect, in view: NSView)
  var doubleAction: Selector
  @NSCopying var backgroundColor: NSColor?
  var placeholderString: String?
  @NSCopying var placeholderAttributedString: NSAttributedString?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.6, *)
  func panel(sender: AnyObject, shouldEnable url: NSURL) -> Bool
  @available(OSX 10.6, *)
  func panel(sender: AnyObject, validate url: NSURL) throws
  @available(OSX 10.6, *)
  func panel(sender: AnyObject, didChangeToDirectoryURL url: NSURL?)
  @available(OSX 10.5, *)
  func panel(sender: AnyObject, userEnteredFilename filename: String, confirmed okFlag: Bool) -> String?
  @available(OSX 10.5, *)
  func panel(sender: AnyObject, willExpand expanding: Bool)
  @available(OSX 10.5, *)
  func panelSelectionDidChange(sender: AnyObject?)
}
protocol NSPathCellDelegate : NSObjectProtocol {
  @available(OSX 10.5, *)
  optional func pathCell(pathCell: NSPathCell, willDisplay openPanel: NSOpenPanel)
  @available(OSX 10.5, *)
  optional func pathCell(pathCell: NSPathCell, willPopUp menu: NSMenu)
}
