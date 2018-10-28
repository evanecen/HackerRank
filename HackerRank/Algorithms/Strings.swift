//
//  Strings.swift
//  HackerRank
//
//  Created by evanecen on 24/10/2018.
//  Copyright © 2018 evanecen. All rights reserved.
//

import Foundation

struct Strings {
    
    /// [Alternating Characters](https://www.hackerrank.com/challenges/alternating-characters/problem)
    func alternatingCharacters(s: [String]) -> [Int] {
        var results = [Int]()
        s.forEach { string in
            var count = 0
            var array = Array(string)
            for i in 1..<array.count {
                if array[i-1] == array[i] {
                    count += 1
                }
            }
            results.append(count)
        }
        
        return results
    }
    
    /// [Two Strings](https://www.hackerrank.com/challenges/two-strings/problem)
    func twoStrings(s1: String, s2: String) -> String {
        for char in "abcdefghijklmnopqrstuvwxyz" {
            if s1.contains(char) && s2.contains(char) {
                return "YES"
            }
        }
        return "NO"
    }
    
    // twoStrings를 사용해서 여러 케이스들 확인하기 위한 function
    func twoStrings(s: [[String]]) -> [String] {
        var results = [String]()
        for arr in s {
            results.append(twoStrings(s1: arr[0], s2: arr[1]))
        }
        return results
    }
}
