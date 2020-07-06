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
}

class AccountViewModel: AccountViewModelProtocol {
    private let shouldUserLocation: Bool
    
    init(shouldUserLocation: Bool) {
        self.shouldUserLocation = shouldUserLocation
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
