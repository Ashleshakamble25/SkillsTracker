//
//  CreateProfileViewController.swift
//  SkillsTracker
//
//  Created by Anuja Ladge on 13/06/22.
//

import UIKit

class CreateProfileViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: TextFields!
    @IBOutlet weak var lastNameTextFeilds: TextFields!
    @IBOutlet weak var emailTextField: TextFields!
    @IBOutlet weak var employeeIDTextField: TextFields!
    @IBOutlet weak var designationTextField: TextFields!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func addSkillTapped(_ sender: UIButton) {
        didTapAdd()
    }
    
    @IBAction func saveTapped(_ sender: UIButton) {
    }
    
    func didTapAdd() {
       
       let alert = UIAlertController(title: "New Skill", message: "Enter New Skill", preferredStyle: .alert)
       alert.addTextField(configurationHandler: nil)
      alert.addAction(UIAlertAction(title: "Add", style: .cancel, handler: { [weak self]_ in
           guard let field = alert.textFields?.first,let text = field.text ,text.isEmpty else {                return
            }
           //database command
       }))
        present(alert, animated: true, completion: nil)
   }
    

}
