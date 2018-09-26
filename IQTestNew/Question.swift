//
//  Question.swift
//  IQTestNew
//
//  Created by Archana Panda on 9/25/18.
//  Copyright © 2018 Archana Panda. All rights reserved.
//

import Foundation

class Question{
    
    let  questionText:String
    let answer:Bool
    
    init(text:String, correctAnswer:Bool){
        questionText = text
        answer = correctAnswer
    }
}
