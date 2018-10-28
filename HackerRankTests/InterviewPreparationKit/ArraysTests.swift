//
//  ArraysTests.swift
//  HackerRankTests
//
//  Created by evanecen on 29/10/2018.
//  Copyright © 2018 evanecen. All rights reserved.
//

import XCTest
@testable import HackerRank

class ArraysTests: XCTestCase {

    func testHourglassSum() {
        let case0 = Arrays().hourglassSum(arr: [[1, 1, 1, 0, 0, 0],
                                                [0, 1, 0, 0, 0, 0],
                                                [1, 1, 1, 0, 0, 0],
                                                [0, 0, 2, 4, 4, 0],
                                                [0, 0, 0, 2, 0, 0],
                                                [0, 0, 1, 2, 4, 0]])
        XCTAssertEqual(case0, 19)
        
        let case1 = Arrays().hourglassSum(arr: [[1, 1, 1, 0, 0, 0],
                                                [0, 1, 0, 0, 0, 0],
                                                [1, 1, 1, 0, 0, 0],
                                                [0, 9, 2, -4, -4, 0],
                                                [0, 0, 0, -2, 0, 0],
                                                [0, 0, -1, -2, -4, 0]])
        XCTAssertEqual(case1, 13)
        
        let case2 = Arrays().hourglassSum(arr: [[-9, -9, -9, 1, 1, 1],
                                                [0, -9, 0, 4, 3, 2],
                                                [-9, -9, -9, 1, 2, 3],
                                                [0, 0, 8, 6, 6, 0],
                                                [0, 0, 0, -2, 0, 0],
                                                [0, 0, 1, 2, 4, 0]])
        XCTAssertEqual(case2, 28)
    }

    func testRotLeft() {
        let case0 = Arrays().rotLeft(a: [1, 2, 3, 4, 5], d: 4)
        XCTAssertEqual(case0, [5, 1, 2, 3, 4])
        
        let case1 = Arrays().rotLeft(a: [41, 73, 89, 7, 10, 1, 59, 58, 84, 77,
                                         77, 97, 58, 1, 86, 58, 26, 10, 86, 51], d: 10)
        XCTAssertEqual(case1, [77, 97, 58, 1, 86, 58, 26, 10, 86, 51,
                               41, 73, 89, 7, 10, 1, 59, 58, 84, 77])
        
        let case2 = Arrays().rotLeft(a: [33, 47, 70, 37, 8, 53, 13, 93,
                                         71, 72, 51, 100, 60, 87, 97], d: 13)
        XCTAssertEqual(case2, [87, 97, 33, 47, 70, 37, 8, 53,
                               13, 93, 71, 72, 51, 100, 60])
    }
}
