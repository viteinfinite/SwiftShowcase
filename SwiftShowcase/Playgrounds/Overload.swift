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

func tweet(tweet: Tweet) -> String {
    return "\(tweet.author) tweeted \(tweet.message)"
}

func tweet(author: String, message: String) -> String {
    return tweet(Tweet(author: author, message: message))
}