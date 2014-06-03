//
//  SecondSwiftPlayground.swift
//  Swift Showcase
//
//  Created by Simone Civetta on 03/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() ->  Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
    
    var perimeter: Double {
        get {
            return 4.0 * self.sideLength
        }
        set {
            self.sideLength = newValue / 4.0
        }
    }
}

//////////////

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

extension Int: ExampleProtocol {
    var simpleDescription: String {
    return "The number \(self)"
    }
    // Notice the use of the mutating keyword in the declaration of SimpleStructure to mark a method that modifies the structure.
    mutating func adjust() {
        self += 42
    }
}

////////////////

func statusCode() -> (Int, Int) {
    let http404Error = (404, "Not Found")
    let http200Status = (statusCode: 200, description: "OK")
    return (http404Error.0, http200Status.statusCode)
}


///////////////

func createShoppingList() -> Array<String> {
    var shoppingList: String[] = ["Eggs", "Milk"]
    shoppingList += "Sugar"
    return shoppingList;
}


