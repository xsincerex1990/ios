//
//  ViewController.swift
//  8ball
//
//  Created by Joel alexis on 2/25/19.
//  Copyright © 2019 Joel alexis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var i = 0

    @IBOutlet weak var magicBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func askButton(_ sender: UIButton) {
        setAns()
    }
    
    func setAns() {
        i = Int.random(in: 1 ... 5)
        magicBall.image = UIImage(named: "ball" + String(i))
    }
    
}

