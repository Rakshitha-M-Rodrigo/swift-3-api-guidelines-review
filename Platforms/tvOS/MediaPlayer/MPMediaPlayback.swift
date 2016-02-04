
protocol MPMediaPlayback {
  func prepareToPlay()
  var isPreparedToPlay: Bool { get }
  func play()
  func pause()
  func stop()
  var currentPlaybackTime: TimeInterval { get set }
  var currentPlaybackRate: Float { get set }
  func beginSeekingForward()
  func beginSeekingBackward()
  func endSeeking()
}
