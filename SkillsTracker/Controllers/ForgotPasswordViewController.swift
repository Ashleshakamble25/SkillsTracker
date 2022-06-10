//
//  ForgotPasswordViewController.swift
//  SkillsTracker
//
//  Created by Ashlesha Kamble on 10/06/22.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var newPassword: TextFields!
    @IBOutlet weak var confirmPassword: TextFields!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapToResetPassword(_ sender: Any) {
        checkConditions()
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
