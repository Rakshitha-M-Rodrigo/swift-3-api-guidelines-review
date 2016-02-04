
struct SCNVector3 {
  var x: Float
  var y: Float
  var z: Float
  init()
  init(x: Float, y: Float, z: Float)
}

extension SCNVector3 {
  init(_ x: Float, _ y: Float, _ z: Float)
  init(_ x: CGFloat, _ y: CGFloat, _ z: CGFloat)
  init(_ x: Double, _ y: Double, _ z: Double)
  init(_ x: Int, _ y: Int, _ z: Int)
  init(_ v: float3)
  init(_ v: double3)
}
struct SCNVector4 {
  var x: Float
  var y: Float
  var z: Float
  var w: Float
  init()
  init(x: Float, y: Float, z: Float, w: Float)
}

extension SCNVector4 {
  init(_ x: Float, _ y: Float, _ z: Float, _ w: Float)
  init(_ x: CGFloat, _ y: CGFloat, _ z: CGFloat, _ w: CGFloat)
  init(_ x: Double, _ y: Double, _ z: Double, _ w: Double)
  init(_ x: Int, _ y: Int, _ z: Int, _ w: Int)
  init(_ v: float4)
  init(_ v: double4)
}
struct SCNMatrix4 {
  var m11: Float
  var m12: Float
  var m13: Float
  var m14: Float
  var m21: Float
  var m22: Float
  var m23: Float
  var m24: Float
  var m31: Float
  var m32: Float
  var m33: Float
  var m34: Float
  var m41: Float
  var m42: Float
  var m43: Float
  var m44: Float
  init()
  init(m11: Float, m12: Float, m13: Float, m14: Float, m21: Float, m22: Float, m23: Float, m24: Float, m31: Float, m32: Float, m33: Float, m34: Float, m41: Float, m42: Float, m43: Float, m44: Float)
}

extension SCNMatrix4 {
  init(_ m: float4x4)
  init(_ m: double4x4)
}
typealias SCNQuaternion = SCNVector4
@available(tvOS 8.0, *)
let SCNMatrix4Identity: SCNMatrix4
@available(tvOS 8.0, *)
let SCNVector3Zero: SCNVector3
@available(tvOS 8.0, *)
let SCNVector4Zero: SCNVector4
func SCNVector3EqualToVector3(a: SCNVector3, _ b: SCNVector3) -> Bool
func SCNVector4EqualToVector4(a: SCNVector4, _ b: SCNVector4) -> Bool
func SCNVector3Make(x: Float, _ y: Float, _ z: Float) -> SCNVector3
func SCNVector4Make(x: Float, _ y: Float, _ z: Float, _ w: Float) -> SCNVector4
func SCNMatrix4MakeTranslation(x: Float, _ y: Float, _ z: Float) -> SCNMatrix4
func SCNMatrix4MakeScale(sx: Float, _ sy: Float, _ sz: Float) -> SCNMatrix4
func SCNMatrix4Translate(mat: SCNMatrix4, _ x: Float, _ y: Float, _ z: Float) -> SCNMatrix4
@available(tvOS 8.0, *)
func SCNMatrix4MakeRotation(angle: Float, _ x: Float, _ y: Float, _ z: Float) -> SCNMatrix4
@available(tvOS 8.0, *)
func SCNMatrix4Scale(mat: SCNMatrix4, _ x: Float, _ y: Float, _ z: Float) -> SCNMatrix4
@available(tvOS 8.0, *)
func SCNMatrix4Rotate(mat: SCNMatrix4, _ angle: Float, _ x: Float, _ y: Float, _ z: Float) -> SCNMatrix4
@available(tvOS 8.0, *)
func SCNMatrix4Invert(mat: SCNMatrix4) -> SCNMatrix4
@available(tvOS 8.0, *)
func SCNMatrix4Mult(matA: SCNMatrix4, _ matB: SCNMatrix4) -> SCNMatrix4
@available(tvOS 8.0, *)
func SCNMatrix4IsIdentity(mat: SCNMatrix4) -> Bool
@available(tvOS 8.0, *)
func SCNMatrix4EqualToMatrix4(matA: SCNMatrix4, _ matB: SCNMatrix4) -> Bool
func SCNVector3FromGLKVector3(vector: GLKVector3) -> SCNVector3
func SCNVector3ToGLKVector3(vector: SCNVector3) -> GLKVector3
func SCNVector4FromGLKVector4(vector: GLKVector4) -> SCNVector4
func SCNVector4ToGLKVector4(vector: SCNVector4) -> GLKVector4
@available(tvOS 8.0, *)
func SCNMatrix4ToGLKMatrix4(mat: SCNMatrix4) -> GLKMatrix4
@available(tvOS 8.0, *)
func SCNMatrix4FromGLKMatrix4(mat: GLKMatrix4) -> SCNMatrix4
extension Value {
  /*not inherited*/ init(scnVector3 v: SCNVector3)
  /*not inherited*/ init(scnVector4 v: SCNVector4)
  @available(tvOS 8.0, *)
  /*not inherited*/ init(scnMatrix4 v: SCNMatrix4)
  var scnVector3Value: SCNVector3 { get }
  var scnVector4Value: SCNVector4 { get }
  @available(tvOS 8.0, *)
  var scnMatrix4Value: SCNMatrix4 { get }
}
let SCNErrorDomain: String
var SCNProgramCompilationError: Int { get }
