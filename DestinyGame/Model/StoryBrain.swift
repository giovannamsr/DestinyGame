//
//  StoryBrain.swift
//  DestinyGame
//
//  Created by Giovanna Rodrigues on 14/09/21.
//

import Foundation

struct StoryBrain {
    let stories = [
        Story(t: "You see a frog near the pool.", c1: "Grab the frog.", c2: "Panic!"),
        Story(t: "The frog jumps inside your clothes!", c1: "Go swim with it.", c2: "Panic and scream!"),
        Story(t: "Your neighbor shows up.", c1: "Punch him.", c2: "Ask for help!")]
    var userPosition = 0
    
    mutating func nextStory(userChoice : String){
        switch userChoice{
        case stories[0].choice1:
            userPosition = 1
        case stories[0].choice2:
            userPosition = 2
        case stories[1].choice1:
            userPosition = 2
        case stories[1].choice2:
            userPosition = 2
        default:
            userPosition = 0
        }
    }
}
