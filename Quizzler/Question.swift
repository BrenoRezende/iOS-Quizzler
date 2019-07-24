//
//  Question.swift
//  Quizzler
//
//  Created by Breno Rezende on 23/07/19.
//  Copyright © 2019 Brezende. All rights reserved.
//

import Foundation

struct Question {
    
    let text: String
    let correctAnswer: Bool
    
    init(text: String, correctAnswer: Bool) {
        self.text = text
        self.correctAnswer = correctAnswer
    }
}
