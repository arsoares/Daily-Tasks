//
//  ViewController.swift
//  Tasks
//
//  Created by Austin Soares on 10/13/17.
//  Copyright © 2017 Austin Soares. All rights reserved.
//

import UIKit

// 2 Add protocols for Delegate and DataSource
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 6 build out functionality for counting tasks
        tasks = makeTasks()
        // 1 Look to self for the protocols
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // 3 Define number of rows in table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 7 return how many tasks are added/shown
        return tasks.count
    }
    // 4 Define what is in each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        // 7 add conditional for important tasks
        if task.important {
            cell.textLabel?.text = "❗\(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
        return cell
    }
    // 5 create sample tasks
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Walk the dog"
        task1.important = false
        
        let task2 = Task()
        task2.name = "Buy cheese"
        task2.important = true
        
        let task3 = Task()
        task3.name = "Mow lawn"
        task3.important = false
        
        return [task1, task2, task3]
    }
    
    @IBAction func plusTapped(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
}

