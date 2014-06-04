//
//  Protocol.swift
//  SwiftShowcase
//
//  Created by Simone Civetta on 03/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

// https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Protocols.html#//apple_ref/doc/uid/TP40014097-CH25-XID_345
// TODO:
// Uncomment the lines between /* */

import Foundation

protocol KatanaProtocol {
    mutating func addKatana()
}

struct KatanaMovie: KatanaProtocol {
    var katana: Int = 0;
    mutating func addKatana() {
        katana += 1
    }
}
