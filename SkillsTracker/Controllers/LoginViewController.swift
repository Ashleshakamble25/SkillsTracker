//
//  LoginViewController.swift
//  SkillsTracker
//
//  Created by Ashlesha Kamble on 09/06/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailtextField: UITextField!
    @IBOutlet weak var theStack: UIStackView!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapToLogin(_ sender: Any) {
         checkConditions()
     }
    
    @IBAction func forgotPassword(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
        navigationController?.pushViewController(forgotPassword, animated: true)
    }
    
    @IBAction func tapToSignUp(_ sender: Any) {
        let signup = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        navigationController?.pushViewController(signup, animated: true)
    }
    
    //MARK: Function Check Conditions
        
        fileprivate func checkConditions(){
            if passwordTextField.text ==  " " || emailtextField.text == ""   {
                        openAlert(title: "Alert", message: "Please enter valid data.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                             print("Okay clicked!")
                         }])
                     }
           else if let email = emailtextField.text, let password = passwordTextField.text {
                if !email.isEmail {
                    openAlert(title: "Alert", message: "Invalid Username", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                        print("Okay clicked!")
                    }])
                }
            else if email == "" {
                    openAlert(title: "Alert", message: "Please enter Username.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                        print("Okay clicked!")
                    }])
            }
                else if !password.isValidPassword{
                    openAlert(title: "Alert", message: "Please enter valid Password!", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                        print("Okay clicked!")
                    }])
            }
            else if password == "" {
                    openAlert(title: "Alert", message: "Please enter Password.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                        print("Okay clicked!")
                    }])
            }
            else {
                
                return
            }
                
            }
}
}
