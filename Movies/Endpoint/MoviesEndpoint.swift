//
//  MoviesEndpoint.swift
//  Movies
//
//  Created by Keszeg László on 2022. 07. 12..
//

import Foundation

protocol APIBuilder {
    var urlRequest: URLRequest { get }
    var baseUrl: URL { get }
    var API: String { get }
}
enum MoviesAPI {
    case getMovies
}
extension MoviesAPI: APIBuilder{
    
        var urlRequest: URLRequest {
        return URLRequest(url: self.baseUrl.appendingPathComponent(self.API))
   }
    
    var baseUrl: URL {
        switch self {
        case .getMovies:
            return URL(string: "https://api.themoviedb.org/3/movie/76341?api_key=")!
        }
    }
    
    var API: String {
        return APIkey
    }
    
    
}

