
@available(iOS 4.0, *)
class MKOverlayView : UIView {
  convenience init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 4.0, *)
func MKRoadWidthAtZoomScale(zoomScale: MKZoomScale) -> CGFloat
