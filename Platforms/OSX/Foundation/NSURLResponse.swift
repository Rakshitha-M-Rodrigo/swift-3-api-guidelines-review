
class URLResponse : Object, SecureCoding, Copying {
  init(url URL: URL, mimeType MIMEType: String?, expectedContentLength length: Int, textEncodingName name: String?)
  @NSCopying var url: URL? { get }
  var mimeType: String? { get }
  var expectedContentLength: Int64 { get }
  var textEncodingName: String? { get }
  var suggestedFilename: String? { get }
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class HTTPURLResponse : URLResponse {
  @available(OSX 10.7, *)
  init?(url: URL, statusCode: Int, httpVersion HTTPVersion: String?, headerFields: [String : String]?)
  var statusCode: Int { get }
  var allHeaderFields: [Object : AnyObject] { get }
  class func localizedStringForStatusCode(statusCode: Int) -> String
  init(url URL: URL, mimeType MIMEType: String?, expectedContentLength length: Int, textEncodingName name: String?)
  convenience init()
  init?(coder aDecoder: Coder)
}
