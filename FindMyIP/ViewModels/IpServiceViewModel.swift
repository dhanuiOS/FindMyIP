//
//  IpServiceViewModel.swift
//  FindMyIP
//
//  Created by PINNINTI DHANANJAYARAO on 29/03/24.
//

import Foundation

@MainActor
 class IpServiceViewModel: ObservableObject {
    @Published var ips : IpModel?
     var errorMessage = "Something went wrong"
    @Published var showError = false
  
    private let networkManager: NetworkManagerProtocol
    init(networkManager: NetworkManagerProtocol) {
        self.networkManager = networkManager
        fetchIps()
    }
    func fetchIps() {
        let endpoint = Endpoint(path: API.listOfIps.rawValue, httpMethod: .get)
        do {
            let urlRequest = try URLRequestBuilder.buildURLRequest(endpoint: endpoint)
            print(urlRequest)
            try networkManager.request(urlRequest: urlRequest) { data, response, error in
                self.parseIpsResponse(response: response as? HTTPURLResponse, data: data)
            }
        } catch {
            showError = true
        }
    }
}

extension IpServiceViewModel {
    func parseIpsResponse(response: HTTPURLResponse?, data: Data?) {
        DispatchQueue.main.async{
        do {
             let jsonDecoder = JSONDecoder()
             self.ips = try jsonDecoder.decode(IpModel.self, from: data!)
            } catch {
                print("Error parsing JSON:", error)
            }
        }
    }
}

