//
//  Tweet.swift
//  Swift Showcase
//
//  Created by JC on 03/06/14.
//  Copyright (c) 2014 Xebia IT Architects. All rights reserved.
//

import Foundation

class Tweet {
    let author: String
    var message: String

    init(author: String, message: String) {
        self.author = author
        self.message = message
    }
}

/**
*
* @TODO Define tweet() method
* @params a Tweet instance OR an author and a message
* @return String
*
*/