//
//  TipCalculator.swift
//  Tipsy
//
//  Created by Raeein Bagheri on 2021-11-11.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

struct TipCalculator {
    
    var totalAmout: Float = 0.0
    var tipAmount: Float = 0.0
    var splitNumber: Int = 2
    
    func calculateTip() -> Float {
        return (totalAmout * (1 + tipAmount)) / Float(splitNumber)
    }
}
