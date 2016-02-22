
@available(tvOS 3.0, *)
class NSPropertyMapping : NSObject {
  var name: String?
  var valueExpression: NSExpression?
  var userInfo: [NSObject : AnyObject]?
  init()
}
struct __propertyMappingFlags {
  var _isInUse: UInt32
  var _reservedPropertyMapping: UInt32
  init()
  init(_isInUse: UInt32, _reservedPropertyMapping: UInt32)
}
