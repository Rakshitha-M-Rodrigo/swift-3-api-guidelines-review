
@available(tvOS 9.0, *)
enum TVTopShelfContentStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Inset
  case Sectioned
}
protocol TVTopShelfProvider {
  @available(tvOS 9.0, *)
  var topShelfStyle: TVTopShelfContentStyle { get }
  @available(tvOS 9.0, *)
  var topShelfItems: [TVContentItem] { get }
}
@available(tvOS 9.0, *)
let TVTopShelfItemsDidChangeNotification: String
@available(tvOS 9.0, *)
func TVTopShelfImageSizeForShape(shape: TVContentItemImageShape, _ style: TVTopShelfContentStyle) -> CGSize
