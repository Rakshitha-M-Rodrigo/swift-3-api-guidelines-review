
@available(OSX 10.11, *)
class MDLObject : NSObject, MDLNamed {
  func setComponent(component: MDLComponent, for protocol: Protocol)
  func componentConforming(to protocol: Protocol) -> MDLComponent?
  weak var parent: @sil_weak MDLObject?
  var transform: MDLTransformComponent?
  var children: MDLObjectContainerComponent
  func addChild(child: MDLObject)
  func boundingBox(atTime time: NSTimeInterval) -> MDLAxisAlignedBoundingBox
  init()
  @available(OSX 10.11, *)
  var name: String
}
@available(OSX 10.11, *)
class MDLObjectContainer : NSObject, MDLObjectContainerComponent {
  init()
  @available(OSX 10.11, *)
  func add(object: MDLObject)
  @available(OSX 10.11, *)
  func remove(object: MDLObject)
  @available(OSX 10.11, *)
  var objects: [MDLObject] { get }
  @available(OSX 10.11, *)
  func countByEnumerating(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
