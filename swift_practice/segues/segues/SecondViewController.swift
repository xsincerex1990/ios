//
//  SecondViewController.swift
//  segues
//
//  Created by Joel alexis on 3/13/19.
//  Copyright © 2019 Joel alexis. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var textPassed : String?
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = textPassed
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
