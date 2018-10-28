//
//  Sorting.swift
//  HackerRank
//
//  Created by evanecen on 27/10/2018.
//  Copyright © 2018 evanecen. All rights reserved.
//

struct Sorting {
    
    /// [Intro to Tutorial Challenges](https://www.hackerrank.com/challenges/tutorial-intro/problem)
    func introTutorial(V: Int, arr: [Int]) -> Int {
        return arr.index(of: V)!
    }
    
    /// [Insertion Sort - Part 1](https://www.hackerrank.com/challenges/insertionsort1/problem)
    func insertionSort1(n: Int, arr: [Int]) -> String {
        var resultString: String = ""
        var arr = arr
        for x in 1..<n {
            var y = x
            let num = arr[y]
            while y > 0 && num < arr[y-1] {
                arr[y] = arr[y-1]
                y -= 1
                resultString += arr.map{String($0)}.joined(separator: " ") + "\n"
            }
            arr[y] = num
        }
        resultString += arr.map{String($0)}.joined(separator: " ") + "\n"
        return resultString
    }
    
    /// [Insertion Sort - Part 2](https://www.hackerrank.com/challenges/insertionsort2/problem)
    func insertionSort2(n: Int, arr: [Int]) -> String {
        var resultString: String = ""
        var arr = arr
        for x in 1..<n {
            var y = x
            while y > 0 && arr[y] < arr[y-1] {
                arr.swapAt(y, y-1)
                y -= 1
            }
            resultString += arr.map{String($0)}.joined(separator: " ") + "\n"
        }

        return resultString
    }
}
