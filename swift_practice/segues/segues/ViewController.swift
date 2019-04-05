//
//  ViewController.swift
//  segues
//
//  Created by Joel alexis on 3/13/19.
//  Copyright © 2019 Joel alexis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreen" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.textPassed = text.text!
        }
    }
    
}

