//
//  ListenVC.swift
//  IQTestNew
//
//  Created by Archana Panda on 9/26/18.
//  Copyright © 2018 Archana Panda. All rights reserved.
//

import UIKit
import AVFoundation

class ListenVC: UIViewController, AVAudioPlayerDelegate {
    
    var soundOfPlay:String = ""
    var audioPlayer:AVAudioPlayer!
    var checkMusic:Int = 0
    var score:Int = 0
    var soundOfMusic:String = ""
    var total:Int = 0
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        if checkMusic == 0{
            soundOfMusic = soundArray[sender.tag-1]
            playMusic()
        } else {
            total = total+1
            soundOfMusic = soundArray[sender.tag-1]
            if soundOfMusic == soundOfPlay{
                ProgressHUD.showSuccess("Wow! Correct !")
                score += 1
            } else{
                ProgressHUD.showError("Sorry.. lets try again....")
            }
        }
       updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func updateUI(){
        scoreLabel.text = "Score \(score) out of \(total)"
    }
    
    func playMusic(){
        let soundURL = Bundle.main.url(forResource:soundOfMusic, withExtension:"wav")!
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
        } catch let error as NSError{
            print(error)
        }
        audioPlayer.play()
    }
    
    @IBAction func playPressed(_ sender: UIButton) {
        var randomMusicNumber = Int(arc4random_uniform(6))
        soundOfPlay = soundArray[randomMusicNumber]
        print(soundOfPlay)
        playMusic()
        checkMusic = 1
    }
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
}


