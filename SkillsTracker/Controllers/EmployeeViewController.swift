//
//  EmployeeViewController.swift
//  SkillsTracker
//
//  Created by Anuja Ladge on 14/06/22.
//

import UIKit

class EmployeeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    @IBOutlet weak var employeeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        employeeTableView.delegate = self
        employeeTableView.dataSource = self

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = employeeTableView.dequeueReusableCell(withIdentifier: "EmployeeName", for: indexPath)
        
        
    }
    

    

}
