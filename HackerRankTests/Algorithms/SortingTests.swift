//
//  SortingTests.swift
//  HackerRankTests
//
//  Created by evanecen on 27/10/2018.
//  Copyright © 2018 evanecen. All rights reserved.
//

import XCTest
@testable import HackerRank

class SortingTests: XCTestCase {
    func testIntroTutorial() {
        let case0 = Sorting().introTutorial(V: 4, arr: [1, 4, 5, 7, 9, 12])
        XCTAssertEqual(case0, 1)
    }
    
    func testInsertionSort1() {
        let case0 = Sorting().insertionSort1(n: 5, arr: [2, 4, 6, 8, 3])
        XCTAssertEqual(case0, """
                                2 4 6 8 8
                                2 4 6 6 8
                                2 4 4 6 8
                                2 3 4 6 8

                                """)
        
    }
    
    func testInsertionSort2() {
        let case0 = Sorting().insertionSort2(n: 6, arr: [1, 4, 3, 5, 6, 2])
        XCTAssertEqual(case0, """
                                1 4 3 5 6 2
                                1 3 4 5 6 2
                                1 3 4 5 6 2
                                1 3 4 5 6 2
                                1 2 3 4 5 6

                                """)
    }
}
