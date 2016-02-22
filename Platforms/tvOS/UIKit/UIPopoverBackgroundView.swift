
protocol UIPopoverBackgroundViewMethods {
  static func arrowBase() -> CGFloat
  static func contentViewInsets() -> UIEdgeInsets
  static func arrowHeight() -> CGFloat
}
@available(tvOS 5.0, *)
class UIPopoverBackgroundView : UIView, UIPopoverBackgroundViewMethods {
  var arrowOffset: CGFloat
  var arrowDirection: UIPopoverArrowDirection
  @available(tvOS 6.0, *)
  class func wantsDefaultContentAppearance() -> Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(tvOS 5.0, *)
  class func arrowBase() -> CGFloat
  @available(tvOS 5.0, *)
  class func contentViewInsets() -> UIEdgeInsets
  @available(tvOS 5.0, *)
  class func arrowHeight() -> CGFloat
}
