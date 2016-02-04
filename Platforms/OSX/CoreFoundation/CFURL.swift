
enum CFURLPathStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case CFURLPOSIXPathStyle
  case CFURLWindowsPathStyle
}
class CFURL {
}
func CFURLGetTypeID() -> CFTypeID
func CFURLCreateWithBytes(allocator: CFAllocator!, _ URLBytes: UnsafePointer<UInt8>, _ length: CFIndex, _ encoding: CFStringEncoding, _ baseURL: CFURL!) -> CFURL!
func CFURLCreateData(allocator: CFAllocator!, _ url: CFURL!, _ encoding: CFStringEncoding, _ escapeWhitespace: Bool) -> CFData!
func CFURLCreateWithString(allocator: CFAllocator!, _ URLString: CFString!, _ baseURL: CFURL!) -> CFURL!
func CFURLCreateAbsoluteURLWithBytes(alloc: CFAllocator!, _ relativeURLBytes: UnsafePointer<UInt8>, _ length: CFIndex, _ encoding: CFStringEncoding, _ baseURL: CFURL!, _ useCompatibilityMode: Bool) -> CFURL!
func CFURLCreateWithFileSystemPath(allocator: CFAllocator!, _ filePath: CFString!, _ pathStyle: CFURLPathStyle, _ isDirectory: Bool) -> CFURL!
func CFURLCreateFromFileSystemRepresentation(allocator: CFAllocator!, _ buffer: UnsafePointer<UInt8>, _ bufLen: CFIndex, _ isDirectory: Bool) -> CFURL!
func CFURLCreateWithFileSystemPathRelativeToBase(allocator: CFAllocator!, _ filePath: CFString!, _ pathStyle: CFURLPathStyle, _ isDirectory: Bool, _ baseURL: CFURL!) -> CFURL!
func CFURLCreateFromFileSystemRepresentationRelativeToBase(allocator: CFAllocator!, _ buffer: UnsafePointer<UInt8>, _ bufLen: CFIndex, _ isDirectory: Bool, _ baseURL: CFURL!) -> CFURL!
func CFURLGetFileSystemRepresentation(url: CFURL!, _ resolveAgainstBase: Bool, _ buffer: UnsafeMutablePointer<UInt8>, _ maxBufLen: CFIndex) -> Bool
func CFURLCopyAbsoluteURL(relativeURL: CFURL!) -> CFURL!
func CFURLGetString(anURL: CFURL!) -> CFString!
func CFURLGetBaseURL(anURL: CFURL!) -> CFURL!
func CFURLCanBeDecomposed(anURL: CFURL!) -> Bool
func CFURLCopyScheme(anURL: CFURL!) -> CFString!
func CFURLCopyNetLocation(anURL: CFURL!) -> CFString!
func CFURLCopyPath(anURL: CFURL!) -> CFString!
func CFURLCopyStrictPath(anURL: CFURL!, _ isAbsolute: UnsafeMutablePointer<DarwinBoolean>) -> CFString!
func CFURLCopyFileSystemPath(anURL: CFURL!, _ pathStyle: CFURLPathStyle) -> CFString!
func CFURLHasDirectoryPath(anURL: CFURL!) -> Bool
func CFURLCopyResourceSpecifier(anURL: CFURL!) -> CFString!
func CFURLCopyHostName(anURL: CFURL!) -> CFString!
func CFURLGetPortNumber(anURL: CFURL!) -> Int32
func CFURLCopyUserName(anURL: CFURL!) -> CFString!
func CFURLCopyPassword(anURL: CFURL!) -> CFString!
func CFURLCopyParameterString(anURL: CFURL!, _ charactersToLeaveEscaped: CFString!) -> CFString!
func CFURLCopyQueryString(anURL: CFURL!, _ charactersToLeaveEscaped: CFString!) -> CFString!
func CFURLCopyFragment(anURL: CFURL!, _ charactersToLeaveEscaped: CFString!) -> CFString!
func CFURLCopyLastPathComponent(url: CFURL!) -> CFString!
func CFURLCopyPathExtension(url: CFURL!) -> CFString!
func CFURLCreateCopyAppendingPathComponent(allocator: CFAllocator!, _ url: CFURL!, _ pathComponent: CFString!, _ isDirectory: Bool) -> CFURL!
func CFURLCreateCopyDeletingLastPathComponent(allocator: CFAllocator!, _ url: CFURL!) -> CFURL!
func CFURLCreateCopyAppendingPathExtension(allocator: CFAllocator!, _ url: CFURL!, _ extension: CFString!) -> CFURL!
func CFURLCreateCopyDeletingPathExtension(allocator: CFAllocator!, _ url: CFURL!) -> CFURL!
func CFURLGetBytes(url: CFURL!, _ buffer: UnsafeMutablePointer<UInt8>, _ bufferLength: CFIndex) -> CFIndex
enum CFURLComponentType : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Scheme
  case NetLocation
  case Path
  case ResourceSpecifier
  case User
  case Password
  case UserInfo
  case Host
  case Port
  case ParameterString
  case Query
  case Fragment
}
func CFURLGetByteRangeForComponent(url: CFURL!, _ component: CFURLComponentType, _ rangeIncludingSeparators: UnsafeMutablePointer<CFRange>) -> CFRange
func CFURLCreateStringByReplacingPercentEscapes(allocator: CFAllocator!, _ originalString: CFString!, _ charactersToLeaveEscaped: CFString!) -> CFString!
@available(OSX, introduced=10.0, deprecated=10.11, message="Use [NSString stringByRemovingPercentEncoding] or CFURLCreateStringByReplacingPercentEscapes() instead, which always uses the recommended UTF-8 encoding.")
func CFURLCreateStringByReplacingPercentEscapesUsingEncoding(allocator: CFAllocator!, _ origString: CFString!, _ charsToLeaveEscaped: CFString!, _ encoding: CFStringEncoding) -> CFString!
@available(OSX, introduced=10.0, deprecated=10.11, message="Use [NSString stringByAddingPercentEncodingWithAllowedCharacters:] instead, which always uses the recommended UTF-8 encoding, and which encodes for a specific URL component or subcomponent (since each URL component or subcomponent has different rules for what characters are valid).")
func CFURLCreateStringByAddingPercentEscapes(allocator: CFAllocator!, _ originalString: CFString!, _ charactersToLeaveUnescaped: CFString!, _ legalURLCharactersToBeEscaped: CFString!, _ encoding: CFStringEncoding) -> CFString!
@available(OSX 10.9, *)
func CFURLIsFileReferenceURL(url: CFURL!) -> Bool
@available(OSX 10.6, *)
func CFURLCreateFileReferenceURL(allocator: CFAllocator!, _ url: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>!
@available(OSX 10.6, *)
func CFURLCreateFilePathURL(allocator: CFAllocator!, _ url: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>!
@available(OSX 10.6, *)
func CFURLCopyResourcePropertyForKey(url: CFURL!, _ key: CFString!, _ propertyValueTypeRefPtr: UnsafeMutablePointer<Void>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(OSX 10.6, *)
func CFURLCopyResourcePropertiesForKeys(url: CFURL!, _ keys: CFArray!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!
@available(OSX 10.6, *)
func CFURLSetResourcePropertyForKey(url: CFURL!, _ key: CFString!, _ propertyValue: CFTypeRef!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(OSX 10.6, *)
func CFURLSetResourcePropertiesForKeys(url: CFURL!, _ keyedPropertyValues: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(OSX 10.7, *)
let kCFURLKeysOfUnsetValuesKey: CFString!
@available(OSX 10.6, *)
func CFURLClearResourcePropertyCacheForKey(url: CFURL!, _ key: CFString!)
@available(OSX 10.6, *)
func CFURLClearResourcePropertyCache(url: CFURL!)
@available(OSX 10.6, *)
func CFURLSetTemporaryResourcePropertyForKey(url: CFURL!, _ key: CFString!, _ propertyValue: CFTypeRef!)
@available(OSX 10.6, *)
func CFURLResourceIsReachable(url: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(OSX 10.6, *)
let kCFURLNameKey: CFString!
@available(OSX 10.6, *)
let kCFURLLocalizedNameKey: CFString!
@available(OSX 10.6, *)
let kCFURLIsRegularFileKey: CFString!
@available(OSX 10.6, *)
let kCFURLIsDirectoryKey: CFString!
@available(OSX 10.6, *)
let kCFURLIsSymbolicLinkKey: CFString!
@available(OSX 10.6, *)
let kCFURLIsVolumeKey: CFString!
@available(OSX 10.6, *)
let kCFURLIsPackageKey: CFString!
@available(OSX 10.11, *)
let kCFURLIsApplicationKey: CFString!
@available(OSX 10.11, *)
let kCFURLApplicationIsScriptableKey: CFString!
@available(OSX 10.6, *)
let kCFURLIsSystemImmutableKey: CFString!
@available(OSX 10.6, *)
let kCFURLIsUserImmutableKey: CFString!
@available(OSX 10.6, *)
let kCFURLIsHiddenKey: CFString!
@available(OSX 10.6, *)
let kCFURLHasHiddenExtensionKey: CFString!
@available(OSX 10.6, *)
let kCFURLCreationDateKey: CFString!
@available(OSX 10.6, *)
let kCFURLContentAccessDateKey: CFString!
@available(OSX 10.6, *)
let kCFURLContentModificationDateKey: CFString!
@available(OSX 10.6, *)
let kCFURLAttributeModificationDateKey: CFString!
@available(OSX 10.6, *)
let kCFURLLinkCountKey: CFString!
@available(OSX 10.6, *)
let kCFURLParentDirectoryURLKey: CFString!
@available(OSX 10.6, *)
let kCFURLVolumeURLKey: CFString!
@available(OSX 10.6, *)
let kCFURLTypeIdentifierKey: CFString!
@available(OSX 10.6, *)
let kCFURLLocalizedTypeDescriptionKey: CFString!
@available(OSX 10.6, *)
let kCFURLLabelNumberKey: CFString!
@available(OSX 10.6, *)
let kCFURLLabelColorKey: CFString!
@available(OSX 10.6, *)
let kCFURLLocalizedLabelKey: CFString!
@available(OSX 10.6, *)
let kCFURLEffectiveIconKey: CFString!
@available(OSX 10.6, *)
let kCFURLCustomIconKey: CFString!
@available(OSX 10.7, *)
let kCFURLFileResourceIdentifierKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeIdentifierKey: CFString!
@available(OSX 10.7, *)
let kCFURLPreferredIOBlockSizeKey: CFString!
@available(OSX 10.7, *)
let kCFURLIsReadableKey: CFString!
@available(OSX 10.7, *)
let kCFURLIsWritableKey: CFString!
@available(OSX 10.7, *)
let kCFURLIsExecutableKey: CFString!
@available(OSX 10.7, *)
let kCFURLFileSecurityKey: CFString!
@available(OSX 10.8, *)
let kCFURLIsExcludedFromBackupKey: CFString!
@available(OSX 10.9, *)
let kCFURLTagNamesKey: CFString!
@available(OSX 10.8, *)
let kCFURLPathKey: CFString!
@available(OSX 10.7, *)
let kCFURLIsMountTriggerKey: CFString!
@available(OSX 10.10, *)
let kCFURLGenerationIdentifierKey: CFString!
@available(OSX 10.10, *)
let kCFURLDocumentIdentifierKey: CFString!
@available(OSX 10.10, *)
let kCFURLAddedToDirectoryDateKey: CFString!
@available(OSX 10.10, *)
let kCFURLQuarantinePropertiesKey: CFString!
@available(OSX 10.7, *)
let kCFURLFileResourceTypeKey: CFString!
@available(OSX 10.7, *)
let kCFURLFileResourceTypeNamedPipe: CFString!
@available(OSX 10.7, *)
let kCFURLFileResourceTypeCharacterSpecial: CFString!
@available(OSX 10.7, *)
let kCFURLFileResourceTypeDirectory: CFString!
@available(OSX 10.7, *)
let kCFURLFileResourceTypeBlockSpecial: CFString!
@available(OSX 10.7, *)
let kCFURLFileResourceTypeRegular: CFString!
@available(OSX 10.7, *)
let kCFURLFileResourceTypeSymbolicLink: CFString!
@available(OSX 10.7, *)
let kCFURLFileResourceTypeSocket: CFString!
@available(OSX 10.7, *)
let kCFURLFileResourceTypeUnknown: CFString!
@available(OSX 10.6, *)
let kCFURLFileSizeKey: CFString!
@available(OSX 10.6, *)
let kCFURLFileAllocatedSizeKey: CFString!
@available(OSX 10.7, *)
let kCFURLTotalFileSizeKey: CFString!
@available(OSX 10.7, *)
let kCFURLTotalFileAllocatedSizeKey: CFString!
@available(OSX 10.6, *)
let kCFURLIsAliasFileKey: CFString!
@available(OSX 10.6, *)
let kCFURLVolumeLocalizedFormatDescriptionKey: CFString!
@available(OSX 10.6, *)
let kCFURLVolumeTotalCapacityKey: CFString!
@available(OSX 10.6, *)
let kCFURLVolumeAvailableCapacityKey: CFString!
@available(OSX 10.6, *)
let kCFURLVolumeResourceCountKey: CFString!
@available(OSX 10.6, *)
let kCFURLVolumeSupportsPersistentIDsKey: CFString!
@available(OSX 10.6, *)
let kCFURLVolumeSupportsSymbolicLinksKey: CFString!
@available(OSX 10.6, *)
let kCFURLVolumeSupportsHardLinksKey: CFString!
@available(OSX 10.6, *)
let kCFURLVolumeSupportsJournalingKey: CFString!
@available(OSX 10.6, *)
let kCFURLVolumeIsJournalingKey: CFString!
@available(OSX 10.6, *)
let kCFURLVolumeSupportsSparseFilesKey: CFString!
@available(OSX 10.6, *)
let kCFURLVolumeSupportsZeroRunsKey: CFString!
@available(OSX 10.6, *)
let kCFURLVolumeSupportsCaseSensitiveNamesKey: CFString!
@available(OSX 10.6, *)
let kCFURLVolumeSupportsCasePreservedNamesKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeSupportsRootDirectoryDatesKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeSupportsVolumeSizesKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeSupportsRenamingKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeSupportsAdvisoryFileLockingKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeSupportsExtendedSecurityKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeIsBrowsableKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeMaximumFileSizeKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeIsEjectableKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeIsRemovableKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeIsInternalKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeIsAutomountedKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeIsLocalKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeIsReadOnlyKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeCreationDateKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeURLForRemountingKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeUUIDStringKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeNameKey: CFString!
@available(OSX 10.7, *)
let kCFURLVolumeLocalizedNameKey: CFString!
@available(OSX 10.7, *)
let kCFURLIsUbiquitousItemKey: CFString!
@available(OSX 10.7, *)
let kCFURLUbiquitousItemHasUnresolvedConflictsKey: CFString!
@available(OSX 10.7, *)
let kCFURLUbiquitousItemIsDownloadingKey: CFString!
@available(OSX 10.7, *)
let kCFURLUbiquitousItemIsUploadedKey: CFString!
@available(OSX 10.7, *)
let kCFURLUbiquitousItemIsUploadingKey: CFString!
@available(OSX 10.9, *)
let kCFURLUbiquitousItemDownloadingStatusKey: CFString!
@available(OSX 10.9, *)
let kCFURLUbiquitousItemDownloadingErrorKey: CFString!
@available(OSX 10.9, *)
let kCFURLUbiquitousItemUploadingErrorKey: CFString!
@available(OSX 10.9, *)
let kCFURLUbiquitousItemDownloadingStatusNotDownloaded: CFString!
@available(OSX 10.9, *)
let kCFURLUbiquitousItemDownloadingStatusDownloaded: CFString!
@available(OSX 10.9, *)
let kCFURLUbiquitousItemDownloadingStatusCurrent: CFString!
@available(OSX 10.6, *)
struct CFURLBookmarkCreationOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var MinimalBookmarkMask: CFURLBookmarkCreationOptions { get }
  static var SuitableForBookmarkFile: CFURLBookmarkCreationOptions { get }
  @available(OSX 10.7, *)
  static var WithSecurityScope: CFURLBookmarkCreationOptions { get }
  @available(OSX 10.7, *)
  static var SecurityScopeAllowOnlyReadAccess: CFURLBookmarkCreationOptions { get }
}
@available(OSX 10.6, *)
struct CFURLBookmarkResolutionOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var CFURLBookmarkResolutionWithoutUIMask: CFURLBookmarkResolutionOptions { get }
  static var CFURLBookmarkResolutionWithoutMountingMask: CFURLBookmarkResolutionOptions { get }
  @available(OSX 10.7, *)
  static var CFURLBookmarkResolutionWithSecurityScope: CFURLBookmarkResolutionOptions { get }
  static var CFBookmarkResolutionWithoutUIMask: CFURLBookmarkResolutionOptions { get }
  static var CFBookmarkResolutionWithoutMountingMask: CFURLBookmarkResolutionOptions { get }
}
typealias CFURLBookmarkFileCreationOptions = CFOptionFlags
@available(OSX 10.6, *)
func CFURLCreateBookmarkData(allocator: CFAllocator!, _ url: CFURL!, _ options: CFURLBookmarkCreationOptions, _ resourcePropertiesToInclude: CFArray!, _ relativeToURL: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFData>!
@available(OSX 10.6, *)
func CFURLCreateByResolvingBookmarkData(allocator: CFAllocator!, _ bookmark: CFData!, _ options: CFURLBookmarkResolutionOptions, _ relativeToURL: CFURL!, _ resourcePropertiesToInclude: CFArray!, _ isStale: UnsafeMutablePointer<DarwinBoolean>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>!
@available(OSX 10.6, *)
func CFURLCreateResourcePropertiesForKeysFromBookmarkData(allocator: CFAllocator!, _ resourcePropertiesToReturn: CFArray!, _ bookmark: CFData!) -> Unmanaged<CFDictionary>!
@available(OSX 10.6, *)
func CFURLCreateResourcePropertyForKeyFromBookmarkData(allocator: CFAllocator!, _ resourcePropertyKey: CFString!, _ bookmark: CFData!) -> Unmanaged<CFTypeRef>!
@available(OSX 10.6, *)
func CFURLCreateBookmarkDataFromFile(allocator: CFAllocator!, _ fileURL: CFURL!, _ errorRef: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFData>!
@available(OSX 10.6, *)
func CFURLWriteBookmarkDataToFile(bookmarkRef: CFData!, _ fileURL: CFURL!, _ options: CFURLBookmarkFileCreationOptions, _ errorRef: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(OSX 10.6, *)
func CFURLCreateBookmarkDataFromAliasRecord(allocatorRef: CFAllocator!, _ aliasRecordDataRef: CFData!) -> Unmanaged<CFData>!
@available(OSX 10.7, *)
func CFURLStartAccessingSecurityScopedResource(url: CFURL!) -> Bool
@available(OSX 10.7, *)
func CFURLStopAccessingSecurityScopedResource(url: CFURL!)
