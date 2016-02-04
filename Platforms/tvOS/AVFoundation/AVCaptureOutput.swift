
extension AVCaptureStillImageOutput {
  @available(tvOS 8.0, *)
  var maxBracketedCaptureStillImageCount: Int { get }
  @available(tvOS 9.0, *)
  var isLensStabilizationDuringBracketedCaptureSupported: Bool { get }
  @available(tvOS 9.0, *)
  var isLensStabilizationDuringBracketedCaptureEnabled: Bool
  @available(tvOS 8.0, *)
  func prepareToCaptureStillImageBracketFrom(connection: AVCaptureConnection!, withSettingsArray settings: [AnyObject]!, completionHandler handler: ((Bool, Error!) -> Void)!)
  @available(tvOS 8.0, *)
  func captureStillImageBracketAsynchronouslyFrom(connection: AVCaptureConnection!, withSettingsArray settings: [AnyObject]!, completionHandler handler: ((CMSampleBuffer!, AVCaptureBracketedStillImageSettings!, Error!) -> Void)!)
}
