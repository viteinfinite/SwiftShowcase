//
//  Swift_ShowcaseTests.swift
//  Swift ShowcaseTests
//
//  Created by Simone Civetta on 03/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import XCTest
import SwiftShowcase

class HelloTests: XCTestCase {
    
    func testA() {
        var hello = Hello()
        XCTAssert(hello.sayHello("World") == "Hello World")
    }
}
