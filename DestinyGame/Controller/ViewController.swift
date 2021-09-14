//
//  ViewController.swift
//  DestinyGame
//
//  Created by Marcelo Rodrigues de Sousa on 14/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyTextLabel: UILabel!
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    
    let stories = [
        Story(t: "You see a frog near the pool.", c1: "Grab the frog.", c2: "Panic!"),
        Story(t: "The frog jumps inside your clothes!", c1: "Go swim with it.", c2: "Panic and scream!"),
        Story(t: "Your neighbor shows up.", c1: "Punch him.", c2: "Ask for help!")]
    
    @IBAction func choiceMade(_ sender: UIButton) {
        switch sender.currentTitle{
        case stories[0].choice1:
            storyTextLabel.text = stories[1].title
            firstChoiceButton.setTitle(stories[1].choice1, for: .normal)
            secondChoiceButton.setTitle(stories[1].choice2, for: .normal)
        case stories[0].choice2:
            storyTextLabel.text = stories[2].title
            firstChoiceButton.setTitle(stories[2].choice1, for: .normal)
            secondChoiceButton.setTitle(stories[2].choice2, for: .normal)
        case stories[1].choice1:
            storyTextLabel.text = stories[2].title
            firstChoiceButton.setTitle(stories[2].choice1, for: .normal)
            secondChoiceButton.setTitle(stories[2].choice2, for: .normal)
        case stories[1].choice2:
            storyTextLabel.text = stories[2].title
            firstChoiceButton.setTitle(stories[2].choice1, for: .normal)
            secondChoiceButton.setTitle(stories[2].choice2, for: .normal)
        default:
            storyTextLabel.text = stories[0].title
            firstChoiceButton.setTitle(stories[0].choice1, for: .normal)
            secondChoiceButton.setTitle(stories[0].choice2, for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyTextLabel.text = stories[0].title
        firstChoiceButton.setTitle(stories[0].choice1, for: .normal)
        secondChoiceButton.setTitle(stories[0].choice2, for: .normal)
        
    }


}

