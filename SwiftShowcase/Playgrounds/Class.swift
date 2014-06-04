//
//  Class.swift
//  SwiftShowcase
//
//  Created by Simone Civetta on 03/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

// https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-XID_14
// https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-XID_204
// https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html#//apple_ref/doc/uid/TP40014097-CH13-XID_94

// TODO:
// Uncomment the lines between /* */

import Foundation

class Movie {
    let lengthInMinutes: Int = 0
    /* let title: String */
    
    init(title: String, lengthInMinutes: Int) {
        // TODO
    }
    
    func simpleDescription() -> String {
        return "A movie \(lengthInMinutes) minutes long."
    }
}

class TarantinoMovie: Movie {
    var numberOfGuns: Int
    var coolnessCoefficient = 1
    let fucksPerGun: Int = 67
    
    init(numberOfGuns: Int, title: String, lengthInMinutes: Int) {
        self.numberOfGuns = numberOfGuns
        super.init(title: title, lengthInMinutes: lengthInMinutes)
    }
    
    // TODO: Create function "coolness", returning numberOfGuns * lengthInMinutes * coolnessCoefficient

    override func simpleDescription() -> String {
        return "A movie by Q. Tarantino  \(lengthInMinutes) minutes long with \(numberOfGuns) guns."
    }
    
    var numberOfFucks: Int {
        get {
            return fucksPerGun * numberOfGuns
        }
        // TODO: Setter
    }
}
