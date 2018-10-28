//
//  Arrays.swift
//  HackerRank
//
//  Created by evanecen on 29/10/2018.
//  Copyright © 2018 evanecen. All rights reserved.
//

struct Arrays {
    
    /// [2D Array - DS](https://www.hackerrank.com/challenges/2d-array/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays)
    func hourglassSum(arr: [[Int]]) -> Int {
        var sumArray = [Int]()
        for i in 0..<arr.count-2 {
            for j in 0..<arr.count-2 {
                let sum = arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
                sumArray.append(sum)
            }
        }
        return sumArray.max()!
    }
    
    /// [Arrays: Left Rotation](https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays)
    func rotLeft(a: [Int], d: Int) -> [Int] {
        var array = Array(repeating: 0, count: a.count)
        for i in 0..<a.count {
            array[i] = a[(i + d) % a.count]
        }
        return array
    }
}
