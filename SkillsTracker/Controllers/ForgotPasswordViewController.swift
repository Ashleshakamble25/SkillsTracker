//
//  ForgotPasswordViewController.swift
//  SkillsTracker
//
//  Created by Ashlesha Kamble on 10/06/22.
//

import UIKit
import FirebaseAuth

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var newPassword: TextFields!
    @IBOutlet weak var confirmPassword: TextFields!
    @IBOutlet weak var emailId: TextFields!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapToResetPassword(_ sender: Any) {
        //checkConditions()
        Auth.auth().sendPasswordReset(withEmail: emailId.text ?? "") { error in
            if let error = error
            {
                print("Error to reset password")
                print(error.localizedDescription)
                return
            }
            print("Password reset mail has been sent")
            self.navigationController?.popToRootViewController(animated: true)
        }
        
    }
    
    //MARK: Function Check Conditions
    
    fileprivate func checkConditions () {
        if newPassword.text ==  " " || confirmPassword.text == ""  {
                    openAlert(title: "Alert", message: "Please enter valid data.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                         print("Okay clicked!")
                     }])
                 }
     
         else if let password = newPassword.text, let confirmPassword = confirmPassword.text {
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
