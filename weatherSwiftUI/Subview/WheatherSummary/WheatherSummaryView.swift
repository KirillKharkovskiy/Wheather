import SwiftUI

struct WheatherSummaryView: View {
  var model: WheatherSummaryModel
  var body: some View {
    
    VStack(alignment: .leading, spacing: 50){
      HStack(spacing: 0) {
        VStack(alignment: .leading, spacing: 10){
          Text(model.town)
            .foregroundColor(.white)
            .font(.system(size: 30))
            .padding(.leading, 10)
          HStack(spacing: 10) {
            R.image.line.swiftUIImage
            VStack(alignment: .leading, spacing: 10){
              Text(model.feeling)
              Text("Web, 03 Oct")
            }
          }.padding(.leading, 10)
        }
        .foregroundColor(.white)
        .font(.system(size: 12))
        
        Spacer()
        Text("\(model.degress)°")
          .fontWeight(.medium)
          .font(.system(size: 100))
          .padding(.trailing, 10)
          .foregroundColor(.white)
        
      }.padding(.top, 0)
      Text(model.description)
        .font(.system(size: 12))
        .padding(.all, 7)
        .background(Color.white)
        .cornerRadius(20)
        .padding(.leading, 10)
    }
  }
}

struct WheatherSummaryView_Previews: PreviewProvider {
  static var previews: some View {
    WheatherSummaryView(model: .init(town: "Moscow", feeling: "MOSTLY CLOUDY, feels like 8°", degress: 9, date: "Web, 03 Oct", description: "A recommendation to put on a sharv, the wind is evil today"))
  }
}
