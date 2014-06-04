//
//  SubscriptSampleTests.swift
//  Swift Showcase
//
//  Created by Sergio on 04/06/2014.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation
import XCTest

class SubscriptTests: XCTestCase {
    
    func testSquareComputing() {
        
        var fixtures = [
            1: 1,
            2: 4,
            3: 9,
            5: 25
        ]
        
        var squareComputing = SquareComputing()
        
        for num in fixtures.keys {
            XCTAssertEqual(squareComputing[num], fixtures[num]!, "square of \(num) should be \(fixtures[num]!)")
        }
    }
}