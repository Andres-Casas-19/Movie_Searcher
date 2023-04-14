//
//  MovieInfo.swift
//  Movie Searcher
//
//  Created by Andres Esteban Casas Venegas on 11/04/23.
//

import Foundation

// Struct to store movie results.
// Protocol: Codable - to JSONDecoder can recognize it.
struct MovieResult: Codable {
    // Empty array to store movie results.
    let Search: [Movie]
}

// Structure with the movie information that is going to be fetched from the JSON.
// Protocol: Codable - to JSONDecoder can recognize it.
struct Movie: Codable {
    let title: String
    let year: String
    let imdbID: String
    let _type: String
    let poster: String

// Putting an alias to the constants to look them up in the JSON.
    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbID
        case _type = "Type"
        case poster = "Poster"
    }
    
}
