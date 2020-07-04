//
//  AccountBalance.swift
//  Study-UnitTest
//
//  Created by Walter Luis Deonísio Junior on 04/07/20.
//  Copyright © 2020 Walter Luis Deonísio Junior. All rights reserved.
//

import UIKit

struct AccountBalance {
    let balance: Double
    
    func getEspecialLimit() -> Double {
        if balance < 100 {
            return balance + 10
        } else if balance > 500 {
            return balance + 1000
        }
        return balance
    }
}
