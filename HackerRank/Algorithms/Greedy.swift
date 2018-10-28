//
//  Greedy.swift
//  HackerRank
//
//  Created by evanecen on 29/10/2018.
//  Copyright © 2018 evanecen. All rights reserved.
//

struct Greedy {
    
    /// [Mark and Toys](https://www.hackerrank.com/challenges/mark-and-toys/problem)
    func maximumToys(prices: [Int], k: Int) -> Int {
        var prices = prices.sorted()
        var k = k
        for i in 0..<prices.count {
            k -= prices[i]
            if k < prices[i+1] {
                return i + 1
            }
        }
        return -1
    }
}
