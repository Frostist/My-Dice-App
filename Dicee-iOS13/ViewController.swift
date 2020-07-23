//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Selecting images on the view
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //sets the dice value
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    //Arrays
    var diceNumbers = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func rollTheDice(_ sender: Any) {
        
        //definding the array for the dice
        //diceNumbers.randomElement() will do the same thing
        diceImageView1.image =  diceNumbers[leftDiceNumber]
        diceImageView2.image =  diceNumbers[rightDiceNumber]
        
        leftDiceNumber = Int.random(in: 0...5)
        rightDiceNumber = Int.random(in: 0...5)
        
        //Prints the dice value
        print("Left Dice = \(leftDiceNumber)")
        print("Right Dice = \(rightDiceNumber)")
        
    }
    
}

