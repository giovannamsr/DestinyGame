//
//  ViewController.swift
//  DestinyGame
//
//  Created by Giovanna Rodrigues on 14/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyTextLabel: UILabel!
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    var storyBrain = StoryBrain()
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI(storyBrain.userPosition)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(0)
        
    }
    func updateUI(_ userPosition: Int){
        storyTextLabel.text = storyBrain.stories[userPosition].title
        firstChoiceButton.setTitle(storyBrain.stories[userPosition].choice1, for: .normal)
        secondChoiceButton.setTitle(storyBrain.stories[userPosition].choice2, for: .normal)
    }


}

