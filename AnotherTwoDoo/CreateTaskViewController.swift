//
//  CreateTaskViewController.swift
//  AnotherTwoDoo
//
//  Created by Jared Bates on 7/25/18.
//  Copyright © 2018 jared. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBOutlet weak var taskNameTextField: UITextField!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func addTask(_ sender: Any) {
        // create task from outlet information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        // add new task to array in previous viewcontroller
    }

}
