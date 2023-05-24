//
//  resultViewController.swift
//  BMI Calculator
//
//  Created by Harsh  on 02/04/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {
    
    var bmiValue:String?
    var advice:String?
    var color:UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color

        // Do any additional setup after loading the view.
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
    

}
