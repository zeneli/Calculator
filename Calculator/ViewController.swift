//
//  ViewController.swift
//  Calculator
//
//  Created by Amarildo Zeneli on 3/1/17.
//  Copyright © 2017 Amarildo Zeneli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle
        print("touched \(digit)")
    }

}

