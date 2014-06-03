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

    init() {
        
    }

    func firstEmployeeJob() -> String? {
        return self.employees?[0].job
    }

    func firstEmployeeWithAddressContaining(matcher: String) -> Array<Employee>? {
        return nil
        //return self.employees?.filter({ employee in employee.address == nil }) || Array<Employee>()
    }
}

class Employee {
    let job: String
    let address: String?

    init(job: String) {
        self.job = job
    }
}
