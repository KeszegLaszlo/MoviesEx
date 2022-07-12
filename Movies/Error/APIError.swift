//
//  APIError.swift
//  Movies
//
//  Created by Keszeg László on 2022. 07. 12..
//

import Foundation

enum APIError {
case decodingError
case errorCode(Int)
case unknown
    
}

extension APIError:LocalizedError{
    var errorDescription: String?{
        switch self {
        case .decodingError:
            return "Dekódolási hiba"
        case .errorCode(let code):
            return "\(code) - hibakód"
        case .unknown:
            return "Ismeretlen hiba"
        }
    }
}
