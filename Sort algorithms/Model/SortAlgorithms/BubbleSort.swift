//
//  BubbleSort.swift
//  Sort algorithms
//
//  Created by Den on 8/15/18.
//  Copyright © 2018 MicroGameDev. All rights reserved.
//

import Foundation

class BubbleSort: SortAlgorithm {
    
    let algorithmType: SortAlgorithmType = .bubble
    
    
    static func sort(_ data: [Int]) -> [Int] {
        var unsorted = data
        var lastIndex = unsorted.count - 1
        while lastIndex > 0 {
            for i in 0..<lastIndex {
                if unsorted[i] > unsorted[i + 1] {
                    unsorted.swapAt(i, i + 1)
                }
            }
            lastIndex = lastIndex - 1
        }
        return unsorted
    }
    
}
