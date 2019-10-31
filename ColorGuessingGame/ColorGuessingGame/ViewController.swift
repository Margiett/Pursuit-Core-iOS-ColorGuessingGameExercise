//
//  ViewController.swift
//  ColorGuessingGame
//
//  Created by Margiett Gil on 10/29/19.
//  Copyright © 2019 Margiett Gil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var score = 0
    var highScore = 0
    
    @IBOutlet weak var winorLose: UILabel!
    @IBOutlet weak var red: UIButton!
    
    @IBOutlet weak var newGamelabel: UIButton!
    @IBOutlet weak var green: UIButton!
    
    @IBOutlet weak var blue: UIButton!
    
    @IBOutlet weak var generatedColorView: UIView!
    
    @IBOutlet weak var highestScore: UILabel!
    
    @IBOutlet weak var yourScore: UILabel!
    
    var colorgenerated = rgbValue()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generatedColorView.backgroundColor = colorgenerated.rgbColor()
        newGamelabel.isHidden = true
        
        
        // this is changes the color of the letters
        // red.setTitleColor(UIColor.red, for: .normal)
        // green.setTitleColor(UIColor.green, for: .normal)
        // blue.setTitleColor(UIColor.blue, for: .normal)
        // if i want to code the background color i can
        //red.backgroundColor = .red
        
        //sintactic sugar .red instead of UIcolor.red
        
    }
    //MARK: New Game
    @IBAction func newGame(_ sender: UIButton) {
        // set score back to zero
        // enable all button
        // set view background color
        score = 0
        [red, green, blue].forEach({$0?.isEnabled = true})
        colorgenerated = rgbValue()
        //this is setting a new color to the new UIview
        generatedColorView.backgroundColor = colorgenerated.rgbColor()
        yourScore.text = "current score \(score)"
        winorLose.text = " "
        newGamelabel.isHidden = true
    }
    
    func scoregenerator() {
        score += 1
    }
    
    // MARK: Color Button
    @IBAction func colorButton(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            if colorgenerated.highestRgbValue() == colorgenerated.red {
                // I had to create a function in order to call it in this function and it can start adding 1 to the score everytime they win
                scoregenerator()
                winorLose.text = "You Won !"
               
                yourScore.text = "current score \(score)"
                if score > highScore {
                    highScore = score
                highestScore.text = "Highest Score : \(highScore)"
                }
                // this is gernrating a random color and resigning to the veriable
                colorgenerated = rgbValue()
                generatedColorView.backgroundColor = colorgenerated.rgbColor()
                
            } else {
                winorLose.text = "You Lost !"
                [red, green, blue].forEach({$0?.isEnabled = false})
                newGamelabel.isHidden = false
            }
        case 1:
            if colorgenerated.highestRgbValue() == colorgenerated.green {
                // I had to create a function in order to call it in this function and it can start adding 1 to the score everytime they win
                scoregenerator()
                winorLose.text = "You Won !"
       
                       yourScore.text = "current score \(score)"
                       if score > highScore {
                           highScore = score
                     highestScore.text = "Highest Score : \(highScore)"
                       }
                yourScore.text = "current score \(score)"
                colorgenerated = rgbValue()
                generatedColorView.backgroundColor = colorgenerated.rgbColor()
            } else {
                winorLose.text = "You Lost !"
                [red, green, blue].forEach({$0?.isEnabled = false})
                newGamelabel.isHidden = false
                
            }
        case 2:
            if colorgenerated.highestRgbValue() == colorgenerated.blue {
                // I had to create a function in order to call it in this function and it can start adding 1 to the score everytime they win
                scoregenerator()
                winorLose.text = "You Won !"
   
                   yourScore.text = "current score \(score)"
                   if score > highScore {
                       highScore = score
                     highestScore.text = "Highest Score : \(highScore)"
                }
                   
                yourScore.text = "current score \(score)"
                // resigning the instances of the struct to my veriable = colorgenerated
                colorgenerated = rgbValue()
                // this is giving a random color to the UIview
                generatedColorView.backgroundColor = colorgenerated.rgbColor()
            } else {
                winorLose.text = "You Lost !"
                [red, green, blue].forEach({$0?.isEnabled = false})
                newGamelabel.isHidden = false
        
        }
            default:
              print("default")
              
    }
    
  
    
    
}

// inside the else you want to do the isHidden = false in the new game .isHidden = true

// highest, score need a new variable 
}

