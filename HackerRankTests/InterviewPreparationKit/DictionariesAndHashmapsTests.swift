//
//  DictionariesAndHashmapsTests.swift
//  HackerRankTests
//
//  Created by evanecen on 29/10/2018.
//  Copyright © 2018 evanecen. All rights reserved.
//

import XCTest
@testable import HackerRank

class DictionariesAndHashmapsTests: XCTestCase {

    func testCheckMagazine() {
        let case0 = DictionariesAndHashmaps()
            .checkMagazine(magazine: ["give", "me", "one", "grand", "today", "night"],
                           note: ["give", "one", "grand", "today"])
        XCTAssertEqual(case0, "Yes")
        
        let case1 = DictionariesAndHashmaps()
            .checkMagazine(magazine: ["two", "times", "three", "is", "not", "four"],
                           note: ["two", "times", "two", "is", "four"])
        XCTAssertEqual(case1, "No")
        
        let case2 = DictionariesAndHashmaps()
            .checkMagazine(magazine: ["ive", "got", "a", "lovely", "bunch", "of", "coconuts"],
                           note: ["ive", "got", "some", "coconuts"])
        XCTAssertEqual(case2, "No")
    }

    func testTwoStrings() {
        StringsTests().testTwoStringsFull()
    }
}
