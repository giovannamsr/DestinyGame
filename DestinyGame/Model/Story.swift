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
    let choice1Destination : Int
    let choice2Destination : Int
    
    init(t: String, c1 : String, c1Destination : Int, c2 : String, c2Destination : Int) {
        title = t
        choice1 = c1
        choice2 = c2
        choice1Destination = c1Destination
        choice2Destination = c2Destination
    }
}
