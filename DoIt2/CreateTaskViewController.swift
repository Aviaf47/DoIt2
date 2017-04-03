//
//  CreateTaskViewController.swift
//  DoIt2
//
//  Created by user120718 on 4/2/17.
//  Copyright © 2017 Aviaf Apps. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    
    @IBOutlet weak var taskNameLabel: UITextField!
    @IBOutlet weak var taskImportant: UISwitch!
    
    var previousVC = TaskVC()
    
    
    @IBAction func addTapped(_ sender: Any) {
        
        //Create a teask with a task from the outler info
        let task = Task()
        task.name = taskNameLabel.text!
        task.important = taskImportant.isOn
        
        //Add the task back to the original task array
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

   

}
