//
//  Strings.swift
//  HackerRank
//
//  Created by evanecen on 24/10/2018.
//  Copyright © 2018 evanecen. All rights reserved.
//

import Foundation

struct Strings {
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
}
