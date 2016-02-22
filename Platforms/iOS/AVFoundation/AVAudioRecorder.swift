
@available(iOS 3.0, *)
class AVAudioRecorder : NSObject {
  init(url: NSURL, settings: [String : AnyObject]) throws
  func prepareToRecord() -> Bool
  func record() -> Bool
  @available(iOS 6.0, *)
  func record(atTime time: NSTimeInterval) -> Bool
  func record(forDuration duration: NSTimeInterval) -> Bool
  @available(iOS 6.0, *)
  func record(atTime time: NSTimeInterval, forDuration duration: NSTimeInterval) -> Bool
  func pause()
  func stop()
  func deleteRecording() -> Bool
  var isRecording: Bool { get }
  var url: NSURL { get }
  var settings: [String : AnyObject] { get }
  unowned(unsafe) var delegate: @sil_unmanaged AVAudioRecorderDelegate?
  var currentTime: NSTimeInterval { get }
  @available(iOS 6.0, *)
  var deviceCurrentTime: NSTimeInterval { get }
  var isMeteringEnabled: Bool
  func updateMeters()
  func peakPower(forChannel channelNumber: Int) -> Float
  func averagePower(forChannel channelNumber: Int) -> Float
  @available(iOS 7.0, *)
  var channelAssignments: [NSNumber]?
  init()
}
protocol AVAudioRecorderDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func audioRecorderDidFinishRecording(recorder: AVAudioRecorder, successfully flag: Bool)
  @available(iOS 3.0, *)
  optional func audioRecorderEncodeErrorDidOccur(recorder: AVAudioRecorder, error: NSError?)
  @available(iOS, introduced=2.2, deprecated=8.0)
  optional func audioRecorderBeginInterruption(recorder: AVAudioRecorder)
  @available(iOS, introduced=6.0, deprecated=8.0)
  optional func audioRecorderEndInterruption(recorder: AVAudioRecorder, withOptions flags: Int)
}
