//
//  Warmup.swift
//  HackerRank
//
//  Created by evanecen on 24/10/2018.
//  Copyright © 2018 evanecen. All rights reserved.
//

import Foundation

struct Warmup {
    
    /// [Solve Me First](https://www.hackerrank.com/challenges/solve-me-first/problem)
    func solveMeFirst(a: Int, b: Int) -> Int {
        return a + b
    }
    
    /// [Simple Array Sum](https://www.hackerrank.com/challenges/simple-array-sum/problem)
    func simpleArraySum(ar: [Int]) -> Int {
        return ar.reduce(0, +)
    }
    
    /// [Compare the Triplets](https://www.hackerrank.com/challenges/compare-the-triplets/problem)
    func compareTriplets(a: [Int], b: [Int]) -> [Int] {
        let alice = ((a[0]>b[0]) ? 1 : 0) + ((a[1]>b[1]) ? 1 : 0) + ((a[2]>b[2]) ? 1 : 0)
        let bob = ((a[0]<b[0]) ? 1 : 0) + ((a[1]<b[1]) ? 1 : 0) + ((a[2]<b[2]) ? 1 : 0)
        return [alice, bob]
    }
    
    /// [A Very Big Sum](https://www.hackerrank.com/challenges/a-very-big-sum/problem)
    func aVeryBigSum(ar: [Int]) -> Int {
        return ar.reduce(0, +)
    }
    
    /// [Diagonal Difference](https://www.hackerrank.com/challenges/diagonal-difference/problem)
    func diagonalDifference(arr: [[Int]]) -> Int {
        var a = 0, b = 0
        for i in 0..<arr.count {
            a += arr[i][i]
            b += arr[arr.count - 1 - i][i]
        }
        
        return abs(a - b)
    }
    
    /// [Plus Minus](https://www.hackerrank.com/challenges/plus-minus/problem)
    func plusMinus(arr: [Int]) -> [String] {
        let plus = Float(arr.filter { $0 > 0 }.count) / Float(arr.count)
        let minus = Float(arr.filter { $0 < 0 }.count) / Float(arr.count)
        let zero = Float(arr.filter { $0 == 0 }.count) / Float(arr.count)
        
        let formatString = ".6"
        return [plus.format(formatString), minus.format(formatString), zero.format(formatString)]
    }
    
    /// [Staircase](https://www.hackerrank.com/challenges/staircase/problem)
    func staircase(n: Int) -> String {
        var result = ""
        for i in 1...n {
            result += String(repeating: " ", count: n-i)
            result += String(repeating: "#", count: i) + "\n"
        }
        return result
    }
    
    /// [Mini-Max Sum](https://www.hackerrank.com/challenges/mini-max-sum/problem)
    func miniMaxSum(arr: [Int]) -> [Int] {
        var sum = 0, maxValue = 0, minValue = Int.max
        for i in arr {
            sum += i
            maxValue = max(maxValue, i)
            minValue = min(minValue, i)
        }
        return [sum - maxValue, sum - minValue]
    }
    
    /// [Birthday Cake Candles](https://www.hackerrank.com/challenges/birthday-cake-candles/problem)
    func birthdayCakeCandles(ar: [Int]) -> Int {
        var maxValue = 0, count = 1
        for i in ar {
            if maxValue == i {
                count += 1
            } else if maxValue < i {
                maxValue = i
                count = 1
            }
        }
        return count
    }
    
    /// [Time Conversion](https://www.hackerrank.com/challenges/time-conversion/problem)
    func timeConversion(s: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm:ssa"
        let date = dateFormatter.date(from: s)
        dateFormatter.dateFormat = "HH:mm:ss"
        
        return dateFormatter.string(from: date!)
    }
}
