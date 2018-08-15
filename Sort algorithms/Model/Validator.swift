//
//  Validator.swift
//  Sort algorithms
//
//  Created by Den on 8/15/18.
//  Copyright © 2018 MicroGameDev. All rights reserved.
//

import Foundation

class Validator {

    func validateSortedArray(_ sorted: [Int]) -> Bool {
        if sorted.count <= 1 { return true }
        for i in 0...sorted.count - 1 {
            if i == sorted.count - 1 { continue }
            if sorted[i] > sorted[i + 1] {
                return false
            }
        }
        return true
    }


}





