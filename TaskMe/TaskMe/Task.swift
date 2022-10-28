//
//  Task.swift
//  TaskMe
//
//  Created by Ahmed Musa on 25/11/2016.
//  Copyright © 2016 Moses Apps. All rights reserved.
//

import Foundation
struct Task {
    let title: String
    let notes: String
   
    init(title: String, notes: String) {
        self.title = title
        self.notes = notes
    }
}