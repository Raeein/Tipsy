//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tipCalculator = TipCalculator()
    
    @IBOutlet weak var billAmout: UITextField!
    @IBOutlet weak var zeroPercent: UIButton!
    @IBOutlet weak var twentyPercent: UIButton!
    @IBOutlet weak var tenPercent: UIButton!
    @IBOutlet weak var splitAmount: UILabel!
    
    var tipValue: Float = 0.1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipAmount(_ sender: UIButton) {
        zeroPercent.isSelected = false
        tenPercent.isSelected = false
        twentyPercent.isSelected = false
        sender.isSelected = true
        if let buttonTitle = sender.title(for: .normal) {
            tipValue = Float(buttonTitle.dropLast())! / 100.0
          }

    }
    @IBAction func splitAmountChanged(_ sender: UIStepper) {
        splitAmount.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        var billAmountFloat: Float = 0.0
        
        if let safeBillAmount = billAmout.text {
            billAmountFloat = Float(safeBillAmount) ?? 0.0
        }
        
        let splitNumber = Int(splitAmount.text ?? "0")!
   
        tipCalculator.totalAmout = billAmountFloat
        tipCalculator.tipAmount = tipValue
        tipCalculator.splitNumber = splitNumber
     
        performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ReusltViewController
            destinationVC.totalPerPerson = tipCalculator.calculateTip()
            destinationVC.split = tipCalculator.splitNumber
            destinationVC.tip = tipCalculator.tipAmount
        }
    }
}

