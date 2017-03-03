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
    
    var operations: Dictionary<String, Operation> = [
        "π": Operation.Constant(M_PI), // put assoc val in
        "e": Operation.Constant(M_E),
        "√": Operation.UnaryOperation(sqrt),
        "cos": Operation.UnaryOperation(cos),
    ]
    
    enum Operation {
        // associated value with Constant
        case Constant(Double)
        case UnaryOperation((Double) -> Double)
        case BinaryOperation
        case Equals
    }
    
    func performOperation(symbol: String) {
        if let operation = operations[symbol] {
            switch operation {
            // pull out associated constant value and put it in value
            case .Constant(let value): accumulator = value
            case .UnaryOperation(let function): accumulator = function(accumulator)
            case .BinaryOperation: break
            case .Equals: break
            }
        }
    }
    
    // result is a computed read-only property
    var result: Double {
        get {
            return accumulator
        }
    }
}
