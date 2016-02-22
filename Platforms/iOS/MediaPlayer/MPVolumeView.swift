
@available(iOS 2.0, *)
class MPVolumeView : UIView, NSCoding {
  @available(iOS 4.2, *)
  var showsVolumeSlider: Bool
  @available(iOS 4.2, *)
  var showsRouteButton: Bool
  @available(iOS 7.0, *)
  var areWirelessRoutesAvailable: Bool { get }
  @available(iOS 7.0, *)
  var isWirelessRouteActive: Bool { get }
  @available(iOS 6.0, *)
  func setMinimumVolumeSliderImage(image: UIImage?, for state: UIControlState)
  @available(iOS 6.0, *)
  func setMaximumVolumeSliderImage(image: UIImage?, for state: UIControlState)
  @available(iOS 6.0, *)
  func setVolumeThumbImage(image: UIImage?, for state: UIControlState)
  @available(iOS 6.0, *)
  func minimumVolumeSliderImage(for state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func maximumVolumeSliderImage(for state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func volumeThumbImage(for state: UIControlState) -> UIImage?
  @available(iOS 7.0, *)
  var volumeWarningSliderImage: UIImage?
  @available(iOS 6.0, *)
  func volumeSliderRect(forBounds bounds: CGRect) -> CGRect
  @available(iOS 6.0, *)
  func volumeThumbRect(forBounds bounds: CGRect, volumeSliderRect rect: CGRect, value: Float) -> CGRect
  @available(iOS 6.0, *)
  func setRouteButtonImage(image: UIImage?, for state: UIControlState)
  @available(iOS 6.0, *)
  func routeButtonImage(for state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func routeButtonRect(forBounds bounds: CGRect) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 7.0, *)
let MPVolumeViewWirelessRoutesAvailableDidChangeNotification: String
@available(iOS 7.0, *)
let MPVolumeViewWirelessRouteActiveDidChangeNotification: String
