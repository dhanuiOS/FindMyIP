//
//  EndPoint.swift
//  FindMyIP
//
//  Created by PINNINTI DHANANJAYARAO on 29/03/24.
//

import Foundation

/// Enum to define API request path
enum API: String {
    case listOfIps = "json/"
}

/// Enum to define HTTP Methods
enum HTTPMethod: String {
    case get = "GET"
}

typealias HTTPHeaders = [String: String]

/// Structure is used to setup url request parameters
struct Endpoint {
    var baseURL: URL? = URL(string: Constants.baseURL)
    var path: String?
    var jsonParameters: [String: Any]?
    var urlParameters: [String: String]?
    var headers: HTTPHeaders?
    var httpMethod: HTTPMethod
}


