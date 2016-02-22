
enum MDLTextureChannelEncoding : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case uInt8
  static var uint8: MDLTextureChannelEncoding { get }
  case uInt16
  static var uint16: MDLTextureChannelEncoding { get }
  case uInt24
  static var uint24: MDLTextureChannelEncoding { get }
  case uInt32
  static var uint32: MDLTextureChannelEncoding { get }
  case float16
  case float32
}
@available(iOS 9.0, *)
class MDLTexture : NSObject, MDLNamed {
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  class func irradianceTextureCube(with texture: MDLTexture, name: String?, dimensions: vector_int2) -> Self
  class func irradianceTextureCube(with texture: MDLTexture, name: String?, dimensions: vector_int2, roughness: Float) -> Self
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  func write(to URL: NSURL) -> Bool
  func write(to nsurl: NSURL, type: CFString) -> Bool
  func imageFromTexture() -> Unmanaged<CGImage>?
  func texelDataWithTopLeftOrigin() -> NSData?
  func texelDataWithBottomLeftOrigin() -> NSData?
  func texelDataWithTopLeftOrigin(atMipLevel level: Int, create: Bool) -> NSData?
  func texelDataWithBottomLeftOrigin(atMipLevel level: Int, create: Bool) -> NSData?
  var dimensions: vector_int2 { get }
  var rowStride: Int { get }
  var channelCount: Int { get }
  var mipLevelCount: Int { get }
  var channelEncoding: MDLTextureChannelEncoding { get }
  var isCube: Bool
  convenience init()
  @available(iOS 9.0, *)
  var name: String
}
@available(iOS 9.0, *)
class MDLURLTexture : MDLTexture {
  init(url URL: NSURL, name: String?)
  @NSCopying var url: NSURL
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
@available(iOS 9.0, *)
class MDLCheckerboardTexture : MDLTexture {
  init(divisions: Float, name: String?, dimensions: vector_int2, channelCount: Int32, channelEncoding: MDLTextureChannelEncoding, color1: CGColor, color2: CGColor)
  var divisions: Float
  var color1: CGColor?
  var color2: CGColor?
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
@available(iOS 9.0, *)
class MDLSkyCubeTexture : MDLTexture {
  init(name: String?, channelEncoding: MDLTextureChannelEncoding, textureDimensions: vector_int2, turbidity: Float, sunElevation: Float, upperAtmosphereScattering: Float, groundAlbedo: Float)
  func update()
  var turbidity: Float
  var sunElevation: Float
  var upperAtmosphereScattering: Float
  var groundAlbedo: Float
  var horizonElevation: Float
  var groundColor: CGColor?
  var gamma: Float
  var exposure: Float
  var brightness: Float
  var contrast: Float
  var saturation: Float
  var highDynamicRangeCompression: vector_float2
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
@available(iOS 9.0, *)
class MDLColorSwatchTexture : MDLTexture {
  init(colorTemperatureGradientFrom colorTemperature1: Float, toColorTemperature colorTemperature2: Float, name: String?, textureDimensions: vector_int2)
  init(colorGradientFrom color1: CGColor, to color2: CGColor, name: String?, textureDimensions: vector_int2)
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
@available(iOS 9.0, *)
class MDLNoiseTexture : MDLTexture {
  init(vectorNoiseWithSmoothness smoothness: Float, name: String?, textureDimensions: vector_int2, channelEncoding: MDLTextureChannelEncoding)
  init(scalarNoiseWithSmoothness smoothness: Float, name: String?, textureDimensions: vector_int2, channelCount: Int32, channelEncoding: MDLTextureChannelEncoding, grayscale: Bool)
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
@available(iOS 9.0, *)
class MDLNormalMapTexture : MDLTexture {
  init(byGeneratingNormalMapWith sourceTexture: MDLTexture, name: String?, smoothness: Float, contrast: Float)
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
