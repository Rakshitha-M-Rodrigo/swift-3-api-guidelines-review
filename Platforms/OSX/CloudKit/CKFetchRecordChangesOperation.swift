
@available(OSX 10.10, *)
class CKFetchRecordChangesOperation : CKDatabaseOperation {
  init(recordZoneID: CKRecordZoneID, previousServerChangeToken: CKServerChangeToken?)
  @NSCopying var recordZoneID: CKRecordZoneID
  @NSCopying var previousServerChangeToken: CKServerChangeToken?
  var resultsLimit: Int
  var desiredKeys: [String]?
  var recordChangedBlock: ((CKRecord) -> Void)?
  var recordWithIDWasDeletedBlock: ((CKRecordID) -> Void)?
  var moreComing: Bool { get }
  var fetchRecordChangesCompletionBlock: ((CKServerChangeToken?, Data?, Error?) -> Void)?
  init()
}
