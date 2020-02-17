//
//  calcModel.swift
//  Product1
//
//  Created by 近藤宏輝 on 2020/02/17.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import Foundation

class CalcModel{
    var number1 = Int()
    var number2 = Int()
    
    init(CalcA: Int,CalcB: Int) {
        number1 = CalcA
        number2 = CalcB
    }
    
    func plus() -> Int {
        return number1 + number2
    }
    
    func min() -> Int {
        return number1 - number2
    }
    
    func div() -> Int {
        return number1 / number2
    }
    
    func mult() -> Int {
        return number1 * number2
    }
}
