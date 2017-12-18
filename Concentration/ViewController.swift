//
//  ViewController.swift
//  Concentration
//
//  Created by Jason Yoo on 12/17/17.
//  Copyright © 2017 ThumbsUp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount: Int = 0 {
        didSet {
            // property observer
            // every time property changes it executes the following
            // code
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    // below is a property
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices : Array<String> = ["👻", "🎃", "👻", "🎃"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("The button is not in cardButtons")
        }
        
    }
    
    func flipCard(withEmoji emoji:String, on button:UIButton) {
        print("Touched(withEmoji: \(emoji))")
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}

