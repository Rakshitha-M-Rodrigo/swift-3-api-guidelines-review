
@available(iOS, introduced=3.0, deprecated=9.0, message="Use MKPinAnnotationView's pinTintColor instead")
enum MKPinAnnotationColor : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Red
  case Green
  case Purple
}
@available(iOS 3.0, *)
class MKPinAnnotationView : MKAnnotationView {
  @available(iOS 9.0, *)
  class func redPinColor() -> UIColor
  @available(iOS 9.0, *)
  class func greenPinColor() -> UIColor
  @available(iOS 9.0, *)
  class func purplePinColor() -> UIColor
  @available(iOS 9.0, *)
  var pinTintColor: UIColor!
  var animatesDrop: Bool
  @available(iOS, introduced=3.0, deprecated=9.0, message="Use pinTintColor instead")
  var pinColor: MKPinAnnotationColor
  init(annotation: MKAnnotation?, reuseIdentifier: String?)
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
