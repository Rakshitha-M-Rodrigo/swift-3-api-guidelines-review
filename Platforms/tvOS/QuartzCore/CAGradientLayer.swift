
class CAGradientLayer : CALayer {
  var colors: [AnyObject]?
  var locations: [NSNumber]?
  var startPoint: CGPoint
  var endPoint: CGPoint
  var type: String
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 3.0, *)
let kCAGradientLayerAxial: String
