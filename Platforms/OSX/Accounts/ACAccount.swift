
@available(OSX 10.8, *)
class ACAccount : Object {
  init!(accountType type: ACAccountType!)
  var identifier: String! { get }
  var accountType: ACAccountType!
  var accountDescription: String!
  var username: String!
  var credential: ACAccountCredential!
  convenience init()
}
