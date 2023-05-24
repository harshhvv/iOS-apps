//
//  HomeViewController.swift
//  task1
//
//  Created by Harsh  on 15/04/21.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var logoutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoutButton.layer.cornerRadius = 8.0

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutTapped(_ sender: UIButton) {
        let firstVC = storyboard?.instantiateViewController(identifier: "firstScreen") as? ViewController
        
        view.window?.rootViewController = firstVC
        view.window?.makeKeyAndVisible()
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
