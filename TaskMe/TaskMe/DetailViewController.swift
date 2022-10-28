//
//  DetailViewController.swift
//  TaskMe
//
//  Created by Ahmed Musa on 20/11/2016.
//  Copyright © 2016 Moses Apps. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var notesText: UITextView!

    var detailItem: Task? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: Task = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.title
            }
            if let notes = self.notesText {
                notes.text = detail.notes
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

