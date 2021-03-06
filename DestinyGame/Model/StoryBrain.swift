//
//  StoryBrain.swift
//  DestinyGame
//
//  Created by Giovanna Rodrigues on 14/09/21.
//

import Foundation

struct StoryBrain {
    let stories = [
        Story(
            t: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            c1: "I'll hop in. Thanks for the help!", c1Destination: 2,
            c2: "Better ask him if he's a murderer first.", c2Destination: 1
        ),
        Story(
            t: "He nods slowly, unfazed by the question.",
            c1: "At least he's honest. I'll climb in.", c1Destination: 2,
            c2: "Wait, I know how to change a tire.", c2Destination: 3
        ),
        Story(
            t: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            c1: "I love Elton John! Hand him the cassette tape.", c1Destination: 5,
            c2: "It's him or me! You take the knife and stab him.", c2Destination: 4
        ),
        Story(
            t: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            c1: "The", c1Destination: 0,
            c2: "End", c2Destination: 0
        ),
        Story(
            t: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            c1: "The", c1Destination: 0,
            c2: "End", c2Destination: 0
        ),
        Story(
            t: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            c1: "The", c1Destination: 0,
            c2: "End", c2Destination: 0
        )]
    var userPosition = 0
    
    mutating func nextStory(userChoice : String){
        if userChoice == "Choice 1"{
            userPosition = stories[userPosition].choice1Destination
        }
        else{
            userPosition = stories[userPosition].choice2Destination
        }
    }
}
