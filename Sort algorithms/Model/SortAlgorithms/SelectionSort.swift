//
//  SelectionSort.swift
//  Sort algorithms
//
//  Created by Den on 8/15/18.
//  Copyright © 2018 MicroGameDev. All rights reserved.
//

import Foundation

class SelectionSort {
    
    
    func selectionSort(_ data: Array<Int>) -> Array<Int> {
        var unsorted = data
        for i in 0..<unsorted.count {
            var indexWithSmallestInt = i
            for k in i..<unsorted.count {
                if unsorted[k] < unsorted[indexWithSmallestInt] {
                    indexWithSmallestInt = k
                }
            }
            unsorted.swapAt(i, indexWithSmallestInt)
        }
        return unsorted
    }
    
    
    
}
