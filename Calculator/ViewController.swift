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
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }

}

