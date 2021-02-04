import Foundation

protocol DataServiceProtocol {
  func currentWheather(complition: @escaping([WheatherSummaryModel]) -> Void)
}
class DataService : DataServiceProtocol {
  
  
  var networkService: NetServDataProtocol!
  init (networkService: NetServDataProtocol = NetworkServiceData()) {
    self.networkService = networkService
  }
  func currentWheather(complition: @escaping([WheatherSummaryModel]) -> Void) {
    let resourseURLString = ""
//    networkService.getDataResult(urlString: resourseURLString, response: complition)
  }
}

