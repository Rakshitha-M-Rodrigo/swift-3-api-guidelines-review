
class CGDataProvider {
}
typealias CGDataProviderGetBytesCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, Int) -> Int
typealias CGDataProviderSkipForwardCallback = @convention(c) (UnsafeMutablePointer<Void>, off_t) -> off_t
typealias CGDataProviderRewindCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
typealias CGDataProviderReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGDataProviderSequentialCallbacks {
  var version: UInt32
  var getBytes: CGDataProviderGetBytesCallback?
  var skipForward: CGDataProviderSkipForwardCallback?
  var rewind: CGDataProviderRewindCallback?
  var releaseInfo: CGDataProviderReleaseInfoCallback?
  init()
  init(version: UInt32, getBytes: CGDataProviderGetBytesCallback?, skipForward: CGDataProviderSkipForwardCallback?, rewind: CGDataProviderRewindCallback?, releaseInfo: CGDataProviderReleaseInfoCallback?)
}
typealias CGDataProviderGetBytePointerCallback = @convention(c) (UnsafeMutablePointer<Void>) -> UnsafePointer<Void>
typealias CGDataProviderReleaseBytePointerCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>) -> Void
typealias CGDataProviderGetBytesAtPositionCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, off_t, Int) -> Int
struct CGDataProviderDirectCallbacks {
  var version: UInt32
  var getBytePointer: CGDataProviderGetBytePointerCallback?
  var releaseBytePointer: CGDataProviderReleaseBytePointerCallback?
  var getBytesAtPosition: CGDataProviderGetBytesAtPositionCallback?
  var releaseInfo: CGDataProviderReleaseInfoCallback?
  init()
  init(version: UInt32, getBytePointer: CGDataProviderGetBytePointerCallback?, releaseBytePointer: CGDataProviderReleaseBytePointerCallback?, getBytesAtPosition: CGDataProviderGetBytesAtPositionCallback?, releaseInfo: CGDataProviderReleaseInfoCallback?)
}
@available(OSX 10.2, *)
func CGDataProviderGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CGDataProviderCreateSequential(info: UnsafeMutablePointer<Void>, _ callbacks: UnsafePointer<CGDataProviderSequentialCallbacks>) -> CGDataProvider?
@available(OSX 10.5, *)
func CGDataProviderCreateDirect(info: UnsafeMutablePointer<Void>, _ size: off_t, _ callbacks: UnsafePointer<CGDataProviderDirectCallbacks>) -> CGDataProvider?
typealias CGDataProviderReleaseDataCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>, Int) -> Void
@available(OSX 10.0, *)
func CGDataProviderCreateWithData(info: UnsafeMutablePointer<Void>, _ data: UnsafePointer<Void>, _ size: Int, _ releaseData: CGDataProviderReleaseDataCallback?) -> CGDataProvider?
@available(OSX 10.4, *)
func CGDataProviderCreateWithCFData(data: CFData?) -> CGDataProvider?
@available(OSX 10.0, *)
func CGDataProviderCreateWithURL(url: CFURL?) -> CGDataProvider?
@available(OSX 10.0, *)
func CGDataProviderCreateWithFilename(filename: UnsafePointer<Int8>) -> CGDataProvider?
@available(OSX 10.3, *)
func CGDataProviderCopyData(provider: CGDataProvider?) -> CFData?
