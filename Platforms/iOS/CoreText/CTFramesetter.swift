
class CTFramesetter {
}
@available(iOS 3.2, *)
func CTFramesetterGetTypeID() -> CFTypeID
@available(iOS 3.2, *)
func CTFramesetterCreateWithAttributedString(string: CFAttributedString) -> CTFramesetter
@available(iOS 3.2, *)
func CTFramesetterCreateFrame(framesetter: CTFramesetter, _ stringRange: CFRange, _ path: CGPath, _ frameAttributes: CFDictionary?) -> CTFrame
@available(iOS 3.2, *)
func CTFramesetterGetTypesetter(framesetter: CTFramesetter) -> CTTypesetter
@available(iOS 3.2, *)
func CTFramesetterSuggestFrameSizeWithConstraints(framesetter: CTFramesetter, _ stringRange: CFRange, _ frameAttributes: CFDictionary?, _ constraints: CGSize, _ fitRange: UnsafeMutablePointer<CFRange>) -> CGSize
