//
//  AccountViewController.swift
//  Study-UnitTest
//
//  Created by Walter Luis Deonísio Junior on 05/07/20.
//  Copyright © 2020 Walter Luis Deonísio Junior. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
    var viewModel: AccountViewModelProtocol = AccountViewModel(shouldUserLocation: true)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.shouldRequestLocation(showAlert: {
            print("Alerta")
        }, askUserPermission: {
            print("Get user Location")
        }, completion: {
            print("Completion")
        })
    }
    
    @IBAction func loginButton(_ sender: Any) {
        debugPrint("LoginButton")
        viewModel.loginButtonTap()
    }
}
