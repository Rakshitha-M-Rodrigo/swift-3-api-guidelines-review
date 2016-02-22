
@available(iOS 2.0, *)
class UINavigationBar : UIView, NSCoding, UIBarPositioning {
  var barStyle: UIBarStyle
  weak var delegate: @sil_weak UINavigationBarDelegate?
  @available(iOS 3.0, *)
  var isTranslucent: Bool
  func push(item: UINavigationItem, animated: Bool)
  func popNavigationItem(animated animated: Bool) -> UINavigationItem?
  var topItem: UINavigationItem? { get }
  var backItem: UINavigationItem? { get }
  var items: [UINavigationItem]?
  func setItems(items: [UINavigationItem]?, animated: Bool)
  var tintColor: UIColor!
  @available(iOS 7.0, *)
  var barTintColor: UIColor?
  @available(iOS 7.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  @available(iOS 7.0, *)
  func backgroundImage(for barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, for barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImage(for barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 6.0, *)
  var shadowImage: UIImage?
  @available(iOS 5.0, *)
  var titleTextAttributes: [String : AnyObject]?
  @available(iOS 5.0, *)
  func setTitleVerticalPositionAdjustment(adjustment: CGFloat, for barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func titleVerticalPositionAdjustment(for barMetrics: UIBarMetrics) -> CGFloat
  @available(iOS 7.0, *)
  var backIndicatorImage: UIImage?
  @available(iOS 7.0, *)
  var backIndicatorTransitionMaskImage: UIImage?
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 7.0, *)
  var barPosition: UIBarPosition { get }
}
protocol UINavigationBarDelegate : UIBarPositioningDelegate {
  @available(iOS 2.0, *)
  optional func navigationBar(navigationBar: UINavigationBar, shouldPush item: UINavigationItem) -> Bool
  @available(iOS 2.0, *)
  optional func navigationBar(navigationBar: UINavigationBar, didPush item: UINavigationItem)
  @available(iOS 2.0, *)
  optional func navigationBar(navigationBar: UINavigationBar, shouldPop item: UINavigationItem) -> Bool
  @available(iOS 2.0, *)
  optional func navigationBar(navigationBar: UINavigationBar, didPop item: UINavigationItem)
}
@available(iOS 2.0, *)
class UINavigationItem : NSObject, NSCoding {
  init(title: String)
  init?(coder: NSCoder)
  var title: String?
  var titleView: UIView?
  var prompt: String?
  var backBarButtonItem: UIBarButtonItem?
  var hidesBackButton: Bool
  func setHidesBackButton(hidesBackButton: Bool, animated: Bool)
  @available(iOS 5.0, *)
  var leftBarButtonItems: [UIBarButtonItem]?
  @available(iOS 5.0, *)
  var rightBarButtonItems: [UIBarButtonItem]?
  @available(iOS 5.0, *)
  func setLeftBarButtonItems(items: [UIBarButtonItem]?, animated: Bool)
  @available(iOS 5.0, *)
  func setRightBarButtonItems(items: [UIBarButtonItem]?, animated: Bool)
  @available(iOS 5.0, *)
  var leftItemsSupplementBackButton: Bool
  var leftBarButtonItem: UIBarButtonItem?
  var rightBarButtonItem: UIBarButtonItem?
  func setLeftBarButtonItem(item: UIBarButtonItem?, animated: Bool)
  func setRightBarButtonItem(item: UIBarButtonItem?, animated: Bool)
  convenience init()
  @available(iOS 2.0, *)
  func encode(with aCoder: NSCoder)
}
