
@available(iOS 9.1, *)
typealias PHLivePhotoRequestID = Int32
let PHLivePhotoRequestIDInvalid: PHLivePhotoRequestID
@available(iOS 9.1, *)
let PHLivePhotoInfoErrorKey: String
@available(iOS 9.1, *)
let PHLivePhotoInfoIsDegradedKey: String
@available(iOS 9.1, *)
let PHLivePhotoInfoCancelledKey: String
@available(iOS 9.1, *)
class PHLivePhoto : Object, Copying, SecureCoding {
  var size: CGSize { get }
  class func requestWithResourceFileURLs(fileURLs: [URL], placeholderImage image: UIImage?, targetSize: CGSize, contentMode: PHImageContentMode, resultHandler: (PHLivePhoto?, [Object : AnyObject]) -> Void) -> PHLivePhotoRequestID
  class func cancelRequestWithRequestID(requestID: PHLivePhotoRequestID)
  init()
  @available(iOS 9.1, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 9.1, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.1, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
