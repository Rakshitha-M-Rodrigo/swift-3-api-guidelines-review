
@available(iOS 7.0, *)
class GCExtendedGamepadSnapshot : GCExtendedGamepad {
  @NSCopying var snapshotData: Data
  init(snapshotData data: Data)
  init(controller: GCController, snapshotData data: Data)
  init()
}
struct GCExtendedGamepadSnapShotDataV100 {
  var version: UInt16
  var size: UInt16
  var dpadX: Float
  var dpadY: Float
  var buttonA: Float
  var buttonB: Float
  var buttonX: Float
  var buttonY: Float
  var leftShoulder: Float
  var rightShoulder: Float
  var leftThumbstickX: Float
  var leftThumbstickY: Float
  var rightThumbstickX: Float
  var rightThumbstickY: Float
  var leftTrigger: Float
  var rightTrigger: Float
  init()
  init(version: UInt16, size: UInt16, dpadX: Float, dpadY: Float, buttonA: Float, buttonB: Float, buttonX: Float, buttonY: Float, leftShoulder: Float, rightShoulder: Float, leftThumbstickX: Float, leftThumbstickY: Float, rightThumbstickX: Float, rightThumbstickY: Float, leftTrigger: Float, rightTrigger: Float)
}
@available(iOS 7.0, *)
func GCExtendedGamepadSnapShotDataV100FromNSData(snapshotData: UnsafeMutablePointer<GCExtendedGamepadSnapShotDataV100>, _ data: Data?) -> Bool
@available(iOS 7.0, *)
func NSDataFromGCExtendedGamepadSnapShotDataV100(snapshotData: UnsafeMutablePointer<GCExtendedGamepadSnapShotDataV100>) -> Data?
