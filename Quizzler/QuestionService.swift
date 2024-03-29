//
//  QuestionService.swift
//  Quizzler
//
//  Created by Breno Rezende on 23/07/19.
//  Copyright © 2019 Brezende. All rights reserved.
//

import Foundation

struct QuestionService {

    var questions: [Question] {
        return [
            Question(text: "Valentine\'s day is banned in Saudi Arabia.", correctAnswer: true),
            Question(text: "A slug\'s blood is green.", correctAnswer: true),
            Question(text: "Approximately one quarter of human bones are in the feet.", correctAnswer: true),
            Question(text: "The total surface area of two human lungs is approximately 70 square metres.", correctAnswer: true),
            Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correctAnswer: true),
            Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correctAnswer: false),
            Question(text: "It is illegal to pee in the Ocean in Portugal.", correctAnswer: true),
            Question(text: "You can lead a cow down stairs but not up stairs.", correctAnswer: false),
            Question(text: "Google was originally called \"Backrub\".", correctAnswer: true),
            Question(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true),
            Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: false),
            Question(text: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: false),
            Question(text: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true)
        ]
    }
    
}
