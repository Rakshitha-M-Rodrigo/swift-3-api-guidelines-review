
class NSOpenGLView : NSView {
  class func defaultPixelFormat() -> NSOpenGLPixelFormat
  init?(frame frameRect: Rect, pixelFormat format: NSOpenGLPixelFormat?)
  var openGLContext: NSOpenGLContext?
  func clearGLContext()
  func update()
  func reshape()
  var pixelFormat: NSOpenGLPixelFormat?
  func prepareOpenGL()
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
extension NSView {
  @available(OSX 10.7, *)
  var wantsBestResolutionOpenGLSurface: Bool
}
extension NSView {
  @available(OSX 10.11, *)
  var wantsExtendedDynamicRangeOpenGLSurface: Bool
}
