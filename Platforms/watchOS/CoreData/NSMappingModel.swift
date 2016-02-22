
@available(watchOS 2.0, *)
class NSMappingModel : NSObject {
  /*not inherited*/ init?(from bundles: [NSBundle]?, forSourceModel sourceModel: NSManagedObjectModel?, destinationModel: NSManagedObjectModel?)
  @available(watchOS 2.0, *)
  class func inferredMappingModel(forSourceModel sourceModel: NSManagedObjectModel, destinationModel: NSManagedObjectModel) throws -> NSMappingModel
  init?(contentsOf url: NSURL?)
  var entityMappings: [NSEntityMapping]!
  var entityMappingsByName: [String : NSEntityMapping] { get }
  init()
}
struct __modelMappingFlags {
  var _isInUse: UInt32
  var _reservedModelMapping: UInt32
  init()
  init(_isInUse: UInt32, _reservedModelMapping: UInt32)
}
