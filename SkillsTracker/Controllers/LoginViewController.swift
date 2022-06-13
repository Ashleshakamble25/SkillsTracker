//
//  LoginViewController.swift
//  SkillsTracker
//
//  Created by Ashlesha Kamble on 09/06/22.
/* code for reset password:- Auth.auth().sendPasswordReset(withEmail: emailId.text ?? "") { error in
if let error = error
{
    print("Error to reset password")
    print(error.localizedDescription)
    return
}
print("Password reset mail has been sent")
self.navigationController?.popToRootViewController(animated: true)
}*/

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailtextField: UITextField!
    @IBOutlet weak var theStack: UIStackView!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapToLogin(_ sender: Any) {
         checkConditions()
        Auth.auth().signIn(withEmail: emailtextField.text!, password: passwordTextField.text!) { [weak self] authResult, error in
          guard let strongSelf = self else { return }
            if let u = authResult?.user
            {
                print(u)
                print("User Found")
                let dashoboardVC = self?.storyboard?.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
                self?.navigationController?.pushViewController(dashoboardVC, animated: true)
            }
            else
            {
               // print(error?.localizedDescription)
                print("User Not Found")
                self?.openAlert(title: "Alert", message: "User not found", alertStyle: .alert, actionTitles: ["Ok"], actionStyles: [.default], actions: [{ _ in
                    print("Ok Cliked")
                }])
            }
          // ...
        }
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
