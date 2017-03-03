//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Amarildo Zeneli on 3/3/17.
//  Copyright © 2017 Amarildo Zeneli. All rights reserved.
//

import Foundation

class CalculatorBrain {
    private var accumulator = 0.0
    
    func setOperand(operand: Double) {
        accumulator = operand
    }
    
    func performOperation(symbol: String) {
        
    }
    
    // result is a computed read-only property
    var result: Double {
        get {
            return accumulator
        }
    }
}
