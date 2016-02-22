
protocol NSLocking {
  func lock()
  func unlock()
}
class NSLock : NSObject, NSLocking {
  func tryLock() -> Bool
  func lock(before limit: NSDate) -> Bool
  @available(OSX 10.5, *)
  var name: String?
  init()
  func lock()
  func unlock()
}
class NSConditionLock : NSObject, NSLocking {
  init(condition: Int)
  var condition: Int { get }
  func lock(whenCondition condition: Int)
  func tryLock() -> Bool
  func tryWhenCondition(condition: Int) -> Bool
  func unlock(condition condition: Int)
  func lock(before limit: NSDate) -> Bool
  func lock(whenCondition condition: Int, before limit: NSDate) -> Bool
  @available(OSX 10.5, *)
  var name: String?
  convenience init()
  func lock()
  func unlock()
}
class NSRecursiveLock : NSObject, NSLocking {
  func tryLock() -> Bool
  func lock(before limit: NSDate) -> Bool
  @available(OSX 10.5, *)
  var name: String?
  init()
  func lock()
  func unlock()
}
@available(OSX 10.5, *)
class NSCondition : NSObject, NSLocking {
  func wait()
  func wait(until limit: NSDate) -> Bool
  func signal()
  func broadcast()
  @available(OSX 10.5, *)
  var name: String?
  init()
  @available(OSX 10.5, *)
  func lock()
  @available(OSX 10.5, *)
  func unlock()
}
