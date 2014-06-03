//
//  EnumTests.swift
//  Swift Showcase
//
//  Created by JC on 03/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

import XCTest

class EnumTests : XCTestCase {

    func northTest() {
        XCTAssert(CompassPoint.North.description() == "this is North")
    }

    func southTest() {
        XCTAssert(CompassPoint.North.description() == "this is South")
    }

    func westTest() {
        XCTAssert(CompassPoint.North.description() == "this is WildWildWest")
    }

    func eastTest() {
        XCTAssert(CompassPoint.North.description() == "this is East")
    }
}