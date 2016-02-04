
enum UIGestureRecognizerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Possible
  case Began
  case Changed
  case Ended
  case Cancelled
  case Failed
  static var Recognized: UIGestureRecognizerState { get }
}
@available(tvOS 3.2, *)
class UIGestureRecognizer : Object {
  init(target: AnyObject?, action: Selector)
  func addTarget(target: AnyObject, action: Selector)
  func removeTarget(target: AnyObject?, action: Selector)
  weak var delegate: @sil_weak UIGestureRecognizerDelegate?
  var isEnabled: Bool
  var view: UIView? { get }
  var cancelsTouchesInView: Bool
  var delaysTouchesBegan: Bool
  var delaysTouchesEnded: Bool
  @available(tvOS 9.0, *)
  var allowedTouchTypes: [Number]
  @available(tvOS 9.0, *)
  var allowedPressTypes: [Number]
  func requireToFail(otherGestureRecognizer: UIGestureRecognizer)
  func locationIn(view: UIView?) -> CGPoint
  func numberOfTouches() -> Int
  func locationOfTouch(touchIndex: Int, in view: UIView?) -> CGPoint
  convenience init()
}
protocol UIGestureRecognizerDelegate : ObjectProtocol {
  @available(tvOS 3.2, *)
  optional func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 3.2, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 3.2, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool
  @available(tvOS 9.0, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceive press: UIPress) -> Bool
}
