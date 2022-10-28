//
//  TaskStore.swift
//  TaskMe
//
//  Created by Ahmed Musa on 27/11/2016.
//  Copyright © 2016 Moses Apps. All rights reserved.
//

import Foundation
class TaskStore {
    class var sharedInstance: TaskStore {
        struct Static {
            static let instance = TaskStore()
        }
        return Static.instance
    }
    
    var tasks: [Task] = []
    
    func add(task: Task) {
        tasks.append(task)
    }
    
    func replace(task: Task, atIndex index: Int) {
        tasks[index] = task
    }
    
    func get(index: Int) -> Task {
        return tasks[index]
    }
    var count: Int {
            return tasks.count
    }
    func removeTaskAtIndex(index: Int) {
        tasks.removeAtIndex(index)
    }
}