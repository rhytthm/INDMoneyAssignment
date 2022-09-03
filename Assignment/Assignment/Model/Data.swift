//
//  Data.swift
//  Assignment
//
//  Created by Rhytthm on 02/09/22.
//

import Foundation


struct CharacterResponse: Decodable {
    let data: [Character]
}


struct Character: Decodable {
    let title, description: String
    let imgUrl: String
    let summary: String
}
