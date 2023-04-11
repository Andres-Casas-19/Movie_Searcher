//
//  MovieModel.swift
//  Movie Searcher
//
//  Created by Andres Esteban Casas Venegas on 11/04/23.
//

import Foundation

struct MovieResult: Codable {
    let Search: [Movie]
}
struct Movie: Codable {
    let title: String
    let year: String
    let imdbID: String
    let _type: String
    let poster: String
    
    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbID
        case _type = "Type"
        case poster = "Poster"
    }
    
}
