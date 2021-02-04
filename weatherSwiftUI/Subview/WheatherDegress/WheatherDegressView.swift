import SwiftUI
struct WheatherDegressView: View {
  var model: WheatherDegressModel
  var body: some View {
    VStack(spacing: 10) {
      Text("\(model.degress)")
        .font(.system(size: 24))
      model.logoDegress
      Text("\(model.time)")
        .font(.system(size: 10))
    }.foregroundColor(.white)
    .padding()
  }
}

struct WheatherDegressView_Previews: PreviewProvider {
  static var previews: some View {
    WheatherDegressView(model: WheatherDegressModel(degress: 12, logoDegress: R.image.sun.swiftUIImage, time: 16))
  }
}
