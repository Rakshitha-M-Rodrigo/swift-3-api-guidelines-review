
@available(iOS 4.0, *)
class AVCaptureOutput : NSObject {
  var connections: [AnyObject]! { get }
  @available(iOS 5.0, *)
  func connection(withMediaType mediaType: String!) -> AVCaptureConnection!
  @available(iOS 6.0, *)
  func transformedMetadataObject(for metadataObject: AVMetadataObject!, connection: AVCaptureConnection!) -> AVMetadataObject!
  @available(iOS 7.0, *)
  func metadataOutputRectOfInterest(for rectInOutputCoordinates: CGRect) -> CGRect
  @available(iOS 7.0, *)
  func rectForMetadataOutputRectOf(interest rectInMetadataOutputCoordinates: CGRect) -> CGRect
  init()
}
@available(iOS 4.0, *)
class AVCaptureVideoDataOutput : AVCaptureOutput {
  func setSampleBufferDelegate(sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate!, queue sampleBufferCallbackQueue: dispatch_queue_t!)
  var sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate! { get }
  var sampleBufferCallbackQueue: dispatch_queue_t! { get }
  var videoSettings: [NSObject : AnyObject]!
  @available(iOS 7.0, *)
  func recommendedVideoSettingsForAssetWriter(withOutputFileType outputFileType: String!) -> [NSObject : AnyObject]!
  @available(iOS 5.0, *)
  var availableVideoCVPixelFormatTypes: [AnyObject]! { get }
  @available(iOS 5.0, *)
  var availableVideoCodecTypes: [AnyObject]! { get }
  var alwaysDiscardsLateVideoFrames: Bool
  init()
}
protocol AVCaptureVideoDataOutputSampleBufferDelegate : NSObjectProtocol {
  @available(iOS 4.0, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!)
  @available(iOS 6.0, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didDrop sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!)
}
@available(iOS 4.0, *)
class AVCaptureAudioDataOutput : AVCaptureOutput {
  func setSampleBufferDelegate(sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate!, queue sampleBufferCallbackQueue: dispatch_queue_t!)
  var sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate! { get }
  var sampleBufferCallbackQueue: dispatch_queue_t! { get }
  @available(iOS 7.0, *)
  func recommendedAudioSettingsForAssetWriter(withOutputFileType outputFileType: String!) -> [NSObject : AnyObject]!
  init()
}
protocol AVCaptureAudioDataOutputSampleBufferDelegate : NSObjectProtocol {
  @available(iOS 4.0, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!)
}
@available(iOS 4.0, *)
class AVCaptureFileOutput : AVCaptureOutput {
  var outputFileURL: NSURL! { get }
  func startRecording(toOutputFileURL outputFileURL: NSURL!, recordingDelegate delegate: AVCaptureFileOutputRecordingDelegate!)
  func stopRecording()
  var isRecording: Bool { get }
  var recordedDuration: CMTime { get }
  var recordedFileSize: Int64 { get }
  var maxRecordedDuration: CMTime
  var maxRecordedFileSize: Int64
  var minFreeDiskSpaceLimit: Int64
  init()
}
protocol AVCaptureFileOutputRecordingDelegate : NSObjectProtocol {
  @available(iOS 4.0, *)
  optional func capture(captureOutput: AVCaptureFileOutput!, didStartRecordingToOutputFileAt fileURL: NSURL!, fromConnections connections: [AnyObject]!)
  @available(iOS 4.0, *)
  func capture(captureOutput: AVCaptureFileOutput!, didFinishRecordingToOutputFileAt outputFileURL: NSURL!, fromConnections connections: [AnyObject]!, error: NSError!)
}
@available(iOS 4.0, *)
class AVCaptureMovieFileOutput : AVCaptureFileOutput {
  var movieFragmentInterval: CMTime
  var metadata: [AnyObject]!
  @available(iOS 9.0, *)
  func recordsVideoOrientationAndMirroringChangesAsMetadataTrack(for connection: AVCaptureConnection!) -> Bool
  @available(iOS 9.0, *)
  func setRecordsVideoOrientationAndMirroringChanges(doRecordChanges: Bool, asMetadataTrackFor connection: AVCaptureConnection!)
  init()
}
@available(iOS 4.0, *)
class AVCaptureStillImageOutput : AVCaptureOutput {
  var outputSettings: [NSObject : AnyObject]!
  var availableImageDataCVPixelFormatTypes: [AnyObject]! { get }
  var availableImageDataCodecTypes: [AnyObject]! { get }
  @available(iOS 7.0, *)
  var isStillImageStabilizationSupported: Bool { get }
  @available(iOS 7.0, *)
  var automaticallyEnablesStillImageStabilizationWhenAvailable: Bool
  @available(iOS 7.0, *)
  var isStillImageStabilizationActive: Bool { get }
  @available(iOS 8.0, *)
  var isHighResolutionStillImageOutputEnabled: Bool
  @available(iOS 5.0, *)
  var isCapturingStillImage: Bool { get }
  func captureStillImageAsynchronously(from connection: AVCaptureConnection!, completionHandler handler: ((CMSampleBuffer!, NSError!) -> Void)!)
  class func jpegStillImageNSDataRepresentation(jpegSampleBuffer: CMSampleBuffer!) -> NSData!
  init()
}
@available(iOS 8.0, *)
class AVCaptureBracketedStillImageSettings : NSObject {
  init()
}
@available(iOS 8.0, *)
class AVCaptureManualExposureBracketedStillImageSettings : AVCaptureBracketedStillImageSettings {
  class func manualExposureSettings(withExposureDuration duration: CMTime, iso ISO: Float) -> Self!
  var exposureDuration: CMTime { get }
  var iso: Float { get }
  init()
}
@available(iOS 8.0, *)
class AVCaptureAutoExposureBracketedStillImageSettings : AVCaptureBracketedStillImageSettings {
  class func autoExposureSettings(withExposureTargetBias exposureTargetBias: Float) -> Self!
  var exposureTargetBias: Float { get }
  init()
}
extension AVCaptureStillImageOutput {
  @available(iOS 8.0, *)
  var maxBracketedCaptureStillImageCount: Int { get }
  @available(iOS 9.0, *)
  var isLensStabilizationDuringBracketedCaptureSupported: Bool { get }
  @available(iOS 9.0, *)
  var isLensStabilizationDuringBracketedCaptureEnabled: Bool
  @available(iOS 8.0, *)
  func prepareToCaptureStillImageBracket(from connection: AVCaptureConnection!, withSettingsArray settings: [AnyObject]!, completionHandler handler: ((Bool, NSError!) -> Void)!)
  @available(iOS 8.0, *)
  func captureStillImageBracketAsynchronously(from connection: AVCaptureConnection!, withSettingsArray settings: [AnyObject]!, completionHandler handler: ((CMSampleBuffer!, AVCaptureBracketedStillImageSettings!, NSError!) -> Void)!)
}
@available(iOS 6.0, *)
class AVCaptureMetadataOutput : AVCaptureOutput {
  func setMetadataObjectsDelegate(objectsDelegate: AVCaptureMetadataOutputObjectsDelegate!, queue objectsCallbackQueue: dispatch_queue_t!)
  var metadataObjectsDelegate: AVCaptureMetadataOutputObjectsDelegate! { get }
  var metadataObjectsCallbackQueue: dispatch_queue_t! { get }
  var availableMetadataObjectTypes: [AnyObject]! { get }
  var metadataObjectTypes: [AnyObject]!
  @available(iOS 7.0, *)
  var rectOfInterest: CGRect
  init()
}
protocol AVCaptureMetadataOutputObjectsDelegate : NSObjectProtocol {
  @available(iOS 4.0, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputMetadataObjects metadataObjects: [AnyObject]!, from connection: AVCaptureConnection!)
}
