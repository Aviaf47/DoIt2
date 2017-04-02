//
//  TaskVC.swift
//  DoIt2
//
//  Created by user120718 on 4/2/17.
//  Copyright © 2017 Aviaf Apps. All rights reserved.
//

import UIKit

class TaskVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
        
    }
    
    func makeTasks() -> [Task] {
        
        let task1 = Task()
        task1.name = "Get Cheese"
    
        let task2 = Task()
        task2.name = "Deposit Cheque"
        task2.important = true
        
        return [task1, task2]
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "❗ \(task.name)"

        }else {
            cell.textLabel?.text = task.name

        }
                return cell
        
    }
    @IBAction func plusTapped(_ sender: AnyObject) {
        
        performSegue(withIdentifier: "addSegue", sender: nil)
    }

    
    
}

