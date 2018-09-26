//
//  QuestionBank.swift
//  IQTestNew
//
//  Created by Archana Panda on 9/25/18.
//  Copyright © 2018 Archana Panda. All rights reserved.
//

import Foundation

class QuestionBank{
    var list = [Question]()
    
    init(){
        let item = Question(text: "In a box, there are 21 red, 13 green and 8 blue balls. One ball is picked at random. The probability that it is neither red nor green is 4/22", correctAnswer: false)
        list.append(item)
        
        list.append(Question(text: "A polar bear walks at 5km/h for 6hr and at 4km/h for 12hr. His average speed is 4.33", correctAnswer: true))
        
        list.append(Question(text: "the missing number in the series- [ 3, 8, 15, 24, ?, 48  - 3 ]  is 34", correctAnswer: false))
        
        list.append(Question(text: "If 40% of a number is 48, then that number is 120?", correctAnswer: true))
        
        list.append(Question(text: "The probability of flipping a coin and getting 5 tails in a row is 50%?", correctAnswer:false))
        
        list.append(Question(text: "All Groops are Balbos. Some Balbos are Nerts. All Nerts are illegal. Some Groops are definitely illegal.", correctAnswer: false))
        
        list.append(Question(text: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog, Correct?", correctAnswer: true))
        
    }
    
    
}


//Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog: True

//A man was driving his car with no headlights on, and the moon wasn't out. A young woman dressed in an all black dress darted out across the road in front of his car. The man was able to put his brakes on in time, allowing the woman to safely cross the road. How did the man see her?
//
//It was the middle of the day!
//
//A man and his son get in a terrible automobile accident and are rushed to the neaest emergency room where they are rushed into surgery. The attending physician looks at the boy, stops and says, "I can't operate on this boy, he's my son!" How is this possible?
//
//The doctor is the boy's mother.
