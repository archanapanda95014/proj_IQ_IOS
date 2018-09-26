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
    
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videoLoad("1ctP9cLRbnE")
        videoLoad("yeyS23CGGe0")
        }
    
   
    
    func videoLoad(_ videoCode:String){
        guard
        let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoCode)")
            else{ return}
        
        video1.load(URLRequest(url: youtubeURL) )
    }
    
}
    

