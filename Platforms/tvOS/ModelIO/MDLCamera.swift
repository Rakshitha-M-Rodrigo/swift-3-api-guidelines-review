
@available(tvOS 9.0, *)
class MDLCamera : MDLObject {
  var projectionMatrix: matrix_float4x4 { get }
  func frameBoundingBox(boundingBox: MDLAxisAlignedBoundingBox, setNearAndFar: Bool)
  func lookAt(focusPosition: vector_float3)
  func lookAt(focusPosition: vector_float3, from cameraPosition: vector_float3)
  func rayTo(pixel: vector_int2, forViewPort size: vector_int2) -> vector_float3
  var nearVisibilityDistance: Float
  var farVisibilityDistance: Float
  var worldToMetersConversionScale: Float
  var barrelDistortion: Float
  var fisheyeDistortion: Float
  var opticalVignetting: Float
  var chromaticAberration: Float
  var focalLength: Float
  var focusDistance: Float
  var fieldOfView: Float
  var fStop: Float
  var apertureBladeCount: Int
  var maximumCircleOfConfusion: Float
  func bokehKernelWithSize(size: vector_int2) -> MDLTexture
  var shutterOpenInterval: TimeInterval
  var sensorVerticalAperture: Float
  var sensorAspect: Float
  var sensorEnlargement: vector_float2
  var sensorShift: vector_float2
  var flash: vector_float3
  var exposureCompression: vector_float2
  var exposure: vector_float3
  init()
}
@available(tvOS 9.0, *)
class MDLStereoscopicCamera : MDLCamera {
  var interPupillaryDistance: Float
  var leftVergence: Float
  var rightVergence: Float
  var overlap: Float
  var leftViewMatrix: matrix_float4x4 { get }
  var rightViewMatrix: matrix_float4x4 { get }
  var leftProjectionMatrix: matrix_float4x4 { get }
  var rightProjectionMatrix: matrix_float4x4 { get }
  init()
}
