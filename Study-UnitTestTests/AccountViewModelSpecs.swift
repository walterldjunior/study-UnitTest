//
//  AccountViewModelSpecs.swift
//  Study-UnitTestTests
//
//  Created by Walter Luis Deonísio Junior on 05/07/20.
//  Copyright © 2020 Walter Luis Deonísio Junior. All rights reserved.
//

import Quick
import Nimble
@testable import Study_UnitTest

class AccountViewModelSpecs: QuickSpec {
    override func spec() {
        describe("AccountViewModel") {
            var sut: AccountViewModel!
            
            context("Should Request Location") {
                it("Use Location True") {
                    sut = AccountViewModel(shouldUserLocation: true)
                    
                    var showAlert = false
                    var askUserPermission = false
                    var completion = false
                    
                    sut.shouldRequestLocation(showAlert: {
                        showAlert = true
                    }, askUserPermission: {
                        askUserPermission = true
                    }, completion: {
                        completion = true
                    })
                    
                    expect(showAlert).to(equal(true))
                    expect(askUserPermission).to(equal(true))
                    expect(completion).to(equal(true))
                }
                
                it("LoginButtonTap") {
                    sut = AccountViewModel(shouldUserLocation: false)
                    expect(sut.loginButtonTap()).to(beVoid())
                }
            }
            
            context("AccountViewModel Protocol") {
                it("Verify AccountViewModelProtocol"){
                    sut = AccountViewModel(shouldUserLocation: false)
                    expect(sut).to(beAKindOf(AccountViewModelProtocol.self))
                }
            }
            
            context("Get Joke") {
                it("With Error"){
                    sut = AccountViewModel(shouldUserLocation: true,
                                           provider: ProviderMock(status: .invalidResponse))
                    sut.getJoke()
                    expect(sut.status).to(equal("Error"))
                }
            }
        }
    }
}
