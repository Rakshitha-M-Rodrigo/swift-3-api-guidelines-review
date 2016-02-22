
typealias unichar = UInt16
struct NSStringCompareOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var caseInsensitiveSearch: NSStringCompareOptions { get }
  static var literalSearch: NSStringCompareOptions { get }
  static var backwardsSearch: NSStringCompareOptions { get }
  static var anchoredSearch: NSStringCompareOptions { get }
  static var numericSearch: NSStringCompareOptions { get }
  @available(watchOS 2.0, *)
  static var diacriticInsensitiveSearch: NSStringCompareOptions { get }
  @available(watchOS 2.0, *)
  static var widthInsensitiveSearch: NSStringCompareOptions { get }
  @available(watchOS 2.0, *)
  static var forcedOrderingSearch: NSStringCompareOptions { get }
  @available(watchOS 2.0, *)
  static var regularExpressionSearch: NSStringCompareOptions { get }
}
var NSASCIIStringEncoding: UInt { get }
var NSNEXTSTEPStringEncoding: UInt { get }
var NSJapaneseEUCStringEncoding: UInt { get }
var NSUTF8StringEncoding: UInt { get }
var NSISOLatin1StringEncoding: UInt { get }
var NSSymbolStringEncoding: UInt { get }
var NSNonLossyASCIIStringEncoding: UInt { get }
var NSShiftJISStringEncoding: UInt { get }
var NSISOLatin2StringEncoding: UInt { get }
var NSUnicodeStringEncoding: UInt { get }
var NSWindowsCP1251StringEncoding: UInt { get }
var NSWindowsCP1252StringEncoding: UInt { get }
var NSWindowsCP1253StringEncoding: UInt { get }
var NSWindowsCP1254StringEncoding: UInt { get }
var NSWindowsCP1250StringEncoding: UInt { get }
var NSISO2022JPStringEncoding: UInt { get }
var NSMacOSRomanStringEncoding: UInt { get }
var NSUTF16StringEncoding: UInt { get }
var NSUTF16BigEndianStringEncoding: UInt { get }
var NSUTF16LittleEndianStringEncoding: UInt { get }
var NSUTF32StringEncoding: UInt { get }
var NSUTF32BigEndianStringEncoding: UInt { get }
var NSUTF32LittleEndianStringEncoding: UInt { get }
struct NSStringEncodingConversionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var allowLossy: NSStringEncodingConversionOptions { get }
  static var externalRepresentation: NSStringEncodingConversionOptions { get }
}
class NSString : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var length: Int { get }
  func character(at index: Int) -> unichar
  init()
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
}

extension NSString : StringLiteralConvertible {
  required convenience init(unicodeScalarLiteral value: StaticString)
  required convenience init(extendedGraphemeClusterLiteral value: StaticString)
  required convenience init(stringLiteral value: StaticString)
  typealias StringLiteralType = StaticString
  typealias ExtendedGraphemeClusterLiteralType = StaticString
  typealias UnicodeScalarLiteralType = StaticString
}

extension NSString {
  convenience init(format: NSString, _ args: CVarArgType...)
  convenience init(format: NSString, locale: NSLocale?, _ args: CVarArgType...)
  @warn_unused_result
  class func localizedStringWithFormat(format: NSString, _ args: CVarArgType...) -> Self
  @warn_unused_result
  func stringByAppendingFormat(format: NSString, _ args: CVarArgType...) -> NSString
}

extension NSString {
  @objc(_swiftInitWithString_NSString:) convenience init(string aString: NSString)
}

extension NSString : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
extension NSString {
  func substring(from from: Int) -> String
  func substring(to to: Int) -> String
  func substring(with range: NSRange) -> String
  func getCharacters(buffer: UnsafeMutablePointer<unichar>, range: NSRange)
  func compare(string: String) -> NSComparisonResult
  func compare(string: String, options mask: NSStringCompareOptions = []) -> NSComparisonResult
  func compare(string: String, options mask: NSStringCompareOptions = [], range compareRange: NSRange) -> NSComparisonResult
  func compare(string: String, options mask: NSStringCompareOptions = [], range compareRange: NSRange, locale: AnyObject?) -> NSComparisonResult
  func caseInsensitiveCompare(string: String) -> NSComparisonResult
  func localizedCompare(string: String) -> NSComparisonResult
  func localizedCaseInsensitiveCompare(string: String) -> NSComparisonResult
  @available(watchOS 2.0, *)
  func localizedStandardCompare(string: String) -> NSComparisonResult
  func isEqual(to aString: String) -> Bool
  func hasPrefix(str: String) -> Bool
  func hasSuffix(str: String) -> Bool
  func commonPrefix(with str: String, options mask: NSStringCompareOptions = []) -> String
  @available(watchOS 2.0, *)
  func contains(str: String) -> Bool
  @available(watchOS 2.0, *)
  func localizedCaseInsensitiveContains(str: String) -> Bool
  @available(watchOS 2.0, *)
  func localizedStandardContains(str: String) -> Bool
  @available(watchOS 2.0, *)
  func localizedStandardRangeOf(str: String) -> NSRange
  func rangeOf(searchString: String) -> NSRange
  func rangeOf(searchString: String, options mask: NSStringCompareOptions = []) -> NSRange
  func rangeOf(searchString: String, options mask: NSStringCompareOptions = [], range searchRange: NSRange) -> NSRange
  @available(watchOS 2.0, *)
  func rangeOf(searchString: String, options mask: NSStringCompareOptions = [], range searchRange: NSRange, locale: NSLocale?) -> NSRange
  func rangeOfCharacter(from searchSet: NSCharacterSet) -> NSRange
  func rangeOfCharacter(from searchSet: NSCharacterSet, options mask: NSStringCompareOptions = []) -> NSRange
  func rangeOfCharacter(from searchSet: NSCharacterSet, options mask: NSStringCompareOptions = [], range searchRange: NSRange) -> NSRange
  func rangeOfComposedCharacterSequence(at index: Int) -> NSRange
  @available(watchOS 2.0, *)
  func rangeOfComposedCharacterSequences(for range: NSRange) -> NSRange
  func appending(aString: String) -> String
  var doubleValue: Double { get }
  var floatValue: Float { get }
  var intValue: Int32 { get }
  @available(watchOS 2.0, *)
  var integerValue: Int { get }
  @available(watchOS 2.0, *)
  var longLongValue: Int64 { get }
  @available(watchOS 2.0, *)
  var boolValue: Bool { get }
  var uppercase: String { get }
  var lowercase: String { get }
  var capitalized: String { get }
  @available(watchOS 2.0, *)
  var localizedUppercase: String { get }
  @available(watchOS 2.0, *)
  var localizedLowercase: String { get }
  @available(watchOS 2.0, *)
  var localizedCapitalized: String { get }
  @available(watchOS 2.0, *)
  func uppercaseString(with locale: NSLocale?) -> String
  @available(watchOS 2.0, *)
  func lowercaseString(with locale: NSLocale?) -> String
  @available(watchOS 2.0, *)
  func capitalizedString(with locale: NSLocale?) -> String
  func getLineStart(startPtr: UnsafeMutablePointer<Int>, end lineEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, for range: NSRange)
  func lineRange(for range: NSRange) -> NSRange
  func getParagraphStart(startPtr: UnsafeMutablePointer<Int>, end parEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, for range: NSRange)
  func paragraphRange(for range: NSRange) -> NSRange
  @available(watchOS 2.0, *)
  func enumerateSubstrings(in range: NSRange, options opts: NSStringEnumerationOptions = [], using block: (String?, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateLines(block: (String, UnsafeMutablePointer<ObjCBool>) -> Void)
  var utf8String: UnsafePointer<Int8> { get }
  var fastestEncoding: UInt { get }
  var smallestEncoding: UInt { get }
  func data(usingEncoding encoding: UInt, allowLossyConversion lossy: Bool) -> NSData?
  func data(usingEncoding encoding: UInt) -> NSData?
  func canBeConverted(toEncoding encoding: UInt) -> Bool
  func cString(usingEncoding encoding: UInt) -> UnsafePointer<Int8>
  func getCString(buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferCount: Int, encoding: UInt) -> Bool
  func getBytes(buffer: UnsafeMutablePointer<Void>, maxLength maxBufferCount: Int, usedLength usedBufferCount: UnsafeMutablePointer<Int>, encoding: UInt, options: NSStringEncodingConversionOptions = [], range: NSRange, remaining leftover: NSRangePointer) -> Bool
  func maximumLengthOfBytes(usingEncoding enc: UInt) -> Int
  func lengthOfBytes(usingEncoding enc: UInt) -> Int
  class func availableStringEncodings() -> UnsafePointer<UInt>
  class func localizedNameOf(stringEncoding encoding: UInt) -> String
  class func defaultCStringEncoding() -> UInt
  var decomposedStringWithCanonicalMapping: String { get }
  var precomposedStringWithCanonicalMapping: String { get }
  var decomposedStringWithCompatibilityMapping: String { get }
  var precomposedStringWithCompatibilityMapping: String { get }
  func componentsSeparated(by separator: String) -> [String]
  @available(watchOS 2.0, *)
  func componentsSeparatedByCharacters(in separator: NSCharacterSet) -> [String]
  func trimmingCharacters(in set: NSCharacterSet) -> String
  func padding(toLength newLength: Int, with padString: String, startingAt padIndex: Int) -> String
  @available(watchOS 2.0, *)
  func folding(options: NSStringCompareOptions = [], locale: NSLocale?) -> String
  @available(watchOS 2.0, *)
  func replacingOccurrencesOf(target: String, with replacement: String, options: NSStringCompareOptions = [], range searchRange: NSRange) -> String
  @available(watchOS 2.0, *)
  func replacingOccurrencesOf(target: String, with replacement: String) -> String
  @available(watchOS 2.0, *)
  func replacingCharacters(in range: NSRange, with replacement: String) -> String
  @available(watchOS 2.0, *)
  func applyingTransform(transform: String, reverse: Bool) -> String?
  func write(to url: NSURL, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  func write(toFile path: String, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  var description: String { get }
  var hash: Int { get }
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
struct NSStringEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var byLines: NSStringEnumerationOptions { get }
  static var byParagraphs: NSStringEnumerationOptions { get }
  static var byComposedCharacterSequences: NSStringEnumerationOptions { get }
  static var byWords: NSStringEnumerationOptions { get }
  static var bySentences: NSStringEnumerationOptions { get }
  static var reverse: NSStringEnumerationOptions { get }
  static var substringNotRequired: NSStringEnumerationOptions { get }
  static var localized: NSStringEnumerationOptions { get }
}
@available(watchOS 2.0, *)
let NSStringTransformLatinToKatakana: String
@available(watchOS 2.0, *)
let NSStringTransformLatinToHiragana: String
@available(watchOS 2.0, *)
let NSStringTransformLatinToHangul: String
@available(watchOS 2.0, *)
let NSStringTransformLatinToArabic: String
@available(watchOS 2.0, *)
let NSStringTransformLatinToHebrew: String
@available(watchOS 2.0, *)
let NSStringTransformLatinToThai: String
@available(watchOS 2.0, *)
let NSStringTransformLatinToCyrillic: String
@available(watchOS 2.0, *)
let NSStringTransformLatinToGreek: String
@available(watchOS 2.0, *)
let NSStringTransformToLatin: String
@available(watchOS 2.0, *)
let NSStringTransformMandarinToLatin: String
@available(watchOS 2.0, *)
let NSStringTransformHiraganaToKatakana: String
@available(watchOS 2.0, *)
let NSStringTransformFullwidthToHalfwidth: String
@available(watchOS 2.0, *)
let NSStringTransformToXMLHex: String
@available(watchOS 2.0, *)
let NSStringTransformToUnicodeName: String
@available(watchOS 2.0, *)
let NSStringTransformStripCombiningMarks: String
@available(watchOS 2.0, *)
let NSStringTransformStripDiacritics: String
extension NSString {
  @available(watchOS 2.0, *)
  class func stringEncoding(for data: NSData, encodingOptions opts: [String : AnyObject]? = [:], convertedString string: AutoreleasingUnsafeMutablePointer<NSString?>, usedLossyConversion: UnsafeMutablePointer<ObjCBool>) -> UInt
}
@available(watchOS 2.0, *)
let NSStringEncodingDetectionSuggestedEncodingsKey: String
@available(watchOS 2.0, *)
let NSStringEncodingDetectionDisallowedEncodingsKey: String
@available(watchOS 2.0, *)
let NSStringEncodingDetectionUseOnlySuggestedEncodingsKey: String
@available(watchOS 2.0, *)
let NSStringEncodingDetectionAllowLossyKey: String
@available(watchOS 2.0, *)
let NSStringEncodingDetectionFromWindowsKey: String
@available(watchOS 2.0, *)
let NSStringEncodingDetectionLossySubstitutionKey: String
@available(watchOS 2.0, *)
let NSStringEncodingDetectionLikelyLanguageKey: String
class NSMutableString : NSString {
  func replaceCharacters(in range: NSRange, with aString: String)
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(contentsOfFile path: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(contentsOf url: NSURL)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cStringNoCopy bytes: UnsafeMutablePointer<Int8>, length: Int, freeWhenDone freeBuffer: Bool)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cString bytes: UnsafePointer<Int8>, length: Int)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cString bytes: UnsafePointer<Int8>)
}

extension NSMutableString {
  func appendFormat(format: NSString, _ args: CVarArgType...)
}
extension NSMutableString {
  func insert(aString: String, at loc: Int)
  func deleteCharacters(in range: NSRange)
  func append(aString: String)
  func setString(aString: String)
  func replaceOccurrencesOf(target: String, with replacement: String, options: NSStringCompareOptions = [], range searchRange: NSRange) -> Int
  @available(watchOS 2.0, *)
  func applyTransform(transform: String, reverse: Bool, range: NSRange, updatedRange resultingRange: NSRangePointer) -> Bool
  init(capacity: Int)
}
let NSCharacterConversionException: String
let NSParseErrorException: String
extension NSString {
  func propertyList() -> AnyObject
  func propertyListFromStringsFileFormat() -> [NSObject : AnyObject]?
}
extension NSString {
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func cString() -> UnsafePointer<Int8>
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func lossyCString() -> UnsafePointer<Int8>
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func cStringLength() -> Int
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func getCString(bytes: UnsafeMutablePointer<Int8>)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func getCString(bytes: UnsafeMutablePointer<Int8>, maxLength: Int)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func getCString(bytes: UnsafeMutablePointer<Int8>, maxLength: Int, range aRange: NSRange, remaining leftoverRange: NSRangePointer)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func write(toFile path: String, atomically useAuxiliaryFile: Bool) -> Bool
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func write(to url: NSURL, atomically: Bool) -> Bool
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(contentsOfFile path: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(contentsOf url: NSURL)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  class func string(withContentsOfFile path: String) -> AnyObject?
  @available(watchOS, introduced=2.0, deprecated=2.0)
  class func string(withContentsOf url: NSURL) -> AnyObject?
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cStringNoCopy bytes: UnsafeMutablePointer<Int8>, length: Int, freeWhenDone freeBuffer: Bool)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cString bytes: UnsafePointer<Int8>, length: Int)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cString bytes: UnsafePointer<Int8>)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  class func string(withCString bytes: UnsafePointer<Int8>, length: Int) -> AnyObject?
  @available(watchOS, introduced=2.0, deprecated=2.0)
  class func string(withCString bytes: UnsafePointer<Int8>) -> AnyObject?
  func getCharacters(buffer: UnsafeMutablePointer<unichar>)
}
var NSProprietaryStringEncoding: UInt { get }
class NSSimpleCString : NSString {
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(contentsOfFile path: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(contentsOf url: NSURL)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cStringNoCopy bytes: UnsafeMutablePointer<Int8>, length: Int, freeWhenDone freeBuffer: Bool)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cString bytes: UnsafePointer<Int8>, length: Int)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cString bytes: UnsafePointer<Int8>)
}
class NSConstantString : NSSimpleCString {
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(contentsOfFile path: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(contentsOf url: NSURL)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cStringNoCopy bytes: UnsafeMutablePointer<Int8>, length: Int, freeWhenDone freeBuffer: Bool)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cString bytes: UnsafePointer<Int8>, length: Int)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(cString bytes: UnsafePointer<Int8>)
}
var _NSConstantStringClassReference: UnsafeMutablePointer<Void>
