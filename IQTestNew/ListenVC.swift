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
    
    var soundOfMusic:String = ""
    var audioPlayer:AVAudioPlayer!
    
    let soundArray = ["note1","note2","note3","note4","note5","note6","note1"]
    
    @IBAction func notePressed(_ sender: UIButton) {
        soundOfMusic = soundArray[sender.tag-1]
        playMusic()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playMusic(){
        let soundURL = Bundle.main.url(forResource:soundOfNote, withExtension:"wav")!
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
        } catch let error as NSError{
            print(error)
        }
        audioPlayer.play()
    }
}
