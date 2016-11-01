//
//  ViewController.swift
//  simpleCalculatoriOS
//
//  Created by Sanjana Galgalikar on 10/24/16.
//  Copyright © 2016 Sanjana Galgalikar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var isTypingNumber = false
    var firstNumber = 0
    var secondNumber = 0
    var operation = ""
    @IBOutlet weak var calculatorDisplay: UILabel!
    
    @IBAction func equalsTapped(_ sender: AnyObject) {
        isTypingNumber = false
        var result = 0
        secondNumber = Int(calculatorDisplay.text!)!
        
        if operation == "+" {
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        } else if operation == "*" {
            result = firstNumber * secondNumber
        } else if operation == "/" {
            result = firstNumber / secondNumber
        } else if operation == "%" {
            result = firstNumber % secondNumber
        }
        calculatorDisplay.text = "\(result)"
        
    }
    
    @IBAction func calculationTapped(_ sender: AnyObject) {
        isTypingNumber = false
        firstNumber = Int(calculatorDisplay.text!)!
        operation = sender.currentTitle!!
        
    }
    
    
    @IBAction func numberTapped(_ sender: AnyObject) {
        let number = sender.currentTitle
        
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else {
            calculatorDisplay.text = number!
            isTypingNumber = true
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

