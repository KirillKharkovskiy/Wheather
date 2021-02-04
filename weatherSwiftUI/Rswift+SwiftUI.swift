import SwiftUI
import Rswift

extension Rswift.ColorResource {
  
  var swiftUIColor: SwiftUI.Color { .init(name) }
}

extension Rswift.ImageResource {
  
  var swiftUIImage: SwiftUI.Image { .init(name) }
}

extension Rswift.FontResource {
  
  func size(_ size: CGFloat) -> Font { .custom(fontName, size: size) }
}
