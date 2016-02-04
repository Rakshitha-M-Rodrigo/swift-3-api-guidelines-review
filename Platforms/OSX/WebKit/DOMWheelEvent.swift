
var DOM_DOM_DELTA_PIXEL: Int { get }
var DOM_DOM_DELTA_LINE: Int { get }
var DOM_DOM_DELTA_PAGE: Int { get }
@available(OSX 10.5, *)
class DOMWheelEvent : DOMMouseEvent {
  @available(OSX 10.5, *)
  var wheelDeltaX: Int32 { get }
  @available(OSX 10.5, *)
  var wheelDeltaY: Int32 { get }
  var wheelDelta: Int32 { get }
  var isHorizontal: Bool { get }
  @available(OSX 10.5, *)
  func initWheelEvent(wheelDeltaX: Int32, wheelDeltaY: Int32, view: DOMAbstractView!, screenX: Int32, screenY: Int32, clientX: Int32, clientY: Int32, ctrlKey: Bool, altKey: Bool, shiftKey: Bool, metaKey: Bool)
}
