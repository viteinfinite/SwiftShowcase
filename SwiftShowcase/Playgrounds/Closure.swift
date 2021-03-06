//
//  ClosureSample.swift
//  Swift Showcase
//
//  Created by Sergio on 03/06/2014.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

let nameToValue: Dictionary<String, Int> = [
    "zero":0,
    "one":1,
    "two":2,
    "three":3,
    "four":4,
    "five":5,
    "six":6,
    "seven":7,
    "eight":8,
    "nine":9
]

func nameToValue(name: String) -> Int {
    // TODO 1 - should return value for the given name if between zero and nine, 0 otherwise
    return 0;
}

func valueSum(x: Int, y: Int) -> Int {
    // TODO 2 - should return x and y sum...
    return 0
}

class Stream<T> {

    let elements: T[]

    init (elements: T[]) {
        self.elements = elements
    }

    func map<X>(mapFunction: T -> X) -> Stream<X> {
        // TODO 3 - should map this Stream of T elements to a Stream of X elements using the given mapFunction
        return Stream<X>(elements: [])
    }

    func reduce(identity: T, reduceFunction: (T, T) -> T) -> T {
        // TODO 4 - should reduce this Stream of T elements to a T element using the given identity and reduceFunction
        return identity
    }
}


