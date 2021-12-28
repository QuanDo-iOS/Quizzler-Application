//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        ["four plus two is equal to six", "True"],
        ["Five minus three is equal to two", "True"],
        ["three times four is equal to ten", "False"]
    ]
    var numberQuestion = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
    }
    
    @IBAction func answerButton(_ sender: UIButton) {
        if numberQuestion < quiz.count {
            let userAnswer = sender.currentTitle!
            let actualAnswer = quiz[numberQuestion][1]
            if userAnswer == actualAnswer {
                print("right")
            } else {
                print("wrong")
            }
            if numberQuestion + 1 < quiz.count {
                numberQuestion += 1
            } else {
                numberQuestion = 0
            }
            updateQuestion()
        }
        
    }
    
    func updateQuestion() -> Void {
        
        questionLabel.text = quiz[numberQuestion][0]
    }
}

