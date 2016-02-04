
typealias CGPDFBoolean = UInt8
typealias CGPDFInteger = Int
typealias CGPDFReal = CGFloat
typealias CGPDFObjectRef = COpaquePointer
enum CGPDFObjectType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Null
  case Boolean
  case Integer
  case Real
  case Name
  case String
  case Array
  case Dictionary
  case Stream
}
@available(tvOS 2.0, *)
func CGPDFObjectGetType(object: CGPDFObjectRef) -> CGPDFObjectType
@available(tvOS 2.0, *)
func CGPDFObjectGetValue(object: CGPDFObjectRef, _ type: CGPDFObjectType, _ value: UnsafeMutablePointer<Void>) -> Bool
