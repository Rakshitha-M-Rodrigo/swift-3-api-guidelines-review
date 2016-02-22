
let NSGlobalDomain: String
let NSArgumentDomain: String
let NSRegistrationDomain: String
class NSUserDefaults : NSObject {
  class func standard() -> NSUserDefaults
  class func resetStandardUserDefaults()
  convenience init()
  @available(watchOS 2.0, *)
  init?(suiteName suitename: String?)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(user username: String)
  func object(forKey defaultName: String) -> AnyObject?
  func setObject(value: AnyObject?, forKey defaultName: String)
  func removeObject(forKey defaultName: String)
  func string(forKey defaultName: String) -> String?
  func array(forKey defaultName: String) -> [AnyObject]?
  func dictionary(forKey defaultName: String) -> [String : AnyObject]?
  func data(forKey defaultName: String) -> NSData?
  func stringArray(forKey defaultName: String) -> [String]?
  func integer(forKey defaultName: String) -> Int
  func float(forKey defaultName: String) -> Float
  func double(forKey defaultName: String) -> Double
  func bool(forKey defaultName: String) -> Bool
  @available(watchOS 2.0, *)
  func url(forKey defaultName: String) -> NSURL?
  func setInteger(value: Int, forKey defaultName: String)
  func setFloat(value: Float, forKey defaultName: String)
  func setDouble(value: Double, forKey defaultName: String)
  func setBool(value: Bool, forKey defaultName: String)
  @available(watchOS 2.0, *)
  func setURL(url: NSURL?, forKey defaultName: String)
  func register(registrationDictionary: [String : AnyObject])
  func addSuiteNamed(suiteName: String)
  func removeSuiteNamed(suiteName: String)
  func dictionaryRepresentation() -> [String : AnyObject]
  var volatileDomainNames: [String] { get }
  func volatileDomain(forName domainName: String) -> [String : AnyObject]
  func setVolatileDomain(domain: [String : AnyObject], forName domainName: String)
  func removeVolatileDomain(forName domainName: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func persistentDomainNames() -> [AnyObject]
  func persistentDomain(forName domainName: String) -> [String : AnyObject]?
  func setPersistentDomain(domain: [String : AnyObject], forName domainName: String)
  func removePersistentDomain(forName domainName: String)
  func synchronize() -> Bool
  func objectIsForced(forKey key: String) -> Bool
  func objectIsForced(forKey key: String, inDomain domain: String) -> Bool
}
let NSUserDefaultsDidChangeNotification: String
