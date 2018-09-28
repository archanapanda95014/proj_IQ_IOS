//
//  CalculationBank.swift
//  IQTestNew
//
//  Created by Archana Panda on 9/27/18.
//  Copyright © 2018 Archana Panda. All rights reserved.
//

import Foundation
class CalculationBank{
    var list = [Calculation]()
    
    init(){
        
        let item = Calculation(text: "square(A)+square(B) = ", seq:1)
        list.append(item)
        
        list.append(Calculation(text: "square(A+B) = ", seq:2))
        list.append(Calculation(text: "(A+B) * 19 = ", seq:3))
        list.append(Calculation(text: "(A+B) / 7 = ", seq:4))
        list.append(Calculation(text: "(A+B) * (A-B) = ", seq:5))
    }
}
