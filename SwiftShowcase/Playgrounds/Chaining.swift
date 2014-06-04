//
//  Author.swift
//  Swift Showcase
//
//  Created by JC on 03/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

class Company {
    var employees: Array<Employee>?
    
    // @TODO smthg ;)

    func firstEmployeeJob() -> String? {
        // @TODO return 1st employee job
        return nil
    }
}

class Employee {
    let job: String
    let address: String?

    init(job: String) {
        self.job = job
    }
}
