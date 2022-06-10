//
//  SignUpViewController.swift
//  SkillsTracker
//
//  Created by Ashlesha Kamble on 09/06/22.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var signUpStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapToRegister(_ sender: Any) {
        checkConditions()
    }
    
    @IBAction func tapToLogin(_ sender: Any) {
        let login = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        navigationController?.pushViewController(login, animated: true)
        
    }
    
    //MARK: Function Check Conditions
    
    fileprivate func checkConditions(){
        if passwordTextField.text ==  " " && confirmPasswordTextField.text == "" || emailTextField.text == ""   {
                       openAlert(title: "Alert", message: "Please enter valid data.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                            print("Okay clicked!")
                        }])
                    }
           else if let password = passwordTextField.text, let email = emailTextField.text, let confirmPassword = confirmPasswordTextField.text {
                if !email.isEmail{
                        openAlert(title: "Alert", message: "Please enter valid Email.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                            print("Okay clicked!")
                        }])
                }
                else if email == "" {
                        openAlert(title: "Alert", message: "Please enter Email.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                            print("Okay clicked!")
                        }])
                }
                else {
                    let result = true
                    switch result {
                    case password == "" :
                        openAlert(title: "Alert", message: "Please enter Password.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                            print("Okay clicked!")
                        }])
                        break
                        
                    case !password.isValidPassword:
                        openAlert(title: "Alert", message: "Please enter valid Password!", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                            print("Okay clicked!")
                        }])
                        break
                        
                    case !password.isValidPassword && (password == confirmPassword):
                        openAlert(title: "Alert", message: "Please enter valid Password!", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                            print("Okay clicked!")
                        }])
                        break
                        
                    case password != confirmPassword:
                        openAlert(title: "Alert", message: "Password is not matching!", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                            print("Okay clicked!")
                        }])
                        break
                        
                    default:
                        return
                    }
                }
}
}
}
