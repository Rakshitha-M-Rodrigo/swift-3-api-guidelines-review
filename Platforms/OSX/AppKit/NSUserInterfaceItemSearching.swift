
protocol NSUserInterfaceItemSearching : ObjectProtocol {
  func searchForItemsWithSearch(searchString: String, resultLimit: Int, matchedItemHandler handleMatchedItems: ([AnyObject]) -> Void)
  func localizedTitlesForItem(item: AnyObject) -> [String]
  optional func performActionForItem(item: AnyObject)
  optional func showAllHelpTopicsForSearch(searchString: String)
}
extension NSApplication {
  @available(OSX 10.6, *)
  func registerUserInterfaceItemSearchHandler(handler: NSUserInterfaceItemSearching)
  @available(OSX 10.6, *)
  func unregisterUserInterfaceItemSearchHandler(handler: NSUserInterfaceItemSearching)
  @available(OSX 10.6, *)
  func search(searchString: String, inUserInterfaceItemString stringToSearch: String, search searchRange: NSRange, found foundRange: UnsafeMutablePointer<NSRange>) -> Bool
}
