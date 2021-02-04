import SwiftUI
import Combine
import Foundation

class WheatherViewModel: ObservableObject {
  @Published var  arrayOfDetailInfo = ListOfDetailInfoModel(wheatherSummary: WheatherSummaryModel(town: "Moscow", feeling: "MOSTLY CLOUDY, feels like 8°", degress: 9, date: "Web, 03 Oct", description: "A recommendation to put on a sharv, the wind is evil today"), wheatherPrecipitation: [
    WheatherPrecipitationModel(logoPrecipitation:R.image.wind.swiftUIImage ,name: "Wind", content: "8 km/h"),
    WheatherPrecipitationModel(logoPrecipitation:R.image.humidity.swiftUIImage ,name: "Humidity", content: "75%"),
    WheatherPrecipitationModel(logoPrecipitation:R.image.sunset.swiftUIImage ,name: "Sun", content: "7:08 18:26"),
    WheatherPrecipitationModel(logoPrecipitation:R.image.sunset.swiftUIImage ,name: "Sun", content: "8 km/h"),
    WheatherPrecipitationModel(logoPrecipitation:R.image.sunset.swiftUIImage ,name: "Sun", content: "8 km/h")
  ], wheatherDegressNow: WheatherDegressModel(degress: 10, logoDegress: R.image.sun.swiftUIImage, time: 0), wheatherDegress: [
    WheatherDegressModel(degress: 11, logoDegress: R.image.sun.swiftUIImage, time: 12),
    WheatherDegressModel(degress: 12, logoDegress: R.image.sun.swiftUIImage, time: 13),
    WheatherDegressModel(degress: 13, logoDegress: R.image.sun.swiftUIImage, time: 14),
    WheatherDegressModel(degress: 13, logoDegress: R.image.sun.swiftUIImage, time: 15),
    WheatherDegressModel(degress: 12, logoDegress: R.image.sun.swiftUIImage, time: 16),
    WheatherDegressModel(degress: 11, logoDegress: R.image.sun.swiftUIImage, time: 17),
    WheatherDegressModel(degress: 10, logoDegress: R.image.sun.swiftUIImage, time: 18),
    WheatherDegressModel(degress: 9, logoDegress: R.image.sun.swiftUIImage, time: 19),
  ])
}
