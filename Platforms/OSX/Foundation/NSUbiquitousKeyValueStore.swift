
@available(OSX 10.7, *)
class UbiquitousKeyValueStore : Object {
  class func defaultStore() -> UbiquitousKeyValueStore
  func objectForKey(aKey: String) -> AnyObject?
  func setObject(anObject: AnyObject?, forKey aKey: String)
  func removeObjectForKey(aKey: String)
  func stringForKey(aKey: String) -> String?
  func arrayForKey(aKey: String) -> [AnyObject]?
  func dictionaryForKey(aKey: String) -> [String : AnyObject]?
  func dataForKey(aKey: String) -> Data?
  func longLongForKey(aKey: String) -> Int64
  func doubleForKey(aKey: String) -> Double
  func boolForKey(aKey: String) -> Bool
  func setString(aString: String?, forKey aKey: String)
  func setData(aData: Data?, forKey aKey: String)
  func setArray(anArray: [AnyObject]?, forKey aKey: String)
  func setDictionary(aDictionary: [String : AnyObject]?, forKey aKey: String)
  func setLongLong(value: Int64, forKey aKey: String)
  func setDouble(value: Double, forKey aKey: String)
  func setBool(value: Bool, forKey aKey: String)
  var dictionaryRepresentation: [String : AnyObject] { get }
  func synchronize() -> Bool
  init()
}
@available(OSX 10.7, *)
let ubiquitousKeyValueStoreDidChangeExternallyNotification: String
@available(OSX 10.7, *)
let ubiquitousKeyValueStoreChangeReasonKey: String
@available(OSX 10.7, *)
let ubiquitousKeyValueStoreChangedKeysKey: String
@available(OSX 10.7, *)
var ubiquitousKeyValueStoreServerChange: Int { get }
@available(OSX 10.7, *)
var ubiquitousKeyValueStoreInitialSyncChange: Int { get }
@available(OSX 10.7, *)
var ubiquitousKeyValueStoreQuotaViolationChange: Int { get }
@available(OSX 10.8, *)
var ubiquitousKeyValueStoreAccountChange: Int { get }
