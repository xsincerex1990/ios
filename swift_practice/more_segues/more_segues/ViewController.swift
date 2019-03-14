//
//  ViewController.swift
//  more_segues
//
//  Created by Joel alexis on 3/13/19.
//  Copyright © 2019 Joel alexis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pressmebutton(_ sender: Any) {
        performSegue(withIdentifier: "switch1", sender: self)
        
    }
    @IBAction func changeColor(_ sender: Any) {
        view.backgroundColor = UIColor.red
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "switch1" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textField.text!
            secondVC.delegate = self
            
        }
    }
    
    func dataReceived(data: String) {
        label.text = data
    }
    
}

