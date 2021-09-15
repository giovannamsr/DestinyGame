//
//  Story.swift
//  DestinyGame
//
//  Created by Giovanna Rodrigues on 14/09/21.
//

import Foundation

struct Story {
    let title : String
    let choice1 : String
    let choice2 : String
    
    init(t: String, c1 : String, c2 : String) {
        title = t
        choice1 = c1
        choice2 = c2
    }
}
