import SwiftUI

struct WeatherPage: View {
  var body: some View {
    ZStack {
      R.image.backMain.swiftUIImage
        .resizable()
        .edgesIgnoringSafeArea(.all)
      ScrollView {
        VStack(spacing: 0) {
          summary()
          Divider().background(Color.white)
            .padding(.top, 40)
          VStack(spacing: 0) {
            precipitation()
            Divider().background(Color.white)
            degress()
            Divider().background(Color.white)
          }.background(R.image.backDegress.swiftUIImage .resizable())
        }.padding(.top, 50)
      }
    }
  }
}
// MARK: - summaryComponent
@ViewBuilder
private func summary() -> some View {
  @ObservebleObject let vm = WheatherViewModel()
  let detailVM = vm.arrayOfDetailInfo.wheatherSummary
  WheatherSummaryView(model: .init(town: detailVM.town , feeling: detailVM.feeling, degress: detailVM.degress, date: detailVM.date, description: detailVM.description))
}
// MARK: - precipitationComponent
@ViewBuilder
private func precipitation() -> some View {
  @ObservableObject let vm = WheatherViewModel()
  VStack(spacing: 0) {
    
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(spacing: 10) {
        ForEach(vm.arrayOfDetailInfo.wheatherPrecipitation, id: \.id) { item in
          WheatherPrecipitationView(model: .init(logoPrecipitation: item.logoPrecipitation ,name: item.name, content: item.content))
        }
      }
      .padding([.leading, .trailing], 10)
      .padding([.top, .bottom], 15)
    }
  }
  .padding([.top, .bottom], 10)
  
}
// MARK: - degressComponent
@ViewBuilder
private func degress() -> some View {
  @ObservableObject let vm = WheatherViewModel()
  
  ScrollView(.horizontal, showsIndicators: false) {
    HStack(spacing: 0) {
      WheatherDegressNow(model: .init(degress: vm.arrayOfDetailInfo.wheatherDegressNow.degress, logoDegress: vm.arrayOfDetailInfo.wheatherDegressNow.logoDegress, time: vm.arrayOfDetailInfo.wheatherDegressNow.time))
      ForEach(vm.arrayOfDetailInfo.wheatherDegress, id: \.id ) { degress in
        WheatherDegressView(model: .init(degress: degress.degress, logoDegress: degress.logoDegress, time: degress.time))
      }
    }
//    .padding([.leading, .trailing], 10)
    .padding(.all, 10)
  }
}
struct WeatherPage_Previews: PreviewProvider {
  static var previews: some View {
    WeatherPage()
  }
}
