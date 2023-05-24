//
//  ViewController.swift
//  task1
//
//  Created by Harsh  on 13/04/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var signup: UIButton!
    @IBOutlet weak var loginbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        signup.layer.cornerRadius = 8.0
        loginbutton.layer.cornerRadius = 8.0
        
    }


}

