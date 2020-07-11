//
//  ViewController.swift
//  MultipleChoiceQuizApp
//
//  Created by Mac on 10/07/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC:UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    @IBAction func answerSelected(_ sender : UIButton){
        let userAnswer = sender.currentTitle ?? ""
            var answer = quizBrain.checkAnswer(userAnswer)
            
            if answer {
                sender.backgroundColor = UIColor.green
                
            }
            else
            {
                sender.backgroundColor = UIColor.red
            }
            
            quizBrain.nextQuestion()
            
            Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        }
        
        
        @objc func updateUI() {
            optionA.setTitle(quizBrain.getTitleForOptionA(), for: .normal)
            optionB.setTitle(quizBrain.getTitleForOptionB(), for: .normal)
            optionC.setTitle(quizBrain.getTitleForOptionC(), for: .normal)
            questionLabel.text = quizBrain.getQuestionText()
            progressBar.progress = quizBrain.getProgress()
            scoreLabel.text = "Score: \(quizBrain.getScore())"
            optionA.backgroundColor = UIColor.clear
            optionB.backgroundColor = UIColor.clear
            optionC.backgroundColor = UIColor.clear
            
        }

}

