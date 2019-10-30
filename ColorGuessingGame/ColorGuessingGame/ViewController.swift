//
//  ViewController.swift
//  ColorGuessingGame
//
//  Created by Margiett Gil on 10/29/19.
//  Copyright © 2019 Margiett Gil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var winorLose: UILabel!
    @IBOutlet weak var red: UIButton!
    
    @IBOutlet weak var green: UIButton!
    
    @IBOutlet weak var blue: UIButton!
    
    @IBOutlet weak var generatedColorView: UIView!
    
    @IBOutlet weak var highestScore: UILabel!
    
    @IBOutlet weak var yourScore: UILabel!
    
    var colorgenerated = rgbValue()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generatedColorView.backgroundColor = colorgenerated.rgbColor()
        
        // this is changes the color of the letters
        // red.setTitleColor(UIColor.red, for: .normal)
        // green.setTitleColor(UIColor.green, for: .normal)
        // blue.setTitleColor(UIColor.blue, for: .normal)
        // if i want to code the background color i can
        //red.backgroundColor = .red
        
        //sintactic sugar .red instead of UIcolor.red
        
    }
    
    @IBAction func newGame(_ sender: UIButton) {
        
        
        
    }
    var score = 0
    var highscore = 0
    func scoregenerator() {
        score += 1
    }
    
    
    
    @IBAction func colorButton(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            if colorgenerated.highestRgbValue() == colorgenerated.red {
                // I had to create a function in order to call it in this function and it can start adding 1 to the score everytime they win
                scoregenerator()
                winorLose.text = "You Won !"
                highestScore.text = " "
                yourScore.text = "current score \(score)"
                generatedColorView.backgroundColor = colorgenerated.rgbColor()
            } else {
                winorLose.text = "You Lost !"
                [red, green, blue].forEach({$0?.isEnabled = false})
            }
        case 1:
            if colorgenerated.highestRgbValue() == colorgenerated.green {
                // I had to create a function in order to call it in this function and it can start adding 1 to the score everytime they win
                scoregenerator()
                winorLose.text = "You Won !"
                highestScore.text = " "
                yourScore.text = "current score \(score)"
                generatedColorView.backgroundColor = colorgenerated.rgbColor()
            } else {
                winorLose.text = "You Lost !"
                [red, green, blue].forEach({$0?.isEnabled = false})
                
            }
        case 2:
            if colorgenerated.highestRgbValue() == colorgenerated.blue {
                // I had to create a function in order to call it in this function and it can start adding 1 to the score everytime they win
                scoregenerator()
                winorLose.text = "You Won !"
                highestScore.text = " "
                yourScore.text = "current score \(score)"
                generatedColorView.backgroundColor = colorgenerated.rgbColor()
            } else {
                winorLose.text = "You Lost !"
                [red, green, blue].forEach({$0?.isEnabled = false})
                
            }
        default:
            print("default")
        }
    }
    
    
    
    
    
}



