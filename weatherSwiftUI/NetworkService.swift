import Foundation
protocol NetworkingServiceProtocol {
    func request(urlString: String, completion: @escaping(Data?, Error?) -> Void)
}
class NetworkService: NetworkingServiceProtocol {
  let headers = [
    "x-rapidapi-key": "35bbb3fbe2msh1d24c92bfc0cd54p17f6b6jsne53a936908ef",
    "x-rapidapi-host": "community-open-weather-map.p.rapidapi.com"
  ]


    func request(urlString: String, completion: @escaping(Data?, Error?) -> Void) {
        guard let url = URL(string: urlString) else { return }
      var request = URLRequest(url: url)
      request.allHTTPHeaderFields = headers
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            DispatchQueue.main.async {
                guard let datas = data else { return }
                guard response != nil else { return }
                completion(datas, error)
            }
        }.resume()
    }
}
