
class CAMediaTimingFunction : Object, Coding {
  convenience init(name: String)
  init(controlPoints c1x: Float, _ c1y: Float, _ c2x: Float, _ c2y: Float)
  func getControlPointAt(idx: Int, values ptr: UnsafeMutablePointer<Float>)
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.5, *)
let kCAMediaTimingFunctionLinear: String
@available(OSX 10.5, *)
let kCAMediaTimingFunctionEaseIn: String
@available(OSX 10.5, *)
let kCAMediaTimingFunctionEaseOut: String
@available(OSX 10.5, *)
let kCAMediaTimingFunctionEaseInEaseOut: String
@available(OSX 10.6, *)
let kCAMediaTimingFunctionDefault: String
