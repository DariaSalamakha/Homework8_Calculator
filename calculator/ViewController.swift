//
//  ViewController.swift
//  calculator
//
//  Created by Daria Salamakha on 24.01.2022.
//

import UIKit

// MARK: - ViewController
class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var totalButton: UIButton!
    @IBOutlet var numbersButtons: [UIButton]!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet var actionButtons: [UIButton]!
    
    // MARK: - Properties
    var currentValue = ""
    var resultValue = 0.0
    var action = ""
    var isEmptyCurrentValue = false
    
    // MARK: - Actions
    @IBAction func numberButtonsTapped(_ sender: UIButton) {
        if isEmptyCurrentValue {
            currentValue = ""
            isEmptyCurrentValue = false
        }
        let number = sender.titleLabel!.text!
        currentValue += number
        resultLabel.text = currentValue
    }
    
    @IBAction func reverseButtonTapped(_ sender: UIButton) {
        if currentValue.first == "-" {
            let index = currentValue.firstIndex(of: "-")!
            currentValue.remove(at: index)
        } else {
            currentValue = "-" + currentValue
        }
        resultLabel.text = currentValue
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        resultLabel.text = "0"
        isEmptyCurrentValue = true
    }
    
    @IBAction func totalButtonTapped(_ sender: UIButton) {
        var currentValueDouble = Double(currentValue)!
        isEmptyCurrentValue = true
        
        switch action {
        case "+":
            currentValueDouble = resultValue + currentValueDouble
        case "%":
            currentValueDouble = resultValue * currentValueDouble / 100
        case "x":
            currentValueDouble = resultValue * currentValueDouble
        case "/":
            currentValueDouble = resultValue / currentValueDouble
        case "-":
            currentValueDouble = resultValue - currentValueDouble
        default:
            return resultLabel.text = "Error"
        }
        
        return resultLabel.text = String(currentValueDouble)
    }
    
    @IBAction func actionButtonsTapped(_ sender: UIButton) {
        action = sender.titleLabel!.text!
        resultValue = Double(currentValue)!
        isEmptyCurrentValue.toggle()
    }
}

