//
//  Card.swift
//  Concentration
//
//  Created by Jason Yoo on 1/16/18.
//  Copyright © 2018 ThumbsUp. All rights reserved.
//

import Foundation

struct Card {
    // struct vs class
    // 1. struct => no inheritance
    // 2. struct => value type (makes copies) | class => reference type
    // gets free initalizer
    
    var isFaceUp: Bool = false
    var isMatched: Bool = false
    var uniqueID: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifer() -> Int {
        // static method is used for type Card
        // sends to type Card itself
        // not to each individual card
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.uniqueID = Card.getUniqueIdentifer()
    }
}
