//
//  Study_UnitTestTests.swift
//  Study-UnitTestTests
//
//  Created by Walter Luis Deonísio Junior on 04/07/20.
//  Copyright © 2020 Walter Luis Deonísio Junior. All rights reserved.
//

import XCTest
@testable import Study_UnitTest

class Study_UnitTestTests: XCTestCase {

    override func setUpWithError() throws {
        // Chama antes de qualquer método, usado para preparar os testes.
        // Executado Primeiro
    }

    override func tearDownWithError() throws {
        // Limpa dos teste, eliminando qualquer lixo para não atraplhar nos testes futuro.
        // Executado em terceiro
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Executado em Segundo
    }

    func testPerformanceExample() throws {
        // Testa performance
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
