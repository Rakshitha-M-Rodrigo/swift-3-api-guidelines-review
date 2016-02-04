
@available(tvOS 7.0, *)
let NSTabColumnTerminatorsAttributeName: String
@available(tvOS 7.0, *)
class NSTextTab : Object, Copying, Coding {
  @available(tvOS 7.0, *)
  class func columnTerminatorsFor(aLocale: Locale?) -> CharacterSet
  init(textAlignment alignment: NSTextAlignment, location loc: CGFloat, options: [String : AnyObject] = [:])
  var alignment: NSTextAlignment { get }
  var location: CGFloat { get }
  var options: [String : AnyObject] { get }
  convenience init()
  @available(tvOS 7.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 7.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(tvOS 6.0, *)
enum NSLineBreakMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ByWordWrapping
  case ByCharWrapping
  case ByClipping
  case ByTruncatingHead
  case ByTruncatingTail
  case ByTruncatingMiddle
}
@available(tvOS 6.0, *)
class NSParagraphStyle : Object, Copying, MutableCopying, SecureCoding {
  class func defaultParagraphStyle() -> NSParagraphStyle
  class func defaultWritingDirectionForLanguage(languageName: String?) -> NSWritingDirection
  var lineSpacing: CGFloat { get }
  var paragraphSpacing: CGFloat { get }
  var alignment: NSTextAlignment { get }
  var headIndent: CGFloat { get }
  var tailIndent: CGFloat { get }
  var firstLineHeadIndent: CGFloat { get }
  var minimumLineHeight: CGFloat { get }
  var maximumLineHeight: CGFloat { get }
  var lineBreakMode: NSLineBreakMode { get }
  var baseWritingDirection: NSWritingDirection { get }
  var lineHeightMultiple: CGFloat { get }
  var paragraphSpacingBefore: CGFloat { get }
  var hyphenationFactor: Float { get }
  @available(tvOS 7.0, *)
  var tabStops: [NSTextTab] { get }
  @available(tvOS 7.0, *)
  var defaultTabInterval: CGFloat { get }
  @available(tvOS 9.0, *)
  var allowsDefaultTighteningForTruncation: Bool { get }
  init()
  @available(tvOS 6.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 6.0, *)
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 6.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 6.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(tvOS 6.0, *)
class NSMutableParagraphStyle : NSParagraphStyle {
  var lineSpacing: CGFloat
  var paragraphSpacing: CGFloat
  var alignment: NSTextAlignment
  var firstLineHeadIndent: CGFloat
  var headIndent: CGFloat
  var tailIndent: CGFloat
  var lineBreakMode: NSLineBreakMode
  var minimumLineHeight: CGFloat
  var maximumLineHeight: CGFloat
  var baseWritingDirection: NSWritingDirection
  var lineHeightMultiple: CGFloat
  var paragraphSpacingBefore: CGFloat
  var hyphenationFactor: Float
  @available(tvOS 7.0, *)
  var tabStops: [NSTextTab]!
  @available(tvOS 7.0, *)
  var defaultTabInterval: CGFloat
  @available(tvOS 9.0, *)
  var allowsDefaultTighteningForTruncation: Bool
  @available(tvOS 9.0, *)
  func addTabStop(anObject: NSTextTab)
  @available(tvOS 9.0, *)
  func removeTabStop(anObject: NSTextTab)
  @available(tvOS 9.0, *)
  func setParagraphStyle(obj: NSParagraphStyle)
  init()
  init?(coder aDecoder: Coder)
}
