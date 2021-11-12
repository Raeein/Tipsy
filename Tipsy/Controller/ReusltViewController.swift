//
//  ReusltViewController.swift
//  Tipsy
//
//  Created by Raeein Bagheri on 2021-11-11.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ReusltViewController: UIViewController {
    
    
    @IBOutlet weak var tipDescription: UILabel!
    @IBOutlet weak var total: UILabel!
    var totalPerPerson: Float = 0.0
    var split: Int = 2
    var tip: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        total.text = String(format: "%.2f", totalPerPerson)
        tipDescription.text = "Split between \(split) people, with \(tip) tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
