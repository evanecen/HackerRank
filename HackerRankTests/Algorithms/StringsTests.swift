//
//  StringsTests.swift
//  HackerRankTests
//
//  Created by evanecen on 24/10/2018.
//  Copyright © 2018 evanecen. All rights reserved.
//

import XCTest
@testable import HackerRank

class StringsTests: XCTestCase {
    func testAlternatingCharacters() {
        let case0 = Strings().alternatingCharacters(s: ["AAAA", "BBBBB", "ABABABAB", "BABABA", "AAABBB"])
        XCTAssertEqual(case0, [3, 4, 0, 0, 4])
        
        let case1 = Strings().alternatingCharacters(s: ["AAABBBAABB", "AABBAABB", "ABABABAA"])
        XCTAssertEqual(case1, [6, 4, 1])
        
        let case2 = Strings().alternatingCharacters(s: ["ABBABBAA"])
        XCTAssertEqual(case2, [3])
    }
    
    func testTwoStrings() {
        let case0_1 = Strings().twoStrings(s1: "hello", s2: "world")
        XCTAssertEqual(case0_1, "YES")
        
        let case0_2 = Strings().twoStrings(s1: "hi", s2: "world")
        XCTAssertEqual(case0_2, "NO")
    }
    
    // twoStrings의 여러 케이스들 확인
    func testTwoStringsFull() {
        let case0 = Strings().twoStrings(s: [["hello", "world"], ["hi", "world"]])
        XCTAssertEqual(case0, ["YES", "NO"])
        
        let case1 = Strings().twoStrings(s: [["wouldyoulikefries", "abcabcabcabcabcabc"],
                                             ["hackerrankcommunity", "cdecdecdecde"],
                                             ["jackandjill", "wentupthehill"],
                                             ["writetoyourparents", "fghmqzldbc"]])
        XCTAssertEqual(case1, ["NO", "YES", "YES", "NO"])
        
        let case2 = Strings().twoStrings(s: [["aardvark", "apple"], ["beetroot", "sandals"]])
        XCTAssertEqual(case2, ["YES", "NO"])
    }
}
