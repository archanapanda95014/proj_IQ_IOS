//
//  MainVC.swift
//  IQTestNew
//
//  Created by Archana Panda on 9/25/18.
//  Copyright © 2018 Archana Panda. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    let allQuestions = QuestionBank()
    var pickedAnswer:Bool = false
    var questionNumber:Int = 0
    var answerNumber:Int = 0
    var score = 0
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2{
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber = questionNumber+1
        nextQuestion()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       nextQuestion()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber)/7"

    }
    
    
    func nextQuestion() {
        updateUI()
        if questionNumber <= 6{
            questionLabel.text = allQuestions.list[questionNumber].questionText
            
        } else {
            let alert  = UIAlertController(title: "Awesome", message: "You completed the quiz, do you want to restart?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {(alert: UIAlertAction!) in
                self.startOver()
            })
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){ _ in
                self.tabBarController?.selectedIndex = 2
            }
            alert.addAction(restartAction)
            alert.addAction(cancelAction)

            present(alert, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer{
            ProgressHUD.showSuccess("Wow! Correct !")
            score += 1
        } else{
            ProgressHUD.showError("Sorry.. lets try the next one....")
        }
        
    }
    
    
    func startOver() {
        questionNumber = 0
        nextQuestion()
        score = 0
        updateUI()
    }

}

