//
//  WarmupTests.swift
//  WarmupTests
//
//  Created by evanecen on 24/10/2018.
//  Copyright © 2018 evanecen. All rights reserved.
//

import XCTest
@testable import HackerRank

class WarmupTests: XCTestCase {
    func testSolveMeFirst() {
        let case0 = Warmup().solveMeFirst(a: 2, b: 3)
        XCTAssertEqual(case0, 5)
        
        let case1 = Warmup().solveMeFirst(a: 100, b: 1000)
        XCTAssertEqual(case1, 1100)
    }

    func testSimpleArraySum() {
        let case0 = Warmup().simpleArraySum(ar: [1, 2, 3, 4, 10, 11])
        XCTAssertEqual(case0, 31)
    }
    
    func testCompareTheTriplets() {
        let case0 = Warmup().compareTriplets(a: [5, 6, 7], b: [3, 6, 10])
        XCTAssertEqual(case0, [1, 1])
        
        let case1 = Warmup().compareTriplets(a: [17, 28, 30], b: [99, 16, 8])
        XCTAssertEqual(case1, [2, 1])
    }
    
    func testAVeryBigSum() {
        let case0 = Warmup().aVeryBigSum(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005])
        XCTAssertEqual(case0, 5000000015)
    }
    
    func testDiagonalDifference() {
        let case0 = Warmup().diagonalDifference(arr: [[11, 2, 4], [4, 5, 6], [10, 8, -12]])
        XCTAssertEqual(case0, 15)
    }
    
    func testPlusMinus() {
        let case0 = Warmup().plusMinus(arr: [-4, 3, -9, 0, 4, 1])
        XCTAssertEqual(case0, ["0.500000", "0.333333", "0.166667"])
        
        let case1 = Warmup().plusMinus(arr: [1, 2, 3, -1, -2, -3, 0, 0])
        XCTAssertEqual(case1, ["0.375000", "0.375000", "0.250000"])
    }
    
    func testStaircase() {
        let case0 = Warmup().staircase(n: 6)
        XCTAssertEqual(case0, """
                                     #
                                    ##
                                   ###
                                  ####
                                 #####
                                ######

                                """)
    }
    
    func testMiniMaxSum() {
        let case0 = Warmup().miniMaxSum(arr: [1, 2, 3, 4, 5])
        XCTAssertEqual(case0, [10, 14])
        
        let case1 = Warmup().miniMaxSum(arr: [7, 69, 2, 221, 8974])
        XCTAssertEqual(case1, [299, 9271])
    }
    
    func testBirthdayCakeCandles() {
        let case0 = Warmup().birthdayCakeCandles(ar: [3, 2, 1, 3])
        XCTAssertEqual(case0, 2)
    }
    
    func testTimeConversion() {
        let case0 = Warmup().timeConversion(s: "07:05:45PM")
        XCTAssertEqual(case0, "19:05:45")
        
        let case1 = Warmup().timeConversion(s: "12:40:22AM")
        XCTAssertEqual(case1, "00:40:22")
    }
}
