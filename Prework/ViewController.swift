//
//  ViewController.swift
//  Prework
//
//  Created by Taise Miyazumi on 8/2/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var amountPeople: UILabel!
    @IBOutlet weak var splitAmount: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //sets the Title in the 
        self.title = "Tip Calculator"
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: UISegmentedControl) {
        
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.20]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        var people = Double(amountPeople.text!) ?? 0
        if people == 0 {
            people += 1
        }
        let split = total/people
        splitAmount.text = String(format: "$%.2f", split) + " x " + String(people)
        
    }
    
    @IBAction func changeAmount(_ sender: UIStepper) {
        amountPeople.text = Int(sender.value).description
    }
}

