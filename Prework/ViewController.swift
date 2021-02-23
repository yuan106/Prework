//
//  ViewController.swift
//  Prework
//
//  Created by SU YUAN on 2/23/21.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
//        Get the initial bill amount and calculate the tips.
//        Calculate the total cost.
//        Update the tip and total labels.
        
        //get bill amount from text file input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // get total tip
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update tip amount label& total
        tipAmountLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
    }
}
    



