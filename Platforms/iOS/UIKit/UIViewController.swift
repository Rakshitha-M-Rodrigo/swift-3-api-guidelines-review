
enum UIModalTransitionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CoverVertical
  case FlipHorizontal
  case CrossDissolve
  @available(iOS 3.2, *)
  case PartialCurl
}
enum UIModalPresentationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case FullScreen
  @available(iOS 3.2, *)
  case PageSheet
  @available(iOS 3.2, *)
  case FormSheet
  @available(iOS 3.2, *)
  case CurrentContext
  @available(iOS 7.0, *)
  case Custom
  @available(iOS 8.0, *)
  case OverFullScreen
  @available(iOS 8.0, *)
  case OverCurrentContext
  @available(iOS 8.0, *)
  case Popover
  @available(iOS 7.0, *)
  case None
}
protocol UIContentContainer : ObjectProtocol {
  @available(iOS 8.0, *)
  var preferredContentSize: CGSize { get }
  @available(iOS 8.0, *)
  func preferredContentSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(iOS 8.0, *)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(iOS 8.0, *)
  func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(iOS 8.0, *)
  func viewWillTransitionTo(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 8.0, *)
  func willTransitionTo(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
}
@available(iOS 8.0, *)
let UIViewControllerShowDetailTargetDidChangeNotification: String
@available(iOS 2.0, *)
class UIViewController : UIResponder, Coding, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  var view: UIView!
  func loadView()
  @available(iOS 9.0, *)
  func loadViewIfNeeded()
  @available(iOS 9.0, *)
  var viewIfLoaded: UIView? { get }
  func viewDidLoad()
  @available(iOS 3.0, *)
  func isViewLoaded() -> Bool
  var nibName: String? { get }
  var nibBundle: Bundle? { get }
  @available(iOS 5.0, *)
  var storyboard: UIStoryboard? { get }
  @available(iOS 5.0, *)
  func performSegueWithIdentifier(identifier: String, sender: AnyObject?)
  @available(iOS 6.0, *)
  func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
  @available(iOS 5.0, *)
  func prepareFor(segue: UIStoryboardSegue, sender: AnyObject?)
  @available(iOS 6.0, *)
  func canPerformUnwindSegueAction(action: Selector, from fromViewController: UIViewController, withSender sender: AnyObject) -> Bool
  @available(iOS 9.0, *)
  func allowedChildViewControllersForUnwindingFrom(source: UIStoryboardUnwindSegueSource) -> [UIViewController]
  @available(iOS 9.0, *)
  func childViewControllerContaining(source: UIStoryboardUnwindSegueSource) -> UIViewController?
  @available(iOS, introduced=6.0, deprecated=9.0)
  func forUnwindSegueAction(action: Selector, from fromViewController: UIViewController, withSender sender: AnyObject?) -> UIViewController?
  @available(iOS 9.0, *)
  func unwindFor(unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController)
  @available(iOS, introduced=6.0, deprecated=9.0)
  func segueForUnwindingTo(toViewController: UIViewController, from fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue?
  func viewWillAppear(animated: Bool)
  func viewDidAppear(animated: Bool)
  func viewWillDisappear(animated: Bool)
  func viewDidDisappear(animated: Bool)
  @available(iOS 5.0, *)
  func viewWillLayoutSubviews()
  @available(iOS 5.0, *)
  func viewDidLayoutSubviews()
  var title: String?
  func didReceiveMemoryWarning()
  weak var parent: @sil_weak UIViewController? { get }
  @available(iOS 5.0, *)
  var presented: UIViewController? { get }
  @available(iOS 5.0, *)
  var presenting: UIViewController? { get }
  @available(iOS 5.0, *)
  var definesPresentationContext: Bool
  @available(iOS 5.0, *)
  var providesPresentationContextTransitionStyle: Bool
  @available(iOS 5.0, *)
  func isBeingPresented() -> Bool
  @available(iOS 5.0, *)
  func isBeingDismissed() -> Bool
  @available(iOS 5.0, *)
  func isMovingToParentViewController() -> Bool
  @available(iOS 5.0, *)
  func isMovingFromParentViewController() -> Bool
  @available(iOS 5.0, *)
  func present(viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil)
  @available(iOS 5.0, *)
  func dismissAnimated(flag: Bool, completion: (() -> Void)? = nil)
  @available(iOS 3.0, *)
  var modalTransitionStyle: UIModalTransitionStyle
  @available(iOS 3.2, *)
  var modalPresentationStyle: UIModalPresentationStyle
  @available(iOS 7.0, *)
  var modalPresentationCapturesStatusBarAppearance: Bool
  @available(iOS 4.3, *)
  func disablesAutomaticKeyboardDismissal() -> Bool
  @available(iOS 7.0, *)
  var edgesForExtendedLayout: UIRectEdge
  @available(iOS 7.0, *)
  var extendedLayoutIncludesOpaqueBars: Bool
  @available(iOS 7.0, *)
  var automaticallyAdjustsScrollViewInsets: Bool
  @available(iOS 7.0, *)
  var preferredContentSize: CGSize
  @available(iOS 7.0, *)
  func preferredStatusBarStyle() -> UIStatusBarStyle
  @available(iOS 7.0, *)
  func prefersStatusBarHidden() -> Bool
  @available(iOS 7.0, *)
  func preferredStatusBarUpdateAnimation() -> UIStatusBarAnimation
  @available(iOS 7.0, *)
  func setNeedsStatusBarAppearanceUpdate()
  @available(iOS 8.0, *)
  func targetViewControllerForAction(action: Selector, sender: AnyObject?) -> UIViewController?
  @available(iOS 8.0, *)
  func show(vc: UIViewController, sender: AnyObject?)
  @available(iOS 8.0, *)
  func showDetailViewController(vc: UIViewController, sender: AnyObject?)
  convenience init()
  @available(iOS 2.0, *)
  func encodeWith(aCoder: Coder)
  @available(iOS 8.0, *)
  var traitCollection: UITraitCollection { get }
  @available(iOS 8.0, *)
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
  @available(iOS 8.0, *)
  func preferredContentSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(iOS 8.0, *)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(iOS 8.0, *)
  func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(iOS 8.0, *)
  func viewWillTransitionTo(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 8.0, *)
  func willTransitionTo(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 9.0, *)
  weak var preferredFocusedView: @sil_weak UIView? { get }
  @available(iOS 9.0, *)
  func setNeedsFocusUpdate()
  @available(iOS 9.0, *)
  func updateFocusIfNeeded()
  @available(iOS 9.0, *)
  func shouldUpdateFocusIn(context: UIFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  func didUpdateFocusIn(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}
extension UIViewController {
  @available(iOS 5.0, *)
  class func attemptRotationToDeviceOrientation()
  @available(iOS 6.0, *)
  func shouldAutorotate() -> Bool
  @available(iOS 6.0, *)
  func supportedInterfaceOrientations() -> UIInterfaceOrientationMask
  @available(iOS 6.0, *)
  func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation
  @available(iOS, introduced=2.0, deprecated=8.0, message="Header views are animated along with the rest of the view hierarchy")
  func rotatingHeaderView() -> UIView?
  @available(iOS, introduced=2.0, deprecated=8.0, message="Footer views are animated along with the rest of the view hierarchy")
  func rotatingFooterView() -> UIView?
  @available(iOS, introduced=2.0, deprecated=8.0)
  var interfaceOrientation: UIInterfaceOrientation { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Implement viewWillTransitionToSize:withTransitionCoordinator: instead")
  func willRotateTo(toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval)
  @available(iOS, introduced=2.0, deprecated=8.0)
  func didRotateFrom(fromInterfaceOrientation: UIInterfaceOrientation)
  @available(iOS, introduced=3.0, deprecated=8.0, message="Implement viewWillTransitionToSize:withTransitionCoordinator: instead")
  func willAnimateRotationTo(toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval)
}
extension UIViewController {
  var isEditing: Bool
  func setEditing(editing: Bool, animated: Bool)
  func editButtonItem() -> UIBarButtonItem
}
extension UIViewController {
  @available(iOS, introduced=3.0, deprecated=8.0)
  var searchDisplayController: UISearchDisplayController? { get }
}
@available(iOS 5.0, *)
let UIViewControllerHierarchyInconsistencyException: String
extension UIViewController {
  @available(iOS 5.0, *)
  var childViewControllers: [UIViewController] { get }
  @available(iOS 5.0, *)
  func addChildViewController(childController: UIViewController)
  @available(iOS 5.0, *)
  func removeFromParentViewController()
  @available(iOS 5.0, *)
  func transitionFrom(fromViewController: UIViewController, to toViewController: UIViewController, duration: TimeInterval, options: UIViewAnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(iOS 5.0, *)
  func beginAppearanceTransition(isAppearing: Bool, animated: Bool)
  @available(iOS 5.0, *)
  func endAppearanceTransition()
  @available(iOS 7.0, *)
  func childViewControllerForStatusBarStyle() -> UIViewController?
  @available(iOS 7.0, *)
  func childViewControllerForStatusBarHidden() -> UIViewController?
  @available(iOS 8.0, *)
  func setOverrideTraitCollection(collection: UITraitCollection?, forChildViewController childViewController: UIViewController)
  @available(iOS 8.0, *)
  func overrideTraitCollectionForChildViewController(childViewController: UIViewController) -> UITraitCollection?
}
extension UIViewController {
  @available(iOS, introduced=6.0, deprecated=8.0, message="Manually forward viewWillTransitionToSize:withTransitionCoordinator: if necessary")
  func shouldAutomaticallyForwardRotationMethods() -> Bool
  @available(iOS 6.0, *)
  func shouldAutomaticallyForwardAppearanceMethods() -> Bool
  @available(iOS 5.0, *)
  func willMoveToParentViewController(parent: UIViewController?)
  @available(iOS 5.0, *)
  func didMoveToParentViewController(parent: UIViewController?)
}
extension UIViewController : UIStateRestoring {
  @available(iOS 6.0, *)
  var restorationIdentifier: String?
  @available(iOS 6.0, *)
  var restorationClass: AnyObject.Type?
  @available(iOS 6.0, *)
  func encodeRestorableStateWith(coder: Coder)
  @available(iOS 6.0, *)
  func decodeRestorableStateWith(coder: Coder)
  @available(iOS 7.0, *)
  func applicationFinishedRestoringState()
  var restorationParent: UIStateRestoring? { get }
  var objectRestorationClass: AnyObject.Type? { get }
}
extension UIViewController {
  @available(iOS 6.0, *)
  func updateViewConstraints()
}
extension UIViewController {
  @available(iOS 7.0, *)
  weak var transitioningDelegate: @sil_weak UIViewControllerTransitioningDelegate?
}
extension UIViewController {
  @available(iOS 7.0, *)
  var topLayoutGuide: UILayoutSupport { get }
  @available(iOS 7.0, *)
  var bottomLayoutGuide: UILayoutSupport { get }
}
extension UIViewController {
  @available(iOS 9.0, *)
  func addKeyCommand(keyCommand: UIKeyCommand)
  @available(iOS 9.0, *)
  func removeKeyCommand(keyCommand: UIKeyCommand)
}
extension UIViewController : ExtensionRequestHandling {
  @available(iOS 8.0, *)
  var extensionContext: ExtensionContext? { get }
  @available(iOS 8.0, *)
  func beginRequestWith(context: ExtensionContext)
}
extension UIViewController {
  @available(iOS 8.0, *)
  var presentationController: UIPresentationController? { get }
  @available(iOS 8.0, *)
  var popoverPresentationController: UIPopoverPresentationController? { get }
}
protocol UIViewControllerPreviewing : ObjectProtocol {
  @available(iOS 9.0, *)
  var previewingGestureRecognizerForFailureRelationship: UIGestureRecognizer { get }
  @available(iOS 9.0, *)
  var delegate: UIViewControllerPreviewingDelegate { get }
  @available(iOS 9.0, *)
  var sourceView: UIView { get }
  @available(iOS 9.0, *)
  var sourceRect: CGRect { get set }
}
@available(iOS 9.0, *)
protocol UIViewControllerPreviewingDelegate : ObjectProtocol {
  @available(iOS 9.0, *)
  func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController?
  @available(iOS 9.0, *)
  func previewingContext(previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController)
}
extension UIViewController {
  @available(iOS 9.0, *)
  func registerForPreviewingWith(delegate: UIViewControllerPreviewingDelegate, sourceView: UIView) -> UIViewControllerPreviewing
  @available(iOS 9.0, *)
  func unregisterForPreviewingWithContext(previewing: UIViewControllerPreviewing)
}
extension UIViewController {
  @available(iOS 9.0, *)
  func previewActionItems() -> [UIPreviewActionItem]
}
@available(iOS 9.0, *)
protocol UIPreviewActionItem : ObjectProtocol {
  var title: String { get }
}
@available(iOS 9.0, *)
enum UIPreviewActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Selected
  case Destructive
}
@available(iOS 9.0, *)
class UIPreviewAction : Object, Copying, UIPreviewActionItem {
  var handler: (UIPreviewActionItem, UIViewController) -> Void { get }
  convenience init(title: String, style: UIPreviewActionStyle, handler: (UIPreviewAction, UIViewController) -> Void)
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  var title: String { get }
}
@available(iOS 9.0, *)
class UIPreviewActionGroup : Object, Copying, UIPreviewActionItem {
  convenience init(title: String, style: UIPreviewActionStyle, actions: [UIPreviewAction])
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  var title: String { get }
}
