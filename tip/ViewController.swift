//
//  ViewController.swift
//  tip
//
//  Created by Moises Limon on 8/3/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Sets the title in the Navigation Bar
        
        self.title = "Tip Calculator"
        
        self.view.backgroundColor = UIColor(hue: 0.4, saturation: 0.57, brightness: 0.93, alpha: 1)
        tipPercentageLabel.layer.cornerRadius = 5
        totalLabel.layer.cornerRadius = 5
    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get inital bill amount and calculate tips
        
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
   
        // Calculate tip and total
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
    
        //Update the tips and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

