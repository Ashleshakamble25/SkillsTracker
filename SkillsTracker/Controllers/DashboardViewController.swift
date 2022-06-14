//
//  DashboardViewController.swift
//  SkillsTracker
//
//  Created by shubhan.langade on 10/06/22.
//

import UIKit

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    @IBAction func logOutTapped(_ sender: UIBarButtonItem) {
        
        openAlert(title: "Alert!", message: "Are you sure you want to logout ", alertStyle: .alert, actionTitles: ["Ok"], actionStyles: [.cancel],actions: [{ _ in
            print("Log out tapped")
        }])
    }
        
       
    
    
    @IBAction func updateProfileTapped(_ sender: UIBarButtonItem) {
    }
    
    

}
extension DashboardViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        10
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeeSkills", for: indexPath)
        let vc = storyboard?.instantiateViewController(withIdentifier: "EmployeeViewController") as! EmployeeViewController
        navigationController?.pushViewController(vc, animated: true)
        return cell
    }
    
    
}
