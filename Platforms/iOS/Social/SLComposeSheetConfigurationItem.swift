
typealias SLComposeSheetConfigurationItemTapHandler = () -> Void
@available(iOS 8.0, *)
class SLComposeSheetConfigurationItem : Object {
  init!()
  var title: String!
  var value: String!
  var valuePending: Bool
  var tapHandler: SLComposeSheetConfigurationItemTapHandler!
}
