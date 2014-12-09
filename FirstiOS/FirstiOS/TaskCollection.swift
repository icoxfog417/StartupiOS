//
//  TaskCollection.swift
//  FirstiOS
//
//  Created by smap on 2014/12/09.
//  Copyright (c) 2014 smap. All rights reserved.
//

import Foundation


class TaskCollection{
    class var singleton: TaskCollection{
        struct Static{
            static let instance = TaskCollection()
        }
        return Static.instance
    }
    
    var tasks: [Task] = []
    
    func add(task: Task){
        tasks.append(task)
    }

    func get(index: Int) -> Task{
        return tasks[index]
    }

    func count() -> Int{
        return tasks.count
    }
    
    func removeTaskAtIndex(index: Int){
        tasks.removeAtIndex(index)
    }
    
    func replace(task: Task, index: Int){
        tasks[index] = task
    }
    
    
}