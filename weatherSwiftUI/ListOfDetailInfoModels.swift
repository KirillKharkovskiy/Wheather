import Foundation

struct ListOfDetailInfoModel {
  let wheatherSummary: WheatherSummaryModel
  let wheatherPrecipitation: [WheatherPrecipitationModel]
  let wheatherDegressNow: WheatherDegressModel
  let wheatherDegress: [WheatherDegressModel]
  let id : String = UUID().uuidString
}
