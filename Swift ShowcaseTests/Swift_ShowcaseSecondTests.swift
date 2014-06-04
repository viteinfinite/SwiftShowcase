//
//  Swift_ShowcaseSecondTests.swift
//  Swift Showcase
//
//  Created by Simone Civetta on 03/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import XCTest

class Swift_ShowcaseSecondTests: XCTestCase {
    
    func testSecond() {
        var square:Square = Square(sideLength: 5, name: "Square")
        XCTAssertEqual(square.area(), 25)
    }
    
    func testThird() {
        var square:Square = Square(sideLength: 0, name: "Square")
        square.perimeter = 20
        XCTAssertEqual(square.area(), 25)
    }
    
    func testFourth() {
        var myInteger:Int = 10
        myInteger.adjust()
        
        XCTAssertEqual(myInteger, 52)
    }
    
    func testFifth() {
        var result:(Int, Int) = statusCode()
        XCTAssertEqual(result.0, 404)
        XCTAssertEqual(result.1, 200)
    }
    
    func testSixth() {
        var result:Array<String> = createShoppingList()
        XCTAssertFalse(result.isEmpty)
    }
}