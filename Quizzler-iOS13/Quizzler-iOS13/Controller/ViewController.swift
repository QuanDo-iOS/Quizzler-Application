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
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        progressBar.progress = 0.0
    }
    
    @IBAction func answerButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        quizBrain.checkAnswers(userAnswer)
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        if numberQuestion + 1 < quiz.count {
            numberQuestion += 1
        } else {
            numberQuestion = 0
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    
    @objc func updateQuestion() -> Void {
        questionLabel.text = quiz[numberQuestion].q
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(numberQuestion) / Float(quiz.count)
    }
}

