//
//  ClosureTests.swift
//  Swift Showcase
//
//  Created by Sergio on 03/06/2014.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation
import XCTest

class ClosureTests: XCTestCase {
    
    func testNameToValue() {

        var fixtures = [
            ("zero", 0),
            ("one", 1),
            ("two", 2),
            ("three", 3),
            ("four", 4),
            ("five", 5),
            ("six", 6),
            ("seven", 7),
            ("eight", 8),
            ("nine", 9),
            ("ten", 0),
            ("unknownValue", 0),
            ("", 0)
        ]

        for (name, value) in fixtures {
            XCTAssertEqual(nameToValue(name), value, "\(name) should be associated to \(value)")
        }
    }
    
    func testValueSum() {

        var fixtures = [
            (1, 2, 3),
            (3, 5, 8),
            (8, 9, 17),
        ]
        
        for (x, y, sum) in fixtures {
            XCTAssertEqual(valueSum(x, y), sum, "\(x) + \(y) sum should be \(sum)")
        }
    }
    
    func testMap() {
        
        var fixtures = ["one","three","unknown","eight"]
        var expected = [1, 3, 0, 8]
        var stringStream = Stream(elements: fixtures)

        var intStream = stringStream.map(nameToValue)

        XCTAssertEqual(intStream.elements.count, 4, "Stream size \(intStream.elements.count) should be \(fixtures.count)")
        for index in 0..fixtures.count {
            XCTAssertEqual(intStream.elements[index], expected[index], "\(fixtures[index]) should be mapped to \(expected[index])")
        }
    }
    
    func testReduce() {
        
        var fixtures = [1,2,0,3,5,8]
        var intStream = Stream(elements: fixtures)
        var expected = 19
        
        var result = intStream.reduce(0, valueSum)
        
        XCTAssertEqual(result, expected, "Reduce result \(result) should be \(expected)")
    }
}