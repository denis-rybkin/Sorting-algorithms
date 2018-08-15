//
//  SortAlgorithm.swift
//  Sort algorithms
//
//  Created by Den on 8/15/18.
//  Copyright © 2018 MicroGameDev. All rights reserved.
//

import Foundation

protocol SortAlgorithm {
    
    var algorithmType: SortAlgorithmType { get }
    
    static func sort(_ data: [Int]) -> [Int]
    
}

enum SortAlgorithmType: Int {
    case selection = 0
    case insertion = 1
    case bubble    = 2
    case quick     = 3
    case merge     = 4
}
