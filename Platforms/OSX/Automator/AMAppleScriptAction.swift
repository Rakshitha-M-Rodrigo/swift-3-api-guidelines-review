
@available(OSX 10.4, *)
class AMAppleScriptAction : AMBundleAction {
  var script: OSAScript
  init?(definition dict: [String : AnyObject], fromArchive archived: Bool)
  @available(OSX 10.5, *)
  init(contentsOf fileURL: URL) throws
  init()
  init?(coder aDecoder: Coder)
}
