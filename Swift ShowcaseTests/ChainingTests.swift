//
//  Chaining.swift
//  Swift Showcase
//
//  Created by JC on 03/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

import XCTest

class ChainingTests : XCTestCase {

    func findEmployeeNilTest() {
        var xebia = Company()

        XCTAssert(xebia.firstEmployeeJob() == nil, "pass")
    }

    func findEmployeeTest() {
        var xebia = Company()
        xebia.employees = [Employee(job: "Engineer")]

        XCTAssert(xebia.firstEmployeeJob() == "Engineer", "pass")

    }
}