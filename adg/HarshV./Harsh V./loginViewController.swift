//
//  loginViewController.swift
//  Harsh V.
//
//  Created by Harsh  on 15/04/21.
//

import UIKit
import FirebaseAuth

class loginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var pwdTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dontHaveAccountTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        
        let email = emailTextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = pwdTextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines)

        // Signing in the user
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if error != nil {
                // Couldn't sign in
                print(error!.localizedDescription)
//                self.errorLabel.text = error!.localizedDescription
//                self.errorLabel.alpha = 1
            }
            else {
                self.performSegue(withIdentifier: "HomeVC", sender: nil)
//                let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
//
//                self.view.window?.rootViewController = homeViewController
//                self.view.window?.makeKeyAndVisible()
            }
        }
        
        
//        if emailTextfield.text == "admin" && pwdTextfield.text == "admin" {
//    performSegue(withIdentifier: "HomeVC", sender: nil)
//        }
//
//        else{
//            let alertController = UIAlertController(title: "Login", message:
//                                                        "Please re-check details entered above", preferredStyle: .alert)
//            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
//
//            self.present(alertController, animated: true, completion: nil)
//        }
    }
  

}
