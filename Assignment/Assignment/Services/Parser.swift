//
//  Parser.swift
//  Assignment
//
//  Created by Rhytthm on 02/09/22.
//

import Foundation

// API - https://jsonblob.com/api/1015315453937205248

struct Parser {
    // Function to Parse the Data
    func parserURL(completionHandler: @escaping (CharacterResponse?) -> ()){
        let api = URL(string: "https://jsonblob.com/api/1015315453937205248")
        URLSession.shared.dataTask(with: api!){ (data, response, error) in
            if (error == nil && data != nil){
                do{
                    let result = try JSONDecoder().decode( CharacterResponse.self, from: data!)
                    completionHandler(result)
                }catch let error {
                    debugPrint(error)
                }
            }
            
        }.resume()
    }
}
