//
//  calcModel.swift
//  Product1
//
//  Created by 近藤宏輝 on 2020/02/17.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import Foundation

class CalcModel {
    var number1 = Int()
    var number2 = Int()
    
    
    func plus(number1:Int, number2: Int) -> Int {
        return number1 + number2
    }
    
    func minus(number1:Int, number2: Int) -> Int {
        return number1 - number2
    }

    func div(number1:Int, number2: Int) -> Int {
        return number1 / number2
    }
    
    func mul(number1:Int, number2: Int) -> Int {
        return number1 * number2
    }

    
}
