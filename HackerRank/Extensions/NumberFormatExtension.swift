//
//  NumberExtension.swift
//  HackerRank
//
//  Created by evanecen on 24/10/2018.
//  Copyright © 2018 evanecen. All rights reserved.
//

extension Float {
    func format(_ string: String) -> String {
        return String(format: "%\(string)f", self)
    }
}

extension Double {
    func format(_ string: String) -> String {
        return String(format: "%\(string)f", self)
    }
}
