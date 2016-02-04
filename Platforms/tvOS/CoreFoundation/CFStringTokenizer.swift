
@available(tvOS 3.0, *)
func CFStringTokenizerCopyBestStringLanguage(string: CFString!, _ range: CFRange) -> CFString!
class CFStringTokenizer {
}
var kCFStringTokenizerUnitWord: CFOptionFlags { get }
var kCFStringTokenizerUnitSentence: CFOptionFlags { get }
var kCFStringTokenizerUnitParagraph: CFOptionFlags { get }
var kCFStringTokenizerUnitLineBreak: CFOptionFlags { get }
var kCFStringTokenizerUnitWordBoundary: CFOptionFlags { get }
var kCFStringTokenizerAttributeLatinTranscription: CFOptionFlags { get }
var kCFStringTokenizerAttributeLanguage: CFOptionFlags { get }
struct CFStringTokenizerTokenType : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var None: CFStringTokenizerTokenType { get }
  static var Normal: CFStringTokenizerTokenType { get }
  static var HasSubTokensMask: CFStringTokenizerTokenType { get }
  static var HasDerivedSubTokensMask: CFStringTokenizerTokenType { get }
  static var HasHasNumbersMask: CFStringTokenizerTokenType { get }
  static var HasNonLettersMask: CFStringTokenizerTokenType { get }
  static var IsCJWordMask: CFStringTokenizerTokenType { get }
}
@available(tvOS 3.0, *)
func CFStringTokenizerGetTypeID() -> CFTypeID
@available(tvOS 3.0, *)
func CFStringTokenizerCreate(alloc: CFAllocator!, _ string: CFString!, _ range: CFRange, _ options: CFOptionFlags, _ locale: CFLocale!) -> CFStringTokenizer!
@available(tvOS 3.0, *)
func CFStringTokenizerSetString(tokenizer: CFStringTokenizer!, _ string: CFString!, _ range: CFRange)
@available(tvOS 3.0, *)
func CFStringTokenizerGoToTokenAtIndex(tokenizer: CFStringTokenizer!, _ index: CFIndex) -> CFStringTokenizerTokenType
@available(tvOS 3.0, *)
func CFStringTokenizerAdvanceToNextToken(tokenizer: CFStringTokenizer!) -> CFStringTokenizerTokenType
@available(tvOS 3.0, *)
func CFStringTokenizerGetCurrentTokenRange(tokenizer: CFStringTokenizer!) -> CFRange
@available(tvOS 3.0, *)
func CFStringTokenizerCopyCurrentTokenAttribute(tokenizer: CFStringTokenizer!, _ attribute: CFOptionFlags) -> CFTypeRef!
@available(tvOS 3.0, *)
func CFStringTokenizerGetCurrentSubTokens(tokenizer: CFStringTokenizer!, _ ranges: UnsafeMutablePointer<CFRange>, _ maxRangeLength: CFIndex, _ derivedSubTokens: CFMutableArray!) -> CFIndex
