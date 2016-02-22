
@available(iOS 8.0, *)
enum UIAlertActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case cancel
  case destructive
}
@available(iOS 8.0, *)
enum UIAlertControllerStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case actionSheet
  case alert
}
@available(iOS 8.0, *)
class UIAlertAction : NSObject, NSCopying {
  convenience init(title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction) -> Void)? = nil)
  var title: String? { get }
  var style: UIAlertActionStyle { get }
  var isEnabled: Bool
  init()
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class UIAlertController : UIViewController {
  convenience init(title: String?, message: String?, preferredStyle: UIAlertControllerStyle)
  func addAction(action: UIAlertAction)
  var actions: [UIAlertAction] { get }
  @available(iOS 9.0, *)
  var preferredAction: UIAlertAction?
  func addTextField(configurationHandler configurationHandler: ((UITextField) -> Void)? = nil)
  var textFields: [UITextField]? { get }
  var title: String?
  var message: String?
  var preferredStyle: UIAlertControllerStyle { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
