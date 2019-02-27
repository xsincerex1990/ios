//
//  questionbank.swift
//  Quizzler
//
//  Created by Joel alexis on 2/26/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    var list = [Questions]()
    
    init() {
        // Creating a quiz item and appending it to the list
        let item = Questions(text: "Valentine\'s day is banned in Saudi Arabia.", cAnswer: true)
        
        // Add the Questions to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Questions(text: "A slug\'s blood is green.", cAnswer: true))
        
        list.append(Questions(text: "Approximately one quarter of human bones are in the feet.", cAnswer: true))
        
        list.append(Questions(text: "The total surface area of two human lungs is approximately 70 square metres.", cAnswer: true))
        
        list.append(Questions(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", cAnswer: true))
        
        list.append(Questions(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", cAnswer: false))
        
        list.append(Questions(text: "It is illegal to pee in the Ocean in Portugal.", cAnswer: true))
        
        list.append(Questions(text: "You can lead a cow down stairs but not up stairs.", cAnswer: false))
        
        list.append(Questions(text: "Google was originally called \"Backrub\".", cAnswer: true))
        
        list.append(Questions(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", cAnswer: true))
        
        list.append(Questions(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", cAnswer: false))
        
        list.append(Questions(text: "No piece of square dry paper can be folded in half more than 7 times.", cAnswer: false))
        
        list.append(Questions(text: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", cAnswer: true))
        
    }
}
