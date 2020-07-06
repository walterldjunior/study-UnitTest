//
//  Provider.swift
//  Study-UnitTest
//
//  Created by Walter Luis Deonísio Junior on 05/07/20.
//  Copyright © 2020 Walter Luis Deonísio Junior. All rights reserved.
//

import UIKit

enum JokeError: Error {
    case noData
    case invalidResponse
}

protocol ProviderProtocol {
    func getJoke(_ completion: @escaping ([String]?, JokeError?) -> ())
}

class Provider: ProviderProtocol {
    func getJoke(_ completion: @escaping ([String]?, JokeError?) -> ()) {
        let url = String(format: "https://api.chucknorris.io/jokes/categories")
        guard let serviceURL = URL(string: url) else {return}
        
        let request = URLRequest(url: serviceURL)
        let session = URLSession.shared
        
        session.dataTask(with: request) { data, response, error in
            if error != nil {
                completion(nil, .noData)
            }
            
            if let data = data {
                do {
                    let jokes = try JSONDecoder().decode([String].self, from: data)
                    completion(jokes, nil)
                } catch {
                    completion(nil, .invalidResponse)
                }
            }
        }.resume()
    }
}
