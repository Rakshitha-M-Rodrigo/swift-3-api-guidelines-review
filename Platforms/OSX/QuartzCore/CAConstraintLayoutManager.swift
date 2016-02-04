
enum CAConstraintAttribute : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case MinX
  case MidX
  case MaxX
  case Width
  case MinY
  case MidY
  case MaxY
  case Height
}
extension CALayer {
  var constraints: [CAConstraint]?
  func addConstraint(c: CAConstraint)
}
class CAConstraintLayoutManager : Object {
  init()
}
class CAConstraint : Object, Coding {
  convenience init(attribute attr: CAConstraintAttribute, relativeTo srcId: String, attribute srcAttr: CAConstraintAttribute, offset c: CGFloat)
  convenience init(attribute attr: CAConstraintAttribute, relativeTo srcId: String, attribute srcAttr: CAConstraintAttribute)
  init(attribute attr: CAConstraintAttribute, relativeTo srcId: String, attribute srcAttr: CAConstraintAttribute, scale m: CGFloat, offset c: CGFloat)
  var attribute: CAConstraintAttribute { get }
  var sourceName: String { get }
  var sourceAttribute: CAConstraintAttribute { get }
  var scale: CGFloat { get }
  var offset: CGFloat { get }
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
