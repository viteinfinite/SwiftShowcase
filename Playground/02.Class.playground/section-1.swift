// Playground - noun: a place where people can play

import UIKit

enum CarOption {
    case Airbag
    case Seabelt
    case SpareWheel
}

class Car: Equatable {
    let brand: String
    let year: Int
    let model: String
    var options: Dictionary<CarOption, Bool>
    var distance:Int
    var argus: Int { return distance/year }
    
    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
        self.distance = 0
        self.options = [:]
    }
    
    convenience init(brand: String, model: String) {
        self.init(brand: brand, model: model, year: 2014)
    }
    
    subscript(option: CarOption) -> Bool? {
        get { return self.options[option] }
        set { self.options[option] = newValue }
    }
}

func ==(lhs: Car, rhs: Car) -> Bool {
    return (lhs.model == rhs.model) && (lhs.brand == lhs.brand);
}

let megane: Car = Car(brand: "Renault", model: "Megane", year: 2012)
let clio: Car = Car(brand: "Renault", model: "Clio", year: 2013)
let clio2: Car = Car(brand: "Renault", model: "Clio")

clio != megane
clio == clio2

clio.argus == 0
clio.distance = 50_000
clio.argus == 24


clio[.Airbag] = true
clio[.SpareWheel] = false

clio.options.count == 2
clio.options[.Airbag] == true
clio.options[.SpareWheel] == false
