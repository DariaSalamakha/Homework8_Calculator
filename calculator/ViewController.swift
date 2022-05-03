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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    @IBAction func numberButtonsTapped(_ sender: UIButton) {
        let number = sender.titleLabel!.text!
        currentValue += number
        resultLabel.text = currentValue
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        resultLabel.text = "0"
    }
    
    @IBAction func actionButtonsTapped(_ sender: UIButton) {
        action = sender.titleLabel!.text!
    }
}

