//
//  AsyncProcess.swift
//  Study-UnitTest
//
//  Created by Walter Luis Deonísio Junior on 05/07/20.
//  Copyright © 2020 Walter Luis Deonísio Junior. All rights reserved.
//

import UIKit

class AsyncProcess {
    var name = ""
    
    func callTheResultInsideEffect() {
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.1) { [weak self] in
            self?.name = "Nome Qualquer"
        }
    }
    
    func doStuff(_ completion: @escaping (String) -> ()) {
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.1) { [weak self] in
            completion("Nome Qualquer")
        }
    }
}
