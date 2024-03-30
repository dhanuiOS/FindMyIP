//
//  CodeAbleExtensions.swift
//  FindMyIP
//
//  Created by PINNINTI DHANANJAYARAO on 29/03/24.
//

import Foundation


extension Data {
    func decode<T: Decodable>(type: T.Type) -> T? {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try? decoder.decode(type, from: self)
    }
}
