
@available(tvOS 9.0, *)
let kUTTypeAlembic: String
@available(tvOS 9.0, *)
let kUTType3dObject: String
@available(tvOS 9.0, *)
let kUTTypePolygon: String
@available(tvOS 9.0, *)
let kUTTypeStereolithography: String
enum MDLIndexBitDepth : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case invalid
  case uInt8
  static var uint8: MDLIndexBitDepth { get }
  case uInt16
  static var uint16: MDLIndexBitDepth { get }
  case uInt32
  static var uint32: MDLIndexBitDepth { get }
}
enum MDLGeometryType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case typePoints
  case typeLines
  case typeTriangles
  case typeTriangleStrips
  case typeQuads
  case typeVariableTopology
  static var kindPoints: MDLGeometryType { get }
  static var kindLines: MDLGeometryType { get }
  static var kindTriangles: MDLGeometryType { get }
  static var kindTriangleStrips: MDLGeometryType { get }
  static var kindQuads: MDLGeometryType { get }
}
@available(tvOS 9.0, *)
protocol MDLNamed {
  var name: String { get set }
}
@available(tvOS 9.0, *)
protocol MDLComponent : NSObjectProtocol {
}
@available(tvOS 9.0, *)
protocol MDLObjectContainerComponent : MDLComponent, NSFastEnumeration {
  func add(object: MDLObject)
  func remove(object: MDLObject)
  var objects: [MDLObject] { get }
}
struct MDL_EXPORT_CPPCLASS {
  var maxBounds: vector_float3
  var minBounds: vector_float3
  init()
  init(maxBounds: vector_float3, minBounds: vector_float3)
}
typealias MDLAxisAlignedBoundingBox = MDL_EXPORT_CPPCLASS
