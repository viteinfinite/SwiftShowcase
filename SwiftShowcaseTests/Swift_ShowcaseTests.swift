//
//  Swift_ShowcaseTests.swift
//  Swift ShowcaseTests
//
//  Created by Simone Civetta on 03/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import XCTest

class Swift_ShowcaseTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFirst() {
        var x = FirstSwiftPlayground()
        XCTAssert(x.sayHelloTo("World") == "Hello World")
    }
}
