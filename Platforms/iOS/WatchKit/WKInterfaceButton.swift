
@available(iOS 8.2, *)
class WKInterfaceButton : WKInterfaceObject {
  func setTitle(title: String?)
  func setAttributedTitle(attributedTitle: AttributedString?)
  func setBackgroundColor(color: UIColor?)
  func setBackgroundImage(image: UIImage?)
  func setBackgroundImageData(imageData: Data?)
  func setBackgroundImageNamed(imageName: String?)
  func setEnabled(enabled: Bool)
}
