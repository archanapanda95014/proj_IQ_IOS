//
//  WatchOutVC.swift
//  IQTestNew
//
//  Created by Archana Panda on 9/26/18.
//  Copyright © 2018 Archana Panda. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
import WebKit

class WatchOutVC: UIViewController {
    
    let avViewPlayerController = AVPlayerViewController()
    var avPlayer:AVPlayer?
    @IBOutlet weak var video1: WKWebView!
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    var score:Int = 0
    
    let allQuestions = WatchoutBank()
    var pickedAnswer:Bool = false
    var questionNumber:Int = 0
    var answerNumber:Int = 0
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2{
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber = questionNumber+1
        nextQuestion()
    }
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        videoLoad("1ctP9cLRbnE")
        videoLoad("yeyS23CGGe0")
        nextQuestion()
        }
    override func viewWillAppear(_ animated: Bool) {
        print("coming")
        
//        waitImage.image = UIImage(named: "waiter-96.png")
        
    }
    
    func videoLoad(_ videoCode:String){
        guard
        let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoCode)")
            else{ return}
        video1.load(URLRequest(url: youtubeURL) )
    }
    func nextQuestion(){
        updateUI()
        
        if questionNumber < 5{
            questionLabel.text = allQuestions.list[questionNumber].questionText
            
        } else {
            let alert  = UIAlertController(title: "Awesome", message: "You completed the quiz, do you want to restart?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {(alert: UIAlertAction!) in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    func startOver() {
        questionNumber = 0
        nextQuestion()
        score = 0
        updateUI()
    }
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
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
    
}
    

