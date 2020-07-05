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
    private let shouldserLocation: Bool
    
    init(shouldserLocation: Bool) {
        self.shouldserLocation = shouldserLocation
    }
    
    func loginButtonTap() {
        debugPrint("Login Realizado com sucesso!")
    }
    
    func shouldRequestLocation(showAlert: () -> (),
                               askUserPermission: () -> (),
                               completion: () -> ()) {
        
        if shouldserLocation {
            askUserPermission()
            completion()
        }
        
        showAlert()
        completion()
    }
}
