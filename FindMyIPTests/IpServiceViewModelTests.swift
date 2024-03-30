//
//  IpServiceViewModelTests.swift
//  FindMyIPTests
//
//  Created by PINNINTI DHANANJAYARAO on 30/03/24.
//

import XCTest
class MockNetworkManager: NetworkManagerProtocol {
    func request(urlRequest: URLRequest, completion: @escaping DataTaskResult) throws {
        let urlString = "https://ipapi.co/json/"
        try? download(url: URL(string: urlString)!, completion: completion)
    }
    func download(url: URL, completion: @escaping DataTaskResult) throws {
        
    }
}
 class IpServiceViewModelTests: XCTestCase {
    @MainActor func testParseIpsResponse() {
        let viewModel = IpServiceViewModel(networkManager: MockNetworkManager())
        let urlPath = Bundle.main.url(forResource: "testjson", withExtension: "json")
        do {
            let data = try Data(contentsOf: urlPath!)
            viewModel.parseIpsResponse(response: HTTPURLResponse(), data:data)
            DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                XCTAssertNotNil(viewModel.ips)
                XCTAssertEqual(viewModel.ips!.region,"Telangana")
                XCTAssertEqual(viewModel.ips!.country,"IN")
                XCTAssertEqual(viewModel.ips!.countryCapital,"New Delhi")
                XCTAssertEqual(viewModel.ips!.countryName,"India")
            })
        }catch{
            
        }
    }
}
