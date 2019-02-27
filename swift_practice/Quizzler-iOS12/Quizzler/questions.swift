//
//  File.swift
//  Quizzler
//
//  Created by Joel alexis on 2/26/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Questions {
    let questionText: String
    let answer: Bool
    
    init(text: String, cAnswer: Bool) {
        questionText = text
        answer = cAnswer        
    }
}
