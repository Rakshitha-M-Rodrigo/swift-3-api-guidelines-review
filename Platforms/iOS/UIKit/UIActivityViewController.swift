
typealias UIActivityViewControllerCompletionHandler = (String?, Bool) -> Void
typealias UIActivityViewControllerCompletionWithItemsHandler = (String?, Bool, [AnyObject]?, Error?) -> Void
@available(iOS 6.0, *)
class UIActivityViewController : UIViewController {
  init(activityItems: [AnyObject], applicationActivities: [UIActivity]?)
  @available(iOS, introduced=6.0, deprecated=8.0, message="Use completionWithItemsHandler instead.")
  var completionHandler: UIActivityViewControllerCompletionHandler?
  @available(iOS 8.0, *)
  var completionWithItemsHandler: UIActivityViewControllerCompletionWithItemsHandler?
  var excludedActivityTypes: [String]?
}
