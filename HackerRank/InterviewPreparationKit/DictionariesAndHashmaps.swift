//
//  DictionariesAndHashmaps.swift
//  HackerRank
//
//  Created by evanecen on 29/10/2018.
//  Copyright © 2018 evanecen. All rights reserved.
//

struct DictionariesAndHashmaps {
    
    /// [Hash Tables: Ransom Note](https://www.hackerrank.com/challenges/ctci-ransom-note/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=dictionaries-hashmaps)
    func checkMagazine(magazine: [String], note: [String]) -> String {
        var dict = [String: Int]()
        for str in magazine {
            if dict[str] != nil {
                dict[str]! += 1
            } else {
                dict[str] = 1
            }
        }
        
        for str in note {
            if let count = dict[str] {
                if count == 0 {
                    return "No"
                }
                dict[str]! -= 1
            } else {
                return "No"
            }
        }
        return "Yes"
    }
    
    /// See Algorithms / Strings / [Two Strings](https://www.hackerrank.com/challenges/two-strings/problem)
    static func twoStrings(s: [[String]]) -> [String] {
        return Strings().twoStrings(s: s)
    }
    
}
