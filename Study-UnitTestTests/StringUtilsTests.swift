//
//  StringUtilsTests.swift
//  Study-UnitTestTests
//
//  Created by Walter Luis Deonísio Junior on 05/07/20.
//  Copyright © 2020 Walter Luis Deonísio Junior. All rights reserved.
//

import Quick
import Nimble
@testable import Study_UnitTest

class StringUtilsTests: QuickSpec {
    override func spec() {
        describe("StringUtils") {
            context("Is Valid Email") {
                it("Valid Email") {
                    let email = "juniordeonisio@gmail.com"
                    let isValidEmail = email.isValidEmail()
                    expect(isValidEmail).to(be(true))
                }
                it("Invalid Email") {
                     let email = "juniordeonisio"
                     let isValidEmail = email.isValidEmail()
                     expect(isValidEmail).to(be(false))
                 }
            }
        }
    }
}
