//
//  AccountViewModel.swift
//  Study-UnitTest
//
//  Created by Walter Luis Deonísio Junior on 05/07/20.
//  Copyright © 2020 Walter Luis Deonísio Junior. All rights reserved.
//

import UIKit

protocol AccountViewModelProtocol {
    func loginButtonTap()
    func shouldRequestLocation(showAlert: () -> (),
                               askUserPermission: () -> (),
                               completion: () -> ())
    var status: String { get set }
}

class AccountViewModel: AccountViewModelProtocol {
    private let shouldUserLocation: Bool
    private let provider: ProviderProtocol
    var status: String
    
    init(shouldUserLocation: Bool, provider: ProviderProtocol = Provider()) {
        self.shouldUserLocation = shouldUserLocation
        self.provider = provider
        self.status = ""
    }
    
    func getJoke() {
        provider.getJoke { result, error in
            if error != nil {
                self.status = "Error"
                return
            }
            self.status = result![0]
        }
    }
    
    func loginButtonTap() {
        debugPrint("Login Realizado com sucesso!")
    }
    
    func shouldRequestLocation(showAlert: () -> (),
                               askUserPermission: () -> (),
                               completion: () -> ()) {
        
        if shouldUserLocation {
            askUserPermission()
            completion()
        }
        showAlert()
        completion()
    }
}
