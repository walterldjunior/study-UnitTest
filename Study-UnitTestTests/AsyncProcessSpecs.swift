//
//  AsyncProcessSpecs.swift
//  Study-UnitTestTests
//
//  Created by Walter Luis Deonísio Junior on 05/07/20.
//  Copyright © 2020 Walter Luis Deonísio Junior. All rights reserved.
//

import Quick
import Nimble
@testable import Study_UnitTest

class AsyncProcessSpecs: QuickSpec {
    override func spec() {
        describe("AsyncProcess") {
            context("callTheResultInsideEffect") {
                it("Test") {
                    let asyncProcess = AsyncProcess()
                    asyncProcess.callTheResultInsideEffect()
                    expect(asyncProcess.name).toEventually(equal("Nome Qualquer"))
                }
                
                it("Do Stuff") {
                    let asyncProcess = AsyncProcess()
                    
                    waitUntil { done in
                        asyncProcess.doStuff { result in
                            expect(result).to(equal("Nome Qualquer"))
                            done()
                        }
                    }
                }
            }
        }
    }
}
