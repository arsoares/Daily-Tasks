//
//  ViewController.swift
//  Tasks
//
//  Created by Austin Soares on 10/13/17.
//  Copyright © 2017 Austin Soares. All rights reserved.
//

import UIKit

// Add protocols for Delegate and DataSource
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Look to self for the protocols
        tableView.dataSource = self
        tableView.delegate = self
    }
    // Define number of rows in table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    // Define what is in each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Hello"
        return cell
    }
    
}

