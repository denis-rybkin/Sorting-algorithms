//
//  InsertionSort.swift
//  Sort algorithms
//
//  Created by Den on 8/15/18.
//  Copyright © 2018 MicroGameDev. All rights reserved.
//

import Foundation

class InsertionSort: SortAlgorithm {
    
    let algorithmType: SortAlgorithmType = .insertion
    
    static func sort(_ data: [Int]) -> [Int] {
        var unsorted = data
        for i in 0..<unsorted.count - 1{
            // compare elements
            if unsorted[i] > unsorted[i + 1] {
                // find index to insert
                for k in 0...i {
                    if unsorted[i + 1] < unsorted[k] {
                        unsorted.swapAt(i + 1, k)
                    }
                }
            }
        }
        return unsorted
    }
    
}
