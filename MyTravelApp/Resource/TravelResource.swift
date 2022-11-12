//
//  TravelResource.swift
//  MyTravelApp
//

import Foundation

protocol TravelResourceProtocol {
    func getTravelDetails(completionHandler: @escaping(_ result: TravelResponse?)-> Void)
}

struct TravelResource: TravelResourceProtocol{
    func getTravelDetails(completionHandler: @escaping (TravelResponse?) -> Void) {
        URLSession.shared.dataTask(with: URLRequest(url: URL(string: "https://636567e7046eddf1baed566d.mockapi.io/getTravelDetails")!)) { (responseData, urlResponse, serverError) in

            if(serverError == nil)
            {
                do {
                    let result = try JSONDecoder().decode(TravelResponse.self, from: responseData!)
                    completionHandler(result)
                } catch  {
                    debugPrint(error)
                }
            }
        }.resume()
    }


}
