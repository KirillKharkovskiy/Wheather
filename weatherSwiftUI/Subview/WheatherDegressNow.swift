import SwiftUI

struct WheatherDegressNow: View {
  var model: WheatherDegressModel
  var body: some View {
    ZStack{
      R.image.bacDegNow.swiftUIImage
      VStack(spacing: 5) {
        Text("\(model.degress)")
          .font(.system(size: 24))
        model.logoDegress
        Text("\(model.time)")
          .font(.system(size: 10))
      }
      .foregroundColor(.black)
      .padding()
      .padding([.top,.bottom], 20)
    }
  }
}

struct WheatherDegressNow_Previews: PreviewProvider {
  static var previews: some View {
    WheatherDegressNow(model: .init(degress: 12, logoDegress: R.image.sun.swiftUIImage, time: 12))
  }
}
