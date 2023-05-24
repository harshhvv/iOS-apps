//
//  LoginViewController.swift
//  task1
//
//  Created by Harsh  on 13/04/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var pwdTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
    }
    
    
    
    @IBAction func loginTapped(_ sender: UIButton) {if emailTextfield.text == "admin" && pwdTextfield.text == "admin" {
//        performSegue(withIdentifier: "showHome", sender: nil)
       takeMeHome()
    }
    
    else{
        let alertController = UIAlertController(title: "Login", message:
                                                    "Please re-check details entered above", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    }
    
    @IBAction func dontHaveAccountTapped(_ sender: UIButton) {
        takeMeHome()
           }
    
    
    func takeMeHome(){
        let firstVC = storyboard?.instantiateViewController(identifier: "firstScreen")
        
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
