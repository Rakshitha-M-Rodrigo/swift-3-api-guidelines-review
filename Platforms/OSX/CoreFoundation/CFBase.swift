
var kCFCoreFoundationVersionNumber: Double
var kCFCoreFoundationVersionNumber10_0: Double { get }
var kCFCoreFoundationVersionNumber10_0_3: Double { get }
var kCFCoreFoundationVersionNumber10_1: Double { get }
var kCFCoreFoundationVersionNumber10_1_1: Double { get }
var kCFCoreFoundationVersionNumber10_1_2: Double { get }
var kCFCoreFoundationVersionNumber10_1_3: Double { get }
var kCFCoreFoundationVersionNumber10_1_4: Double { get }
var kCFCoreFoundationVersionNumber10_2: Double { get }
var kCFCoreFoundationVersionNumber10_2_1: Double { get }
var kCFCoreFoundationVersionNumber10_2_2: Double { get }
var kCFCoreFoundationVersionNumber10_2_3: Double { get }
var kCFCoreFoundationVersionNumber10_2_4: Double { get }
var kCFCoreFoundationVersionNumber10_2_5: Double { get }
var kCFCoreFoundationVersionNumber10_2_6: Double { get }
var kCFCoreFoundationVersionNumber10_2_7: Double { get }
var kCFCoreFoundationVersionNumber10_2_8: Double { get }
var kCFCoreFoundationVersionNumber10_3: Double { get }
var kCFCoreFoundationVersionNumber10_3_1: Double { get }
var kCFCoreFoundationVersionNumber10_3_2: Double { get }
var kCFCoreFoundationVersionNumber10_3_3: Double { get }
var kCFCoreFoundationVersionNumber10_3_4: Double { get }
var kCFCoreFoundationVersionNumber10_3_5: Double { get }
var kCFCoreFoundationVersionNumber10_3_6: Double { get }
var kCFCoreFoundationVersionNumber10_3_7: Double { get }
var kCFCoreFoundationVersionNumber10_3_8: Double { get }
var kCFCoreFoundationVersionNumber10_3_9: Double { get }
var kCFCoreFoundationVersionNumber10_4: Double { get }
var kCFCoreFoundationVersionNumber10_4_1: Double { get }
var kCFCoreFoundationVersionNumber10_4_2: Double { get }
var kCFCoreFoundationVersionNumber10_4_3: Double { get }
var kCFCoreFoundationVersionNumber10_4_4_Intel: Double { get }
var kCFCoreFoundationVersionNumber10_4_4_PowerPC: Double { get }
var kCFCoreFoundationVersionNumber10_4_5_Intel: Double { get }
var kCFCoreFoundationVersionNumber10_4_5_PowerPC: Double { get }
var kCFCoreFoundationVersionNumber10_4_6_Intel: Double { get }
var kCFCoreFoundationVersionNumber10_4_6_PowerPC: Double { get }
var kCFCoreFoundationVersionNumber10_4_7: Double { get }
var kCFCoreFoundationVersionNumber10_4_8: Double { get }
var kCFCoreFoundationVersionNumber10_4_9: Double { get }
var kCFCoreFoundationVersionNumber10_4_10: Double { get }
var kCFCoreFoundationVersionNumber10_4_11: Double { get }
var kCFCoreFoundationVersionNumber10_5: Double { get }
var kCFCoreFoundationVersionNumber10_5_1: Double { get }
var kCFCoreFoundationVersionNumber10_5_2: Double { get }
var kCFCoreFoundationVersionNumber10_5_3: Double { get }
var kCFCoreFoundationVersionNumber10_5_4: Double { get }
var kCFCoreFoundationVersionNumber10_5_5: Double { get }
var kCFCoreFoundationVersionNumber10_5_6: Double { get }
var kCFCoreFoundationVersionNumber10_5_7: Double { get }
var kCFCoreFoundationVersionNumber10_5_8: Double { get }
var kCFCoreFoundationVersionNumber10_6: Double { get }
var kCFCoreFoundationVersionNumber10_6_1: Double { get }
var kCFCoreFoundationVersionNumber10_6_2: Double { get }
var kCFCoreFoundationVersionNumber10_6_3: Double { get }
var kCFCoreFoundationVersionNumber10_6_4: Double { get }
var kCFCoreFoundationVersionNumber10_6_5: Double { get }
var kCFCoreFoundationVersionNumber10_6_6: Double { get }
var kCFCoreFoundationVersionNumber10_6_7: Double { get }
var kCFCoreFoundationVersionNumber10_6_8: Double { get }
var kCFCoreFoundationVersionNumber10_7: Double { get }
var kCFCoreFoundationVersionNumber10_7_1: Double { get }
var kCFCoreFoundationVersionNumber10_7_2: Double { get }
var kCFCoreFoundationVersionNumber10_7_3: Double { get }
var kCFCoreFoundationVersionNumber10_7_4: Double { get }
var kCFCoreFoundationVersionNumber10_7_5: Double { get }
var kCFCoreFoundationVersionNumber10_8: Double { get }
var kCFCoreFoundationVersionNumber10_8_1: Double { get }
var kCFCoreFoundationVersionNumber10_8_2: Double { get }
var kCFCoreFoundationVersionNumber10_8_3: Double { get }
var kCFCoreFoundationVersionNumber10_8_4: Double { get }
var kCFCoreFoundationVersionNumber10_9: Double { get }
var kCFCoreFoundationVersionNumber10_9_1: Double { get }
var kCFCoreFoundationVersionNumber10_9_2: Double { get }
var kCFCoreFoundationVersionNumber10_10: Double { get }
var kCFCoreFoundationVersionNumber10_10_1: Double { get }
var kCFCoreFoundationVersionNumber10_10_2: Int32 { get }
var kCFCoreFoundationVersionNumber10_10_3: Double { get }
typealias CFTypeID = UInt
typealias CFOptionFlags = UInt
typealias CFHashCode = UInt
typealias CFIndex = Int
typealias CFTypeRef = AnyObject
class CFString {
}
class CFMutableString {
}
typealias CFPropertyList = CFTypeRef
enum CFComparisonResult : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case CompareLessThan
  case CompareEqualTo
  case CompareGreaterThan
}
typealias CFComparatorFunction = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> CFComparisonResult
let kCFNotFound: CFIndex
struct CFRange {
  var location: CFIndex
  var length: CFIndex
  init()
  init(location: CFIndex, length: CFIndex)
}
func CFRangeMake(loc: CFIndex, _ len: CFIndex) -> CFRange
func __CFRangeMake(loc: CFIndex, _ len: CFIndex) -> CFRange
class CFNull {
}
func CFNullGetTypeID() -> CFTypeID
let kCFNull: CFNull!
class CFAllocator {
}
let kCFAllocatorDefault: CFAllocator!
let kCFAllocatorSystemDefault: CFAllocator!
let kCFAllocatorMalloc: CFAllocator!
let kCFAllocatorMallocZone: CFAllocator!
let kCFAllocatorNull: CFAllocator!
let kCFAllocatorUseContext: CFAllocator!
typealias CFAllocatorRetainCallBack = @convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFAllocatorReleaseCallBack = @convention(c) (UnsafePointer<Void>) -> Void
typealias CFAllocatorCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
typealias CFAllocatorAllocateCallBack = @convention(c) (CFIndex, CFOptionFlags, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>
typealias CFAllocatorReallocateCallBack = @convention(c) (UnsafeMutablePointer<Void>, CFIndex, CFOptionFlags, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>
typealias CFAllocatorDeallocateCallBack = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
typealias CFAllocatorPreferredSizeCallBack = @convention(c) (CFIndex, CFOptionFlags, UnsafeMutablePointer<Void>) -> CFIndex
struct CFAllocatorContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack!
  var release: CFAllocatorReleaseCallBack!
  var copyDescription: CFAllocatorCopyDescriptionCallBack!
  var allocate: CFAllocatorAllocateCallBack!
  var reallocate: CFAllocatorReallocateCallBack!
  var deallocate: CFAllocatorDeallocateCallBack!
  var preferredSize: CFAllocatorPreferredSizeCallBack!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFAllocatorRetainCallBack!, release: CFAllocatorReleaseCallBack!, copyDescription: CFAllocatorCopyDescriptionCallBack!, allocate: CFAllocatorAllocateCallBack!, reallocate: CFAllocatorReallocateCallBack!, deallocate: CFAllocatorDeallocateCallBack!, preferredSize: CFAllocatorPreferredSizeCallBack!)
}
func CFAllocatorGetTypeID() -> CFTypeID
func CFAllocatorSetDefault(allocator: CFAllocator!)
func CFAllocatorGetDefault() -> Unmanaged<CFAllocator>!
func CFAllocatorCreate(allocator: CFAllocator!, _ context: UnsafeMutablePointer<CFAllocatorContext>) -> Unmanaged<CFAllocator>!
func CFAllocatorAllocate(allocator: CFAllocator!, _ size: CFIndex, _ hint: CFOptionFlags) -> UnsafeMutablePointer<Void>
func CFAllocatorReallocate(allocator: CFAllocator!, _ ptr: UnsafeMutablePointer<Void>, _ newsize: CFIndex, _ hint: CFOptionFlags) -> UnsafeMutablePointer<Void>
func CFAllocatorDeallocate(allocator: CFAllocator!, _ ptr: UnsafeMutablePointer<Void>)
func CFAllocatorGetPreferredSizeForSize(allocator: CFAllocator!, _ size: CFIndex, _ hint: CFOptionFlags) -> CFIndex
func CFAllocatorGetContext(allocator: CFAllocator!, _ context: UnsafeMutablePointer<CFAllocatorContext>)
func CFGetTypeID(cf: CFTypeRef!) -> CFTypeID
func CFCopyTypeIDDescription(type_id: CFTypeID) -> CFString!
func CFGetRetainCount(cf: CFTypeRef!) -> CFIndex
func CFEqual(cf1: CFTypeRef!, _ cf2: CFTypeRef!) -> Bool
func CFHash(cf: CFTypeRef!) -> CFHashCode
func CFCopyDescription(cf: CFTypeRef!) -> CFString!
func CFGetAllocator(cf: CFTypeRef!) -> CFAllocator!
