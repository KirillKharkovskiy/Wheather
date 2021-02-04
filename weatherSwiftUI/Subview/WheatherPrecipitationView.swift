import SwiftUI
struct WheatherPrecipitationView: View {
  var model: WheatherPrecipitationModel
  var body: some View {
    ZStack {
      R.image.back4.swiftUIImage
      VStack(spacing: 5) {
        HStack(spacing: 5) {
          model.logoPrecipitation
          Text(model.name ?? "")
            .foregroundColor(.white)
            .font(.system(size: 11.72))
        }
        Text(model.content ?? "")
          .font(.system(size: 14))
          .frame(maxWidth: 100)
          .foregroundColor(.white)
          .lineLimit(nil)
      }
      .padding()
    }
  }
}

struct WheatherPrecipitationView_Previews: PreviewProvider {
  static var previews: some View {
    WheatherPrecipitationView(model: .init(logoPrecipitation:R.image.sun.swiftUIImage ,name: "Winzxdfvdfvdfvzd", content: "8 km"))
  }
}
