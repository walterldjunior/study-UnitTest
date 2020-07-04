//
//  StringUtilsSpec.swift
//  Study-UnitTestTests
//
//  Created by Walter Luis Deonísio Junior on 04/07/20.
//  Copyright © 2020 Walter Luis Deonísio Junior. All rights reserved.
//

import XCTest
@testable import Study_UnitTest

class StringUtilsSpec: XCTestCase {

    func testIsValidEmail() {
        let email = "juniordeonisio@gmail.com"
        let returnEmail = email.isValidEmail()
        
        XCTAssertTrue(returnEmail, "Email válido!")
    }

    func testRemoveWhiteSpace() {
        let value = "Olá Mundo!"
        let newValue = value.removeWhiteSpace()
        
        XCTAssert(newValue == "OláMundo!")
    }

    func testReplace() {
        let name = "Walter"
        let nameReturn1 = name.replace(string: "W", replacement: "V")
        let nameReturn2 = nameReturn1.replace(string: "r", replacement: "r Jr")
        
        XCTAssert(nameReturn1 == "Valter")
        XCTAssert(nameReturn2 == "Valter Jr")
    }
}
