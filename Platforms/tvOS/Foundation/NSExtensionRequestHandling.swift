
protocol NSExtensionRequestHandling : NSObjectProtocol {
  @available(tvOS 8.0, *)
  func beginRequest(context: NSExtensionContext)
}
