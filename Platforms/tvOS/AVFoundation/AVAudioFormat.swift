
@available(tvOS 8.0, *)
enum AVAudioCommonFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case otherFormat
  case pcmFormatFloat32
  case pcmFormatFloat64
  case pcmFormatInt16
  case pcmFormatInt32
}
@available(tvOS 8.0, *)
class AVAudioFormat : NSObject, NSSecureCoding {
  init(streamDescription asbd: UnsafePointer<AudioStreamBasicDescription>)
  init(streamDescription asbd: UnsafePointer<AudioStreamBasicDescription>, channelLayout layout: AVAudioChannelLayout?)
  init(standardFormatWithSampleRate sampleRate: Double, channels: AVAudioChannelCount)
  init(standardFormatWithSampleRate sampleRate: Double, channelLayout layout: AVAudioChannelLayout)
  init(commonFormat format: AVAudioCommonFormat, sampleRate: Double, channels: AVAudioChannelCount, interleaved: Bool)
  init(commonFormat format: AVAudioCommonFormat, sampleRate: Double, interleaved: Bool, channelLayout layout: AVAudioChannelLayout)
  init(settings: [String : AnyObject])
  @available(tvOS 9.0, *)
  init(cmAudioFormatDescription formatDescription: CMAudioFormatDescription)
  func isEqual(object: AnyObject) -> Bool
  var isStandard: Bool { get }
  var commonFormat: AVAudioCommonFormat { get }
  var channelCount: AVAudioChannelCount { get }
  var sampleRate: Double { get }
  var isInterleaved: Bool { get }
  var streamDescription: UnsafePointer<AudioStreamBasicDescription> { get }
  var channelLayout: AVAudioChannelLayout? { get }
  var settings: [String : AnyObject] { get }
  @available(tvOS 9.0, *)
  var formatDescription: CMAudioFormatDescription { get }
  init()
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
