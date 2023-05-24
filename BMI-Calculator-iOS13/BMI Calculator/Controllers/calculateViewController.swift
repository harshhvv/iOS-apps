//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class calculateViewController: UIViewController {
    var CalculatorBrain = calculatorBrain()
//    var bmiValue = "0.0"
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value)+"m"
        
        //        print(String(format: "%.2f", sender.value)) //2 decimal places
        //        print(sender.value)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(Int(sender.value))+"kg"
        //        print(String(format: "%.0f", sender.value)) //0 decimal places
        //        print(Int(sender.value))
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        CalculatorBrain.calculateBMI(height: height, weight:weight)
        
//        let bmi = weight/pow(height, 2)
//        bmiValue = String(format: "%0.1f", bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! resultViewController
            destinationVC.bmiValue = CalculatorBrain.getBMIValue()
            destinationVC.advice = CalculatorBrain.getAdvice()
            destinationVC.color = CalculatorBrain.getColor()
            //destinationVC.
        }
    }
    
}

