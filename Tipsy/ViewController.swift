//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmout: UITextField!
    @IBOutlet weak var zeroPercent: UIButton!
    @IBOutlet weak var twentyPercent: UIButton!
    @IBOutlet weak var tenPercent: UIButton!
    @IBOutlet weak var splitAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipAmount(_ sender: UIButton) {
        zeroPercent.isSelected = false
        tenPercent.isSelected = false
        twentyPercent.isSelected = false
        sender.isSelected = true
    }
    @IBAction func splitAmountChanged(_ sender: UIStepper) {
        splitAmount.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        print("Hello")
    }
}

