//
//  SecondViewController.swift
//  more_segues
//
//  Created by Joel alexis on 3/13/19.
//  Copyright © 2019 Joel alexis. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var data = ""

    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var field2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label2.text = data
    }
    
    @IBAction func pressme2(_ sender: Any) {
    }

}
