
let ADErrorDomain: String
@available(iOS 4.0, *)
enum ADError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case serverFailure
  case loadingThrottled
  case inventoryUnavailable
  case configurationError
  case bannerVisibleWithoutContent
  case applicationInactive
  case adUnloaded
}
@available(iOS 6.0, *)
enum ADAdType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case banner
  case mediumRectangle
}
@available(iOS 4.0, *)
class ADBannerView : UIView {
  @available(iOS 6.0, *)
  init!(adType type: ADAdType)
  @available(iOS 6.0, *)
  var adType: ADAdType { get }
  weak var delegate: @sil_weak ADBannerViewDelegate!
  var isBannerLoaded: Bool { get }
  var isBannerViewActionInProgress: Bool { get }
  func cancelAction()
  var advertisingSection: String!
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol ADBannerViewDelegate : NSObjectProtocol {
  @available(iOS 5.0, *)
  optional func bannerViewWillLoadAd(banner: ADBannerView!)
  @available(iOS 4.0, *)
  optional func bannerViewDidLoadAd(banner: ADBannerView!)
  @available(iOS 4.0, *)
  optional func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!)
  @available(iOS 4.0, *)
  optional func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool
  @available(iOS 4.0, *)
  optional func bannerViewActionDidFinish(banner: ADBannerView!)
}
