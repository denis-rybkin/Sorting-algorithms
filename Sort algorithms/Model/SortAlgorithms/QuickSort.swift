//
//  QuickSort.swift
//  Sort algorithms
//
//  Created by Den on 8/15/18.
//  Copyright © 2018 MicroGameDev. All rights reserved.
//

import Foundation



class QuickSort {
    
    
    
    
    
    func quickSort(_ data: [Int]) -> [Int] {
        if data.count < 2 {
            return data
        }
        var unsorted = data
        var pivotIndex = unsorted.count - 1
        var j = -1
        for i in 0..<unsorted.count {
            if i + 1 == pivotIndex {
                unsorted.swapAt(pivotIndex, j + 1)
                pivotIndex = j + 1
                continue
            }
            // if i value less than pivot value: increment i and swap i and j values
            if unsorted[i] > unsorted[pivotIndex] {
                continue
            }
            j = j + 1
            unsorted.swapAt(j, i)
        }
        let left = Array(unsorted[0 ..< pivotIndex])
        let right = Array(unsorted[pivotIndex ... unsorted.count - 1])
        let sortedLeft = mergeSort(left)
        let sortedRight = mergeSort(right)
        let sorted = sortedLeft + sortedRight
        return sorted
    }
    
    
    
    
    
    
}
