
protocol UITextDocumentProxy : UIKeyInput {
  var documentContextBeforeInput: String? { get }
  var documentContextAfterInput: String? { get }
  func adjustTextPositionByCharacterOffset(offset: Int)
}
@available(iOS 8.0, *)
class UIInputViewController : UIViewController, UITextInputDelegate {
  var inputView: UIInputView?
  var textDocumentProxy: UITextDocumentProxy { get }
  var primaryLanguage: String?
  func dismissKeyboard()
  func advanceToNextInputMode()
  func requestSupplementaryLexiconWithCompletion(completionHandler: (UILexicon) -> Void)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
  @available(iOS 8.0, *)
  func selectionWillChange(textInput: UITextInput?)
  @available(iOS 8.0, *)
  func selectionDidChange(textInput: UITextInput?)
  @available(iOS 8.0, *)
  func textWillChange(textInput: UITextInput?)
  @available(iOS 8.0, *)
  func textDidChange(textInput: UITextInput?)
}
