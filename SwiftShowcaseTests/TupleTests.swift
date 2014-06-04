//
//  File.swift
//  SwiftShowcase
//
//  Created by Simone Civetta on 04/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

import XCTest
import SwiftShowcase

class TupleTests: XCTestCase {
    
    func testA() {
        var result:(drink1: Beverage, drink2: Beverage) = rivals()        
        XCTAssertTrue(result.drink1.name == "Coke")
    }
}