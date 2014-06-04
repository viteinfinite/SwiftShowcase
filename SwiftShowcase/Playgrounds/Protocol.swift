//
//  ProtocolSample.swift
//  Swift Showcase
//
//  Created by Sergio on 04/06/2014.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

let PI: Double = 3.14

protocol Shape {
    func area() -> Double
}

class Square: Shape {
    let size: Double
    init(size: Double) {
        self.size = size
    }
    func area() -> Double {
        // TODO 1 - should return square area
        return 0
    }
}

class Circle: Shape {
    let radius: Double
    init(radius: Double) {
        self.radius = radius
    }
    func area() -> Double {
        // TODO 2 - should return circle area
        return 0
    }
}

func computeShapesArea(shapes: Shape[]) -> Double {

    // TODO 3 - should return shapes total area
    return 0
}