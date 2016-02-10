
class CGShading {
}
@available(tvOS 2.0, *)
func CGShadingGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func CGShadingCreateAxial(space: CGColorSpace?, _ start: CGPoint, _ end: CGPoint, _ function: CGFunction?, _ extendStart: Bool, _ extendEnd: Bool) -> CGShading?
@available(tvOS 2.0, *)
func CGShadingCreateRadial(space: CGColorSpace?, _ start: CGPoint, _ startRadius: CGFloat, _ end: CGPoint, _ endRadius: CGFloat, _ function: CGFunction?, _ extendStart: Bool, _ extendEnd: Bool) -> CGShading?