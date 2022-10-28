//
//  AddTaskViewController.swift
//  TaskMe
//
//  Created by Ahmed Musa on 22/11/2016.
//  Copyright © 2016 Moses Apps. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var notesField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "dismissSave" {
            let task = Task(title: titleField.text!, notes: notesField.text!)
            // above line has been edited from original due to errors, exclamation marks added
            TaskStore.sharedInstance.add(task)
        }

        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
}
