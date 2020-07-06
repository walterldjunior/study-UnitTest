//
//  ProviderMock.swift
//  Study-UnitTestTests
//
//  Created by Walter Luis Deonísio Junior on 05/07/20.
//  Copyright © 2020 Walter Luis Deonísio Junior. All rights reserved.
//

@testable import Study_UnitTest

class ProviderMock: ProviderProtocol {
    enum Status {
        case noData
        case success
        case invalidResponse
    }
    
    let status: Status
    
    init(status: Status) {
        self.status = status
    }
    
    func getJoke(_ completion: @escaping ([String]?, JokeError?) -> ()) {
        switch status {
        case .invalidResponse:
            completion(nil, .invalidResponse)
        case .noData:
            completion(nil, .noData)
        case .success:
            completion(["animal","career","celebrity","dev","explicit","fashion","food","history","money","movie","music","political","religion","science","sport","travel"], nil)
        default:
            <#code#>
        }
    }
    
    
}
