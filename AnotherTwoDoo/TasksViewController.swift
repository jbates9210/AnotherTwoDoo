//
//  TasksViewController.swift
//  AnotherTwoDoo
//
//  Created by Jared Bates on 7/25/18.
//  Copyright © 2018 jared. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "❗️\(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
        
        return cell
    }
    
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Grocery shop"
        task1.important = true
        
        let task2 = Task()
        task2.name = "Walk dog"
        task2.important = false
        
        let task3 = Task()
        task3.name = "Clean house"
        task3.important = false
        
        return [task1, task2, task3]
    }

    @IBAction func addItem(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
}

