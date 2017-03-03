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
    
    var operations: Dictionary<String, Double> = [
        "π": M_PI,
        "e": M_E,
    ]
    
    func performOperation(symbol: String) {
        if let constant = operations[symbol] {
            accumulator = constant
        }
    }
    
    // result is a computed read-only property
    var result: Double {
        get {
            return accumulator
        }
    }
}
