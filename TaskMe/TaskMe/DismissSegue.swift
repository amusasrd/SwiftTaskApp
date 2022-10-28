//
//  DismissSegue.swift
//  TaskMe
//
//  Created by Ahmed Musa on 22/11/2016.
//  Copyright © 2016 Moses Apps. All rights reserved.
//

import UIKit

@objc(DismissSegue) class DismissSegue: UIStoryboardSegue {
    override func perform() {
        if let controller = sourceViewController.presentingViewController {
            controller.dismissViewControllerAnimated(true, completion: nil)
        }
    }

}
