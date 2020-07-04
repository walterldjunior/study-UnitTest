//
//  AccountBalanceSpec.swift
//  Study-UnitTestTests
//
//  Created by Walter Luis Deonísio Junior on 04/07/20.
//  Copyright © 2020 Walter Luis Deonísio Junior. All rights reserved.
//

import XCTest
@testable import Study_UnitTest

class AccountBalanceSpec: XCTestCase {

    var account: AccountBalance?
    
    func testGetEspecialLimit100() {
        account = AccountBalance(balance: 99)
        let especialLimit = account?.getEspecialLimit()
        
        XCTAssertEqual(especialLimit, 109, "Salgo menor que 100, deve retornar o valor + 10!")
    }

    func testGetEspecialLimit1000() {
        account = AccountBalance(balance: 900)
        let especialLimit = account?.getEspecialLimit()
        
        XCTAssertEqual(especialLimit, 1900, "Salgo menor que 500, deve retornar o valor + 1000!")
    }
    
    func testGetEspecialLimit400() {
        account = AccountBalance(balance: 400)
        let especialLimit = account?.getEspecialLimit()
        
        XCTAssertEqual(especialLimit, 400, "Salgo maior que 100 e menor que 500, deve retornar o valor!")
    }

}
