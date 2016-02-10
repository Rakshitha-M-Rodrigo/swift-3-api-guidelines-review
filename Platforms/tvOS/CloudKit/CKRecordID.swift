
@available(tvOS 8.0, *)
class CKRecordID : Object, SecureCoding, Copying {
  convenience init(recordName: String)
  init(recordName: String, zoneID: CKRecordZoneID)
  var recordName: String { get }
  var zoneID: CKRecordZoneID { get }
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}