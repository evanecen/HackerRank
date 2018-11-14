//
//  Sorting.swift
//  HackerRank
//
//  Created by evanecen on 29/10/2018.
//  Copyright © 2018 evanecen. All rights reserved.
//

struct SortingSecond {
    /// [Sorting: Bubble Sort](https://www.hackerrank.com/challenges/ctci-bubble-sort/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=sorting)
    func countSwaps(a: [Int]) -> String {
        var array = a
        var count = 0
        for _ in 0..<a.count {
            for j in 0..<a.count-1 {
                if array[j] > array[j+1] {
                    array.swapAt(j, j+1)
                    count += 1
                }
            }
        }
        return "Array is sorted in \(count) swaps.\nFirst Element: \(array[0])\nLast Element: \(array[a.count-1])"
    }
}
