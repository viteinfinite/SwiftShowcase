//
//  SubscriptSample.swift
//  Swift Showcase
//
//  Created by Sergio on 04/06/2014.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

let squareTable: Dictionary<Int, Int> = [
    2: 4,
    3: 9
]

class SquareComputing {
    subscript (num: Int) -> Int {
        if let result = squareTable[num] {
            return result
        }
        return num * num
//        TODO - should return square of the given value
//        return 0
    }
}
