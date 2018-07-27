//
//  CompleteTaskViewController.swift
//  AnotherTwoDoo
//
//  Created by Jared Bates on 7/27/18.
//  Copyright © 2018 jared. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    @IBOutlet weak var taskLabel: UILabel!
    
    var task : Task? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        if task!.important {
            taskLabel.text = "❗️\(task!.name!)"
        } else {
            taskLabel.text = task!.name!
        }
    }

    @IBAction func completeTask(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let save = (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        context.delete(task!)
        save
        
        navigationController!.popViewController(animated: true)
    }

}
