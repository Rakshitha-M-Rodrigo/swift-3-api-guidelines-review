
struct CFPropertyListMutabilityOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Immutable: CFPropertyListMutabilityOptions { get }
  static var MutableContainers: CFPropertyListMutabilityOptions { get }
  static var MutableContainersAndLeaves: CFPropertyListMutabilityOptions { get }
}
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFPropertyListCreateWithData instead.")
func CFPropertyListCreateFromXMLData(allocator: CFAllocator!, _ xmlData: CFData!, _ mutabilityOption: CFOptionFlags, _ errorString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> Unmanaged<CFPropertyList>!
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFPropertyListCreateData instead.")
func CFPropertyListCreateXMLData(allocator: CFAllocator!, _ propertyList: CFPropertyList!) -> Unmanaged<CFData>!
func CFPropertyListCreateDeepCopy(allocator: CFAllocator!, _ propertyList: CFPropertyList!, _ mutabilityOption: CFOptionFlags) -> CFPropertyList!
enum CFPropertyListFormat : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case OpenStepFormat
  case XMLFormat_v1_0
  case BinaryFormat_v1_0
}
func CFPropertyListIsValid(plist: CFPropertyList!, _ format: CFPropertyListFormat) -> Bool
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFPropertyListWrite instead.")
func CFPropertyListWriteToStream(propertyList: CFPropertyList!, _ stream: CFWriteStream!, _ format: CFPropertyListFormat, _ errorString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CFIndex
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFPropertyListCreateWithStream instead.")
func CFPropertyListCreateFromStream(allocator: CFAllocator!, _ stream: CFReadStream!, _ streamLength: CFIndex, _ mutabilityOption: CFOptionFlags, _ format: UnsafeMutablePointer<CFPropertyListFormat>, _ errorString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> Unmanaged<CFPropertyList>!
var kCFPropertyListReadCorruptError: CFIndex { get }
var kCFPropertyListReadUnknownVersionError: CFIndex { get }
var kCFPropertyListReadStreamError: CFIndex { get }
var kCFPropertyListWriteStreamError: CFIndex { get }
@available(watchOS 2.0, *)
func CFPropertyListCreateWithData(allocator: CFAllocator!, _ data: CFData!, _ options: CFOptionFlags, _ format: UnsafeMutablePointer<CFPropertyListFormat>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFPropertyList>!
@available(watchOS 2.0, *)
func CFPropertyListCreateWithStream(allocator: CFAllocator!, _ stream: CFReadStream!, _ streamLength: CFIndex, _ options: CFOptionFlags, _ format: UnsafeMutablePointer<CFPropertyListFormat>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFPropertyList>!
@available(watchOS 2.0, *)
func CFPropertyListWrite(propertyList: CFPropertyList!, _ stream: CFWriteStream!, _ format: CFPropertyListFormat, _ options: CFOptionFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFIndex
@available(watchOS 2.0, *)
func CFPropertyListCreateData(allocator: CFAllocator!, _ propertyList: CFPropertyList!, _ format: CFPropertyListFormat, _ options: CFOptionFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFData>!
