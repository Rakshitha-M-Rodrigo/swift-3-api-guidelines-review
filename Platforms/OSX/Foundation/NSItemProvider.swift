
typealias NSItemProviderCompletionHandler = (NSSecureCoding?, NSError!) -> Void
typealias NSItemProviderLoadHandler = (NSItemProviderCompletionHandler!, AnyClass!, [NSObject : AnyObject]!) -> Void
@available(OSX 10.10, *)
class NSItemProvider : NSObject, NSCopying {
  init(item: NSSecureCoding?, typeIdentifier: String?)
  convenience init?(contentsOf fileURL: NSURL!)
  func registerItem(forTypeIdentifier typeIdentifier: String, loadHandler: NSItemProviderLoadHandler)
  var registeredTypeIdentifiers: [AnyObject] { get }
  func hasItemConforming(toTypeIdentifier typeIdentifier: String) -> Bool
  func loadItem(forTypeIdentifier typeIdentifier: String, options: [NSObject : AnyObject]? = [:], completionHandler: NSItemProviderCompletionHandler? = nil)
  convenience init()
  @available(OSX 10.10, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.10, *)
let NSItemProviderPreferredImageSizeKey: String
extension NSItemProvider {
  @available(OSX 10.10, *)
  var previewImageHandler: NSItemProviderLoadHandler?
  @available(OSX 10.10, *)
  func loadPreviewImage(options options: [NSObject : AnyObject]! = [:], completionHandler: NSItemProviderCompletionHandler!)
}
@available(OSX 10.10, *)
let NSExtensionJavaScriptPreprocessingResultsKey: String
@available(OSX 10.10, *)
let NSItemProviderErrorDomain: String
@available(OSX 10.10, *)
enum NSItemProviderErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknownError
  case itemUnavailableError
  case unexpectedValueClassError
  @available(OSX 10.11, *)
  case unavailableCoercionError
}
