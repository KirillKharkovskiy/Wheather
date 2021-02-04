import Foundation
struct WheatherSummaryModel {
  var town: String
  var feeling: String
  var degress: Int
  var date: String
  var description: String
  let id : String = UUID().uuidString
}
