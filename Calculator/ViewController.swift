//
//  ViewController.swift
//  Calculator
//
//  Created by Amarildo Zeneli on 3/1/17.
//  Copyright © 2017 Amarildo Zeneli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // UILabel is implicitly unwrapped with `!`
    @IBOutlet private weak var display: UILabel!
    
    private var userIsInTheMiddleOfTyping = false
    
    @IBAction private func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }

    // a computed property
    private var displayValue: Double {
        get {  // get the display value, assume we have double otherwise crash
            // Double wrapper returns optional, we cannot unwrap in certain situations
            return Double(display.text!)!
        }
        set { // set the display value, convert to string
            display.text = String(newValue)
        }
    }
    
    @IBAction private func performOperation(_ sender: UIButton) {
        // clean display for operations
        userIsInTheMiddleOfTyping = false
        // if let mathematicalSymbol equal the current senders title, then do something
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                //display.text = String(M_PI)
                displayValue = M_PI
            } else if mathematicalSymbol == "√" {
                displayValue = sqrt(displayValue)
            }
        }
        
    }
}

