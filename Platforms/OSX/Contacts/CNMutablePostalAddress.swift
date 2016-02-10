
@available(OSX 10.11, *)
class CNMutablePostalAddress : CNPostalAddress {
  var street: String
  var city: String
  var state: String
  var postalCode: String
  var country: String
  var isoCountryCode: String
  init()
  init?(coder aDecoder: Coder)
}