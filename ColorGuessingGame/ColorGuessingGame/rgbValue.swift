//
//  rgbValue.swift
//  ColorGuessingGame
//
//  Created by Margiett Gil on 10/29/19.
//  Copyright © 2019 Margiett Gil. All rights reserved.
//

import UIKit
import Foundation

struct rgbValue {
    var red = CGFloat.random(in: 0...1)
    var green = CGFloat.random(in: 0...1)
    var blue = CGFloat.random(in: 0...1)
    let alpha = CGFloat(1)
    
    // this is creating the colors
    func rgbColor() -> UIColor {
        let randomColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        
        return randomColor
        
       // return UIColor(red: red, green: green, blue: blue, alpha: alpha)  this is another way of making this function
    }
    func highestRgbValue () -> CGFloat {
        // if the color does not change, change the let to var
        // this is sorting the colors by the highest to lowest color percentage
        let sortedColor =  [red, blue, green].sorted(by:{$0 > $1})
        return sortedColor[0]
    }

    
}



// r g b = to CGFloat

// CGfloat is a data variable
//The basic type for floating-point scalar values in Core Graphics and related frameworks.

//rgb = red green and blue they can only go from zero to one
// r = 0-1
//g = 0-1
//b = 0-1
// UII

//float is a 0.0

//UIColor(r(CGFloat) = 0.9484
//g(CGFloat) = 0.2
//b(CGFloat), = 0.4
//alpha(CGFloat) = 1 is like see thru color invisable

