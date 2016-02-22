
enum NSEntityMappingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case undefinedEntityMappingType
  case customEntityMappingType
  case addEntityMappingType
  case removeEntityMappingType
  case copyEntityMappingType
  case transformEntityMappingType
}
@available(OSX 10.5, *)
class NSEntityMapping : NSObject {
  var name: String!
  var mappingType: NSEntityMappingType
  var sourceEntityName: String?
  @NSCopying var sourceEntityVersionHash: NSData?
  var destinationEntityName: String?
  @NSCopying var destinationEntityVersionHash: NSData?
  var attributeMappings: [NSPropertyMapping]?
  var relationshipMappings: [NSPropertyMapping]?
  var sourceExpression: NSExpression?
  var userInfo: [NSObject : AnyObject]?
  var entityMigrationPolicyClassName: String?
  init()
}
struct __entityMappingFlags {
  var _isInUse: UInt32
  var _reservedEntityMapping: UInt32
  init()
  init(_isInUse: UInt32, _reservedEntityMapping: UInt32)
}
