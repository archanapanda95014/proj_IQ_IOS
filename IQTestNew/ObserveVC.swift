//
//  ObserveVC.swift
//  IQTestNew
//
//  Created by Archana Panda on 9/25/18.
//  Copyright © 2018 Archana Panda. All rights reserved.
//

import UIKit

class ObserveVC: UIViewController {

    @IBOutlet weak var dice1Image: UIImageView!
    @IBOutlet weak var dice2Image: UIImageView!
    
    @IBOutlet weak var questionLAbel: UILabel!
    @IBOutlet weak var answerLabel: UITextField!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var dice1Field:Int = 0
    var dice2Field:Int = 0
    
    let allCalculations = CalculationBank()
    var questionNumber:Int = 0
    var enteredAnswer:Int = 0
    var correctAnswer:Int = 0
    var score = 0
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }

    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }
    
    @IBAction func rollPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        dice1Field = Int(arc4random_uniform(6))
        dice2Field = Int(arc4random_uniform(6))
        
        dice1Image.image = UIImage(named: diceArray[dice1Field])
        dice2Image.image = UIImage(named: diceArray[dice2Field])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    
    @IBAction func submitPressed(_ sender: UIButton) {
        enteredAnswer = Int(answerLabel.text!)!
        var A = dice1Field + 1
        var B = dice2Field + 1

        switch questionNumber{
            case 0: correctAnswer = (A*A) + (B*B)
            case 1: correctAnswer = (A+B)*(A+B)
            case 2: correctAnswer = (A+B) * 19
            case 3: correctAnswer = (A+B) / 7
            case 4: correctAnswer = (A+B) * (A-B)
            default: correctAnswer = A+B
        }
        if enteredAnswer == correctAnswer{
            ProgressHUD.showSuccess("Wow! Correct !")
            score += 1
            print(score)
            questionNumber += 1
            nextQuestion()
            
        } else{
            ProgressHUD.showError("Sorry.. lets try the next one....")
            questionNumber += 1
            nextQuestion()
            
        }
    
    }
    func nextQuestion(){
        updateUI()
        if questionNumber<5{
            questionLAbel.text = allCalculations.list[questionNumber].questionText
        }else {
            let alert  = UIAlertController(title: "Awesome", message: "You completed the quiz, do you want to restart?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {(alert: UIAlertAction!) in
                print("reached here")
                self.startOver()
            })
            
            alert.addAction(restartAction)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    func updateUI(){
        scoreLabel.text = "Score: \(score)"
    }
    func startOver() {
        questionNumber = 0
        nextQuestion()
        score = 0
        updateUI()
    }
    
}




