//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    var qNum = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let questions = allQuestions.list[qNum] // Questions(text: "string", cAns: Bool) text = questionText, cAns = answer
        questionLabel.text = questions.questionText  // ui label text is equal to the array that contains the Questions object located at list[x]
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
            }
        checkAnswer()
        qNum += 1
        nextQuestion()
  
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        if qNum <= 12 {
            questionLabel.text = allQuestions.list[qNum].questionText
        } else {
            print("Done")
            qNum = 0
        }
    }
    
    
    func checkAnswer() {
        let correctAns =  allQuestions.list[qNum].answer
        
        if correctAns == pickedAnswer {
            print("Correct")
        } else {
            print("Wrong")
        }
    }
    
    
    func startOver() {
       
    }
    

    
}
