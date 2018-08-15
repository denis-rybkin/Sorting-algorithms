//
//  RandomGenerator.swift
//  Sort algorithms
//
//  Created by Den on 8/15/18.
//  Copyright © 2018 MicroGameDev. All rights reserved.
//

import Foundation

class RandomGenerator {
    
    
    
    
    func randomData(length: Int) -> [Int] {
        var randomData: Array<Int> = []
        for _ in 0..<length {
            let randomInt = Int(arc4random_uniform(UInt32(100 + 1)))
            randomData.append(randomInt)
        }
        return randomData
    }
    
    
    
    
}
