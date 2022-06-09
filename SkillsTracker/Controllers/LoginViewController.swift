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

        // Do any additional setup after loading the view.
    }
    

    
     @IBAction func tapToLogin(_ sender: Any) {
     }
    
    @IBAction func forgotPassword(_ sender: Any) {
    }
    
    @IBAction func tapToSignUp(_ sender: Any) {
        let signup = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        navigationController?.pushViewController(signup, animated: true)
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
