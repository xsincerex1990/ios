//
//  ViewController.swift
//  dicee
//
//  Created by Joel alexis on 2/25/19.
//  Copyright © 2019 Joel alexis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDice1: Int = 0
    var randomDice2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateImg()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateImg()
    }
    
    func updateImg() {
        
        randomDice1 = Int.random(in: 1 ... 6)
        randomDice2 = Int.random(in: 1 ... 6)
        
        diceImageView1.image = UIImage(named: "dice" + String(randomDice1))
        diceImageView2.image = UIImage(named: "dice" + String(randomDice2))
    }
    

}

