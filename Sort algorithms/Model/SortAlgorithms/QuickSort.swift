//
//  QuickSort.swift
//  Sort algorithms
//
//  Created by Den on 8/15/18.
//  Copyright © 2018 MicroGameDev. All rights reserved.
//

import Foundation



class QuickSort: SortAlgorithm {
    
    let algorithmType: SortAlgorithmType = .quick
    
    static func sort(_ data: [Int]) -> [Int] {
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
            if unsorted[i] > unsorted[pivotIndex] {
                continue
            }
            j = j + 1
            unsorted.swapAt(j, i)
        }
        let left = Array(unsorted[0 ..< pivotIndex])
        let right = Array(unsorted[pivotIndex ... unsorted.count - 1])
        let sortedLeft = sort(left)
        let sortedRight = sort(right)
        let sorted = sortedLeft + sortedRight
        return sorted
    }
    
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
