//
//  CompassPoint.swift
//  Swift Showcase
//
//  Created by JC on 03/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

enum CompassPoint: String {
    case North = "North"
    case South = "South"
    case East = "East"
    case West = "WildWildWest"

    func description() -> String {
        return "this is " + self.toRaw()
    }
}

func compassPoint(compassPoint: CompassPoint) -> String? {
    return compassPoint.description()
}