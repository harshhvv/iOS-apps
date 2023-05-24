//
//  signupViewController.swift
//  Harsh V.
//
//  Created by Harsh  on 15/04/21.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestore

class signupViewController: UIViewController {
    
    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var numberTextfield: UITextField!
    @IBOutlet weak var pwdTextfield: UITextField!
    @IBOutlet weak var pwd2Textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupTappeed(_ sender: UIButton) {
        if nameTextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines) != "" && emailTextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines) != "" && numberTextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines) != "" && pwdTextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines) != "" && pwd2Textfield.text!.trimmingCharacters(in: .whitespacesAndNewlines) != "" && pwdTextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines) == pwd2Textfield.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        {
//            print(nameTextfield.text!)
//            print(emailTextfield.text!)
//            print(numberTextfield.text!)
//            print(pwdTextfield.text!)
//            print(pwd2Textfield.text!)
//
            
            
            //            self.dismiss(animated: true, completion: nil)
            
        }
        else{
            showError()
            print("Please re-check details entered above")
        }
        
        
        // Create cleaned versions of the data
        let firstName = nameTextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let email = emailTextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let number = numberTextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = pwdTextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
            
            if err != nil{
                print("error")
            }
            else{
                
                let db = Firestore.firestore()
                db.collection("users").addDocument(data: ["name":firstName, "number":number, "uid": result!.user.uid ]){ (error) in
                    
                    if error != nil {
                        // Show error message
                        print("error again")
                    }
                }
                
                self.performSegue(withIdentifier: "HomeVC2", sender: nil)
                let alert = UIAlertController(title: "Sucess!", message: "Account createed and user logged in sucessfully!", preferredStyle: .alert)
                self.present(alert, animated: true, completion: nil)

                // change to desired number of seconds (in this case 5 seconds)
                let when = DispatchTime.now() + 3
                DispatchQueue.main.asyncAfter(deadline: when){
                  // your code with delay
                  alert.dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func alreadyHaveAccountTapped(_ sender: UIButton) {
        _ = navigationController?.popToRootViewController(animated: true)
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
