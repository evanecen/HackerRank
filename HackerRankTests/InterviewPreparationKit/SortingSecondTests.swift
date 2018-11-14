//
//  SortingSecondTests.swift
//  HackerRankTests
//
//  Created by evanecen on 30/10/2018.
//  Copyright © 2018 evanecen. All rights reserved.
//

import XCTest
@testable import HackerRank

class SortingSecondTests: XCTestCase {

    func testCountSwaps() {
        let case0 = SortingSecond().countSwaps(a: [1, 2, 3])
        XCTAssertEqual(case0, """
                                Array is sorted in 0 swaps.
                                First Element: 1
                                Last Element: 3
                                """)
        
        let case1 = SortingSecond().countSwaps(a: [3, 2, 1])
        XCTAssertEqual(case1, """
                                Array is sorted in 3 swaps.
                                First Element: 1
                                Last Element: 3
                                """)
        
        let case2 = SortingSecond().countSwaps(a: [4, 2, 3, 1])
        XCTAssertEqual(case2, """
                                Array is sorted in 5 swaps.
                                First Element: 1
                                Last Element: 4
                                """)
    }

}
