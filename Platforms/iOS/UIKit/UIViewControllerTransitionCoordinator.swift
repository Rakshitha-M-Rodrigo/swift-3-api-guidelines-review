
protocol UIViewControllerTransitionCoordinatorContext : ObjectProtocol {
  func isAnimated() -> Bool
  func presentationStyle() -> UIModalPresentationStyle
  func initiallyInteractive() -> Bool
  func isInteractive() -> Bool
  func isCancelled() -> Bool
  func transitionDuration() -> TimeInterval
  func percentComplete() -> CGFloat
  func completionVelocity() -> CGFloat
  func completionCurve() -> UIViewAnimationCurve
  @available(iOS 2.0, *)
  func viewControllerForKey(key: String) -> UIViewController?
  @available(iOS 8.0, *)
  func viewForKey(key: String) -> UIView?
  @available(iOS 2.0, *)
  func containerView() -> UIView
  @available(iOS 8.0, *)
  func targetTransform() -> CGAffineTransform
}
protocol UIViewControllerTransitionCoordinator : UIViewControllerTransitionCoordinatorContext {
  func animateAlongsideTransition(animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)? = nil) -> Bool
  @available(iOS 2.0, *)
  func animateAlongsideTransitionIn(view: UIView?, animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)? = nil) -> Bool
  func notifyWhenInteractionEndsUsing(handler: (UIViewControllerTransitionCoordinatorContext) -> Void)
}
extension UIViewController {
  @available(iOS 7.0, *)
  func transitionCoordinator() -> UIViewControllerTransitionCoordinator?
}
