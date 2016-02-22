
enum UITableViewCellStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case value1
  case value2
  case subtitle
}
enum UITableViewCellSeparatorStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case singleLine
  case singleLineEtched
}
enum UITableViewCellSelectionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case blue
  case gray
  @available(iOS 7.0, *)
  case `default`
}
@available(iOS 9.0, *)
enum UITableViewCellFocusStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case custom
}
enum UITableViewCellEditingStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case delete
  case insert
}
enum UITableViewCellAccessoryType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case disclosureIndicator
  case detailDisclosureButton
  case checkmark
  @available(iOS 7.0, *)
  case detailButton
}
struct UITableViewCellStateMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var defaultMask: UITableViewCellStateMask { get }
  static var showingEditControlMask: UITableViewCellStateMask { get }
  static var showingDeleteConfirmationMask: UITableViewCellStateMask { get }
}
@available(iOS 2.0, *)
class UITableViewCell : UIView, NSCoding, UIGestureRecognizerDelegate {
  @available(iOS 3.0, *)
  init(style: UITableViewCellStyle, reuseIdentifier: String?)
  init?(coder aDecoder: NSCoder)
  @available(iOS 3.0, *)
  var imageView: UIImageView? { get }
  @available(iOS 3.0, *)
  var textLabel: UILabel? { get }
  @available(iOS 3.0, *)
  var detailTextLabel: UILabel? { get }
  var contentView: UIView { get }
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
  @available(iOS 5.0, *)
  var multipleSelectionBackgroundView: UIView?
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  var selectionStyle: UITableViewCellSelectionStyle
  var isSelected: Bool
  var isHighlighted: Bool
  func setSelected(selected: Bool, animated: Bool)
  func setHighlighted(highlighted: Bool, animated: Bool)
  var editingStyle: UITableViewCellEditingStyle { get }
  var showsReorderControl: Bool
  var shouldIndentWhileEditing: Bool
  var accessoryType: UITableViewCellAccessoryType
  var accessoryView: UIView?
  var editingAccessoryType: UITableViewCellAccessoryType
  var editingAccessoryView: UIView?
  var indentationLevel: Int
  var indentationWidth: CGFloat
  @available(iOS 7.0, *)
  var separatorInset: UIEdgeInsets
  var isEditing: Bool
  func setEditing(editing: Bool, animated: Bool)
  var showingDeleteConfirmation: Bool { get }
  @available(iOS 9.0, *)
  var focusStyle: UITableViewCellFocusStyle
  @available(iOS 3.0, *)
  func willTransition(to state: UITableViewCellStateMask)
  @available(iOS 3.0, *)
  func didTransition(to state: UITableViewCellStateMask)
  convenience init(frame: CGRect)
  convenience init()
  @available(iOS 3.2, *)
  func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 3.2, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 3.2, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool
  @available(iOS 9.0, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceive press: UIPress) -> Bool
}
extension UITableViewCell {
}
