//
//  ViewController.swift
//  stack_layout
//
//  Created by Joel alexis on 3/1/19.
//  Copyright © 2019 Joel alexis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var screenLabel: UILabel!
    var operation = true
    var op = "+"
    var num1 : Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func addNumFunc(num: String) {
        var onScreenNum = (screenLabel.text!)
        
        if operation {
            onScreenNum = ""
            operation = false
        }
        
        onScreenNum += num
        screenLabel.text = onScreenNum
    }
    
    
    @IBAction func clear(_ sender: Any) {
        screenLabel.text = "0"
        operation = true
    }
    
    
    @IBAction func makeNeg(_ sender: Any) {
        var onScreenNum = String(screenLabel.text!)
        
        onScreenNum = "-" + onScreenNum
        
        screenLabel.text = onScreenNum
        
        operation = true
    }
    
    
    @IBAction func percent(_ sender: Any) {
        var num1 = Double(screenLabel.text!)
        
        num1 = num1!/100.0
        
        screenLabel.text = String(num1!)
        
        operation = true
    }
    
    @IBAction func div(_ sender: Any) {
        op = "/"
        
        num1 = Double(screenLabel.text!)
        
        operation = true
        
    }
    
    
    @IBAction func mult(_ sender: Any) {
        op = "*"
        
        num1 = Double(screenLabel.text!)
        
        operation = true
    }
    
    
    @IBAction func minus(_ sender: Any) {
        op = "-"
        
        num1 = Double(screenLabel.text!)
        
        operation = true
    }
    
    @IBAction func add(_ sender: Any) {
        op = "+"
        
        num1 = Double(screenLabel.text!)
        
        operation = true
    }
    
    
    @IBAction func equals(_ sender: Any) {
        let num2 = Double(screenLabel.text!)
        var result: Double?
        
        switch op {
        case "*":
            result = num1! * num2!
        case "/":
            result = num1! / num2!
            
        case "-":
            result = num1! - num2!
            
        case "+":
            result = num1! + num2!
            
        default:
            result = 0.0
            
            
        }
        
        
        screenLabel.text = String(result!)
        
        operation = true
    }
    
    
    @IBAction func one(_ sender: Any) {
        addNumFunc(num: "1")
    }
    
    
    @IBAction func two(_ sender: Any) {
        addNumFunc(num: "2")
    }
    
    
    @IBAction func three(_ sender: Any) {
        addNumFunc(num: "3")
    }
    
    
    @IBAction func four(_ sender: Any) {
        addNumFunc(num: "4")
    }
    
    
    @IBAction func five(_ sender: Any) {
        addNumFunc(num: "5")
    }
    
    
    @IBAction func six(_ sender: Any) {
        addNumFunc(num: "6")
    }
    
    @IBAction func seven(_ sender: Any) {
        addNumFunc(num: "7")
    }
    
    
    @IBAction func eight(_ sender: Any) {
        addNumFunc(num: "8")
    }
    
    
    @IBAction func nine(_ sender: Any) {
        addNumFunc(num: "9")
    }
    
}

