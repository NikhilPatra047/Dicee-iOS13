//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //IBOutlet = Interface Builder Outlet allows me to reference an UI element
    
    override func viewDidLoad() {
        //When the app first shows up on the phone, everything written under this function gets executed
        diceImageView1.image = [#imageLiteral(resourceName: "DiceFour")][0]
        diceImageView2.image = [#imageLiteral(resourceName: "DiceSix")][0]
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //who.what = value
        //alpha property changes the opacity of an imageView.
        
        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        //IBAction = Interface Builder Action allows me to reference an UI button
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix") ]
        
//        diceImageView1.image = diceArray[Int.random(in: 0...5)] It can be done this way otherwise randomElement() does the same thing as well.
        
        //The first square brackets consists of elements that we store in the diceImageView1 IBOutlet.
        
        //The second square bracket consists of an index that represents an element in the array that comes before it and that value is set to be shown in the app when the button is pressed.
        
//        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()

    }
}

