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
    
    // reference to the other VC
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func addTask(_ sender: Any) {
        // create task from outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate)

        let task = Task(context: context.persistentContainer.viewContext)
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        context.saveContext()
        
        // Pop View Controller
        
        navigationController!.popViewController(animated: true)
    }

}
