
//
//  MergeSort.swift
//  Sort algorithms
//
//  Created by Den on 8/15/18.
//  Copyright © 2018 MicroGameDev. All rights reserved.
//

import Foundation


class MergeSort {
    
    
    // Merge sort
    // description:
    // split array in two halfes while halves of array not sorted, then merge
    
    func mergeSort(_ data: Array<Int>) -> Array<Int> {
        if data.count <= 1 {
            return data
        }
        let middle = (data.count / 2)
        let leftHalf = Array(data[0 ..< middle])
        let rightHalf = Array(data[middle ... data.count - 1])
        let mergedLeft = mergeSort(leftHalf)
        let mergedRight = mergeSort(rightHalf)
        return merge(mergedLeft, mergedRight)
    }
    
    
    func merge(_ leftHalf: Array<Int>, _ rightHalf: Array<Int>) -> Array<Int> {
        var merged: Array<Int> = []
        var left  = leftHalf
        var right = rightHalf
        while left.count > 0 && right.count > 0 {
            if left[0] <= right[0] {
                merged.append(left[0])
                left.remove(at: 0)
            } else {
                merged.append(right[0])
                right.remove(at: 0)
            }
        }
        if left.count > 0 {
            merged = merged + mergeSort(left)
        }
        if right.count > 0 {
            merged = merged + mergeSort(right)
        }
        return merged
    }
    
    
    
    
    
    
    
    
}
