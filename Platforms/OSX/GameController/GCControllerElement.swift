
@available(OSX 10.9, *)
class GCControllerElement : Object {
  weak var collection: @sil_weak GCControllerElement? { get }
  var isAnalog: Bool { get }
  init()
}
