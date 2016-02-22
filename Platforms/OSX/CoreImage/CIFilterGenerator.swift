
let kCIFilterGeneratorExportedKey: String
let kCIFilterGeneratorExportedKeyTargetObject: String
let kCIFilterGeneratorExportedKeyName: String
@available(OSX 10.5, *)
class CIFilterGenerator : NSObject, NSSecureCoding, NSCopying, CIFilterConstructor {
  init?(contentsOf aURL: NSURL)
  func connect(sourceObject: AnyObject, withKey sourceKey: String?, to targetObject: AnyObject, withKey targetKey: String)
  func disconnectObject(sourceObject: AnyObject, withKey key: String, to targetObject: AnyObject, withKey targetKey: String)
  func exportKey(key: String, from targetObject: AnyObject, withName exportedKeyName: String?)
  func removeExportedKey(exportedKeyName: String)
  var exportedKeys: [NSObject : AnyObject] { get }
  func setAttributes(attributes: [NSObject : AnyObject], forExportedKey key: String)
  var classAttributes: [NSObject : AnyObject]
  func filter() -> CIFilter
  func registerFilterName(name: String)
  func write(to aURL: NSURL, atomically flag: Bool) -> Bool
  init()
  @available(OSX 10.5, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.5, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.5, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func filter(withName name: String) -> CIFilter?
}
