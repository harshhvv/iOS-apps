//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Harsh  on 09/04/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct calculatorBrain {
//    Int height
//    Int weight
    var bmi:BMI?
    func getBMIValue() -> String {
        let bmii = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmii
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "Invalid input"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight/(height*height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pls", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Very noice", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pls", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        
        
        
//        bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
    }
    
    
}
