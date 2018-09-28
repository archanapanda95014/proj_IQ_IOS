//
//  WatchoutBank.swift
//  IQTestNew
//
//  Created by Archana Panda on 9/27/18.
//  Copyright © 2018 Archana Panda. All rights reserved.
//

import Foundation

class WatchoutBank{
    var list = [Question]()
    
    init(){
        let item = Question(text:"Should we start the game?", correctAnswer: true)
        list.append(item)
        
        list.append(Question(text: "The girl had a green pillow in her hand", correctAnswer: false))
        
        list.append(Question(text: "The writing action came before the sewing action", correctAnswer: true))
        
        list.append(Question(text: "How many windows did the dancer crossed while dancing?... 2..correct?", correctAnswer: false))
        
        list.append(Question(text: "The first sentence in the video was - 30 minute hint", correctAnswer:false))
    }
    
    
}
