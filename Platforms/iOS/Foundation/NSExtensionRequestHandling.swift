
protocol NSExtensionRequestHandling : NSObjectProtocol {
  @available(iOS 8.0, *)
  func beginRequest(context: NSExtensionContext)
}
