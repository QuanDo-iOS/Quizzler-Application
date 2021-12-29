//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Quan's Macbook on 28/12/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Questions(q: "A slug's blood is green.", a: "True"),
        Questions(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Questions(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Questions(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Questions(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Questions(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Questions(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Questions(q: "Google was originally called 'Backrub'.", a: "True"),
        Questions(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Questions(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Questions(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Questions(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
        
    ]
    var numberQuestion = 0
    
    func checkAnswers(_ userAnswer : String) -> Bool {
        if quiz[numberQuestion].a == userAnswer {
            return true
        } else {
            return false
        }
    }
    
    mutating func switchNextQuestion() -> Void {
        if self.numberQuestion + 1 < self.quiz.count {
            self.numberQuestion += 1
        } else {
            self.numberQuestion = 0
        }
    }
    
    func getQuestionText() -> String {
        return self.quiz[numberQuestion].q
    }
    
    func getProgress() -> Float {
        return Float(self.numberQuestion) / Float(self.quiz.count)
    }
}
