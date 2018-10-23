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
}
