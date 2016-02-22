
@available(iOS 8.0, *)
class HMHome : NSObject {
  weak var delegate: @sil_weak HMHomeDelegate?
  var name: String { get }
  var isPrimary: Bool { get }
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {
  var accessories: [HMAccessory] { get }
  func addAccessory(accessory: HMAccessory, completionHandler completion: (NSError?) -> Void)
  func removeAccessory(accessory: HMAccessory, completionHandler completion: (NSError?) -> Void)
  func assignAccessory(accessory: HMAccessory, to room: HMRoom, completionHandler completion: (NSError?) -> Void)
  func services(withTypes serviceTypes: [String]) -> [HMService]?
  func unblockAccessory(accessory: HMAccessory, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {
  @available(iOS 9.0, *)
  var currentUser: HMUser { get }
  @available(iOS, introduced=8.0, deprecated=9.0)
  var users: [HMUser] { get }
  @available(iOS 9.0, *)
  func manageUsers(completionHandler completion: (NSError?) -> Void)
  @available(iOS, introduced=8.0, deprecated=9.0)
  func addUser(completionHandler completion: (HMUser?, NSError?) -> Void)
  @available(iOS, introduced=8.0, deprecated=9.0)
  func removeUser(user: HMUser, completionHandler completion: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func homeAccessControl(for user: HMUser) -> HMHomeAccessControl
}
extension HMHome {
  var rooms: [HMRoom] { get }
  func addRoom(name roomName: String, completionHandler completion: (HMRoom?, NSError?) -> Void)
  func removeRoom(room: HMRoom, completionHandler completion: (NSError?) -> Void)
  func roomForEntireHome() -> HMRoom
}
extension HMHome {
  var zones: [HMZone] { get }
  func addZone(name zoneName: String, completionHandler completion: (HMZone?, NSError?) -> Void)
  func removeZone(zone: HMZone, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {
  var serviceGroups: [HMServiceGroup] { get }
  func addServiceGroup(name serviceGroupName: String, completionHandler completion: (HMServiceGroup?, NSError?) -> Void)
  func removeServiceGroup(group: HMServiceGroup, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {
  var actionSets: [HMActionSet] { get }
  func addActionSet(name actionSetName: String, completionHandler completion: (HMActionSet?, NSError?) -> Void)
  func removeActionSet(actionSet: HMActionSet, completionHandler completion: (NSError?) -> Void)
  func executeActionSet(actionSet: HMActionSet, completionHandler completion: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func builtinActionSet(ofType actionSetType: String) -> HMActionSet?
}
extension HMHome {
  var triggers: [HMTrigger] { get }
  func addTrigger(trigger: HMTrigger, completionHandler completion: (NSError?) -> Void)
  func removeTrigger(trigger: HMTrigger, completionHandler completion: (NSError?) -> Void)
}
@available(iOS 8.0, *)
protocol HMHomeDelegate : NSObjectProtocol {
  optional func homeDidUpdateName(home: HMHome)
  optional func home(home: HMHome, didAdd accessory: HMAccessory)
  optional func home(home: HMHome, didRemove accessory: HMAccessory)
  optional func home(home: HMHome, didAdd user: HMUser)
  optional func home(home: HMHome, didRemove user: HMUser)
  optional func home(home: HMHome, didUpdate room: HMRoom, for accessory: HMAccessory)
  optional func home(home: HMHome, didAdd room: HMRoom)
  optional func home(home: HMHome, didRemove room: HMRoom)
  optional func home(home: HMHome, didUpdateNameFor room: HMRoom)
  optional func home(home: HMHome, didAdd zone: HMZone)
  optional func home(home: HMHome, didRemove zone: HMZone)
  optional func home(home: HMHome, didUpdateNameFor zone: HMZone)
  optional func home(home: HMHome, didAdd room: HMRoom, to zone: HMZone)
  optional func home(home: HMHome, didRemove room: HMRoom, from zone: HMZone)
  optional func home(home: HMHome, didAdd group: HMServiceGroup)
  optional func home(home: HMHome, didRemove group: HMServiceGroup)
  optional func home(home: HMHome, didUpdateNameFor group: HMServiceGroup)
  optional func home(home: HMHome, didAdd service: HMService, to group: HMServiceGroup)
  optional func home(home: HMHome, didRemove service: HMService, from group: HMServiceGroup)
  optional func home(home: HMHome, didAdd actionSet: HMActionSet)
  optional func home(home: HMHome, didRemove actionSet: HMActionSet)
  optional func home(home: HMHome, didUpdateNameFor actionSet: HMActionSet)
  optional func home(home: HMHome, didUpdateActionsFor actionSet: HMActionSet)
  optional func home(home: HMHome, didAdd trigger: HMTrigger)
  optional func home(home: HMHome, didRemove trigger: HMTrigger)
  optional func home(home: HMHome, didUpdateNameFor trigger: HMTrigger)
  optional func home(home: HMHome, didUpdate trigger: HMTrigger)
  optional func home(home: HMHome, didUnblockAccessory accessory: HMAccessory)
  optional func home(home: HMHome, didEncounterError error: NSError, for accessory: HMAccessory)
}
@available(iOS 8.0, *)
let HMUserFailedAccessoriesKey: String
