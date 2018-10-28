//
//  GreedyTests.swift
//  HackerRankTests
//
//  Created by evanecen on 29/10/2018.
//  Copyright © 2018 evanecen. All rights reserved.
//

import XCTest
@testable import HackerRank

class GreedyTests: XCTestCase {
    func testmaximumToys() {
        let case0 = Greedy().maximumToys(prices: [1, 12, 5, 111, 200, 1000, 10], k: 50)
        XCTAssertEqual(case0, 4)
        
        let case1 = Greedy().maximumToys(prices: [1, 2, 3, 4], k: 7)
        XCTAssertEqual(case1, 3)
        
        let case2 = Greedy().maximumToys(prices: [3, 7, 2, 9, 4], k: 15)
        XCTAssertEqual(case2, 3)
    }
}
