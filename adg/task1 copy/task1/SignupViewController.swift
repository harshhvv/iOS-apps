//
//  SignupViewController.swift
//  task1
//
//  Created by Harsh  on 13/04/21.
//

import UIKit

class SignupViewController: UIViewController {
    
    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var numberTextfield: UITextField!
    @IBOutlet weak var pwdTextfield: UITextField!
    @IBOutlet weak var pwd2Textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func createAccountTapped(_ sender: UIButton) {
        if nameTextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines) != "" && emailTextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines) != "" && numberTextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines) != "" && pwdTextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines) != "" && pwd2Textfield.text!.trimmingCharacters(in: .whitespacesAndNewlines) != "" && pwdTextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines) == pwd2Textfield.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        {
            print(nameTextfield.text!)
            print(emailTextfield.text!)
            print(numberTextfield.text!)
            print(pwdTextfield.text!)
            print(pwd2Textfield.text!)

            performSegue(withIdentifier: "showHome2", sender: nil)
//            self.dismiss(animated: true, completion: nil)

        }
        else{
            showError()
            print("Please re-check details entered above")
        }
        
        
    }
    
    func showError(){
        let alertController = UIAlertController(title: "Sign Up", message:
                                                    "Please re-check details entered above", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        
        self.present(alertController, animated: true, completion: nil)
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
