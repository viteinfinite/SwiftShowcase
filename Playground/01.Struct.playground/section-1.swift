// Playground - noun: a place where people can play

import UIKit

var hello = "hello"
var hello2 = hello

hello == hello2
hello += " world"
hello == hello2

var dict = ["i":0, "j":1]
var dict2 = dict

dict == dict2
dict["i"] = 1
dict == dict2

var array = [0,1]
var array2 = array.copy()

array == array2
array[0] = 1
array == array2

struct Position {
    var x:Float;
    var y:Float;
    
    mutating func translate(translation: Float) {
        self.x += translation;
        self.y += translation;
    }
}

@infix func + (pos1: Position, pos2: Position) -> Position {
    return Position(x: pos1.x + pos2.x, y: pos1.y + pos2.y)
}

@assignment func += (inout pos1: Position, pos2: Position) {
    pos1 = pos1 + pos2
}

var myPos = Position(x: 0, y: 0)
myPos.translate(5)


var pos = Position(x: 0, y: 200)
pos += Position(x: 10, y: -100)
